from model_Parameter import Parameter_convert
from KANLayer_forward import model_deduction
import numpy as np 
Parameter_convert('./model/0.9')
x = np.array([[0.1,0.3],
                [0.3,0.5]])
data = np.load('./numpy_forward/model.npz')
y = model_deduction(x,data)
print(f"final{y}")