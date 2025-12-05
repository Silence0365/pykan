# validate_energy.py
import numpy as np
import torch
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, mean_absolute_error
from kan import KAN
import os  # ← 新增：用于路径操作

# ==============================
# 配置路径
# ==============================
INPUT_DESC_PATH = 'MD/process_data/descriptor.npy'      # 描述子 (1000, 3)
ENERGY_PATH = 'MD/process_data/energy.npy'              # 真实能量 (1000,)
MODEL_CKPT = './model/0.1'                              # 模型路径
DEVICE = 'cuda' if torch.cuda.is_available() else 'cpu'

# 指定输出文件夹
OUTPUT_DIR = 'KAN_H2O\Evolution'  

# 自动创建输出目录
os.makedirs(OUTPUT_DIR, exist_ok=True)

# ==============================
# 1. 加载数据
# ==============================
print("Loading data...")
input_desc = np.load(INPUT_DESC_PATH)   # (N, 3)
true_energy = np.load(ENERGY_PATH)      # (N,)
assert len(input_desc) == len(true_energy), "Mismatch in data length!"

N = len(true_energy)
print(f"Total samples: {N}")

# ==============================
# 2. 重建训练/测试划分
# ==============================
in_train, in_test, out_train, out_test = train_test_split(
    input_desc, true_energy,
    test_size=0.2,
    random_state=42
)

test_indices = []
for sample in in_test:
    idx = np.where((input_desc == sample).all(axis=1))[0]
    if len(idx) > 0:
        test_indices.append(idx[0])
    else:
        raise ValueError("Could not align test set! Check data consistency.")
test_indices = np.array(test_indices)

assert np.allclose(in_test, input_desc[test_indices]), "Test set alignment failed!"
true_test_energy = true_energy[test_indices]

print(f"Test set size: {len(true_test_energy)}")

# ==============================
# 3. 加载 KAN 模型并预测
# ==============================
print("Loading KAN model...")
model = KAN.loadckpt(MODEL_CKPT)

test_input_tensor = torch.from_numpy(in_test).float().to(DEVICE)

with torch.no_grad():
    pred_energy_tensor = model(test_input_tensor)
pred_energy = pred_energy_tensor.cpu().numpy().flatten()

# ==============================
# 4. 计算误差指标
# ==============================
mse = mean_squared_error(true_test_energy, pred_energy)
rmse = np.sqrt(mse)
mae = mean_absolute_error(true_test_energy, pred_energy)

print("\n" + "="*50)
print("Energy Prediction Performance (Test Set)")
print("="*50)
print(f"MSE  : {mse:.6f} eV²")
print(f"RMSE : {rmse:.6f} eV  (≈ {rmse * 23.06:.3f} kcal/mol)")
print(f"MAE  : {mae:.6f} eV")
print("="*50)

# 保存指标到指定文件夹
metrics_path = os.path.join(OUTPUT_DIR, 'energy_validation_metrics.txt')
with open(metrics_path, 'w', encoding='utf-8') as f:
    f.write("Energy Prediction Performance (Test Set)\n")
    f.write(f"MSE  : {mse:.6f} eV²\n")
    f.write(f"RMSE : {rmse:.6f} eV\n")
    f.write(f"MAE  : {mae:.6f} eV\n")
    f.write(f"RMSE (kcal/mol): {rmse * 23.06:.3f}\n")

# ==============================
# 5. 绘制散点图并保存到指定文件夹
# ==============================
plt.figure(figsize=(6, 6))
plt.scatter(true_test_energy, pred_energy, alpha=0.6, s=25, color='#1f77b4')

min_val = min(true_test_energy.min(), pred_energy.min())
max_val = max(true_test_energy.max(), pred_energy.max())
plt.plot([min_val, max_val], [min_val, max_val], 'r--', lw=1.5, label='Ideal')

plt.xlabel('True Energy (eV)', fontsize=12)
plt.ylabel('Predicted Energy (eV)', fontsize=12)
plt.title(f'KAN Energy Prediction\nRMSE = {rmse:.4f} eV', fontsize=13)
plt.legend()
plt.grid(True, linestyle=':', alpha=0.7)
plt.tight_layout()

plot_path = os.path.join(OUTPUT_DIR, 'energy_scatter.png')
plt.savefig(plot_path, dpi=200, bbox_inches='tight')
plt.show()

print("\n✅ Validation complete!")
print(f"→ Metrics saved to: {metrics_path}")
print(f"→ Plot saved to: {plot_path}")