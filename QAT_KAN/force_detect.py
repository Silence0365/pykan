# validate_force.py
import os
import numpy as np
import torch
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, mean_absolute_error
from model import QATKAN # 注意：确保路径正确

# === 配置 ===
COORD_PATH = 'MD/process_data/coord.npy'      # (N, 3, 3)
FORCE_PATH = 'MD/process_data/force.npy'      # (N, 3, 3)
MODEL_CKPT = './QAT_KAN\checkpoints/QAT_model.pth'
DEVICE = 'cuda' if torch.cuda.is_available() else 'cpu'
OUTPUT_DIR = 'QAT_KAN/Evolution'
os.makedirs(OUTPUT_DIR, exist_ok=True)

# === 1. 加载数据（保持 3D）===
print("Loading data...")
coords_3d = np.load(COORD_PATH)    # (N, 3, 3)
forces_3d = np.load(FORCE_PATH)    # (N, 3, 3)

assert coords_3d.shape == forces_3d.shape, "Coord and force shape mismatch!"
N = coords_3d.shape[0]
print(f"Total samples: {N}, coord shape: {coords_3d.shape}")

# === 2. 划分测试集（在 3D 上划分）===
_, coord_test_3d, _, force_test_3d = train_test_split(
    coords_3d, forces_3d,
    test_size=0.2,
    random_state=42
)  # both (M, 3, 3)

# === 3. 转为 tensor（保持 3D）===
R_test = torch.from_numpy(coord_test_3d).float().to(DEVICE)
R_test.requires_grad_(True)  # ⚠️ 必须启用梯度！

# === 4. 加载模型（注意 width=[3,5,1] 要和训练一致）===
model = QATKAN(width=[3,5,1], grid=5, k=3, device=DEVICE)
model.load_state_dict(torch.load(MODEL_CKPT, map_location=DEVICE))
model.eval()

# === 5. 预测能量并求力 ===
E_pred = model(R_test)  # (M, 1) —— 模型内部处理 (M,3,3)

# 自动微分：F = -∇E
F_pred_3d = -torch.autograd.grad(E_pred.sum(), R_test)[0]  # (M, 3, 3)

# 转为 numpy 并 flatten 用于指标
F_pred_flat = F_pred_3d.detach().cpu().numpy().reshape(-1, 9)      # (M, 9)
force_test_flat = force_test_3d.reshape(-1, 9)                    # (M, 9)

# === 6. 计算指标 ===
rmse = np.sqrt(mean_squared_error(force_test_flat, F_pred_flat))
mae = mean_absolute_error(force_test_flat, F_pred_flat)

print("\n" + "="*50)
print("Force Prediction Performance")
print("="*50)
print(f"RMSE: {rmse:.5f} eV/Å")
print(f"MAE : {mae:.5f} eV/Å")
print("="*50)

# === 7. 可视化（flatten 后画图）===
plt.figure(figsize=(6, 6))
plt.scatter(force_test_flat.flatten(), F_pred_flat.flatten(), alpha=0.4, s=8)
min_val = min(force_test_flat.min(), F_pred_flat.min())
max_val = max(force_test_flat.max(), F_pred_flat.max())
plt.plot([min_val, max_val], [min_val, max_val], 'r--', label='Ideal')
plt.xlabel('True Force (eV/Å)')
plt.ylabel('Predicted Force (eV/Å)')
plt.title(f'H₂O Force Prediction\nRMSE = {rmse:.4f} eV/Å')
plt.legend()
plt.grid(True, linestyle=':', alpha=0.6)
plt.tight_layout()

plot_path = os.path.join(OUTPUT_DIR, 'force_scatter.png')
plt.savefig(plot_path, dpi=200)
plt.show()

# === 8. 保存结果（UTF-8 安全）===
metrics_file = os.path.join(OUTPUT_DIR, 'force_metrics.txt')
with open(metrics_file, 'w', encoding='utf-8') as f:
    f.write("Force Prediction Performance\n")
    f.write("="*50 + "\n")
    f.write(f"RMSE: {rmse:.5f} eV/Å\n")
    f.write(f"MAE : {mae:.5f} eV/Å\n")

print("✅ Force validation complete!")
print(f"→ Metrics saved to: {metrics_file}")
print(f"→ Plot saved to: {plot_path}")