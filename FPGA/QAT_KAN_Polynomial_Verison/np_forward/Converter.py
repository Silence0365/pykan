from model import QATKAN
import torch
import os
import numpy as np

def QAT_Parameter_convert(model_path,M_num_bits= 7,N_num_bits =16):
    # === model load ===
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = QATKAN(width=[3, 5, 1], grid=5, k=3, device=device,QAT_mode = True,M_num_bits= M_num_bits,N_num_bits =N_num_bits)
    model.load_state_dict(torch.load(model_path, map_location=device),strict=True)
    i = 0
    num_layers = len(model.layers)
    print(f"Number of layers: {num_layers}")
    #.detach().cpu().numpy()-去除梯度，转成cpu，转成numpy形式

    model_parameters = {}
    for i in range(num_layers):  #QATKAN
        layer = model.layers[i] # 取出第i层
        grid        = layer.grid.detach().cpu().numpy()
        coef        = layer.coef.detach().cpu().numpy()
        mask        = layer.mask.detach().cpu().numpy()
        scale_base  = layer.scale_base.detach().cpu().numpy()
        spline_base = layer.scale_sp.detach().cpu().numpy()
        M_num_bits   = layer.M_num_bits
        N_num_bits  = layer.N_num_bits

        coef_int, coef_proportion         = quantizer(coef,M_num_bits ,N_num_bits)
        scale_base_int,   sb_proportion   = quantizer(scale_base,M_num_bits ,N_num_bits)
        spline_base_int,  sp_proportion   = quantizer(spline_base,M_num_bits ,N_num_bits)
        grid_int,grid_proportion          = quantizer(grid,M_num_bits ,N_num_bits)
        mask_int,mask_proportion          = quantizer(mask,M_num_bits ,0)#mask 没必要

        model_parameters[f'layer{i}_grid']                     = grid_int
        model_parameters[f'layer{i}_coef']                     = coef_int
        model_parameters[f'layer{i}_coef_proportion']          = coef_proportion
        model_parameters[f'layer{i}_mask']                     = mask_int
        model_parameters[f'layer{i}_scale_base']               = scale_base_int
        model_parameters[f'layer{i}_scale_base_proportion']    = sb_proportion
        model_parameters[f'layer{i}_spline_base']              = spline_base_int
        model_parameters[f'layer{i}_spline_proportion']        = sp_proportion
        model_parameters[f'layer{i}_QAT_M_num_bits']           = np.array(M_num_bits)
        model_parameters[f'layer{i}_QAT_N_num_bits']           = np.array(N_num_bits)

    # 获取当前脚本所在目录
    script_dir = os.path.dirname(os.path.abspath(__file__))
    save_path = os.path.join(script_dir, 'QAT_model.npz')

    # 保存
    np.savez(save_path, **model_parameters)
    print(f"Saved as {save_path}")




def quantizer(x: np.ndarray,M_num_bits=7,N_num_bits=8):
    # Qm.n
    # M_num_bits:整数位数
    # N_num_bits:小数位数
    total_bits = 1 + M_num_bits + N_num_bits
    # print(f"M_bits{M_num_bits},N_bits{N_num_bits},total_bits{total_bits}")
    quant_max = 2 ** (total_bits-1) - 1
    quant_min = -2 ** (total_bits-1)
    scale = 2**(-N_num_bits)
    x_int = np.round(x / scale)
    #取饱和，防止越界——超过上限取上限，低于下限取下限
    if x_int.max() > quant_max or x_int.min() < quant_min:
        x_int =np.clip(x_int,quant_min,quant_max)
        print("warning:overflow")
    x_int = x_int.astype(np.int64) 
    return x_int,scale

# check model layer
# model.act_fun[i] # => KAN Layer (Spline)
# model.symbolic_fun[i] # => KAN Layer (Symbolic)
# check model parameters
# model.act_fun[i].grid
# model.act_fun[i].coef
# model.symbolic_fun[i].funs_name
# model.symbolic_fun[i].mask
