"""
Float64（double precision）版本的 Verlet 推理脚本，行为与原始 `verlet_Float.py` 保持一致，
但将所有关键数组/中间量显式转换为 np.float64，以减少数值差异。
重点：仅绘制 NVE 能量守恒验证图（能量偏差 ΔE）
"""
import sys
import os
import numpy as np

# 添加上级目录
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Descriptor_builder import simple_descriptor_builder
from Desc_differential import desc_differentialer

# --- Config (float64) ---
dt = np.float64(0.2)  # 时间步长 (fs)
H_mass = np.float64(1.0100)  # 氢原子质量 (amu)
O_mass = np.float64(16.000)  # 氧原子质量 (amu)
masses = np.array([O_mass, H_mass, H_mass], dtype=np.float64)  # 组成质量数组
temperature = np.float64(300.0000)  # 温度 (K)
steps = 1000  # 仿真步数

# 单位转化因子（float64）
AMU_TO_EVA2FS2 = np.float64(103.6427)  # 1 amu = 103.6427 eV·fs²/Å²
kb = np.float64(8.6173336333e-05)  # 玻尔兹曼常数 (eV/K)

# --- dir ---
coord_dir = '././MD/process_data/coord.npy'
velocities_dir = '././MD/process_data/velocities.npy'
model_dir = 'H2O_KAN/checkpoints/KAN'

# --- model & data prepare ---
Parameter_convert('H2O_KAN/checkpoints/KAN')  # pth --> npz
np.random.seed(42)
idx = np.random.randint(0, 1000)
coords = np.load(coord_dir)[idx].astype(np.float64)      # shape(3,3)
velocities = np.load(velocities_dir)[idx].astype(np.float64)  # shape(3,3)

# --- model load ---
data = np.load('H2O_KAN/np_forward/model.npz')


def model_compute(coords):
    # coords: shape(3,3) float64
    np.save('temp_coord.npy', coords[None, :, :].astype(np.float64))  # shape(1, 3, 3)

    x_desc = simple_descriptor_builder('temp_coord.npy')  # (1, in_dim)
    x_desc = x_desc.astype(np.float64)

    energy, grad = model_deduction(x_desc, data)
    grad = grad.astype(np.float64)

    dD_dR = desc_differentialer('temp_coord.npy')  # shape(batch, in_dim, parameter)
    F_QAT = -np.sum(grad[:, :, None] * dD_dR, axis=1)  # shape(1, 9)

    energy = np.float64((energy[0]).item())
    F = (F_QAT[0]).reshape(3, 3).astype(np.float64)

    try:
        os.remove('temp_coord.npy')
    except OSError:
        pass

    return energy, F


def get_geometry(coords):
    O, H1, H2 = coords
    r1 = np.linalg.norm(H1 - O)
    r2 = np.linalg.norm(H2 - O)
    cos_theta = np.dot(H1 - O, H2 - O) / (r1 * r2)
    angle = np.arccos(np.clip(cos_theta, -1.0, 1.0)) * 180.0 / np.pi
    return r1, r2, angle


# --- initial ---
v = velocities.astype(np.float64)
Ep_init, force_init = model_compute(coords)
acceleration = force_init / (masses[:, None] * AMU_TO_EVA2FS2)

atoms_num = len(masses)
Ek_current = np.float64(0.5) * np.sum(masses[:, None] * (v ** 2)) * AMU_TO_EVA2FS2
Ek_target = np.float64(1.5) * atoms_num * kb * temperature
v *= np.sqrt(Ek_target / (Ek_current + np.float64(1e-30)))

total_mass = masses.sum()
v_center = np.sum(masses[:, None] * v, axis=0) / total_mass
v = v - v_center

# buffers
energies = []


# --- Verlet Loop ---
for step in range(steps):
    # Step 1: update position
    coords += v * dt + np.float64(0.5) * acceleration * (dt ** 2)

    # Step 2: compute new force and energy
    Ep, force_new = model_compute(coords.astype(np.float64))
    acceleration_new = force_new / (masses[:, None] * AMU_TO_EVA2FS2)

    # Step 3: update velocity
    v += np.float64(0.5) * (acceleration + acceleration_new) * dt

    # Step 4: compute total energy
    Ek = np.float64(0.5) * np.sum(masses[:, None] * (v ** 2)) * AMU_TO_EVA2FS2
    E = Ek + Ep

    # Save
    energies.append(np.float64(E))
    acceleration = acceleration_new

    if step % 100 == 0:
        T_current = (np.float64(2.0) * Ek) / (np.float64(3.0) * atoms_num * kb)
        max_force = np.max(np.abs(force_new))
        r1, r2, ang = get_geometry(coords)
        print((f"Step {step}: Ep={Ep:.6f}, Ek={Ek:.6f}, E={E:.6f} eV | "
               f"T={T_current:.1f}K | Max|F|={max_force:.6f} eV/Å | "
               f"O-H: {r1:.6f}/{r2:.6f} Å, ∠ ={ang:.3f}°"))


    # --- NVE Energy Conservation Check (Float64) ---
    try:
        import matplotlib.pyplot as plt
        from pathlib import Path

        E = np.array(energies, dtype=np.float64)  # Total energy over time
        step_range = np.arange(len(E), dtype=np.int32)

        # Compute long-time average and deviation
        E_mean = np.mean(E)
        dE = E - E_mean
        dE_std = np.std(dE)

        # Convert to meV for clarity
        dE_meV = dE * 1000.0
        dE_std_meV = dE_std * 1000.0

        # Plot
        plt.figure(figsize=(10, 5))
        plt.plot(step_range, dE_meV, color='tab:blue', linewidth=1.0,
                label=r'$\Delta E = E(t) - \langle E \rangle$')

        # Add ±1σ, ±2σ, ±3σ reference lines
        for k, style, alpha in zip([1, 2, 3], ['--', '-.', ':'], [0.7, 0.5, 0.3]):
            plt.axhline(+k * dE_std_meV, color='red', linestyle=style, alpha=alpha, linewidth=0.9)
            plt.axhline(-k * dE_std_meV, color='red', linestyle=style, alpha=alpha, linewidth=0.9)

        plt.axhline(0, color='black', linewidth=0.8)
        plt.xlabel('Time Step')
        plt.ylabel('Energy Deviation ΔE (meV)')
        plt.title(f'NVE Energy (Float64 Verlet)\n'
                f'σ = {dE_std_meV:.3f} meV  |  Max|ΔE| = {np.max(np.abs(dE_meV)):.3f} meV')
        plt.grid(True, linestyle='--', alpha=0.5)
        plt.legend()

        # Set y-limits with margin
        margin = max(3.5 * dE_std_meV, np.max(np.abs(dE_meV)) * 1.1, 0.1)
        plt.ylim(-margin, margin)
        plt.show()

    except Exception as e:
        print(f"\n⚠️  Failed to generate Float64 energy conservation plot: {e}")