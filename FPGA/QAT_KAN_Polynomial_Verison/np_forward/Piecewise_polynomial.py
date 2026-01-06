# Notice: 此版本为构建新分段多项式版本--FPGA适配版本
import numpy as np

def Piecewise_polynomial_table(grid,coef,scale_sp,k=3,M_num_bits = 7, N_num_bits = 16, bit_width=48):
    """
    coef scale_sp 转换为分段多项式系数表

    inputs: 
            grid:   (in_dim, grid_size)
            coef : (in_dim, out_dim, G-(k+1))
            k : B样条阶数
    outputs:
            coeff:  (in_dim, out_dim, num_intervals, 4)  四个多项式系数
    """

    assert k == 3, "only support k = 3"

    # k = 3 时，标准三次 B 样条分段系数 (采用量化整数运算以匹配 b_batch 的行为)
    STANDARD_COEFS_FLOAT = np.array([
        [1/6, 1.0, 2.0, 4/3],
        [-1/2, -1.0, 0.0, 2/3],
        [1/2, -1.0, 0.0, 2/3],
        [-1/6, 1.0, -2.0, 4/3]
    ], dtype=np.float64)

    # 将标准系数量化为 Q 格式整数（与 b_batch_Piecewise_polynomial 中使用的一致）
    from Converter import quantizer
    std_q, _ = quantizer(STANDARD_COEFS_FLOAT, M_num_bits, N_num_bits)
    std_q = std_q.reshape(4, 4).astype(np.int64)  # rows: [a3, a2, a1, a0] in Q format

    # grid:  (in_dim, grid_size)
    in_dim = grid.shape[0]
    num_intervals = grid.shape[1] - 1 # 总区间数

    #coef : (in_dim, out_dim, G+k)
    out_dim = coef.shape[1]
    num_base = coef.shape[2] # 基函数个数


    # 初始化新分段多项式系数coeff (in_dim, out_dim, num_intervals, 4)，以 Q 格式整数保存
    coeff = np.zeros((in_dim, out_dim, num_intervals, 4), dtype=np.int64)

    # 遍历 in_dim 维度
    for d in range(in_dim):
        grid_d = grid[d]         # 取出 in_dim 中的网格点

        # 检查是否是均匀网格
        diffs = np.diff(grid_d)  # 相邻间距，长度 = grid_size - 1
        if not np.allclose(diffs, diffs[0], rtol=1e-6, atol=1e-6):
            raise ValueError(f"Grid distance is not same")
        h = diffs[0]             # 网格步长

        # 遍历所有 out_dim
        for o in range(out_dim):
            for j in range(num_intervals):
                temp_c = np.zeros(4, dtype=np.int64)  # [c0, c1, c2, c3] in Q format

                # 遍历此区间支撑的基函数 (最多 4 个)
                for offset in [-3, -2, -1, 0]:
                    i = j + offset
                    if i < 0 or i >= num_base:
                        continue

                    index = -offset  # map to STANDARD_COEFS segment
                    a3_q, a2_q, a1_q, a0_q = std_q[index]  # all in Q

                    coef_q = int(coef[d, o, i])
                    scale_q = int(scale_sp[d, o]) 
                    weight_q = (coef_q * scale_q) >> N_num_bits
                    delta = j - i - 2  # integer shift

                    # 使用整数运算计算 (P(u + delta)) 的多项式系数（仍为 Q 格式）
                    a_0_q = a0_q + a1_q * delta + a2_q * (delta ** 2) + a3_q * (delta ** 3)
                    a_1_q = a1_q + 2 * a2_q * delta + 3 * a3_q * (delta ** 2)
                    a_2_q = a2_q + 3 * a3_q * delta
                    a_3_q = a3_q

                    # weight_q * a_q -> Q * Q = Q^2, 右移 N_num_bits 恢复为 Q
                    temp_c[0] += (weight_q * a_0_q) >> N_num_bits
                    temp_c[1] += (weight_q * a_1_q) >> N_num_bits
                    temp_c[2] += (weight_q * a_2_q) >> N_num_bits
                    temp_c[3] += (weight_q * a_3_q) >> N_num_bits

                coeff[d, o, j, :] = temp_c

    return coeff


def calculate_Piecewise_polynomial(x_eval, grid, coef, scale_sp,k, M_num_bits = 7, N_num_bits = 16, bit_width=48):
    """
    coeff新分段多项式计算函数

    inputs: 
            x_eval: (batch,in_dim)
            grid:   (in_dim, grid_size)
            coef : (in_dim, out_dim, G-(k+1))
            scale_sp:(in_dim,out_dim)
            k : B样条阶数
            M_num_bits:整数位数
            N_num_bits:小数位数
            bit_width:总位宽
    outputs:
            y_eval:(batch,in_dim,out_dim)
    """
    # 计算系数
    coeff = Piecewise_polynomial_table(grid,coef,scale_sp,k,M_num_bits, N_num_bits, bit_width=48)
    
    # x_eval:     (batch, in_dim) 
    batch = x_eval.shape[0]
    in_dim = x_eval.shape[1]
    #coef : (in_dim, out_dim, G+k)
    out_dim = coef.shape[1]

    # 初始化输出 (batch, in_dim, out_dim)
    y_eval = np.zeros((batch, in_dim, out_dim))
    y_eval = y_eval.astype(np.int64) 

    # 计算各个维度
    for d in range(in_dim):
        xd = x_eval[:, d]          # (batch,)
        grid_d = grid[d]           # (G,)
        h = grid_d[1] - grid_d[0]  # 步长

        # 找区间
        j = np.searchsorted(grid_d, xd, side='right') - 1
        j = np.clip(j, 0, len(grid_d) - 2)

        # 局部坐标
        # u = (xd - grid_d[j]) // h   # (batch,)
        diff = xd - grid_d[j]
        u = (diff << N_num_bits) // h  
        u = u[:, None]             # (batch, 1) 用于广播

        # 取出系数（使用j索引可能产生不同的轴布局）
        coef_selected = coeff[d, :, j, :]

        # 目标布局：poly shape = (batch, out_dim, 4)
        if coef_selected.shape[0] == batch and coef_selected.shape[1] == out_dim:
            poly = coef_selected
        elif coef_selected.shape[1] == batch and coef_selected.shape[0] == out_dim:
            poly = np.transpose(coef_selected, (1, 0, 2))
        else:
            # 若仍然不匹配，尝试将 batch 轴移动到第 0 位
            # 找到等于 batch 的轴索引
            axes = [i for i, s in enumerate(coef_selected.shape) if s == batch]
            if axes:
                axis = axes[0]
                poly = np.moveaxis(coef_selected, axis, 0)
            else:
                # 最后手段：显式按每个样本索引收集系数
                # coeff[d]: shape (out_dim, num_intervals, 4)
                poly = np.stack([coeff[d, :, int(jj), :] for jj in j], axis=0)


        # 提取系数 (all Q7.24)
        c0 = poly[:, :, 0].astype(np.int64)
        c1 = poly[:, :, 1].astype(np.int64)
        c2 = poly[:, :, 2].astype(np.int64)
        c3 = poly[:, :, 3].astype(np.int64)

        # u is (batch, 1), Q0.N_num_bits
        u_val = u.astype(np.int64)  # (batch, 1)

        # 计算 u^2 and u^3 in Q0.N_num_bits (通过逐级右移 N_num_bits 保持格式)
        u2 = (u_val * u_val) >> N_num_bits   # Q0.N_num_bits
        u3 = (u2 * u_val) >> N_num_bits      # Q0.N_num_bits

        # 广播 u, u2, u3 to (batch, out_dim)
        u_b = np.broadcast_to(u_val, (batch, out_dim))
        u2_b = np.broadcast_to(u2, (batch, out_dim))
        u3_b = np.broadcast_to(u3, (batch, out_dim))

        # 多项式计算：每项乘法后右移 N_num_bits 以保持 Q7.24
        term0 = c0
        term1 = (c1 * u_b) >> N_num_bits
        term2 = (c2 * u2_b) >> N_num_bits
        term3 = (c3 * u3_b) >> N_num_bits

        fd = term0 + term1 + term2 + term3  # Q7.24
        # important: 防止不在定义区间的值影响结果
        invalid_mask = (diff < 0) | (diff >= h)
        if np.any(invalid_mask):
            fd[invalid_mask, :] = 0

        y_eval[:, d, :] = fd
    return y_eval.astype(np.int64)

def calculate_Piecewise_polynomial_derivative(x_eval, grid, coef, scale_sp, k=3,M_num_bits=7, N_num_bits=16, bit_width=48):
    """
    coeff新分段多项式导数计算函数

    inputs: 
            x_eval: (batch,in_dim)
            grid:   (in_dim, grid_size)
            coef : (in_dim, out_dim, G-(k+1))
            scale_sp:(in_dim,out_dim)
            k : B样条阶数
            M_num_bits:整数位数
            N_num_bits:小数位数
            bit_width:总位宽
    outputs:
            y_eval:(batch,in_dim,out_dim)
    """
    # Step 1: 复用前向的 coeff 表
    coeff = Piecewise_polynomial_table(grid, coef, scale_sp, k, M_num_bits, N_num_bits, bit_width)
    
    batch, in_dim = x_eval.shape
    out_dim = coef.shape[1]
    
    dy_dx = np.zeros((batch, in_dim, out_dim), dtype=np.int64)

    for d in range(in_dim):
        xd = x_eval[:, d]          # (batch,)
        grid_d = grid[d]
        h = int(grid_d[1] - grid_d[0])  # assume uniform and quantized as int

        # 找区间 j: xd ∈ [grid_d[j], grid_d[j+1])
        j = np.searchsorted(grid_d, xd, side='right') - 1
        j = np.clip(j, 0, len(grid_d) - 2)
        diff = xd - grid_d[j]  # (batch,)

        # 局部坐标 u = (xd - grid_d[j]) / h → Q0.N
        u = (diff.astype(np.int64) << N_num_bits) // h  # (batch,)
        u = u[:, None]  # (batch, 1)

        # 取出多项式系数: (batch, out_dim, 4)
        poly = np.stack([coeff[d, :, int(jj), :] for jj in j], axis=0)  # safe indexing

        c0 = poly[:, :, 0].astype(np.int64)
        c1 = poly[:, :, 1].astype(np.int64)
        c2 = poly[:, :, 2].astype(np.int64)
        c3 = poly[:, :, 3].astype(np.int64)

        # --- 计算 df/du = 3*c3*u^2 + 2*c2*u + c1 ---
        u_val = u.astype(np.int64)  # (batch, 1)
        u2 = (u_val * u_val) >> N_num_bits  # Q0.N

        # 广播到 (batch, out_dim)
        u_b = np.broadcast_to(u_val, (batch, out_dim))
        u2_b = np.broadcast_to(u2, (batch, out_dim))

        term_u2 = (3 * c3 * u2_b) >> N_num_bits   # 3*c3*u²
        term_u1 = (2 * c2 * u_b) >> N_num_bits    # 2*c2*u
        term_u0 = c1                              # c1

        df_du = term_u2 + term_u1 + term_u0       # Q7.24 (same as c*)

        # --- 转换为 df/dx = (df/du) / h ---
        # df/du is Q7.24, h is Q7.24 → result is Q0.0? No!
        # We want df/dx in Q7.24 format.
        # So: (df_du << N_num_bits) // h  → Q7.24
        df_dx = (df_du.astype(np.int64) << N_num_bits) // h

        # --- 边界 mask: outside [grid_d[j], grid_d[j+1]) → derivative = 0 ---
        invalid_mask = (diff < 0) | (diff >= h)
        if np.any(invalid_mask):
            df_dx[invalid_mask, :] = 0

        dy_dx[:, d, :] = df_dx

    return dy_dx



# B样条函数解释
# 由de Boor-Cox递推公式可以推导出，每个B样条基函数的支撑区间为k+1个区间，在k=3时，每个基函数支撑着4个区间
# 网格数决定了总共有多少个区间，即总区间数 = 网格数 - 1
# 对于基函数的个数，为了满足所有区间都被覆盖且边界不越界的要求，故基函数的个数为 总区间数 - 每个基函数支撑区间[(k+1)]
# 参考：https://blog.csdn.net/m0_65512360/article/details/138376865
