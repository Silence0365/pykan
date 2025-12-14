import torch
from kan import *
from kan.spline import coef2curve

class QATKAN_Layer(KANLayer): # 继承KANLayer--加载kan中参数
    def __init__(self,in_dim,out_dim,grid =5,k=3,device='cpu',M_num_bits=7,N_num_bits=8,QAT_mode=False):
        super().__init__(
            in_dim=in_dim,
            out_dim=out_dim,
            num=grid,
            k=k,
            device=device) # 初始化一个kan_layer
        self.M_num_bits = M_num_bits
        self.N_num_bits = N_num_bits
        self.QAT_mode = QAT_mode
        # self.kan = KAN(width=width, grid=grid, k=k, device=device) 创建了一个kan模型
    @staticmethod  #静态方法，不传 self
    # 伪量化器
    def fake_quanter(x,M_num_bits=7,N_num_bits=8):
        # Qm.n
        # M_num_bits:整数位数
        # N_num_bits:小数位数
        total_bits = 1 + M_num_bits + N_num_bits
        # print(f"M_bits{M_num_bits},N_bits{N_num_bits},total_bits{total_bits}")
        quant_max = 2 ** (total_bits-1) - 1
        quant_min = -2 ** (total_bits-1)
        scale = 2**(-N_num_bits)
        x_int = torch.round(x / scale)
        #取饱和，防止越界——超过上限取上限，低于下限取下限
        x_int =torch.clamp(x_int,quant_min,quant_max)
        x_return = x_int * scale
        return x_return
    
    # 前向传播
    def forward(self, x):
        # === 基函数(base fun) ===
        base = self.base_fun(x) # (batch, in_dim)

        # === 样条路径（Spline Path）==
        # 1. 量化样条权重与缩放因子scale
        if self.QAT_mode:
            coef_QAT = FakeQuantizeSTE.apply(self.coef, self.M_num_bits, self.N_num_bits)
            scale_base_QAT = FakeQuantizeSTE.apply(self.scale_base, self.M_num_bits, self.N_num_bits)
            scale_sp_QAT = FakeQuantizeSTE.apply(self.scale_sp, self.M_num_bits, self.N_num_bits)
            #coef_QAT = self.fake_quanter(self.coef)
            #scale_base_QAT = self.fake_quanter(self.scale_base,M_num_bits =5,N_num_bits=10)
            #scale_sp_QAT = self.fake_quanter(self.scale_sp,M_num_bits = 5,N_num_bits=10)
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

# === STE直通的伪量化器 === ？？？
class FakeQuantizeSTE(torch.autograd.Function):
    @staticmethod
    def forward(ctx,x, M, N):
        total_bits = 1 + M + N
        quant_max = (1 << (total_bits - 1)) - 1
        quant_min = -(1 << (total_bits - 1))
        scale = 2.0 ** (-N)
        x_int = torch.round(x / scale)
        x_int = torch.clamp(x_int, quant_min, quant_max)
        return x_int * scale

    @staticmethod
    def backward(ctx,grad_output):
        return grad_output, None, None  # STE