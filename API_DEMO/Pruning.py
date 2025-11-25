#剪枝
from kan import *

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# create a KAN: 2D inputs, 1D output, and 5 hidden neurons. cubic spline (k=3), 5 grid intervals (grid=5).
model = KAN(width=[2,5,1], grid=5, k=3, seed=1, device=device)

# create dataset f(x,y) = exp(sin(pi*x)+y^2)
f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
dataset = create_dataset(f, n_var=2, device=device)
dataset['train_input'].shape, dataset['train_label'].shape

# train the model
model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01);
model(dataset['train_input'])
model.plot()

# 修剪模式
mode = 'auto'

if mode == 'auto':
    # automatic
    # 设定修建阈值
    model = model.prune_node(threshold=1e-2) # by default the threshold is 1e-2
    model.plot()
elif mode == 'manual':
    # manual
    model = model.prune_node(active_neurons_id=[[0]])#修剪节点
    model.prune_edge()#修剪边缘--阈值低的部分（beta)
    model = model.prune()#两者一同修剪（常用）