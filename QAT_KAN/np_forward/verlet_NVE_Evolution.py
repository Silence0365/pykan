import sys
import os
# 添加上级目录
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Converter import *
from Descriptor_builder import Qmn_descriptor_builder
from Desc_differential import desc_differentialer

import numpy as np 
import matplotlib.pyplot as plt

# --- Config ---
dt = 0.2  # 时间步长 (fs)
H_mass = 1.0100  # 氢原子质量 (amu)
O_mass = 16.000  # 氧原子质量 (amu)
masses = np.array([O_mass, H_mass, H_mass])  # [O, H, H]
temperature = 300.0000  # K
steps = 1000

M_num_bits = 7
N_num_bits = 20

AMU_TO_EVA2FS2 = 103.6427  # amu → eV·fs²/Å²
kb = 8.6173336333e-5  # eV/K

# --- Paths ---
coord_dir = 'MD/process_data/coord.npy'
velocities_dir = 'MD/process_data/velocities.npy'
model_dir = 'QAT_KAN/checkpoints/QAT_model.pth'

# --- Prepare model ---
QAT_Parameter_convert(model_dir, M_num_bits, N_num_bits)
np.random.seed(42)
idx = np.random.randint(0, 1000)
coords = np.load(coord_dir)[idx]      # (3, 3)
velocities = np.load(velocities_dir)[idx]  # (3, 3)

data = np.load('QAT_KAN/np_forward/QAT_model.npz')

def model_compute(coords, M_num_bits=7, N_num_bits=16):
    coords = coords[None, :, :]
    x_qat, scale = quantizer(coords, M_num_bits, N_num_bits)
    x_desc_qat = Qmn_descriptor_builder(x_qat)

    energy_qat, grad_qat = model_deduction(x_desc_qat, data)
    dD_dR_qat = desc_differentialer(coords)
    F_QAT = -np.sum(grad_qat[:, :, None] * dD_dR_qat, axis=1)
    energy = (energy_qat[0] * (2**-N_num_bits)).item()
    F = (F_QAT[0] * (2**(-2 * N_num_bits))).reshape(3, 3)
    return energy, F

# --- Initialize velocities ---
v = velocities.copy()
Ep_init, force_init = model_compute(coords, M_num_bits, N_num_bits)
acceleration = force_init / (masses[:, None] * AMU_TO_EVA2FS2)

atoms_num = len(masses)
Ek_current = 0.5 * np.sum(masses[:, None] * v**2) * AMU_TO_EVA2FS2
free_dom = 3 * atoms_num - 3
Ek_target = 0.5 * free_dom * kb * temperature
v *= np.sqrt(Ek_target / Ek_current)

total_mass = masses.sum()
v_center = np.sum(masses[:, None] * v, axis=0) / total_mass
v -= v_center

# --- Buffers ---
energies = []
temper = []
ho_h_angles = []  # only HOH angle
forces = []
step_range = np.arange(steps)

def get_hoh_angle(coords):
    O, H1, H2 = coords
    v1 = H1 - O
    v2 = H2 - O
    cos_theta = np.dot(v1, v2) / (np.linalg.norm(v1) * np.linalg.norm(v2))
    cos_theta = np.clip(cos_theta, -1.0, 1.0)
    angle_deg = np.degrees(np.arccos(cos_theta))
    return angle_deg

# --- Verlet Loop ---
for step in range(steps):
    # Update position
    coords += v * dt + 0.5 * acceleration * dt**2

    # Compute force & energy
    Ep, force_new = model_compute(coords, M_num_bits, N_num_bits)
    acceleration_new = force_new / (masses[:, None] * AMU_TO_EVA2FS2)

    # Update velocity
    v += 0.5 * (acceleration + acceleration_new) * dt

    # Energy & temperature
    Ek = 0.5 * np.sum(masses[:, None] * v**2) * AMU_TO_EVA2FS2
    E = Ek + Ep
    T_current = (2 * Ek) / ((3 * atoms_num - 3) * kb)

    # Save diagnostics
    energies.append(E)
    temper.append(T_current)
    ho_h_angles.append(get_hoh_angle(coords))
    forces.append(force_new)

    # Update for next step
    acceleration = acceleration_new

    # Logging
    if step % 100 == 0:
        max_force = np.max(np.abs(force_new))
        r1 = np.linalg.norm(coords[1] - coords[0])
        r2 = np.linalg.norm(coords[2] - coords[0])
        ang = ho_h_angles[-1]
        total_force = np.linalg.norm(np.sum(force_new, axis=0))
        print(f"Step {step}: Ep={Ep:.4f}, Ek={Ek:.4f}, E={E:.4f} eV | "
              f"T={T_current:.1f}K | Max|F|={max_force:.3f} eV/Å | "
              f"O-H: {r1:.3f}/{r2:.3f} Å, ∠HOH={ang:.1f}° | "
              f"ΣF: {total_force:.2e} eV/Å")

# --- Convert to arrays ---
energies = np.array(energies)
temper = np.array(temper)
ho_h_angles = np.array(ho_h_angles)
force_max = np.array([np.max(np.abs(f)) for f in forces])

# --- Plot: 4-panel diagnostic ---
E_mean = np.mean(energies)
E_std = np.std(energies)
tolerance = max(3 * E_std, 0.001)

fig, axs = plt.subplots(2, 2, figsize=(16, 10))
fig.suptitle('QAT-KAN MD Diagnostics: Single H₂O in NVE (300K)', fontsize=16)

# (0,0) Energy
axs[0, 0].plot(step_range, energies, color='tab:blue')
axs[0, 0].axhline(E_mean, color='red', linestyle='--')
axs[0, 0].fill_between(step_range, E_mean - tolerance, E_mean + tolerance,
                       color='orange', alpha=0.2)
axs[0, 0].set_ylabel('Total Energy (eV)')
axs[0, 0].set_ylim(E_mean - 3*tolerance, E_mean + 3*tolerance)
axs[0, 0].grid(True, linestyle='--', alpha=0.6)
axs[0, 0].set_title(f'Energy\n(σ = {E_std*1000:.2f} meV)')

# (0,1) Temperature
temp_mean = temper.mean()
axs[0, 1].plot(step_range, temper, color='tab:green')
axs[0, 1].axhline(300, color='red', linestyle='--', label='Target 300K')
axs[0, 1].axhline(temp_mean, color='blue', linestyle='-.', label=f'Mean: {temp_mean:.1f}K')
axs[0, 1].set_ylabel('Temperature (K)')
axs[0, 1].set_ylim(250, 350)
axs[0, 1].grid(True, linestyle='--', alpha=0.6)
axs[0, 1].set_title(f'Temperature\n(Mean = {temper.mean():.1f} K)')
axs[0, 1].legend()

# (1,0) HOH Bond Angle
hoh_mean = ho_h_angles.mean()
axs[1, 0].plot(step_range, ho_h_angles, color='tab:red', alpha=0.8, linewidth=1.0)
axs[1, 0].axhline(104.5, color='k', linestyle='--', linewidth=1.2, label='Ref: 104.5°')
axs[1, 0].axhline(hoh_mean, color='orange', linestyle='-.', linewidth=1.2, label=f'Mean: {hoh_mean:.1f}°')
axs[1, 0].set_xlabel('Time Step')
axs[1, 0].set_ylabel('∠HOH (degrees)')
axs[1, 0].grid(True, linestyle='--', alpha=0.6)
axs[1, 0].set_title(f'Angle\n(σ = {ho_h_angles.std():.1f}°)')
axs[1, 0].legend(loc='lower left') 

# (1,1) Max Force
axs[1, 1].plot(step_range, force_max, color='tab:purple')
axs[1, 1].set_xlabel('Time Step')
axs[1, 1].set_ylabel('Max |Force| (eV/Å)')
axs[1, 1].grid(True, linestyle='--', alpha=0.6)
axs[1, 1].set_title(f'Atomic Force Magnitude\n(Mean = {force_max.mean():.3f} eV/Å)')

plt.tight_layout(rect=[0, 0, 1, 0.96])

qat_text = f'QAT: M={M_num_bits}, N={N_num_bits}'
fig.text(0.02, 0.96, qat_text,
         fontsize=9.5,
         ha='left',
         va='top',
         bbox=dict(boxstyle='round,pad=0.3', facecolor='lightblue', alpha=0.7),
         transform=fig.transFigure)

# 右上角：MD 模拟参数
md_text = f'MD: dt={dt} fs, T={int(temperature)} K, steps={steps}'
fig.text(0.98, 0.96, md_text,
         fontsize=9.5,
         ha='right',
         va='top',
         bbox=dict(boxstyle='round,pad=0.3', facecolor='lightgreen', alpha=0.7),
         transform=fig.transFigure)

plt.savefig('./QAT_KAN/Evolution/QAT_qat_kan_md_diagnostics_HOH.png', dpi=250, bbox_inches='tight')
plt.show()

# --- Summary ---
print("\n" + "="*50)
print("📊 QAT-KAN MD Summary (Single H₂O, NVE)")
print("="*50)
print(f"Energy drift      : {energies[-1] - energies[0]:+.6f} eV")
print(f"Energy std        : {E_std*1000:.3f} meV")
print(f"Temperature       : {temper.mean():.1f} ± {temper.std():.1f} K")
print(f"HOH angle         : {ho_h_angles.mean():.1f} ± {ho_h_angles.std():.1f} °")
print(f"Max force         : {force_max.mean():.3f} eV/Å")
print(f"Final ΣF          : {np.linalg.norm(np.sum(forces[-1], axis=0)):.2e} eV/Å")
print("="*50)