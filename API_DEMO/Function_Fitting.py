#函数拟合
from kan import *
from kan.utils import ex_round

import matplotlib.pyplot as plt
import numpy as np
import sympy as sp
import torch


device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# initialize KAN with G=3
model = KAN(width=[2,5,1], grid=3, k=3, seed=42, device=device)

# create dataset
f = lambda x: x[:,[0]] * x[:,[1]]#f(x,y)=x*y
#f = lambda x: torch.sin(torch.pi * x[:, [0]]) + torch.cos(x[:, [1]])
# f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
dataset = create_dataset(f, n_var=2, device=device)

#data_collect
train_losses = []
test_losses = []

#training
results = model.fit(dataset, opt="LBFGS", steps=50,lamb=0.001);#model.fit中具有返回值定义——自行跳转
train_losses += results['train_loss']
test_losses += results['test_loss']

#剪枝
model = model.prune()

#网格细化
model = model.refine(5)

#training
results = model.fit(dataset, opt="LBFGS", steps=50);
train_losses += results['train_loss']
test_losses += results['test_loss']


#网格细化
model = model.refine(10)
#training
results = model.fit(dataset, opt="LBFGS", steps=50);
train_losses += results['train_loss']
test_losses += results['test_loss']


#网格细化
model = model.refine(20)
#training
results = model.fit(dataset, opt="LBFGS", steps=50);
train_losses += results['train_loss']
test_losses += results['test_loss']


#plot
model.plot()
plt.show()

#符号化——symbolic_formula前提
lib = ['x','x^2','x^3','x^4','exp','log','sqrt','tanh','sin','abs','cos']
model.auto_symbolic(lib=lib)#内部调用fix_symbolic进而调用set_mode设置为s模式
# model.set_mode(0,0,0,mode='n')#测试，改回n模式
# model.set_mode(0,0,1,mode='n')#测试，改回n模式
# model.set_mode(0,1,0,mode='n')#测试，改回n模式
# model.set_mode(0,1,1,mode='n')#测试，改回n模式
# model.set_mode(1,0,0,mode='n')#测试，改回n模式
# model.set_mode(1,1,0,mode='n')#测试，改回n模式

#training
results = model.fit(dataset, opt="LBFGS", steps=50);
train_losses += results['train_loss']
test_losses += results['test_loss']

#plot
model.plot()
plt.show()


#export
#model.symbolic_formula():尝试将其学到的函数关系用一个具体的数学公式（符号表达式）表示出来
#ex_round:对符号表达式中的浮点数进行四舍五入——此处保留4位
ex2=ex_round(model.symbolic_formula()[0][0],4)
print(ex2)

plt.plot(train_losses)
plt.plot(test_losses)
plt.legend(['train', 'test'])
plt.ylabel('RMSE')
plt.xlabel('step')
plt.yscale('log')
plt.show()

# 两条曲线都很高且接近	训练和测试误差都很大	欠拟合 - 模型太简单
# 训练曲线很低，测试曲线很高	训练误差小，    测试误差大	过拟合 - 模型太复杂
# 两条曲线都很低且接近	训练和测试误差都小	    良好拟合 - 理想状态

# ============ 新增部分：符号公式与原始函数对比 ============

############################################################
# 评估 symbolic_formula() 与真实 f 的拟合效果
############################################################

# ====== 1. 获取符号表达式 ======
sym_expr = model.symbolic_formula()[0][0]
sym_expr = ex_round(sym_expr, 4)
print("Symbolic Formula:", sym_expr)

# ====== 2. 自动提取变量 ======
vars_in_expr = sorted(sym_expr.free_symbols, key=lambda s: s.name)
print("Detected variables:", vars_in_expr)

# 例如输出: [x_1, x_2]

# ====== 3. 创建 NumPy 可执行函数 ======
sym_func = sp.lambdify(vars_in_expr, sym_expr, modules=['numpy'])

# ====== 4. 构造测试集 ======
N_test = 5000
test_x = torch.rand(N_test, 2).to(device)

with torch.no_grad():
    true_y = f(test_x).cpu().numpy().flatten()

# ====== 5. 将变量按名字对应 ======

# KAN 默认 variable index 是 1-based：x_1, x_2, ...
# test_x[:,0] → x_1   test_x[:,1] → x_2
feed_vars = []
for v in vars_in_expr:
    idx = int(v.name.split('_')[1]) - 1  # x_1 → 0, x_2 → 1
    feed_vars.append(test_x[:, idx].cpu().numpy())

feed_vars = tuple(feed_vars)

# ====== 6. 计算符号预测 ======
pred_y = sym_func(*feed_vars)
pred_y = np.array(pred_y).flatten()

# ====== 7. 误差指标 ======
rmse = np.sqrt(np.mean((pred_y - true_y)**2))
mae = np.mean(np.abs(pred_y - true_y))
rel_err = np.mean(np.abs(pred_y - true_y) / (np.abs(true_y)+1e-8))

print("\n===== Symbolic Model Evaluation =====")
print("RMSE:", rmse)
print("MAE:", mae)
print("Mean Relative Error:", rel_err)
print("=====================================\n")

# ====== 8. 真值 vs 预测 的散点图 ======
plt.figure(figsize=(6,5))
plt.scatter(true_y, pred_y, s=5, alpha=0.5)
minv = min(true_y.min(), pred_y.min())
maxv = max(true_y.max(), pred_y.max())
plt.plot([minv,maxv], [minv,maxv], 'r--')
plt.xlabel("True f(x)")
plt.ylabel("Symbolic Prediction")
plt.title("True vs Symbolic Prediction")
plt.grid(True)
plt.show()

# 采用ns模式时
# RMSE: 0.7524993
# MAE: 0.6231215
# Mean Relative Error: 328.82462
# 原因：所输入的数据是由固定的符号函数所产生的，并未引入噪声，如果用B样条加入计算会引入误差导致RMSE上升
#=====================================#
# 采用s模式时
# 尽可能学习到了固定的符号函数，用符号函数来表示不会引起误差
# RMSE: 0.00030184243
# MAE: 0.00025632174
# Mean Relative Error: 0.09852632
#=====================================#
# 采用n模式时
# RMSE: 0.015571143
# MAE: 0.012702349
# Mean Relative Error: 2.1250834
# 在数据集密集处拟合好，但是泛化或者外推时能力便会很差
