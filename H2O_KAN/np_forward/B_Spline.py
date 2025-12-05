import numpy as np
def B_batch(x, grid, k=0, extend=True, device='cpu'):
    # prepare for boardcast
    x = x[:,:,None]         # 形状: (batch, in_dim) -> (batch, in_dim, 1)
    grid = grid[None,:,:]   # 形状: (in_dim, grid_size) -> (1, in_dim, grid_size)

    # k=0
    if k == 0:
        value = (x >= grid[:, :, :-1]) * (x < grid[:, :, 1:]) # x>grid的左端点 * x<grid的右端点
    else:
        B_km1 = B_batch(x[:,:,0], grid=grid[0,:,:], k=k - 1)#递归计算前一阶的基函数-shape(batch,in_dim,N_{k-1})
        
        #减法因广播后- shape(batch, in_dim, G−k−1)
        value = (x - grid[:, :, :-(k + 1)]) / (grid[:, :, k:-1] - grid[:, :, :-(k + 1)]) * B_km1[:, :, :-1] + (
                    grid[:, :, k + 1:] - x) / (grid[:, :, k + 1:] - grid[:, :, 1:(-k)]) * B_km1[:, :, 1:]
    
    # in case grid is degenerate
    #value = torch.nan_to_num(value)
    value = np.nan_to_num(value, nan=0.0, posinf=0.0, neginf=0.0)
    
    return value

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
def coef2curve(x_eval, grid, coef, k):
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
        device : str
            devicde
        
    Returns:
    --------
        y_eval : 3D torch.tensor
            shape (batch, in_dim, out_dim)
        
    '''
    b_splines = B_batch(x_eval, grid, k=k)#计算所有B样条
    # b_spline.shape(batch,in_dim,G+k)
    # coef.shape(in_dim,out_dim,G+k)
    b_exp = b_splines[:,:,None,:]
    c_exp = coef[None,:,:,:]
    result = b_exp * c_exp
    y_eval = np.sum(result, axis=-1)     #对最后一维度进行求和
    #y_eval = torch.einsum('ijk,jlk->ijl', b_splines, coef.to(b_splines.device))
    
    return y_eval

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