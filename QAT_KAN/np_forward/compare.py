# validate_energy_force_numpy.py
import sys
import os
# 添加上级目录
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, mean_absolute_error

# === 量化数据 ===
M_num_bits =7
N_num_bits =20
# === 配置路径 ===
COORD_PATH = 'MD/process_data/coord.npy'     # (N, 3, 3)
FORCE_PATH = 'MD/process_data/force.npy'     # (N, 3, 3)
ENERGY_PATH = 'MD/process_data/energy.npy'   # (N,) —— 假设存在！

OUTPUT_DIR = 'QAT_KAN/Evolution'
os.makedirs(OUTPUT_DIR, exist_ok=True)

# === 1. 加载全部数据 ===
print("Loading data...")
coords_3d = np.load(COORD_PATH)    # (N, 3, 3)
forces_3d = np.load(FORCE_PATH)    # (N, 3, 3)
energies = np.load(ENERGY_PATH)    # (N,)

assert coords_3d.shape[0] == forces_3d.shape[0] == energies.shape[0]
N = coords_3d.shape[0]
print(f"Total samples: {N}")

# === 2. 划分测试集（保持对齐）===
indices = np.arange(N)
_, test_idx = train_test_split(indices, test_size=0.2, random_state=42)

coord_test_3d = coords_3d[test_idx]   # (M, 3, 3)
force_test_3d = forces_3d[test_idx]   # (M, 3, 3)
energy_test = energies[test_idx]      # (M,)
M = len(test_idx)
print(f"Test set size: {M}")

# === 3. 构建描述符 & 前向传播（NumPy）===
from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Descriptor_builder import *
from Desc_differential import desc_differentialer
from Converter import *

# 转换模型参数
QAT_Parameter_convert('QAT_KAN/checkpoints/QAT_model.pth',M_num_bits=M_num_bits,N_num_bits=N_num_bits)

# 构建描述符
x_desc = simple_descriptor_builder(coord_test_3d)  # (M, in_dim)
x_desc_qat,scale = quantizer(x_desc,M_num_bits=M_num_bits,N_num_bits=N_num_bits) 
# x_desc = simple_descriptor_builder(x_desc,M_num_bits,N_num_bits)  # (M, in_dim)

# 前向：得到能量和 dE/dD
data = np.load('QAT_KAN/np_forward/QAT_model.npz')
energy_pred, grad_dEdD = model_deduction(x_desc_qat, data)  # energy_pred: (M,), grad_dEdD: (M, in_dim)
energy_pred = energy_pred * (2**-N_num_bits)

# 计算力
dD_dR = desc_differentialer(coord_test_3d)  # (M, in_dim, 9)
F_pred_flat = -np.sum(grad_dEdD[:, :, None] * dD_dR, axis=1)  # (M, 9)
F_pred_flat = F_pred_flat * (2**(-2*N_num_bits))

# 真实力 flatten
force_test_flat = force_test_3d.reshape(M, -1)  # (M, 9)

# === 4. 能量指标 ===
energy_rmse = np.sqrt(mean_squared_error(energy_test, energy_pred))
energy_mae = mean_absolute_error(energy_test, energy_pred)

# === 5. 力指标 ===
force_rmse = np.sqrt(mean_squared_error(force_test_flat, F_pred_flat))
force_mae = mean_absolute_error(force_test_flat, F_pred_flat)

# === 6. 打印结果 ===
print("\n" + "="*60)
print("Energy & Force Prediction Performance (NumPy Forward)")
print("="*60)
print(f"Energy  | RMSE: {energy_rmse:.6f} eV     MAE: {energy_mae:.6f} eV")
print(f"Force   | RMSE: {force_rmse:.6f} eV/Å  MAE: {force_mae:.6f} eV/Å")
print("="*60)

# === 7. 可视化：能量散点图 ===
plt.figure(figsize=(6, 6))
plt.scatter(energy_test, energy_pred, alpha=0.5, s=12, color='purple')
min_e = min(energy_test.min(), energy_pred.min())
max_e = max(energy_test.max(), energy_pred.max())
plt.plot([min_e, max_e], [min_e, max_e], 'r--', label='Ideal')
plt.xlabel('True Energy (eV)')
plt.ylabel('Predicted Energy (eV)')
plt.title(f'Energy Prediction\nRMSE = {energy_rmse:.5f} eV')
plt.legend()
plt.grid(True, linestyle=':', alpha=0.6)
plt.tight_layout()
energy_plot_path = os.path.join(OUTPUT_DIR, 'energy_numpy.png')
plt.savefig(energy_plot_path, dpi=200)
plt.show()

# === 8. 可视化：力散点图 ===
plt.figure(figsize=(6, 6))
plt.scatter(force_test_flat.flatten(), F_pred_flat.flatten(), alpha=0.4, s=8, color='blue')
min_f = min(force_test_flat.min(), F_pred_flat.min())
max_f = max(force_test_flat.max(), F_pred_flat.max())
plt.plot([min_f, max_f], [min_f, max_f], 'r--', label='Ideal')
plt.xlabel('True Force (eV/Å)')
plt.ylabel('Predicted Force (eV/Å)')
plt.title(f'Force Prediction\nRMSE = {force_rmse:.5f} eV/Å')
plt.legend()
plt.grid(True, linestyle=':', alpha=0.6)
plt.tight_layout()
force_plot_path = os.path.join(OUTPUT_DIR, 'force_numpy.png')
plt.savefig(force_plot_path, dpi=200)
plt.show()

# === 9. 保存指标到文件 ===
metrics_file = os.path.join(OUTPUT_DIR, 'energy_force_numpy.txt')
with open(metrics_file, 'w', encoding='utf-8') as f:
    f.write("Energy & Force Prediction Performance (NumPy Implementation)\n")
    f.write("="*60 + "\n")
    f.write(f"Energy RMSE: {energy_rmse:.6f} eV\n")
    f.write(f"Energy MAE : {energy_mae:.6f} eV\n")
    f.write(f"Force  RMSE: {force_rmse:.6f} eV/Å\n")
    f.write(f"Force  MAE : {force_mae:.6f} eV/Å\n")

print("✅ Validation complete!")
print(f"→ Metrics saved to: {metrics_file}")
print(f"→ Energy plot: {energy_plot_path}")
print(f"→ Force plot: {force_plot_path}")