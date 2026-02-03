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
parser = argparse.ArgumentParser(description="运行 FPGA 能量与梯度验证（随机样本 0-1000）")
parser.add_argument("--sample", type=int, default=None, help="显式指定样本索引（覆盖随机选择）")
args = parser.parse_args()

# === 执行 forward.py 并捕获 x_QAT、y 和 grad ===
if not os.path.exists(forward_py_path):
    print(f"❌ forward.py 不存在: {forward_py_path}")
    sys.exit(1)

forward_globals = {
    '__file__': forward_py_path,
    '__name__': '__main__',
    '__package__': None,
}

import contextlib
with open(forward_py_path, 'r', encoding='utf-8') as f:
    code = f.read()
    try:
        with open(os.devnull, 'w') as devnull, contextlib.redirect_stdout(devnull), contextlib.redirect_stderr(devnull):
            exec(code, forward_globals)
    except Exception as e:
        # If forward.py raises, print the error so user can debug
        print(f"❌ 执行 forward.py 时出错: {e}")
        sys.exit(1)

try:
    x_QAT = forward_globals['x_QAT']   # shape: (batch, in_dim)
    y = forward_globals['y']           # shape: (batch, 1) 或 (batch,)
    grad = forward_globals['grad']     # shape: (batch, in_dim)，∂E/∂D
except KeyError as e:
    print(f"❌ forward.py 中缺少必要变量: {e}（请确保定义了 x_QAT, y, grad）")
    sys.exit(1)

# 标准化 y 形状
if y.ndim == 2 and y.shape[1] == 1:
    y = y.flatten()

batch_size = x_QAT.shape[0]
in_dim = x_QAT.shape[1]

assert grad.shape == (batch_size, in_dim), f"grad 形状 {grad.shape} 与输入维度 {in_dim} 不匹配！"

print(f"✅ 成功加载数据:")
print(f"   x_QAT.shape = {x_QAT.shape}  (batch={batch_size}, in_dim={in_dim})")
print(f"   y.shape     = {y.shape}")
print(f"   grad.shape  = {grad.shape}")

# === 随机选择样本（0 到 1000，不设种子）===
if args.sample is not None:
    sample_idx = args.sample
else:
    max_valid_index = min(1000, batch_size - 1)
    if max_valid_index < 0:
        print("❌ 数据集为空，无法选择样本")
        sys.exit(1)
    sample_idx = np.random.randint(0, max_valid_index + 1)

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

# 理论值（Q7.24 → float）
y_scaled = y[sample_idx].item()
theoretical_energy = y_scaled * (2 ** -24)

grad0_scaled = grad[sample_idx, 0].item()
grad1_scaled = grad[sample_idx, 1].item()
grad2_scaled = grad[sample_idx, 2].item()

grad0_float = grad0_scaled * (2 ** -24)
grad1_float = grad1_scaled * (2 ** -24)
grad2_float = grad2_scaled * (2 ** -24)

# === 计算力（与 forward.py 相同的处理） ===
# 尝试直接从 forward.py 的执行上下文获取 dD_dR 或 coords
if 'dD_dR' in forward_globals:
    dD_dR = forward_globals['dD_dR']
else:
    try:
        from Desc_differential import desc_differentialer
        coord_path = forward_globals.get('coord_dir', "D:/KAN/pykan/MD/process_data/coord.npy")
        coords = np.load(coord_path)
        dD_dR = desc_differentialer(coords)
    except Exception as e:
        print(f"❌ 无法获得 dD_dR 或 coords: {e}")
        sys.exit(1)

# 使用整数运算以匹配 forward.py / FPGA 的整数表示（尽量用 int64）
try:
    grad_int = np.array(grad, dtype=np.int64)
    dD_dR_int = np.array(dD_dR, dtype=np.int64)
except Exception:
    grad_int = np.array(grad)
    dD_dR_int = np.array(dD_dR)

F_int = - np.sum(grad_int[:, :, None] * dD_dR_int, axis=1)
F = F_int

f0_int = int(F[sample_idx, 0])
f1_int = int(F[sample_idx, 1])
f2_int = int(F[sample_idx, 2])

# forward.py 将 F 打印为 F*(2**-48)
f0_float = f0_int * (2 ** -48)
f1_float = f1_int * (2 ** -48)
f2_float = f2_int * (2 ** -48)

print(f"\n📊 理论值:")
print(f"   能量       = {theoretical_energy:.6e} (eV)")
print(f"   force[0]   = {f0_float: .6e} (eV/Ang)")
print(f"   force[1]   = {f1_float: .6e} (eV/Ang)")
print(f"   force[2]   = {f2_float: .6e} (eV/Ang)")

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
print("\n⏳ 请运行 FPGA 仿真/仿真程序，生成 output_data.txt")

input("按 Enter 继续读取 FPGA 输出...")

# === 读取 FPGA 输出 ===
if not os.path.exists(DEFAULT_OUTPUT_PATH):
    print(f"❌ {DEFAULT_OUTPUT_PATH} 不存在，请先运行仿真！")
    sys.exit(1)

with open(DEFAULT_OUTPUT_PATH, 'r') as f:
    lines = [line.strip() for line in f if line.strip()]

if len(lines) < 4:
    print("❌ output_data.txt 格式错误：应包含 4 行（Energy, grad0, grad1, grad2）")
    sys.exit(1)

for i, line in enumerate(lines[:4]):
    if len(line) != 16:
        print(f"❌ 第 {i+1} 行格式错误：应为 16 字符 HEX，实际为 '{line}'")
        sys.exit(1)

# === 读取 FPGA 输出 ===
def hex64_to_int64(hex_str):
    val = int(hex_str, 16)
    if val >= (1 << 63):
        val -= (1 << 64)
    return val

# 解析 FPGA 输出：第1行能量为 Q7.24（2**-24），后续三行为原始输出的 grad（Q7.24）
fpga_energy_int = hex64_to_int64(lines[0])
fpga_grad0_int = hex64_to_int64(lines[1])
fpga_grad1_int = hex64_to_int64(lines[2])
fpga_grad2_int = hex64_to_int64(lines[3])

fpga_energy_float = fpga_energy_int * (2 ** -24)
# FPGA 输出的 grad 是 Q7.24
fpga_grad0_float = fpga_grad0_int * (2 ** -24)
fpga_grad1_float = fpga_grad1_int * (2 ** -24)
fpga_grad2_float = fpga_grad2_int * (2 ** -24)

# print(f"\n✅ FPGA 输出结果（样本 {sample_idx}）:")
# print(f"   能量       = {fpga_energy_float:.6e}  [HEX: {lines[0]}]")
# print(f"   fpga grad[0]= {fpga_grad0_float: .6e}  [HEX: {lines[1]}]")
# print(f"   fpga grad[1]= {fpga_grad1_float: .6e}  [HEX: {lines[2]}]")
# print(f"   fpga grad[2]= {fpga_grad2_float: .6e}  [HEX: {lines[3]}]")

# === 用 FPGA 输出的 grad 与 dD_dR 计算 FPGA 侧的力（整数层面），然后缩放为浮点进行比较 ===
fpga_grad_int = np.array([fpga_grad0_int, fpga_grad1_int, fpga_grad2_int], dtype=np.int64)
# dD_dR_int 对应批次，选取样本 sample_idx
try:
    dD_sample_int = dD_dR_int[sample_idx]
except Exception:
    dD_sample_int = np.array(dD_dR[sample_idx], dtype=np.int64)

# 计算 F_fpga_from_grad_int = - sum(fpga_grad[:,None] * dD_sample_int, axis=0)
F_fpga_from_grad_int = - np.sum(fpga_grad_int[:, None] * dD_sample_int, axis=0)
F_fpga0 = int(F_fpga_from_grad_int[0])
F_fpga1 = int(F_fpga_from_grad_int[1])
F_fpga2 = int(F_fpga_from_grad_int[2])

F_fpga0_float = F_fpga0 * (2 ** -48)
F_fpga1_float = F_fpga1 * (2 ** -48)
F_fpga2_float = F_fpga2 * (2 ** -48)

print(f"\n📊 FPGA输出值:")
print(f"   能量       = {fpga_energy_float:.6e} (eV)  [HEX: {lines[0]}]")
print(f"   force_from_fpga_grad[0] = {F_fpga0_float: .6e} (eV/Ang)  [int: {F_fpga0}]")
print(f"   force_from_fpga_grad[1] = {F_fpga1_float: .6e} (eV/Ang)  [int: {F_fpga1}]")
print(f"   force_from_fpga_grad[2] = {F_fpga2_float: .6e} (eV/Ang)  [int: {F_fpga2}]")

# === 对比结果（基于力） ===
diff_e = abs(theoretical_energy - fpga_energy_float)
diff_f0 = abs(f0_float - F_fpga0_float)
diff_f1 = abs(f1_float - F_fpga1_float)
diff_f2 = abs(f2_float - F_fpga2_float)
diff_force_l2 = np.sqrt(diff_f0**2 + diff_f1**2 + diff_f2**2)

print(f"\n🔍 绝对误差:")
print(f"   能量误差      = {diff_e:.3e} (eV)")
print(f"   force[0] 误差 = {diff_f0:.3e} (eV/Ang)")
print(f"   force[1] 误差 = {diff_f1:.3e} (eV/Ang)")
print(f"   force[2] 误差 = {diff_f2:.3e} (eV/Ang)")
print(f"   |Δforce|₂     = {diff_force_l2:.3e} (eV/Ang)")

tolerance = 1e-5
if diff_e <= tolerance and diff_force_l2 <= tolerance:
    print("\n🎉 FPGA 能量与力（Force）匹配成功！")
else:
    print("\n⚠️ 匹配失败！请检查以下可能原因：")
    print("   • FPGA 是否输出了 Force 而非 grad？")
    print("   • 定点格式是否一致（Energy: Q7.24; Force: 与 forward.py 的 F，host 端按 2**-48 缩放）")
    print("   • 量化参数（M/N bits）是否匹配？")