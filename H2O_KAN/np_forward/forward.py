from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
from Descriptor_builder import simple_descriptor_builder
from Desc_differential import desc_differentialer

import numpy as np 

coord_dir = '././MD/process_data/coord.npy'
Parameter_convert('H2O_KAN/checkpoints/KAN')
x = simple_descriptor_builder(coord_dir)
data = np.load('H2O_KAN/np_forward/model.npz')
y,grad = model_deduction(x,data)
#print(f"force.shape{force.shape}")
# print(f"final_energy{y}")
# print(f"final_force{force}")

# === force detect ===
dD_dR = desc_differentialer(coord_dir) # shape(batch, in_dim, parameter)

# broadcast 
F = -  np.sum(grad[:, :, None] * dD_dR, axis =1)
print(f"{F}")