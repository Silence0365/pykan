# Notice: 此版本为构建新分段多项式版本--FPGA适配版本

import sys
import os
# 添加上级目录
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Converter import *
from Descriptor_builder import *
from Desc_differential import desc_differentialer

import numpy as np 

coord_dir = "D:/KAN/pykan/MD/process_data/coord.npy"
QAT_Parameter_convert("D:/KAN/pykan/FPGA/QAT_KAN_Polynomial_Verison/checkpoints/QAT_model.pth",M_num_bits=7,N_num_bits=24)
coords =np.load(coord_dir)  
x = simple_descriptor_builder(coords)
x_QAT,scale = quantizer(x,M_num_bits=7,N_num_bits=24)
# x_QAT = Qmn_descriptor_builder(coords_QAT,M_num_bits=7,N_num_bits=20)
data = np.load("D:/KAN/pykan/FPGA/QAT_KAN_Polynomial_Verison/np_forward/QAT_model.npz")
y,grad = model_deduction(x_QAT,data)
#print(f"force.shape{force.shape}")
# print(f"final_energy{y}")
# print(f"final_force{force}")
print(f"{y[:3]* (2**-24)}")
# === force detect ===
dD_dR = desc_differentialer(coords) # shape(batch, in_dim, parameter)

# # broadcast 
F = -  np.sum(grad[:, :, None] * dD_dR, axis =1)
print(f"{F*(2**-48)}")# grad、dD_dR各有scale(2**-16)-->2**-32   