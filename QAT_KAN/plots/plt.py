import numpy as np
import matplotlib.pyplot as plt

# 定义输入范围
x = np.linspace(-0.2, 0.2, 50)  # 增加采样点更清晰
y_float = x

# --- 量化参数 ---
num_bits = 8
n = 2**(num_bits - 1) - 1     # 127
y_max = np.abs(y_float).max()
scale = y_max / n             # scale ≈ 0.2 / 127 ≈ 0.001575

# 量化到 int8
y_quant_int = np.round(y_float / scale).clip(-n, n).astype(np.int8)
# 注意：这里 y_quant_int 是真正的整数！例如 [-127, ..., 0, ..., 127]

# 找到所有唯一的量化级别（整数）
unique_levels = np.unique(y_quant_int)

# 提取每个整数级别对应的 x 中点
quant_points_x = []
quant_points_y_int = []  # ← 关键：存整数，不是 float！
for level in unique_levels:
    mask = y_quant_int == level
    if mask.any():
        xs = x[mask]
        quant_points_x.append(xs[len(xs)//2])
        quant_points_y_int.append(level)  # ← 直接存 int 值！

# ===== 第一张图：量化后的整数值（int8）=====
plt.figure(figsize=(6, 4))
plt.scatter(quant_points_x, quant_points_y_int, 
            color='green', s=60, zorder=5, edgecolors='k')
plt.title('Quantized Process')
plt.xlabel('Input')
plt.ylabel('Quantized_Output')
plt.grid(True, linestyle=':', alpha=0.7)
plt.text(0.95, 0.05, f'scale={scale:.6f}', 
         transform=plt.gca().transAxes, ha='right', va='bottom',
         bbox=dict(facecolor='white', alpha=0.5, edgecolor='none'))
plt.tight_layout()
plt.show()

# ===== 第二张图：反量化后的浮点输出 =====
y_quant_float = y_quant_int * scale  # 反量化回 float
plt.figure(figsize=(10, 4))
plt.plot(x, y_float, label='Original $y = x$', color='blue', linewidth=2)
plt.plot(x, y_quant_float, label=f'Dequantized $y$', 
         color='red', linewidth=1.5, linestyle='--')
plt.title('After Dequantization (float domain)')
plt.xlabel('x')
plt.ylabel('y (float)')
plt.legend()
plt.grid(True, linestyle=':', alpha=0.7)
plt.tight_layout()
plt.show()