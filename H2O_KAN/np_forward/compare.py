import numpy as np
import torch
import matplotlib.pyplot as plt
from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
import sys
sys.path.append('D:\KAN\pykan\H2O_KAN')
from model import H2OKAN

# 加载坐标数据
coords = np.load('./MD/process_data/coord.npy')  # 假设坐标数据保存在该文件中
desc = np.load('./MD/process_data/descriptor.npy')
coords_torch = torch.from_numpy(coords).float()

print(f"Loaded {coords.shape[0]} samples.")

# PyTorch 前向传播

device = torch.device('cpu')  # 或 'cuda' 如果你用 GPU 训练
model_torch = H2OKAN(width=[3, 5, 1], grid=5, k=3, device=device)  # 根据实际情况初始化你的模型
model_torch.load_state_dict(torch.load('H2O_KAN/checkpoints/H2O.pth', map_location=device))
model_torch.eval()

with torch.no_grad():
    energy_torch = model_torch(coords_torch).cpu().numpy().flatten()  # 输出能量

print("PyTorch forward done.")

# NumPy 前向传播
Parameter_convert('H2O_KAN/checkpoints/KAN')

data = np.load('H2O_KAN/np_forward/model.npz')
energy_numpy = model_deduction(desc, data).flatten()  # 确保model_deduction函数能接受coords并返回能量

print("NumPy forward done.")

# 绘制比较图
plt.figure(figsize=(6, 6))
plt.scatter(energy_torch, energy_numpy, alpha=0.6, s=10, color='blue', label='Samples')
plt.plot([min(energy_torch.min(), energy_numpy.min()), max(energy_torch.max(), energy_numpy.max())], 
         [min(energy_torch.min(), energy_numpy.min()), max(energy_torch.max(), energy_numpy.max())], 
         'r--', lw=2, label='Ideal (y=x)')
plt.xlabel('PyTorch Energy Output')
plt.ylabel('NumPy Energy Output')
plt.title('Forward Pass Comparison')
plt.legend()
plt.grid(True, linestyle='--', alpha=0.5)
plt.axis('equal')
plt.tight_layout()
plt.savefig('forward_energy_comparison.png', dpi=300)
plt.show()

# 打印误差评估
mae = np.mean(np.abs(energy_torch - energy_numpy))
rmse = np.sqrt(np.mean((energy_torch - energy_numpy) ** 2))
print(f"MAE between PyTorch and NumPy: {mae:.6f}")
print(f"RMSE between PyTorch and NumPy: {rmse:.6f}")