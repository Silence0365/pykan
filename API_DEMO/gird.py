#网格
# KAN的一个重要特性是将样条函数嵌入到神经网络中。
# 然而，样条函数仅在已知有界区域内对函数逼近有效，而神经网络中激活值的范围可能在训练过程中发生变化。
# 因此，我们必须根据激活值的变化适当地更新网格。

from kan import *
from kan.spline import B_batch
import torch
import matplotlib.pyplot as plt
import numpy as np
from kan.spline import extend_grid

# 考虑一个1D例子
# 假设我们在[-1,1]区间有G个间隔的网格，样条阶数为k
# 具有G+K个基函数
G = 5
k = 3
grid = torch.linspace(-1,1,steps=G+1)[None,:]
grid = extend_grid(grid, k_extend=k)

# 样本范围在[-1,1]内
x = torch.linspace(-1,1,steps=1001)[None,:]

basis = B_batch(x, grid, k=k)

for i in range(G+k):
    plt.plot(x[0].detach().numpy(), basis[0,:,i].detach().numpy())

plt.legend(['B_{}(x)'.format(i) for i in np.arange(G+k)])
plt.xlabel('x')
plt.ylabel('B_i(x)')
plt.show()
#注意：KAN中的激活函数是基础函数（base_fuction）+样条函数组成



#网格调整--update_grid_from_sample
#均匀网格grid_eps = 1
model = KAN(width=[1,1], grid=G, k=k)
print(model.act_fun[0].grid) # 默认情况下，网格在[-1,1]区间
x = torch.normal(0,1,size=(1000,1))
model.update_grid_from_samples(x)
print(model.act_fun[0].grid) # 现在网格根据数据分布更新

# 基于样本分布的自适应网格grid_eps = 0
model = KAN(width=[1,1], grid=G, k=k, grid_eps = 0.)
print(model.act_fun[0].grid) # 默认情况下，网格在[-1,1]区间
x = torch.normal(0,1,size=(1000,1))
model.update_grid_from_samples(x)
print(model.act_fun[0].grid) # 现在网格根据数据分布更新，每个区间有大致相同数量的样本