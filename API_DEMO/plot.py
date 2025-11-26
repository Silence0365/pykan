#绘图
from kan import *

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# create a KAN: 2D inputs, 1D output, and 5 hidden neurons. cubic spline (k=3), 5 grid intervals (grid=5).
# 输入维度为2，输出维度为1，隐藏层有5个神经元，使用三次样条（k=3），网格间隔为3。
model = KAN(width=[2,5,1], grid=3, k=3, seed=1, device=device)

# create dataset f(x,y) = exp(sin(pi*x)+y^2)
# 生成数据
f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
dataset = create_dataset(f, n_var=2, device=device)
dataset['train_input'].shape, dataset['train_label'].shape

#前向传播
model(dataset['train_input']);
#数据展示(输入α与x,输出y,标题My KAN)
#beta:控制激活函数的透明度。数值越大 => 显示的激活函数越多。
model.plot(beta=100, in_vars=[r'$\alpha$', 'x'], out_vars=['y'], title = 'My KAN')
plt.show()
#model.plot(metric='forward_u', beta=100)未归一化的前向传播激活尺度
#model.plot(metric='forward_n', beta=100)归一化的前向传播激活尺度
#model.plot(metric='backward', beta=100)基于反向传播的特征归因分数(默认)

#修枝
model = model.prune()
model.plot()
plt.show()

#调整图像大小（默认0.5）
model.plot(scale=1.0)
model.plot()
plt.show()

#查看样本点
model.get_act(dataset['train_input'][:20])#限制20个样本点--凸显成果
model.plot(sample=True)
plt.show()

#激活函数选择模式
# n:只使用B样条数值分支
# s:只使用符号函数分支
# ns:同时使用两者并相加（默认）
model.fix_symbolic(0,1,0,'x')
model.set_mode(0,1,0,mode='s')#仅作测试
model(dataset['train_input']);#设置完前向传播一次查看图像
model.plot(beta=100)
plt.show()

#plot中颜色的表示
#紫色：符号分支 + 数值分支都激活

#红色：仅符号分支激活

#黑色：仅数值分支（样条）激活

#白色：该连接被剪枝