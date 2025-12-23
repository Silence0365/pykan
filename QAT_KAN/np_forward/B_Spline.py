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
    # b_spline.shape(batch,in_dim,G+k)
    # coef.shape(in_dim,out_dim,G+k)
    b_exp = b_splines[:,:,None,:]
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
    # prepare for broadcast
    dB_exp = dB[:,:,None,:] # (batch, in_dim, num_basis) --> (batch, in_dim, out_dim,num_basis)
    coef_exp = coef[None,:,:,:] # (in_dim,out_dim,G+k) --> (batch,in_dim,out_dim,G+k) 
    # broadcast & sum
    df = np.sum(dB_exp * coef_exp,axis = -1 ) #对最后一维度（阶数）进行求和
    # 维度收缩rescale
    df_eval = (df + (1 << (N_num_bits - 1))) >> N_num_bits 
        
    return df_eval


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