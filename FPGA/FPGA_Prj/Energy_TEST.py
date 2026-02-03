import os
import sys
import argparse
import numpy as np

# === 路径配置 ===
current_dir = os.path.dirname(os.path.abspath(__file__))
fpga_dir = os.path.dirname(current_dir)
np_forward_dir = os.path.join(fpga_dir, "QAT_KAN_Polynomial_Verison", "np_forward")

sys.path.insert(0, np_forward_dir)

forward_py_path = os.path.join(np_forward_dir, "forward.py")
MODEL_NPZ_PATH = os.path.join(np_forward_dir, "QAT_model.npz")
DEFAULT_INPUT_PATH = os.path.join(fpga_dir, "FPGA_Prj", "KAN_V1", "data", "input_data.txt")
DEFAULT_OUTPUT_PATH = os.path.join(fpga_dir, "FPGA_Prj", "KAN_V1", "data", "output_data.txt")

# === 解析命令行参数（保留兼容性，但默认走随机）===
parser = argparse.ArgumentParser(description="Run FPGA energy test with a random sample (0-1000).")
parser.add_argument("--sample", type=int, default=None, help="Explicitly specify sample index (overrides random).")
args = parser.parse_args()

# === 执行 forward.py 并捕获 x_QAT 和 y ===
if not os.path.exists(forward_py_path):
    print(f"❌ forward.py 不存在: {forward_py_path}")
    sys.exit(1)

print("正在执行 forward.py 以获取 x_QAT 和 y...")
forward_globals = {
    '__file__': forward_py_path,
    '__name__': '__main__',
    '__package__': None,
}

with open(forward_py_path, 'r', encoding='utf-8') as f:
    exec(f.read(), forward_globals)

try:
    x_QAT = forward_globals['x_QAT']   # shape: (batch, in_dim)
    y = forward_globals['y']           # shape: (batch, 1)
except KeyError as e:
    print(f"❌ forward.py 中缺少变量: {e}")
    sys.exit(1)

batch_size = x_QAT.shape[0]
in_dim = x_QAT.shape[1]

print(f"✅ 成功加载数据:")
print(f"   x_QAT.shape = {x_QAT.shape}  (batch={batch_size}, in_dim={in_dim})")
print(f"   y.shape = {y.shape}")

# === 随机选择样本（0 到 1000，不设种子）===
if args.sample is not None:
    sample_idx = args.sample
else:
    # 自动限制在 [0, 1000] 且不超过实际数据范围
    max_valid_index = min(1000, batch_size - 1)
    if max_valid_index < 0:
        print("❌ 数据集为空，无法选择样本")
        sys.exit(1)
    sample_idx = np.random.randint(0, max_valid_index + 1)

# 边界检查（双重保险）
if sample_idx < 0 or sample_idx >= batch_size:
    print(f"❌ 样本索引 {sample_idx} 超出范围 [0, {batch_size - 1}]")
    sys.exit(1)

print(f"\n🎲 随机选定样本索引: {sample_idx}（范围 0～{min(1000, batch_size - 1)}）")


# 取对应样本（要求至少 3 个输入维度）
if in_dim < 3:
    print(f"❌ 输入维度不足（当前={in_dim}，需要≥3）")
    sys.exit(1)

bsu_in0_0 = int(x_QAT[sample_idx, 0])
bsu_in0_1 = int(x_QAT[sample_idx, 1])
bsu_in0_2 = int(x_QAT[sample_idx, 2])

y_scaled = y[sample_idx].item()
theoretical_energy = y_scaled * (2 ** -24)

print(f"   y[{sample_idx}] (scaled) = {y_scaled}")
print(f"   y[{sample_idx}] (float) = {theoretical_energy:.6f}")

# === 加载模型参数 ===
if not os.path.exists(MODEL_NPZ_PATH):
    print(f"❌ 模型文件不存在: {MODEL_NPZ_PATH}")
    sys.exit(1)

data = np.load(MODEL_NPZ_PATH)
grid = data['layer0_grid']
assert grid.shape[0] >= 3, "Layer0 输入维度至少为 3"

grid_d0 = grid[0]
x_initial = int(grid_d0[0])
h = int(grid_d0[1] - grid_d0[0])
if h <= 0:
    print(f"❌ 无效网格步长 h={h}")
    sys.exit(1)

N_num_bits = int(data['layer0_QAT_N_num_bits'].item())
M_num_bits = int(data['layer0_QAT_M_num_bits'].item())

h_inv = int(round((1 << (2 * N_num_bits)) / h))
grid_num = len(grid_d0)

# === 写入 input_data.txt ===
def int32_to_hex(val):
    if val < 0:
        val = (1 << 32) + val
    return format(val & 0xFFFFFFFF, '08X')

params = {
    'x_initial': x_initial,
    'bsu_in0_0': bsu_in0_0,
    'bsu_in0_1': bsu_in0_1,
    'bsu_in0_2': bsu_in0_2,
    'h_inv': h_inv,
    'grid_num': grid_num,
    'N_number_bits': N_num_bits,
}

os.makedirs(os.path.dirname(DEFAULT_INPUT_PATH), exist_ok=True)
with open(DEFAULT_INPUT_PATH, 'w') as f:
    for key in ['x_initial', 'bsu_in0_0', 'bsu_in0_1', 'bsu_in0_2', 'h_inv', 'grid_num', 'N_number_bits']:
        f.write(int32_to_hex(params[key]) + '\n')

print(f"\n✅ 已生成 {DEFAULT_INPUT_PATH}（基于样本 {sample_idx}）")
print(f"   x_initial={x_initial}, h={h}, h_inv={h_inv}, N={N_num_bits}, grid_num={grid_num}")

# === 等待仿真 ===
print("\n⏳ 请运行 FPGA 仿真（tb_Energy），生成 output_data.txt")
input("按 Enter 继续读取 FPGA 输出...")

# === 读取 FPGA 输出 ===
if not os.path.exists(DEFAULT_OUTPUT_PATH):
    print(f"❌ {DEFAULT_OUTPUT_PATH} 不存在，请先运行仿真！")
    sys.exit(1)

with open(DEFAULT_OUTPUT_PATH, 'r') as f:
    lines = [line.strip() for line in f if line.strip()]

if len(lines) < 4:
    print("❌ output_data.txt 格式错误：应包含 4 行（Energy, Fx, Fy, Fz）")
    sys.exit(1)

for i, line in enumerate(lines[:4]):
    if len(line) != 16:
        print(f"❌ 第 {i+1} 行格式错误：应为 16 字符 HEX，实际为 '{line}'")
        sys.exit(1)

def hex64_to_int64(hex_str):
    val = int(hex_str, 16)
    if val >= (1 << 63):
        val -= (1 << 64)
    return val

fpga_energy_hex = lines[0]
fpga_energy_int = hex64_to_int64(fpga_energy_hex)
fpga_energy_float = fpga_energy_int * (2 ** -24)

print(f"\n✅ FPGA 输出能量（样本 {sample_idx}）:")
print(f"   raw = {fpga_energy_int}")
print(f"   float = {fpga_energy_float:.6f} [HEX: {fpga_energy_hex}]")

# === 对比结果 ===
diff = abs(theoretical_energy - fpga_energy_float)
print(f"\n📊 能量差值: {diff:.6e}")

if diff <= 1e-5:
    print("🎉 能量匹配成功！")
else:
    print("⚠️ 能量不匹配，请检查量化或硬件实现。")