from model import QATKAN
import torch
import os
import numpy as np

def QAT_Parameter_convert(model_path):
    # === model load ===
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = QATKAN(width=[3, 5, 1], grid=5, k=3, device=device,QAT_mode = True,num_bits= 16)
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

        coef_int, coef_proportion = quantizer(coef)
        scale_base_int,   sb_proportion   = quantizer(scale_base)
        spline_base_int,   sp_proportion   = quantizer(spline_base)

        model_parameters[f'layer{i}_grid']                     = grid
        model_parameters[f'layer{i}_coef']                     = coef_int
        model_parameters[f'layer{i}_coef_proportion']          = coef_proportion
        model_parameters[f'layer{i}_mask']                     = mask
        model_parameters[f'layer{i}_scale_base']               = scale_base_int
        model_parameters[f'layer{i}_scale_base_proportion']    = sb_proportion
        model_parameters[f'layer{i}_spline_base']              = spline_base_int
        model_parameters[f'layer{i}_spline_proportion']         = sp_proportion

    # 获取当前脚本所在目录
    script_dir = os.path.dirname(os.path.abspath(__file__))
    save_path = os.path.join(script_dir, 'QAT_model.npz')

    # 保存
    np.savez(save_path, **model_parameters)
    print(f"Saved as {save_path}")




def quantizer(x: np.ndarray, num_bits=16):
    """
    对称量化：float32 -> intN + scale
    x: numpy array (float32)
    returns: (x_int: int16/int8, scale: float32)
    """
    assert num_bits in [8, 16], "Only int8/int16 supported"
    n = 2 ** (num_bits - 1) - 1  # 127 for int8, 32767 for int16
    # 量化标度尺
    x_abs_max = np.abs(x).max()
    if x_abs_max == 0:
        # 输入为0 --scale为1&x_int为0
        scale = np.array(1.0, dtype=np.float32)
        if (num_bits == 8):
            x_int = np.zeros_like(x, dtype=np.int8)
        else:
            x_int = np.zeros_like(x, dtype=np.int16)
    else:
        scale = np.array(x_abs_max / n, dtype=np.float32)
        # 限制范围
        x_int = np.round(x / scale).clip( -n - 1, n)
        if (num_bits == 8):
            x_int = x_int.astype(np.int8)
        else:
            # 改变x_int的type(数据类型)
            x_int = x_int.astype(np.int16)
    return x_int, scale


# check model layer
# model.act_fun[i] # => KAN Layer (Spline)
# model.symbolic_fun[i] # => KAN Layer (Symbolic)
# check model parameters
# model.act_fun[i].grid
# model.act_fun[i].coef
# model.symbolic_fun[i].funs_name
# model.symbolic_fun[i].mask

#==================TEST==========================
QAT_Parameter_convert('QAT_KAN/checkpoints/QAT_model.pth')