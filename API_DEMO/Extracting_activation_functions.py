#提取激活函数
from kan import *
import matplotlib.pyplot as plt


device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# create a KAN: 2D inputs, 1D output, and 5 hidden neurons. cubic spline (k=3), 5 grid intervals (grid=5).
model = KAN(width=[2,5,1], grid=3, k=3, seed=1, device=device)
x = torch.normal(0,1,size=(100,2)).to(device)
model(x)
model.plot(beta=100)
plt.show()

# 包含了数据点
#(层索引，输入神经元索引，输出神经元索引)
l = 0
i = 0
j = 3
x, y = model.get_fun(l,i,j)
model.get_range(l,i,j)#打印输入输出范围
plt.show()