import os
import sys
import numpy as np

# === 路径配置 ===
current_dir = os.path.dirname(os.path.abspath(__file__))
fpga_dir = os.path.dirname(current_dir)
np_forward_dir = os.path.join(fpga_dir, "QAT_KAN_Polynomial_Verison", "np_forward")

sys.path.insert(0, np_forward_dir)

MODEL_NPZ_PATH = os.path.join(np_forward_dir, "QAT_model.npz")
DEFAULT_INPUT_PATH = os.path.join(fpga_dir, "FPGA_Prj", "KAN_V1", "data", "input_data.txt")
DEFAULT_OUTPUT_PATH = os.path.join(fpga_dir, "FPGA_Prj", "KAN_V1", "data", "output_data.txt")

# === 工具函数 ===
def int32_to_hex(val):
    if val < 0:
        val = (1 << 32) + val
    return format(val & 0xFFFFFFFF, '08X')

def hex64_to_int64(hex_str):
    """将 16 字符 HEX 转为有符号 int64"""
    if len(hex_str) != 16:
        raise ValueError("Hex string must be 16 characters")
    high = int(hex_str[:8], 16)
    low = int(hex_str[8:], 16)
    val64 = (high << 32) | low
    if val64 >= 0x8000000000000000:
        val64 -= 0x10000000000000000
    return val64

# === 导入核心模块 ===
try:
    from Piecewise_polynomial import (
        Piecewise_polynomial_table,
        calculate_Piecewise_polynomial,
        calculate_Piecewise_polynomial_derivative
    )
except ImportError as e:
    print(f"❌ 导入失败: {e}")
    sys.exit(1)

if not os.path.exists(MODEL_NPZ_PATH):
    print(f"❌ 模型文件不存在: {MODEL_NPZ_PATH}")
    sys.exit(1)

# === 读取 FPGA 双输出（out0 和 out1 成对）===
def read_dual_outputs_with_raw(output_path):
    """
    返回:
      raw_lines: 所有原始行（去空格）
      out0_vals: 解析后的 out0 列表
      out1_vals: 解析后的 out1 列表
    """
    if not os.path.exists(output_path):
        print(f"❌ {output_path} 不存在，请先运行仿真！")
        return [], [], []

    with open(output_path, 'r') as f:
        raw_lines = [line.strip() for line in f if line.strip()]

    out0_vals = []
    out1_vals = []

    i = 0
    while i + 1 < len(raw_lines):
        line0 = raw_lines[i]
        line1 = raw_lines[i + 1]
        if len(line0) == 16 and len(line1) == 16:
            try:
                val0 = hex64_to_int64(line0)
                val1 = hex64_to_int64(line1)
                out0_vals.append(val0)
                out1_vals.append(val1)
            except Exception as e:
                print(f"⚠️ 解析出错 at lines {i}-{i+1}: {e}")
                pass
        i += 2

    return raw_lines, out0_vals, out1_vals

# === 主程序 ===
def main():
    print("FPGA BSU 输出验证工具")
    print("=" * 50)

    data = np.load(MODEL_NPZ_PATH)

    # 自动检测有多少层
    layers = []
    for key in data.keys():
        if key.startswith('layer') and '_coef' in key:
            try:
                idx = int(key[5:key.find('_')])
                layers.append(idx)
            except:
                continue
    layers = sorted(set(layers))
    if not layers:
        print("❌ 未检测到任何 layerX_coef 字段")
        return

    print(f"检测到 {len(layers)} 层: layer{', layer'.join(map(str, layers))}")

    # 用户输入 layer
    while True:
        try:
            L = int(input(f"请输入要验证的层编号 (例如 {layers[0]}): "))
            if L in layers:
                break
            else:
                print(f"❌ 无效层编号。可用层: {layers}")
        except ValueError:
            print("❌ 请输入整数。")

    # 加载该层参数
    prefix = f'layer{L}'
    grid = data[f'{prefix}_grid']
    coef = data[f'{prefix}_coef']
    scale_sp = data[f'{prefix}_spline_base']
    N_num_bits = int(data[f'{prefix}_QAT_N_num_bits'].item())
    M_num_bits = int(data[f'{prefix}_QAT_M_num_bits'].item())

    in_dim = grid.shape[0]
    out_dim = coef.shape[1]

    print(f"\nlayer{L}: 输入维度 = {in_dim}, 输出维度 = {out_dim}")

    # 输入 d 和 o
    while True:
        try:
            d = int(input(f"请输入输入维度 d (0 ～ {in_dim-1}): "))
            o = int(input(f"请输入输出维度 o (0 ～ {out_dim-1}): "))
            if 0 <= d < in_dim and 0 <= o < out_dim:
                break
            else:
                print("❌ 维度超出范围。")
        except ValueError:
            print("❌ 请输入有效整数。")

    # 提取参数
    grid_d = grid[d]
    x_initial = int(grid_d[0])
    h = int(grid_d[1] - grid_d[0])
    if h <= 0:
        print(f"无效网格步长 h={h}")
        return

    h_inv = int(round((1 << (2 * N_num_bits)) / h))
    grid_num = len(grid_d)
    # bsu_in = 16775312  # 固定测试输入
    bsu_in = -502947  # 固定测试输入
# 14597562,  97425933,     47406, -34358206,   -502947
    # 写入 input_data.txt
    params = {
        'x_initial': x_initial,
        'bsu_in': bsu_in,
        'h_inv': h_inv,
        'grid_num': grid_num,
        'N_number_bits': N_num_bits
    }

    os.makedirs(os.path.dirname(DEFAULT_INPUT_PATH), exist_ok=True)
    with open(DEFAULT_INPUT_PATH, 'w') as f:
        for key in ['x_initial', 'bsu_in', 'h_inv', 'grid_num', 'N_number_bits']:
            f.write(int32_to_hex(params[key]) + '\n')

    print(f"\n已生成 input_data.txt 用于 layer{L}_in{d}_out{o}")
    print(f"   x_initial = {x_initial}, h = {h}, h_inv = {h_inv}, N = {N_num_bits}, grid_num = {grid_num}")

    # === 计算理论值：能量 + 力 ===
    x_eval = np.zeros((1, in_dim), dtype=np.int64)
    x_eval[0, d] = bsu_in

    y_val_eval = calculate_Piecewise_polynomial(
        x_eval, grid, coef, scale_sp,
        k=3, M_num_bits=M_num_bits, N_num_bits=N_num_bits
    )
    y_ref_val = int(y_val_eval[0, d, o])

    y_deriv_eval = calculate_Piecewise_polynomial_derivative(
        x_eval, grid, coef, scale_sp,
        k=3, M_num_bits=M_num_bits, N_num_bits=N_num_bits
    )
    y_ref_deriv = int(y_deriv_eval[0, d, o])
    y_ref_deriv = int(y_ref_deriv >> N_num_bits)
    

    print(f"\n Numpy前向推理输出:")
    print(f"   能量 (value)     = {y_ref_val}")
    print(f"   力   (derivative) = {y_ref_deriv}")

    # 等待仿真
    print("\n waiting Simulation")
    input("按 Enter 继续读取 FPGA 输出...")

    # 读取 FPGA 输出（带原始 HEX）
    raw_lines, fpga_out0_list, fpga_out1_list = read_dual_outputs_with_raw(DEFAULT_OUTPUT_PATH)
    if not fpga_out0_list or not fpga_out1_list:
        return

    # 获取最后一个有效非零输出（跳过前几个周期）
    def get_last_valid(vals, skip=6):
        for i in range(len(vals)-1, skip-1, -1):
            if vals[i] != 0:
                return vals[i], len(vals) - 1 - i  # value, index_from_end
        return vals[-1], 0

    fpga_val, idx0 = get_last_valid(fpga_out0_list)
    fpga_deriv, idx1 = get_last_valid(fpga_out1_list)

    # 找到对应的原始 HEX 行
    total_pairs = min(len(fpga_out0_list), len(fpga_out1_list))
    out0_line_idx = (total_pairs - 1 - idx0) * 2
    out1_line_idx = out0_line_idx + 1

    raw_out0_hex = raw_lines[out0_line_idx] if out0_line_idx < len(raw_lines) else "N/A"
    raw_out1_hex = raw_lines[out1_line_idx] if out1_line_idx < len(raw_lines) else "N/A"

    # === 打印 FPGA 实际输出（含原始 HEX）===
    print(f"\n FPGA 输出:")
    print(f"   能量 (BSU_out0) = {fpga_val}  [原始: {raw_out0_hex}]")
    print(f"   力   (BSU_out1) = {fpga_deriv}  [原始: {raw_out1_hex}]")

    # === 差值分析 ===
    diff_val = abs(y_ref_val - fpga_val)
    diff_deriv = abs(y_ref_deriv - fpga_deriv)

    print(f"\n 差值:")
    print(f"   能量: {diff_val}")
    print(f"   力:   {diff_deriv}")

    ok_val = diff_val <= 5
    ok_deriv = diff_deriv <= 5

    if ok_val and ok_deriv:
        print(" 完全匹配！")
    elif ok_val or ok_deriv:
        print(" 部分匹配（至少一个正确）")
    else:
        print(" 两者均不匹配！")

if __name__ == '__main__':
    main()