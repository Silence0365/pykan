import sys
import os
# 添加上级目录
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Converter import *
from Descriptor_builder import simple_descriptor_builder
from Desc_differential import desc_differentialer

import numpy as np 

# --- Config ---
dt = 0.2 # 时间步长 (fs)
H_mass = 1.0100 # 氢原子质量 (amu)
O_mass = 16.000 # 氧原子质量 (amu)
masses = np.array([O_mass, H_mass, H_mass]) # 组成质量数组
temperature = 300.0000 # 温度 (k)
steps = 3000 # 仿真步数

M_num_bits = 7
N_num_bits = 20

# 单位转化因子
AMU_TO_EVA2FS2 = 103.6427  # 1 amu = 103.6427 eV·fs²/Å²
# 玻尔兹曼常数：1.380649 × 10-23(J/K)-->8.6173336333 x 10-5(ev/K)
kb = 8.6173336333 * 10**-5 

# --- dir ---
coord_dir = '././MD/process_data/coord.npy'
velocities_dir = '././MD/process_data/velocities.npy'
model_dir = 'QAT_KAN/checkpoints/QAT_model.pth'

# --- model & data prepare ---
QAT_Parameter_convert(model_dir,M_num_bits,N_num_bits) # pth --> npz
np.random.seed(42)
idx = np.random.randint(0, 1000) 
coords = np.load(coord_dir)[idx]      # 任取一个样本初始化位置 shape(3,3)
velocities = np.load(velocities_dir)[idx]  # 取对应样本速度 shape(3,3)


# --- model load ---
data = np.load('QAT_KAN/np_forward/QAT_model.npz') 

def model_compute(coords,M_num_bits = 7 ,N_num_bits = 16):

    # save coords as npy
    np.save('temp_coord.npy', coords[None, :, :])  # shape(1, 3, 3)

    # building desc and qat
    x_desc = simple_descriptor_builder('temp_coord.npy')  # (1, in_dim)
    x_desc_qat, scale = quantizer(x_desc, M_num_bits, N_num_bits)

    # model forward
    energy_qat,grad_qat = model_deduction(x_desc_qat,data)

    # calculate Force
    dD_dR_qat = desc_differentialer('temp_coord.npy') # shape(batch, in_dim, parameter)
    F_QAT = -  np.sum(grad_qat[:, :, None] * dD_dR_qat, axis = 1)# shape(1,9)

    # rescale
    energy = (energy_qat[0] * (2**-N_num_bits)).item()
    F = (F_QAT[0] * (2**(-2 * N_num_bits))).reshape(3,3)

    # remove temp_coord.npy
    os.remove('temp_coord.npy')
    
    return energy,F

# --- initial ---
# np.random.seed(42)
# v = np.random.randn(3, 3)  # 初始化速度
v = velocities
Ep_init, force_init = model_compute(coords, M_num_bits, N_num_bits)
acceleration = force_init / (masses[:, None] * AMU_TO_EVA2FS2)

# --- scale ---
# 缩放温度，使其在300k温度下运行
atoms_num = len(masses)
Ek_current = 0.5 * np.sum(masses[:,None] * (v ** 2)) * AMU_TO_EVA2FS2
free_dom = 3 * atoms_num -3# 减去平移自由度
Ek_target  = 0.5 * free_dom * kb * temperature 
v *= np.sqrt(Ek_target/Ek_current)

# --- remove center speed ---
total_mass = masses.sum()
v_center = np.sum(masses[:,None] * v ,axis = 0) / total_mass
v = v - v_center


# buffer
energies = []
forces = []


def get_geometry(coords):
    O, H1, H2 = coords
    r1 = np.linalg.norm(H1 - O)
    r2 = np.linalg.norm(H2 - O)
    angle = np.arccos(np.dot(H1-O, H2-O) / (r1 * r2)) * 180 / np.pi
    return r1, r2, angle


# --- Verlet Loop ---
for step in range(steps):
    # step1: update position
    coords += v * dt + 0.5 * acceleration * dt ** 2

    # step2: calculate force and energy
    Ep,force_new = model_compute(coords,M_num_bits,N_num_bits)
    acceleration_new = force_new / (masses[:,None] * AMU_TO_EVA2FS2)
    total_force_xyz = np.sum(force_new, axis=0)  # shape (3,) #xyz_force
    total_force = np.linalg.norm(total_force_xyz) #force合力

    # step3: update v
    v += 0.5 * (acceleration + acceleration_new) * dt
    

    # step4: calculate total energy
    Ek = 0.5 * np.sum(masses[:,None]* v **2) * AMU_TO_EVA2FS2 
    E = Ek + Ep

    # 保存
    energies.append(E)
    forces.append(force_new)
    acceleration = acceleration_new

    if step % 100 == 0:
        T_current = (2 * Ek) / ((3 * atoms_num - 3) * kb)
        max_force = np.max(np.abs(force_new))
        r1, r2, ang = get_geometry(coords)
        print(f"Step {step}: Ep={Ep:.4f}, Ek={Ek:.4f}, E={E:.4f} eV | "
            f"T={T_current:.1f}K | Max|F|={max_force:.3f} eV/Å | "
            f"O-H: {r1:.3f}/{r2:.3f} Å, ∠ ={ang:.1f}° | "
            f"ΣF: {total_force:.2e} eV/Å")
