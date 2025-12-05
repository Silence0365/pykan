# models/h2o_kan.py
import torch
from kan import KAN

class H2OKAN(torch.nn.Module):
    def __init__(self, width=[3, 5, 1], grid=5, k=3, device='cpu'):
        super().__init__()
        self.kan = KAN(width=width, grid=grid, k=k, device=device)
        
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

    def forward(self, coords):
        """
        coords: (N, 3, 3), requires_grad=True if computing force
        Returns: energy (N, 1)
        """
        desc = self.descriptor_builder(coords) # 转化成描述子
        energy = self.kan(desc)  # (N, 1) # kan用以预测能量(input:desc,output:energy)
        return energy