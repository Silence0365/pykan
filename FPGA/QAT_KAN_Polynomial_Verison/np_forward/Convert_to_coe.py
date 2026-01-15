import numpy as np
import os

def coeff_to_coe(coeff, layer_name, bit_width=32, save_dir="."):
    """
    将分段多项式系数张量按 (input_dim, output_dim) 拆分为多个 .coe 文件。
    
    假设 coeff.shape = (in_dim, out_dim, num_intervals, 4)
    
    会生成 in_dim * out_dim 个 .coe 文件，命名格式为:
        {layer_name}_d{d}_o{o}.coe
    
    每个文件内容为: [c0_0, c1_0, c2_0, c3_0, c0_1, c1_1, ..., c3_{G-1}]
    即按区间顺序展开的 4 个系数。

    Args:
        coeff (np.ndarray): 系数张量，shape=(in_dim, out_dim, num_intervals, 4)
        layer_name (str): 层名称前缀，如 "layer0"
        bit_width (int): 系数位宽（如 32）
        save_dir (str): 保存目录路径
    """
    assert coeff.ndim == 4 and coeff.shape[-1] == 4, \
        f"Expected shape (in_dim, out_dim, num_intervals, 4), got {coeff.shape}"
    
    in_dim, out_dim, num_intervals, _ = coeff.shape
    os.makedirs(save_dir, exist_ok=True)
    hex_digits = (bit_width + 3) // 4  # e.g., 32 -> 8 hex digits

    total_files = 0
    for d in range(in_dim):
        for o in range(out_dim):
            # 提取 (d, o) 对应的所有区间系数: shape (num_intervals, 4)
            coe_slice = coeff[d, o]  # (num_intervals, 4)
            
            # 按 C 顺序展平: [c0_0, c1_0, c2_0, c3_0, c0_1, ...]
            flat = coe_slice.flatten(order='C')  # length = num_intervals * 4
            
            filename = f"{layer_name}_in{d}_out{o}.coe"
            full_path = os.path.join(save_dir, filename)
            
            with open(full_path, 'w') as f:
                f.write("memory_initialization_radix=16;\n")
                f.write("memory_initialization_vector=\n")
                lines = []
                for val in flat:
                    if val < 0:
                        val = (1 << bit_width) + val  # 转为补码无符号表示
                    lines.append(f"{val:0{hex_digits}x}")
                f.write(",\n".join(lines))
                f.write(";\n")
            
            total_files += 1
            file_size_bytes = os.path.getsize(full_path)
    #         print(f"已保存: {os.path.abspath(full_path)}")
    #         print(f"   - 元素数量: {flat.size} ({num_intervals} 区间 × 4 系数)")
    #         print(f"   - 文件大小: {file_size_bytes} 字节 ({file_size_bytes / 1024:.2f} KB)\n")

    # print(f"✅ 共生成 {total_files} 个 .coe 文件（{in_dim}×{out_dim}）到 '{os.path.abspath(save_dir)}'")