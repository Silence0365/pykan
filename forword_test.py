from kan import *
model = KAN(width=[2,5,1], grid=5, k=3, seed=0)# 模型创建
x = torch.rand(100,2) # 生成传递数据
model(x).shape # 前向传递-返回输出张量的形状
model.plot() # 可视化
plt.show()

# 激活函数的表示：activation(x) = base_function(x) + spline_correction(x)，以silu函数为基础，利用B样条函数进行校正