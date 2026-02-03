# Notice: 此版本为构建新分段多项式版本--FPGA适配版本

import torch
import numpy as np
import B_Spline
import Piecewise_polynomial
import Convert_to_coe
def layer_deduction(x, scale_base, scale_sp, coef, mask, grid, base_fun = 'identity', k=3,m = 7,n = 8,Qmn_scale = 0):
    """
    Numpy实现单层前向推理
    
    Args:
    -----
        x: (batch, in_dim) — 输入
        scale_base, scale_sp, mask: (in_dim, out_dim)
        coef: (in_dim, out_dim, n_basis)
        grid: (in_dim, G_extended)
        base_fun: str, e.g., 'identity', 'sin'
        k: B样条阶数
    
    Returns:
    --------
        y: (batch, out_dim)
    """
    # batch, in_dim = x.shape
    # _, out_dim, n_basis = coef.shape

    y = Piecewise_polynomial.calculate_Piecewise_polynomial(x, grid, coef, scale_sp, k, m, n)
    # y = y << n
    y = mask[None, :, :] * y
    df_dD = Piecewise_polynomial.calculate_Piecewise_polynomial_derivative(x, grid, coef, scale_sp, k, m, n)
    # df_dD = df_dD << n
    df_dD = mask[None, :, :] * df_dD

    #step5:求和y
    y_final = np.sum(y, axis=1)  # (batch, out_dim)
    # rescale
    #y_final = (y_final + (1 << (n - 1))) >> n ##test--rescale
    # df_dD = (df_dD + (1 << (n - 1))) >> n ##test--rescale
    df_dD = df_dD >> n ##test--rescale
    return y_final,df_dD

#
def model_deduction(x,data,k=3,base_fun='identity'):
    """
    模型能量前向传播&力反向传播梯度.
    
    Args:
        x: (batch, input_dim) — input
        data: npz file loaded by np.load()
        base_fun: usually 'silu' for standard KAN
        k: spline order (usually 3)
    
    Returns:
        y: (batch, output_dim)
    """
    current_x = x
    layer_idx = 0

    J = []  # 存储每层的df_dD (B, in_dim, out_dim)
    # 遍历所有层(检查此层是否存在coef参数)
    while f'layer{layer_idx}_coef' in data:
        # 提取当前层参数
        scale_base          = data[f'layer{layer_idx}_scale_base']
        scale_sp            = data[f'layer{layer_idx}_spline_base']
        coef                = data[f'layer{layer_idx}_coef']
        mask                = data[f'layer{layer_idx}_mask']
        grid                = data[f'layer{layer_idx}_grid']
        m                   = data[f'layer{layer_idx}_QAT_M_num_bits'].item() 
        n                   = data[f'layer{layer_idx}_QAT_N_num_bits'].item() 
        coef_proportion     = data[f'layer{layer_idx}_coef_proportion']
        sb_proportion       = data[f'layer{layer_idx}_scale_base_proportion']
        sp_proportion       = data[f'layer{layer_idx}_spline_proportion']

        # 前向
        current_x,df_dD = layer_deduction(
            current_x, scale_base, scale_sp, coef, mask, grid, base_fun, k, m, n,coef_proportion
        )
        coeff,global_shift = Piecewise_polynomial.Piecewise_polynomial_table(grid,coef,scale_sp,k,m, n, bit_width=32)
        Convert_to_coe.coeff_to_coe(coeff, f"layer{layer_idx}_coeff", bit_width=32,save_dir="./FPGA/COE")
        if layer_idx == 1:
            df_dD = df_dD >> 2 #测试FPGA缩放精度
        J.append(df_dD)
        layer_idx += 1
        
    # 反向
    dE_dD = np.ones_like(current_x)
    # reversed -倒叙循环
    for jacobian  in reversed(J):
        # J: (B, in_dim, out_dim)
        # grad: (B, out_dim)
        dE_dD = np.sum(dE_dD[:, None, :] * jacobian, axis=2)  #  # grad = ∂E/∂D   shape:(batch, in_dim)
        # grad = dE_dD # 梯度∂E/∂D
    grad = dE_dD << 2;  # 测试FPGA缩放后精度
        # print("Shape:", dE_dD.shape)
        # print("Range:", dE_dD.min(), "to", dE_dD.max())
    return current_x,grad


#==============================TEST================================
# # --- Mock data generator ---
# def make_mock_layer(in_dim, out_dim, G, k=3):
#     base_grid_1d = np.linspace(-1, 1, G + 1).astype(np.float32)
#     grid = np.repeat(base_grid_1d[None, :], in_dim, axis=0)
#     grid = B_Spline.extend_grid(grid, k_extend=k)
#     n_basis = G + k
#     coef = np.random.randn(in_dim, out_dim, n_basis).astype(np.float32)
#     scale_base = np.ones((in_dim, out_dim), dtype=np.float32)
#     spline_base = np.ones((in_dim, out_dim), dtype=np.float32)
#     mask = np.ones((in_dim, out_dim), dtype=np.float32)
#     return {
#         'coef': coef,
#         'grid': grid,
#         'scale_base': scale_base,
#         'spline_base': spline_base,
#         'mask': mask
#     }

# # --- Build mock model ---
# layer0 = make_mock_layer(2, 3, G=5, k=3)
# layer1 = make_mock_layer(3, 1, G=4, k=3)
# mock_data = {}
# for k in layer0: mock_data[f'layer0_{k}'] = layer0[k]
# for k in layer1: mock_data[f'layer1_{k}'] = layer1[k]

# # --- Validate dimensions ---
# for i in range(2):
#     grid = mock_data[f'layer{i}_grid']
#     coef = mock_data[f'layer{i}_coef']
#     assert coef.shape[2] == grid.shape[1] - 3 - 1
#     print(f"Layer {i} OK")

# # --- Run inference ---
# x = np.array([[0.5, -0.3], [0.0, 1.0]], dtype=np.float32)
# y = model_deduction(x, mock_data, base_fun='silu', k=3)
# print("Final output:", y)