#保存&加载模型
#每当KAN（模型）被修改（例如，贴合、修剪等）
# 新版本会被保存到model.ckpt文件夹（默认为“model”）。
# 版本编号为“a.b”，其中a为轮数（从零开始，+1）当调用model.rewind（）时），b是每轮的版本号
from kan import *
import torch

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
dataset = create_dataset(f, n_var=2, device=device)
model = KAN(width=[2,5,1], grid=5, k=3, seed=1, auto_save=True, device=device)
model.fit(dataset, opt="LBFGS", steps=50, lamb=0.001);#模型训练


#版本回退
#方法一
model = model.rewind('0.1')#从0.1中加载模型，并接着训练
#方法二
model = KAN.loadckpt('./model' + '0.1')#从0.1中拷贝模型，并开设一个新的训练
model.get_act(dataset)#利用拷贝的模型预先计算并存储模型在前向传播过程中产生的所有中间激活值——便于画出图
model.plot()
plt.show()