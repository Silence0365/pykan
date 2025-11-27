# 函数拟合
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
#f = lambda x: x[:,[0]] * x[:,[1]]#f(x,y)=x*y
#f = lambda x: torch.sin(torch.pi * x[:, [0]]) + torch.cos(x[:, [1]])
f = lambda x: torch.exp(torch.sin(torch.pi*x[:,[0]]) + x[:,[1]]**2)
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

# lib = ['x','x^2','x^3','x^4','exp','log','sqrt','tanh','sin','abs','cos']
# model.auto_symbolic(lib=lib)#内部调用fix_symbolic进而调用set_mode设置为s模式
# model.set_mode(0,0,0,mode='ns')#测试，改回ns模式
# model.set_mode(0,0,1,mode='ns')#测试，改回ns模式
# model.set_mode(0,1,0,mode='ns')#测试，改回ns模式
# model.set_mode(0,1,1,mode='ns')#测试，改回ns模式
# model.set_mode(1,0,0,mode='ns')#测试，改回ns模式
# model.set_mode(1,1,0,mode='ns')#测试，改回ns模式

#training
results = model.fit(dataset, opt="LBFGS", steps=50);
train_losses += results['train_loss']
test_losses += results['test_loss']

#plot
model.plot()
plt.show()

plt.plot(train_losses)
plt.plot(test_losses)
plt.legend(['train', 'test'])
plt.ylabel('RMSE')
plt.xlabel('step')
plt.yscale('log')
plt.show()

# ==============================
# 模型拟合评估部分 - 新增内容
# ==============================

def evaluate_model_fit(model, true_func, n_points=5000):
    """
    综合评估模型拟合程度
    """
    # 生成测试数据
    x_test = torch.rand(n_points, 2) * 2 - 1  # 在[-1,1]范围内
    
    # 计算真实值和预测值
    true_values = true_func(x_test).squeeze()
    
    with torch.no_grad():
        pred_values = model(x_test).squeeze()
    
    # 计算各种指标
    mse = torch.mean((pred_values - true_values) ** 2)
    mae = torch.mean(torch.abs(pred_values - true_values))
    rmse = torch.sqrt(mse)
    
    ss_res = torch.sum((true_values - pred_values) ** 2)
    ss_tot = torch.sum((true_values - torch.mean(true_values)) ** 2)
    r_squared = 1 - ss_res / ss_tot
    
    metrics = {
        'MSE': mse.item(),
        'MAE': mae.item(),
        'RMSE': rmse.item(),
        'R²': r_squared.item()
    }
    
    return metrics, true_values, pred_values, x_test

# 执行模型拟合评估
print("\n" + "="*60)
print("开始模型拟合评估...")
print("="*60)

# 定义真实函数
true_function = f

# 评估模型
metrics, true_y, pred_y, x_test = evaluate_model_fit(model, true_function, n_points=5000)

# 提取RMSE和MAE
rmse = metrics['RMSE']
mae = metrics['MAE']
r2 = metrics['R²']

# 打印详细指标
print(f"RMSE: {rmse:.6f}")
print(f"MAE: {mae:.6f}")
print(f"R²: {r2:.6f}")

# ====== 真值 vs 预测 的散点图 ======
plt.figure(figsize=(8, 6))
plt.scatter(true_y, pred_y, s=5, alpha=0.5)
minv = min(true_y.min(), pred_y.min())
maxv = max(true_y.max(), pred_y.max())
plt.plot([minv,maxv], [minv,maxv], 'r--', linewidth=2, label='Predict')

# 添加评估指标文本框
textstr = '\n'.join((
    f'RMSE: {rmse:.6f}',
    f'MAE: {mae:.6f}'))

props = dict(boxstyle='round', facecolor='wheat', alpha=0.8)
plt.text(0.95, 0.05, textstr, transform=plt.gca().transAxes, fontsize=12,
        verticalalignment='top', bbox=props)

plt.xlabel("True f(x)")
plt.ylabel("Prediction")
plt.title("Fitting")
plt.grid(True, alpha=0.3)
plt.legend()
plt.tight_layout()
plt.show()

# 额外分析：最大误差点
errors = torch.abs(pred_y - true_y)
max_error_idx = torch.argmax(errors)
max_error_point = x_test[max_error_idx]
max_error_true = true_y[max_error_idx]
max_error_pred = pred_y[max_error_idx]

print(f"\n最大误差分析:")
print(f"位置: x={max_error_point[0]:.3f}, y={max_error_point[1]:.3f}")
print(f"真实值: {max_error_true:.6f}")
print(f"预测值: {max_error_pred:.6f}")
print(f"绝对误差: {errors[max_error_idx]:.6f}")

# 测试边界情况
print(f"\n边界点测试:")
test_points = torch.tensor([
    [1.0, 1.0],   # 右上角
    [1.0, -1.0],  # 右下角  
    [-1.0, 1.0],  # 左上角
    [-1.0, -1.0], # 左下角
    [0.0, 0.0]    # 中心点
])

with torch.no_grad():
    test_pred = model(test_points).squeeze()
test_true = test_points[:, 0] * test_points[:, 1]

for i, (point, true_val, pred_val) in enumerate(zip(test_points, test_true, test_pred)):
    error = abs(pred_val - true_val)
    print(f"点({point[0]:.1f}, {point[1]:.1f}): 真实={true_val:.3f}, 预测={pred_val:.3f}, 误差={error:.6f}")

print("\n" + "="*60)
print("模型拟合评估完成!")
print("="*60)