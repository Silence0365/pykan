import torch
import numpy as np
import B_Spline

def layer_deduction(x, scale_base, scale_sp, coef, mask, grid, base_fun='identity', k=3):
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

    #step1:计算B样条部分
    b_splines = B_Spline.coef2curve(x,grid,coef,k)#(batch,in_dim,k)

    #step2:计算base部分
    if base_fun == 'identity':
        base = x  # (batch, in_dim)
    elif base_fun == 'sin':
        base = np.sin(x)
    elif base_fun == 'silu':
        base = x * (1 / (1 + np.exp(-x)))  # 近似 SiLU
    else:
        raise ValueError(f"Unsupported base_fun: {base_fun}")
    
    #step3:混合输出——广播
    base_exp = base[:,:,None]    # (batch, in_dim, 1)
    y = (
        scale_base[None, :, :] * base_exp +
        scale_sp[None, :, :] * b_splines
    )  # (batch, in_dim, out_dim)

    #step4:应用掩模
    y = mask[None, :, :] * y

    #step5:求和y
    y_final = np.sum(y, axis=1)  # (batch, out_dim)
    return y_final

#
def model_deduction(x,data,k=3,base_fun='silu'):
    """
    模型前向传播.
    
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
    # 遍历所有层(检查此层是否存在coef参数)
    while f'layer{layer_idx}_coef' in data:
        # 提取当前层参数
        scale_base = data[f'layer{layer_idx}_scale_base']
        scale_sp   = data[f'layer{layer_idx}_spline_base']
        coef       = data[f'layer{layer_idx}_coef']
        mask       = data[f'layer{layer_idx}_mask']
        grid       = data[f'layer{layer_idx}_grid']

        # 前向
        current_x = layer_deduction(
            current_x, scale_base, scale_sp, coef, mask, grid, base_fun, k
        )

        layer_idx += 1

    return current_x


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