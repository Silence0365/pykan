import numpy as np
import re
import os
import sys


"""
Parse SIESTA output into NumPy (.npy) format for KAN.
Saves: box.npy, coord.npy, energy.npy, force.npy, type.raw
"""

Z_LIB = {
    'H': 1, 'He': 2,
    'Li': 3, 'Be': 4, 'B': 5, 'C': 6, 'N': 7, 'O': 8, 'F': 9, 'Ne': 10,
    'Na': 11, 'Mg': 12, 'Al': 13, 'Si': 14, 'P': 15, 'S': 16, 'Cl': 17, 'Ar': 18,
    'K': 19, 'Ca': 20,
    'Sc': 21, 'Ti': 22, 'V': 23, 'Cr': 24, 'Mn': 25, 'Fe': 26, 'Co': 27, 'Ni': 28, 'Cu': 29, 'Zn': 30,
    'Ga': 31, 'Ge': 32, 'As': 33, 'Se': 34, 'Br': 35, 'Kr': 36,
    'Rb': 37, 'Sr': 38,
    'Y': 39, 'Zr': 40, 'Nb': 41, 'Mo': 42, 'Tc': 43, 'Ru': 44, 'Rh': 45, 'Pd': 46, 'Ag': 47, 'Cd': 48,
    'In': 49, 'Sn': 50, 'Sb': 51, 'Te': 52, 'I': 53, 'Xe': 54,
}

def read_file(out_file):

    boxes = []
    coords = []
    energies = []
    forces = []
    velocities = []
    atom_types = None

    with open(out_file, 'r') as f:
        lines = f.readlines()

    i = 0
    while i < len(lines):
        line = lines[i] # 取出某一行
        i += 1
        # 读取原子数
        if "NumberOfAtoms" in line:
            atom_num = int(line.split()[-1]) # 取出该行最后一个字符串并转成整数
            i += 1 #跳过已读原子数行

        # 读取原子坐标
        if "outcoor: Atomic coordinates (Ang):" in line:
            atom_positions = []
            types_this_frame = []
            #i += 1
            for j in range(atom_num):
                parts = list(lines[i+j].split())#将每行按空格分割成字符串列表
                atom_x,atom_y,atom_z = float(parts[0]), float(parts[1]), float(parts[2])
                Z = Z_LIB[parts[5]] # atomic number
                atom_positions.append([atom_x,atom_y,atom_z])
                types_this_frame.append(Z)
                # 可写成
                # atom_positions.append(list(map(float,lines[i+j].split()))[:3]) # 仅取前3列坐标信息
                # types_this_frame.append(Z_LIB[lines[i+j].split()[6]])

            # check atom types consistency
            if atom_types is None:
                atom_types = np.array(types_this_frame)
            else:
                assert np.array_equal(atom_types, types_this_frame), \
                    "Atom types changed across frames!"
            
            coords.append(np.array(atom_positions)) # 仅取前3列坐标信息,并转成numpy数组
            i += atom_num # 跳过已读原子坐标参数

        # 读取晶胞box
        if "Unit cell vectors (Ang):" in line:
            cell = []
            #i += 1
            for j in range(atom_num):
                cell.append(list(map(float,lines[i+j].split())))# 将每行按空格分割成字符串列表并用map转成float存入列表cell
            boxes.append(np.array(cell)) # 一帧的晶胞参数做成3x3矩阵,并转成numpy数组
            i += atom_num # 跳过已读晶胞参数
        
        # 读取总能量
        if "siesta: E_KS(eV) = " in line:
            energies.append(float(line.split()[-1]))

        # 读取力
        force_postions=[]
        if "siesta: Atomic forces (eV/Ang):" in line :
            #i += 1
            for j in range(atom_num):
                force_postions.append(list(map(float,lines[i+j].split()[1:4])))
                # force_part = list(lines[i+j].split())#将每行按空格分割成字符串列表
                # f_x,f_y,f_z = float(force_part[1]), float(force_part[2]), float(force_part[3])
                # force_postions.append([f_x,f_y,f_z])
            forces.append(np.array(force_postions))

        # 读取速度
        vels=[]
        if "istep, xa, va :" in line :
            #i += 1
            tokens = line.strip().split()
            data_vals = list(map(float, tokens[5:]))
            if len(data_vals) == 6 * atom_num:
                vel_vals = data_vals[3 * atom_num:]  # 速度部分
                vels = np.array(vel_vals).reshape((atom_num, 3))
                velocities.append(np.array(vels))

    # 统一帧数
    n_frames = min(len(boxes), len(coords), len(energies), len(forces), len(velocities))
    if n_frames == 0:
        raise ValueError("No valid frame found!")

    return (
        np.array(boxes[:n_frames]),
        np.array(coords[:n_frames]),
        np.array(energies[:n_frames]),
        np.array(forces[:n_frames]),
        np.array(velocities[:n_frames]),
        atom_types
    )

def main():
    out_file = 'MD/raw_data/s1-aimd/output'
    output_dir = 'MD/process_data'

    print("Parsing all data from", out_file)
    boxes, coords, energies, forces, velocities, atom_types = read_file(out_file)
    n_frames = boxes.shape[0]

    os.makedirs(output_dir, exist_ok=True)

    np.save(os.path.join(output_dir, "box.npy"), boxes.astype(np.float32))
    np.save(os.path.join(output_dir, "coord.npy"), coords.astype(np.float32))
    np.save(os.path.join(output_dir, "energy.npy"), energies.astype(np.float32))
    np.save(os.path.join(output_dir, "force.npy"), forces.astype(np.float32))
    np.save(os.path.join(output_dir, "velocities.npy"), velocities.astype(np.float32))
    np.savetxt(os.path.join(output_dir, "type.raw"), atom_types, fmt='%d')
    
    with open(os.path.join(output_dir, "nframes"), 'w') as f:
        f.write(str(n_frames))
    
    print(f"saved {n_frames} frames to '{output_dir}/'")


if __name__ == "__main__":
    main()