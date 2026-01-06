import numpy as np
import torch
from sklearn.model_selection import train_test_split #？？？


def dataset_loader(input_dir,output_dir,force_dir,device='cpu'):
    # 数据导入
    input_data = np.load(input_dir)
    output_data = np.load(output_dir)
    force_data = np.load(force_dir)
    print(f"Loaded data from {input_dir},{output_dir},{force_dir}")
    print(f"data shape {input_data.shape},{output_data.shape},{force_data.shape}")

    # 输出数据形状修改
    output_data = output_data.reshape(-1, 1)# -1代表行数保持不变，列数为1

    # 划分数据集与训练集(seed=42,20%测试集)
    in_train, in_test, out_train, out_test, force_train, force_test = train_test_split(
        input_data, output_data,force_data,test_size=0.2, random_state=42
    )
    print("Train size:", in_train.shape[0])
    print("Test size:", in_test.shape[0])

    #numpy to torch
    # float32
    dataset = {
        'train_input':  torch.from_numpy(in_train).float().to(device),
        'train_label':  torch.from_numpy(out_train).float().to(device),
        'test_input':   torch.from_numpy(in_test).float().to(device),
        'test_label':   torch.from_numpy(out_test).float().to(device),
        'force_train':  torch.from_numpy(force_train).float().to(device),
        'force_test':   torch.from_numpy(force_test).float().to(device)
    }

    print(f"Data_Ready_to {device}")
    return dataset