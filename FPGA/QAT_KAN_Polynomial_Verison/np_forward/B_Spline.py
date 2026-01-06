# Notice: 此版本为构建新分段多项式版本--FPGA适配版本

import numpy as np

def B_batch(x, grid, k=0, extend=True, device='cpu',M_num_bits = 7, N_num_bits = 16, bit_width=48):
    """
    全定点 B 样条基函数
    
    Args:
        x_int:     (batch, in_dim)          -> Q?.n_x
        grid_int:  (in_dim, grid_size)      -> Q?.n_x (same scale)
        k:         B 样条阶数
        M_num_bits: Qmn的整数部分(默认7bit)
        N_num_bits: Qmn的小数部分(默认16bit)
        bit_width: 中间计算位宽（默认 48 防溢出）
    
    Returns:
        B: (batch, in_dim, num_basis) -> Q?.n_B
    """

    # prepare for broadcast
    x = x[:,:,None]         # 形状: (batch, in_dim) -> (batch, in_dim, 1)
    grid = grid[None,:,:]   # 形状: (in_dim, grid_size) -> (1, in_dim, grid_size)

    # k=0
    if k == 0:
        value = (x >= grid[:, :, :-1]) & (x < grid[:, :, 1:]) # x>grid的左端点 & x<grid的右端点（定点数）
        value = value << N_num_bits #第一阶非1则0，移出浮点范围
    else:
        B_km1 = B_batch(x[:,:,0], grid=grid[0,:,:], k= k - 1, M_num_bits = M_num_bits, N_num_bits = N_num_bits, bit_width=bit_width)#递归计算前一阶的基函数-shape(batch,in_dim,N_{k-1})
        
        #减法因广播后- shape(batch, in_dim, G−k−1)
        # (x - t_i) / (t_{i+k} - t_i)
        fraction1_numerator   = (x - grid[:, :, :-(k + 1)])
        fraction1_denominator = (grid[:, :, k:-1] - grid[:, :, :-(k + 1)])
        fraction1_denominator = np.where(fraction1_denominator == 0, 1, fraction1_denominator)    # 防止除0
        fraction1 = (fraction1_numerator << N_num_bits) // fraction1_denominator

        # (t_{i+k+1} - x) / (t_{i+k+1} - t_{i+1})
        fraction2_numerator   = (grid[:, :, k + 1:] - x)
        fraction2_denominator = (grid[:, :, k + 1:] - grid[:, :, 1:(-k)])
        fraction2_denominator = np.where(fraction2_denominator == 0, 1, fraction2_denominator)    # 防止除0
        fraction2 = (fraction2_numerator << N_num_bits) // fraction2_denominator # 放大因数计算小数部分

        # 总式
        # 复原因数并乘上递归B_{i-1}
        value = ((fraction1  * B_km1[:, :, :-1])>> N_num_bits) + ((fraction2 * B_km1[:, :, 1:]) >> N_num_bits)
        # value = (x - grid[:, :, :-(k + 1)]) / (grid[:, :, k:-1] - grid[:, :, :-(k + 1)]) * B_km1[:, :, :-1] + (
        #             grid[:, :, k + 1:] - x) / (grid[:, :, k + 1:] - grid[:, :, 1:(-k)]) * B_km1[:, :, 1:]
        quant_max = (1 << (bit_width - 1)) - 1
        quant_min = -(1 << (bit_width - 1))
        if value.max() > quant_max or value.max() < quant_min:
            value = np.clip(value, quant_min, quant_max)
            print("warning: overflow")
    
    # in case grid is degenerate
    #value = torch.nan_to_num(value)
    value = np.nan_to_num(value, nan=0.0, posinf=0.0, neginf=0.0)
    return value

# B样条函数导数
def B_batch_derivative(x, grid, k=0, extend=True, device='cpu',M_num_bits = 7, N_num_bits = 16, bit_width=48):
    '''
    全定点B样条函数导数

    Parameter:
    -----
    :param x: 输入样本(shape:(batch,in_dim))
    :param grid: 网格数(shape:(in_dim,grid_size))
    :param k: B样条阶数(多项式的最高次数)
    :param extend: 网格扩展(default:True)
    :param device: 使用设备(default:cpu)
    :param M_num_bits: Qmn的整数部分(default:7bit)
    :param N_num_bits: Qmn的小数部分(default:16bit)
    :param bit_width: 中间计算位宽(default: 48 防溢出)

    Returns:
    --------
        dB : 3D torch.tensor
        shape  (batch, in_dim, num_basis)
        
    '''
    # 获取x中batch,in_dim的维度
    batch, in_dim = x.shape

    # # prepare for broadcast
    # x = x[:,:,None]         # 形状: (batch, in_dim) -> (batch, in_dim, 1)
    # grid = grid[None,:,:]   # 形状: (in_dim, grid_size) -> (1, in_dim, grid_size)

    # 边界处理
    grid_num = grid.shape[1] # grid_size 代表每个in_dim的向量 x_eval = torch.tensor([[10.5, 50.2, 0.8]])   shape:[1,3]
    basis_num = grid_num - k -1 # 基函数个数=节点向量数 - k阶  - 1
        # 无基函数
    if basis_num < 0:
        return np.zeros((batch,  in_dim, 0), dtype=x.dtype)
        # 常数函数--0阶
    if k == 0:
        return np.zeros((batch, in_dim, basis_num), dtype=x.dtype)
        
    # B_km-1(低一级B样条函数)
    B_km1 = B_batch(x, grid, k= k - 1, M_num_bits = M_num_bits, N_num_bits = N_num_bits, bit_width=bit_width)

    # 导数计算
    fraction1_numerator   = (k * B_km1) 
    fraction1_denominator = (grid[None,:,k:] - grid[None,:,:-k])
    fraction1_denominator = np.where(fraction1_denominator == 0, 1, fraction1_denominator)    # 防止除0
    fraction1 = (fraction1_numerator << N_num_bits) // fraction1_denominator

    # 导数计算
    fraction2_numerator   = (k * B_km1[:,:,1:])
    fraction2_denominator = (grid[None,:,k+1:] - grid[None,:,1:-k])
    fraction2_denominator = np.where(fraction2_denominator == 0, 1, fraction2_denominator)    # 防止除0
    fraction2 = (fraction2_numerator << N_num_bits) // fraction2_denominator


    #fraction1 =  (k * B_km1) / (grid[None,:,k:] - grid[None,:,:-k])# (k−1) 阶基函数
    #fraction2 =  (k * B_km1[:,:,1:]) / (grid[None,:,k+1:] - grid[None,:,1:-k])# k 阶基函数 --少了k-1这一阶数
    
    # 组合
    dB = fraction1[:, :, :basis_num] - fraction2 # 取前N个B函数

    # overflow check
    quant_max = (1 << (bit_width - 1)) - 1
    quant_min = -(1 << (bit_width - 1))
    if dB.max() > quant_max or dB.max() < quant_min:
        dB = np.clip(dB, quant_min, quant_max)
        print("warning: overflow")
    # in case grid is degenerate
    dB = np.nan_to_num(dB, nan=0.0, posinf=0.0, neginf=0.0)

    return dB

#边界扩展，使得边界平滑
def extend_grid(grid, k_extend=0):
    '''
    extend grid
    '''
    h = (grid[:, [-1]] - grid[:, [0]]) / (grid.shape[1] - 1)

    for i in range(k_extend):
        # grid = torch.cat([grid[:, [0]] - h, grid], dim=1)
        # grid = torch.cat([grid, grid[:, [-1]] + h], dim=1)
        grid = np.concatenate([grid[:, [0]] - h, grid], axis=1)
        grid = np.concatenate([grid, grid[:, [-1]] + h], axis=1)

    return grid

#B 样条系数 coef 转换为函数值 
def coef2curve(x_eval, grid, coef, k, M_num_bits = 7, N_num_bits = 16, bit_width=48):
    '''
    converting B-spline coefficients to B-spline curves. Evaluate x on B-spline curves (summing up B_batch results over B-spline basis).
    
    Args:
    -----
        x_eval : 2D torch.tensor
            shape (batch, in_dim)
        grid : 2D torch.tensor
            shape (in_dim, G+2k). G: the number of grid intervals; k: spline order.
        coef : 3D torch.tensor
            shape (in_dim, out_dim, G+k)
        k : int
            the piecewise polynomial order of splines.
        m : int
            Qm,n量化整数部分
        n : int
            Qm,n量化小数部分
        device : str
            devicde
        
    Returns:
    --------
        y_eval : 3D torch.tensor
        shape (batch, in_dim, out_dim)
        
    '''
    b_splines = B_batch(x_eval, grid, k=k,M_num_bits = M_num_bits, N_num_bits = N_num_bits,bit_width = bit_width)#计算所有B样条
    b_splines_test =b_batch_Piecewise_polynomial(x_eval, grid, k=k,M_num_bits = M_num_bits, N_num_bits = N_num_bits,bit_width = bit_width)
    # b_spline.shape(batch,in_dim,G+k)
    # coef.shape(in_dim,out_dim,G+k)
    b_exp = b_splines_test[:,:,None,:]
    c_exp = coef[None,:,:,:]
    result = b_exp * c_exp
    y_eval = np.sum(result, axis=-1)     #对最后一维度进行求和
    #y_eval = torch.einsum('ijk,jlk->ijl', b_splines, coef.to(b_splines.device)) 
    # 维度收缩rescale
    y_eval = (y_eval + (1 << (N_num_bits - 1))) >> N_num_bits 
    return y_eval

def coef2curve_derivative(x_eval, grid, coef, k, M_num_bits = 7, N_num_bits = 16, bit_width=48):
    '''
    B样条导数总和计算
    Args:
    -----
        x_eval : 2D torch.tensor
            shape (batch, in_dim)
        grid : 2D torch.tensor
            shape (in_dim, G+2k). G: the number of grid intervals; k: spline order.
        coef : 3D torch.tensor
            shape (in_dim, out_dim, G+k)
        k : int
            the piecewise polynomial order of splines.
        M_num_bits : int
            Qm,n量化整数部分
        N_num_bits : int
            Qm,n量化小数部分
        device : str
            devicde
        bit_width : int
            中间计算位宽(default: 48 防溢出)
        
    Returns:
    --------
        df_dD : 3D torch.tensor
        shape (batch, in_dim, out_dim)
        
    '''
    dB = B_batch_derivative(x_eval, grid, k,M_num_bits = M_num_bits, N_num_bits=N_num_bits, bit_width=bit_width)  # (batch, in_dim, num_basis)
    dB_test = b_batch_Piecewise_polynomial_derivative(x_eval, grid, k=k,M_num_bits = M_num_bits, N_num_bits=N_num_bits, bit_width=bit_width)
    # prepare for broadcast
    dB_exp = dB_test[:,:,None,:] # (batch, in_dim, num_basis) --> (batch, in_dim, out_dim,num_basis)
    coef_exp = coef[None,:,:,:] # (in_dim,out_dim,G+k) --> (batch,in_dim,out_dim,G+k) 
    # broadcast & sum
    df = np.sum(dB_exp * coef_exp,axis = -1 ) #对最后一维度（阶数）进行求和
    # 维度收缩rescale
    df_eval = (df + (1 << (N_num_bits - 1))) >> N_num_bits 
        
    return df_eval


#====================== 基函数分段多项式实现--未融合系数 ============================
def b_batch_Piecewise_polynomial(x, grid, k=0, extend=True, device='cpu', M_num_bits=7, N_num_bits=16, bit_width=48):
    assert k == 3, "only support k = 3"

    import numpy as np
    from Converter import quantizer

    # 获取 batch, in_dim
    batch, in_dim = x.shape
    _, G = grid.shape
    num_basis = G - k - 1  # 基函数个数

    # 标准三次 B 样条分段系数
    STANDARD_COEFS = [
        [1/6, 1.0, 2.0, 4/3],   # u ∈ [-2, -1)
        [-1/2, -1.0, 0.0, 2/3],  # u ∈ [-1, 0)
        [1/2, -1.0, 0.0, 2/3],   # u ∈ [0, 1)
        [-1/6, 1.0, -2.0, 4/3]   # u ∈ [1, 2)
    ]
    
    # 转化成定点数
    STANDARD_COEFFS_ARRAY = np.array(STANDARD_COEFS, dtype=np.float64)  # ← 关键！
    coeff_q, _ = quantizer(STANDARD_COEFFS_ARRAY, M_num_bits, N_num_bits)
    coeff_q = coeff_q.reshape(4, 4).astype(np.int64)
    # 初始化输出: (batch, in_dim, num_basis)
    B_q = np.zeros((batch, in_dim, num_basis), dtype=np.int64)

    BOUND = 1 << N_num_bits  # 2^N_num_bits

    # 遍历各个维度
    for d in range(in_dim):
        grid_d = grid[d]          # (G,)
        h_q = grid_d[1] - grid_d[0]  # 网格步长（假设均匀网格）

        # 遍历各个基函数
        for i in range(num_basis):
            t_i = grid_d[i]      # 基函数左端点
            t_j = grid_d[i + 4]  # 基函数右端点

            # 掩码：找出落在 [t_i, t_j) 区间的点
            x_d = x[:, d]  # (batch,)
            mask = (x_d >= t_i) & (x_d < t_j)
            
            if not np.any(mask):
                continue  # 没有点落在该区间，跳过

            # 提取有效 x 值 
            x_active = x_d[mask].astype(np.int64)  # 只取有效点
            diff = x_active - t_i                  # (num_active,)

            # 计算 u = (x - t_i)/h - 2
            diff_wide = diff.astype(np.int64) << N_num_bits  # 放大以保留精度
            u_wide = diff_wide // h_q
            u_q = u_wide - (2 << N_num_bits)  # 减去 2（定点形式）

            # Interval Finder
            seg_id = np.full_like(u_q, -1, dtype=np.int64)
            seg_id = np.where(u_q < -2 * BOUND, -1, seg_id)
            seg_id = np.where((u_q >= -2 * BOUND) & (u_q < -1 * BOUND), 0, seg_id)
            seg_id = np.where((u_q >= -1 * BOUND) & (u_q < 0), 1, seg_id)
            seg_id = np.where((u_q >= 0) & (u_q < 1 * BOUND), 2, seg_id)
            seg_id = np.where((u_q >= 1 * BOUND) & (u_q < 2 * BOUND), 3, seg_id)

            valid_mask = seg_id >= 0
            if not np.any(valid_mask):
                continue

            u_valid = u_q[valid_mask]
            seg_valid = seg_id[valid_mask]

            # === Horner 法计算多项式 ===
            a3 = coeff_q[seg_valid, 0]
            a2 = coeff_q[seg_valid, 1]
            a1 = coeff_q[seg_valid, 2]
            a0 = coeff_q[seg_valid, 3]

            val = a3.copy()
            val = (val * u_valid) >> N_num_bits
            val += a2
            val = (val * u_valid) >> N_num_bits
            val += a1
            val = (val * u_valid) >> N_num_bits
            val += a0

            # 写回结果
            out_full = np.zeros(batch, dtype=np.int64)
            # 获取原始索引：mask 为 True 的位置中，再筛选 valid_mask 为 True 的
            active_indices = np.where(mask)[0]      # shape: (num_active,)
            final_indices = active_indices[valid_mask]  # shape: (num_valid,)
            out_full[final_indices] = val

            B_q[:, d, i] = out_full

    return B_q


def b_batch_Piecewise_polynomial_derivative(
    x, grid, k=3, extend=True, device='cpu',
    M_num_bits=7, N_num_bits=16, bit_width=48
):
    assert k == 3, "only support k = 3"

    from Converter import quantizer

    batch, in_dim = x.shape
    _, G = grid.shape
    num_basis = G - k - 1

    # Coefficients for B(u) = a3*u^3 + a2*u^2 + a1*u + a0, u ∈ [-2,2)
    STANDARD_COEFS = np.array([
        [1/6, 1.0, 2.0, 4/3],
        [-1/2, -1.0, 0.0, 2/3],
        [1/2, -1.0, 0.0, 2/3],
        [-1/6, 1.0, -2.0, 4/3]
    ], dtype=np.float64)

    DERIV_COEFFS_FLOAT = np.stack([
        3 * STANDARD_COEFS[:, 0],  # 3*a3 → u² coef
        2 * STANDARD_COEFS[:, 1],  # 2*a2 → u coeff
        1 * STANDARD_COEFS[:, 2]   # a1   → const
    ], axis=1)  # (4, 3)

    deriv_q, _ = quantizer(DERIV_COEFFS_FLOAT, M_num_bits, N_num_bits)
    deriv_q = deriv_q.reshape(4, 3).astype(np.int64)

    dB_q = np.zeros((batch, in_dim, num_basis), dtype=np.int64)
    BOUND = 1 << N_num_bits

    for d in range(in_dim):
        grid_d = grid[d]
        h_q = int(grid_d[1] - grid_d[0])  # assume uniform and integer

        for i in range(num_basis):
            t_i = int(grid_d[i])
            t_j = int(grid_d[i + 4])
            x_d = x[:, d]
            mask = (x_d >= t_i) & (x_d < t_j)
            if not np.any(mask):
                continue

            x_active = x_d[mask].astype(np.int64)
            diff = x_active - t_i
            # u = (x - t_i)/h  --> in float, then u_centered = u - 2
            # In fixed-point: u_wide = (diff << N) // h_q  --> Q(N)
            u_wide = (diff.astype(np.int64) << N_num_bits) // h_q
            u_q = u_wide - (2 << N_num_bits)  # u_centered in Q(N)

            seg_id = np.full_like(u_q, -1, dtype=np.int64)
            seg_id = np.where(u_q < -2 * BOUND, -1, seg_id)
            seg_id = np.where((u_q >= -2 * BOUND) & (u_q < -1 * BOUND), 0, seg_id)
            seg_id = np.where((u_q >= -1 * BOUND) & (u_q < 0), 1, seg_id)
            seg_id = np.where((u_q >= 0) & (u_q < 1 * BOUND), 2, seg_id)
            seg_id = np.where((u_q >= 1 * BOUND) & (u_q < 2 * BOUND), 3, seg_id)

            valid_mask = seg_id >= 0
            if not np.any(valid_mask):
                continue

            u_valid = u_q[valid_mask]
            seg_valid = seg_id[valid_mask]

            b2 = deriv_q[seg_valid, 0]
            b1 = deriv_q[seg_valid, 1]
            b0 = deriv_q[seg_valid, 2]

            # All in Q(N); use wider intermediate to avoid overflow
            u_sq = (u_valid.astype(np.int64) * u_valid.astype(np.int64)) >> N_num_bits  # Q(N)
            term2 = (b2.astype(np.int64) * u_sq) >> N_num_bits  # Q(N)
            term1 = (b1.astype(np.int64) * u_valid) >> N_num_bits  # Q(N)
            val_dB_du = term2 + term1 + b0  # dB/du in Q(N)

            # CRITICAL: convert dB/du → dB/dx = (dB/du) / h
            # (val_dB_du << N) // h_q  --> result in Q(N)
            val = (val_dB_du.astype(np.int64) << N_num_bits) // h_q

            # Clip to bit_width if needed
            quant_max = (1 << (bit_width - 1)) - 1
            quant_min = -(1 << (bit_width - 1))
            val = np.clip(val, quant_min, quant_max)

            out_full = np.zeros(batch, dtype=np.int64)
            active_indices = np.where(mask)[0]
            final_indices = active_indices[valid_mask]
            out_full[final_indices] = val
            dB_q[:, d, i] = out_full

    return dB_q

#test--2D
# x = torch.tensor([[1.5,0],
#                  [2.5,0]])

# # grid = torch.linspace(0, 3, steps=4)#创建等差数组
# # grid = grid.unsqueeze(0)#扩展一个维度
# # grid = grid.expand(2, 4)
# # print(grid)

# grid = np.arange(0, 4, 1)
# grid = grid[None,:]
# grid = torch.from_numpy(grid)
# print(grid)
# print(B_batch(x,grid,k=3))
# x = np.array([[1.5, 0.8]], dtype=np.float32)

# # Use coarse grid first (e.g., 4 points over [0, 3])
# grid_coarse = np.linspace(0, 3, 4)  # [0., 1., 2., 3.]
# grid = np.stack([grid_coarse, grid_coarse], axis=0)  # (2, 4)

# # Extend for k=3
# grid_extended = extend_grid(grid, k_extend=3)  # (2, 10)

# # Now evaluate
# B = B_batch(x, grid_extended, k=3)
# print("Extended grid shape:", grid_extended.shape)
# print("B shape:", B.shape)
# print("Sum of B-spline bases:", B.sum(axis=-1))  # Should be ~[[1.0, 1.0]]