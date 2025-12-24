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

coord_dir = '././MD/process_data/coord.npy'
QAT_Parameter_convert('QAT_KAN/checkpoints/QAT_model.pth',M_num_bits=7,N_num_bits=20)
x = simple_descriptor_builder(coord_dir)
x_QAT,scale = quantizer(x,M_num_bits=7,N_num_bits=16)
data = np.load('QAT_KAN/np_forward/QAT_model.npz')
y,grad = model_deduction(x_QAT,data)
#print(f"force.shape{force.shape}")
# print(f"final_energy{y}")
# print(f"final_force{force}")
print(f"{y[:3]* (2**-20)}")
# === force detect ===
dD_dR = desc_differentialer(coord_dir) # shape(batch, in_dim, parameter)

# # broadcast 
F = -  np.sum(grad[:, :, None] * dD_dR, axis =1)
print(f"{F*(2**-40)}")# grad、dD_dR各有scale(2**-16)-->2**-32