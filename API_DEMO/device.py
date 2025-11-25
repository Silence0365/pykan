#设备选择——自行安装带cuda的pytorch，会自行选择
from kan import KAN, create_dataset
import torch


device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)
