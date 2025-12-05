from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
import numpy as np 
Parameter_convert('H2O_KAN/checkpoints/KAN')
x  = np.load('././MD/process_data/descriptor.npy')
data = np.load('H2O_KAN/np_forward/model.npz')
y = model_deduction(x,data)
print(f"final{y}")