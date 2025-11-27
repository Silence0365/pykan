from kan import *
import torch
import os



# i = 0
# # i 取决于层数
# for i in range(2):
#     print(f"layer{i}_spline_layer{model.act_fun[i].in_dim, model.act_fun[i].out_dim}")
#     print(f"layer{i}_symbolic_layer{model.symbolic_fun[i].in_dim, model.symbolic_fun[i].out_dim}")
#     print(f"layer{i}_grid:{model.act_fun[i].grid}")
#     print(f"layer{i}_coef:{model.act_fun[i].coef}")
#     print(f"layer{i}_fun:{model.symbolic_fun[i].funs_name}")
#     print(f"layer{i}_mask:{model.symbolic_fun[i].mask}")
#     print(f"layer{i}_scale_base:{model.act_fun[i].scale_base}")
#     print(f"layer{i}_spline_base:{model.act_fun[i].scale_sp}")
# model.plot()
# plt.show()




def Parameter_convert(model_path):
    model = KAN.loadckpt(model_path)#[2,3,1]
    i = 0
    num_layers = len(model.act_fun)
    print(f"Number of layers: {num_layers}")
    #.detach().cpu().numpy()-去除梯度，转成cpu，转成numpy形式
    params=[]
    for i in range(num_layers):  # act_fun is ModuleList of KANLayer
            p = {
                'grid'          :model.act_fun[i].grid.detach().cpu().numpy(),
                'coef'          :model.act_fun[i].coef.detach().cpu().numpy(),
                'fun'           :np.array(model.symbolic_fun[i].funs_name, dtype=object),#转成object列表
                'mask'          :(model.act_fun[i].mask.detach().cpu().numpy()),
                'scale_base'    :(model.act_fun[i].scale_base.detach().cpu().numpy()),
                'spline_base'   :(model.act_fun[i].scale_sp.detach().cpu().numpy())
            }
            params.append(p)

    j=0
    model_parameters = {}
    for j, p in enumerate(params):
        model_parameters[f'layer{j}_grid']          = p['grid']
        model_parameters[f'layer{j}_coef']          = p['coef']
        model_parameters[f'layer{j}_fun']           = p['fun']
        model_parameters[f'layer{j}_mask']          = p['mask']
        model_parameters[f'layer{j}_scale_base']    = p['scale_base']
        model_parameters[f'layer{j}_spline_base']   = p['spline_base']

    # 获取当前脚本所在目录
    script_dir = os.path.dirname(os.path.abspath(__file__))
    save_path = os.path.join(script_dir, 'model.npz')

    # 保存
    np.savez(save_path, **model_parameters)
    print(f"Saved as {save_path}")



# check model layer
# model.act_fun[i] # => KAN Layer (Spline)
# model.symbolic_fun[i] # => KAN Layer (Symbolic)
# check model parameters
# model.act_fun[i].grid
# model.act_fun[i].coef
# model.symbolic_fun[i].funs_name
# model.symbolic_fun[i].mask