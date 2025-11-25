#训练的超参数
from kan import *
import torch

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
dataset = create_dataset(f, n_var=2, device=device)
dataset['train_input'].shape, dataset['train_label'].shape

#参数λ：整体惩罚力度
#作用：控制权重稀疏性
#效果：鼓励不重要的连接权重趋近于0
#可能会导致震荡严重
model = KAN(width=[2,5,1], grid=5, k=3, seed=1, device=device)
model.fit(dataset, opt="LBFGS", steps=20, lamb=1.00);
model.plot()
plt.show()

#参数λ_ent：熵正则化
#作用：控制函数形状的简洁性
#效果：鼓励激活函数更简单、更平滑，避免过度震荡
#可能会导致稀疏化效果减弱？
model = KAN(width=[2,5,1], grid=5, k=3, seed=1, device=device)
model.fit(dataset, opt="LBFGS", steps=20, lamb_entropy=10.0);
model.plot()
plt.show()

#参数seed：随机种子--常用42
#作用：用于控制模型初始化的随机性，确保每次运行代码时得到完全相同的随机初始化。
model = KAN(width=[2,5,1], grid=3, k=3, seed=42, device=device)
model.fit(dataset, opt="LBFGS", steps=20, lamb=0.01);
model.plot()
plt.show()