#正则化
from kan import *
import torch

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
dataset = create_dataset(f, n_var=2, device=device)
dataset['train_input'].shape, dataset['train_label'].shape

#L1正则化惩罚项的计算方式(loss计算方式)
#edge_forward_spline_n：仅考虑样条部分，归一化
#                       希望稀疏化样条连接，同时考虑输入输出尺度差异（输入输出先进行标准化后才输出）
#edge_forward_sum：考虑样条和符号两部分
#                  希望同时稀疏化样条和符号连接
#edge_forward_spline_u：仅考虑样条部分，非归一化
#                       希望基于原始尺度稀疏化样条连接
#edge_backward：边归因分数
#               基于梯度重要性进行稀疏化

#node_backward：节点归因分数
#               希望移除不重要的整个神经元节点
model = KAN(width=[2,5,1], grid=3, k=3, seed=1, device=device)
model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01, reg_metric='edge_forward_spline_n'); # default
#model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01, reg_metric='edge_forward_sum');
#model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01, reg_metric='edge_forward_spline_u');
#model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01, reg_metric='edge_backward');
#model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01, reg_metric='node_backward');
model.plot()

#model.plot(metric='forward_u', beta=100)未归一化的前向传播激活尺度
#model.plot(metric='forward_n', beta=100)归一化的前向传播激活尺度
#model.plot(metric='backward', beta=100)基于反向传播的特征归因分数(默认)