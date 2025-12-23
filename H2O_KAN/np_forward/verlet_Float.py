import sys
import os
# 添加上级目录
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Descriptor_builder import simple_descriptor_builder
from Desc_differential import desc_differentialer

import numpy as np 

# --- Config ---
dt = 0.2 # 时间步长 (fs)
H_mass = 1.0100 # 氢原子质量 (amu)
O_mass = 16.000 # 氧原子质量 (amu)
masses = np.array([O_mass, H_mass, H_mass]) # 组成质量数组
temperature = 300.0000 # 温度 (k)
steps = 1000 # 仿真步数

# 单位转化因子
AMU_TO_EVA2FS2 = 103.6427  # 1 amu = 103.6427 eV·fs²/Å²
# 玻尔兹曼常数：1.380649 × 10-23(J/K)-->8.6173336333 x 10-5(ev/K)
kb = 8.6173336333 * 10**-5 

# --- dir ---
coord_dir = '././MD/process_data/coord.npy'
model_dir = 'H2O_KAN/checkpoints/KAN'

# --- model & data prepare ---
Parameter_convert('H2O_KAN/checkpoints/KAN') # pth --> npz
coords = np.load('MD/process_data/coord.npy')[0]  # 任取一个样本初始化位置 shape(3,3)

# --- model load ---
data = np.load('H2O_KAN/np_forward/model.npz') 

def model_compute(coords):

    # save coords as npy
    np.save('temp_coord.npy', coords[None, :, :])  # shape(1, 3, 3)

    # building desc and qat
    x_desc = simple_descriptor_builder('temp_coord.npy')  # (1, in_dim)

    # model forward
    energy,grad = model_deduction(x_desc,data)

    # calculate Force
    dD_dR = desc_differentialer('temp_coord.npy') # shape(batch, in_dim, parameter)
    F_QAT = -  np.sum(grad[:, :, None] * dD_dR, axis = 1)# shape(1,9)

    # rescale
    energy = (energy[0]).item()
    F = (F_QAT[0]).reshape(3,3)

    # remove temp_coord.npy
    os.remove('temp_coord.npy')
    
    return energy,F

# --- initial ---
np.random.seed(42)
v = np.random.randn(3, 3)  # 初始化速度
Ep_init, force_init = model_compute(coords)
acceleration = force_init / (masses[:, None] * AMU_TO_EVA2FS2)

# # --- scale ---
# # 缩放温度，使其在300k温度下运行
atoms_num = len(masses)
Ek_current = 0.5 * np.sum(masses[:,None] * (v ** 2)) * AMU_TO_EVA2FS2
Ek_target  = 1.5 * atoms_num * kb * temperature
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
    Ep,force_new = model_compute(coords)
    acceleration_new = force_new / (masses[:,None] * AMU_TO_EVA2FS2)
    total_force_vector = np.sum(force_new, axis=0)  # shape (3,)
    total_force_norm = np.linalg.norm(total_force_vector) #test
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
        T_current = (2 * Ek) / (3 * atoms_num * kb)
        max_force = np.max(np.abs(force_new))
        r1, r2, ang = get_geometry(coords)
        print(f"Step {step}: Ep={Ep:.4f}, Ek={Ek:.4f}, E={E:.4f} eV | "
            f"T={T_current:.1f}K | Max|F|={max_force:.3f} eV/Å | "
            f"O-H: {r1:.3f}/{r2:.3f} Å, ∠ ={ang:.1f}° | "
            f"|ΣF|={total_force_norm:.2e} eV/Å")
