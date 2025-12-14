import torch
from kan import *
from kan.spline import coef2curve

class QATKAN_Layer(KANLayer): # 继承KANLayer--加载kan中参数
    def __init__(self,in_dim,out_dim,grid =5,k=3,device='cpu',num_bits=8,QAT_mode=False):
        super().__init__(
            in_dim=in_dim,
            out_dim=out_dim,
            num=grid,
            k=k,
            device=device) # 初始化一个kan_layer
        self.num_bits = num_bits
        self.QAT_mode = QAT_mode
        # self.kan = KAN(width=width, grid=grid, k=k, device=device) 创建了一个kan模型
    @staticmethod  #静态方法，不传 self
    # 伪量化器
    def fake_quanter(x,num_bits=8):
        if num_bits >= 32:
            return x
        # 对称量化--量化最大值(有符号整数)
        n = 2**(num_bits - 1) - 1
        x_max_abs = x.abs().max()
        if x_max_abs == 0:
            return x
        scale = x_max_abs / n # 量化标度尺
        # 量化值--四舍五入--limit(-N-1,N)
        # torch.round()、torch.clamp()默认满足STE，梯度默认为1
        x_int = torch.round(x / scale).clamp(-n - 1, n)
        x_qat = x_int * scale
        return x_qat
    
    # 前向传播
    def forward(self, x):
        # === 基函数(base fun) ===
        base = self.base_fun(x) # (batch, in_dim)

        # === 样条路径（Spline Path）==
        # 1. 量化样条权重与缩放因子scale
        if self.QAT_mode:
            coef_QAT = self.fake_quanter(self.coef,self.num_bits)
            scale_base_QAT = self.fake_quanter(self.scale_base,self.num_bits)
            scale_sp_QAT = self.fake_quanter(self.scale_sp,self.num_bits)
        else :
            coef_QAT = self.coef
            scale_base_QAT = self.scale_base
            scale_sp_QAT = self.scale_sp
        
        # 2. 计算 B-spline
        y = coef2curve(x_eval=x, grid=self.grid, coef=coef_QAT, k=self.k)
        
        # 3.计算Base+Spline & 应用mask
        y = scale_base_QAT[None,:,:] * base[:,:,None] + scale_sp_QAT[None,:,:] * y
        y = self.mask[None,:,:] * y

        # 4. 求和
        y = torch.sum(y, dim=1)
        
        # 5.量化y   先叠加再量化-防止误差叠加
        #y_QAT = self.y_QATer(y)

        return y