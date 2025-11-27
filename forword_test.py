from kan import *
import torch
#model = KAN(width=[4,5,1], grid=5, k=3, seed=0)# 模型创建
model = KAN.loadckpt('./model/0.9')
x = torch.tensor([[0.1,0.3],
                 [0.3,0.5]]) # 生成传递数据
# x = torch.rand(1000,2)
model(x).shape # 前向传递-返回输出张量的形状
#model.plot(beta=10000, in_vars=[r'x', 'y'], out_vars=['f'], title = 'model_network')#可视化beta决定激活的尺度，即此数据输入时激活情况
#model.plot() # 前向传递-返回输出张量的形状
#plt.show()
print(model(x))

# 激活函数的表示：activation(x) = base_function(x) + spline_correction(x)，以silu函数