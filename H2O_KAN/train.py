import os
import torch
from dataset import dataset_loader
from model import H2OKAN
from tqdm import tqdm

# === Configure ===
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# === data load ===
input_dir = "MD/process_data/coord.npy"
output_dir = "MD/process_data/energy.npy"
dataset = dataset_loader(input_dir, output_dir, device=device)

# === model init ===
model = H2OKAN(width=[3, 5, 1], grid=5, k=3, device=device)

#torch.优化器库.优化器LBFGS
optimizer = torch.optim.LBFGS(
    model.parameters(),# 传入model
    lr=0.35,# lr学习率
    line_search_fn="strong_wolfe", #每一步都会自动寻找最合理的步长--线搜索
    tolerance_grad=1e-32,# 终止条件：梯度范数的容忍度--基本不会早停
    tolerance_change=1e-32,# 终止条件：函数值变化的容忍度--基本不会早停
)

# === training loop === 
def loop():
    optimizer.zero_grad() # 梯度清零
    pred = model(dataset['train_input'])  #前向传播
    # 损失计算函数
    loss = torch.mean((pred - dataset['train_label']) ** 2)# torch.mean() 求平均，得到一个标量（scalar）损失值
    # 利用损失函数反向传播--计算梯度
    loss.backward()
    return loss

# === Train ===
epoch = 100

# 创建 tqdm 进度条对象
pbar = tqdm(range(epoch), desc="KAN Train", ncols=100)

for step in pbar:
    # LBFGS
    train_loss = optimizer.step(loop)  # 注意：这里返回的是 loss（标量）
    # 每 1 步评估一次测试集
    if step % 1 == 0:
        with torch.no_grad():
            test_loss = torch.mean((model(dataset['test_input']) - dataset['test_label']) ** 2).item()
        # 更新进度条右侧显示的信息
        pbar.set_postfix({
            'train_loss': f"{train_loss:.2e}",
            'test_loss': f"{test_loss:.2e}"
        })

# === Save Model ===
torch.save(model.state_dict(), 'H2O_KAN\checkpoints/h2o_kan.pth')
print("model save to checkpoints/h2o_kan.pth")

