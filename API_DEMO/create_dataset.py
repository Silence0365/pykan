#创建数据集
from kan.utils import create_dataset
import torch

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

#定义目标函数-lambda函数
# 输入:x
#[:,[z]]表示所有行中的特定列z
f = lambda x: x[:,[0]] * x[:,[1]]#第0列的所有行*第1列的所有行
#创建数据集
# f:定义的函数
# n_var:输入向量
# device:设备
dataset = create_dataset(f, n_var=2, device=device)
dataset['train_label'].shape

#默认配置：训练集和测试集都为1000次，生成数据范围为[-1,1],
# f:定义的函数
# n_var:输入向量
# f_mode:函数模式
# ranges:数据生成范围
# train_num:训练样本数
# test_num:测试样本数
# normalize_input:标准化输入
# normalize_label:标准化输出
# device:设备
# seed:随机种子
# def create_dataset(f, 
#                    n_var=2, 
#                    f_mode = 'col',
#                    ranges = [-1,1],
#                    train_num=1000, 
#                    test_num=1000,
#                    normalize_input=False,
#                    normalize_label=False,
#                    device='cpu',
#                    seed=0):