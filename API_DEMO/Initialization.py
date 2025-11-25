#初始化
from kan import KAN, create_dataset
import torch
import matplotlib.pyplot as plt

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

model = KAN(width=[2,5,1], grid=5, k=3, seed=0, device=device)#default
#model = KAN(width=[2,5,1], grid=5, k=3, seed=0, base_fun = 'identity', device=device)#激活函数初始化为线性函数
#model = KAN(width=[2,5,1], grid=5, k=3, seed=0, noise_scale=10., device=device)#激活函数初始化为噪声——不推荐
#model = KAN(width=[2,5,1], grid=5, k=3, seed=0, scale_base_mu=5, scale_base_sigma=0, device=device)#固定尺度初始化_sigma函数
#model = KAN(width=[2,5,1], grid=5, k=3, seed=0, sparse_init=True, device=device)#稀疏初始化
x = torch.normal(0,1,size=(100,2)).to(device)
model(x) # 绘制模型前需进行一次前向传播
model.plot()
plt.show()