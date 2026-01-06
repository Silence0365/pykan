import torch
import torch.nn as nn
from kan import KANLayer  # 原始 KANLayer
from layer import *

class QATKAN(nn.Module):
    def __init__(self,grid =5,k=3,width=[3, 5, 1],device='cpu',QAT_mode =False,M_num_bits=7,N_num_bits=16):
        super().__init__()
        self.layers = nn.ModuleList()
        # 构建width(len)[3-1]层
        for i in range(len(width) - 1):
            self.layers.append(
                QATKAN_Layer(
                    # 当前层 下一层
                    width[i], width[i+1],
                    grid=grid,
                    k=k,
                    M_num_bits=M_num_bits,
                    N_num_bits = N_num_bits,
                    QAT_mode=QAT_mode
                )
            )

    # 描述子构建器
    def descriptor_builder(self, coords):
        """
        输入: coords (N, 3, 3) —— [O, H1, H2]
        输出: desc (N, 3) —— [d_mean, d_diff, cosθ]
        """
        O =  coords[:, 0, :]   # (N, 3)
        H1 = coords[:, 1, :]
        H2 = coords[:, 2, :]
        

        # 利用欧几里得距离公式求出键长--沿着(xyz轴)第一维度求范数，保留样本数N
        # shape (N,)
        r1 = torch.norm(O - H1, dim=1)  # O-H1 键长# 
        r2 = torch.norm(O - H2,dim=1)  # O-H2 键长

        # 满足对称不变性
        d_mean = (r1 + r2) * 0.5
        d_diff = torch.abs(r1 - r2)

        # 键角计算
        v1 = H1 - O
        v2 = H2 - O 
        dot = torch.sum(v1 * v2, dim=1)
        # (v1 * v2 + 1e-8)计算模长且防止为0
        cos_theta = dot / (torch.norm(v1,dim=1) * torch.norm(v2,dim=1))
        
        desc = torch.stack([d_mean, d_diff, cos_theta], dim=1)  # (N, 3)
        return desc
    
        # 逐层前向传播

    def forward(self,coords):
        x = self.descriptor_builder(coords)
        for layer in self.layers:
            x = layer(x)
        return x