import os
import torch
import matplotlib.pyplot as plt
from dataset import dataset_loader
from model import H2OKAN
from tqdm import tqdm
from plot import plot_loss

# === Configure ===
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# === data load ===
input_dir  = "MD/process_data/coord.npy"
output_dir = "MD/process_data/energy.npy"
force_dir  = "MD/process_data/force.npy"
dataset = dataset_loader(input_dir, output_dir,force_dir,device=device)

# === loss record===
T_loss_energy =[]
T_loss_force  =[]
V_loss_energy =[]
V_loss_force  =[]

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
    # enable coords'grad
    dataset['train_input'].requires_grad_(True)
    pred = model(dataset['train_input'])  #前向传播
    # 预测力 F = -∇E
    force_pred = -torch.autograd.grad(
    outputs=pred.sum(),
    inputs=dataset['train_input'],
    create_graph=True,   # LBFGS 需要二阶导信息
    retain_graph=True    # 保留计算图以便后续反向传播
    )[0]                 # 取出grad
    
    # 损失计算函数
    model.loss_energy = torch.mean((pred - dataset['train_label']) ** 2)# torch.mean() 求平均，得到一个标量（scalar）损失值
    model.loss_force = torch.mean((force_pred - dataset['force_train']) ** 2)
    loss = model.loss_energy + 50 * model.loss_force #增加force loss权重
    # 利用损失函数反向传播--计算梯度
    loss.backward()
    return loss

# === Train ===
epoch = 100

# 创建 tqdm 进度条对象
pbar = tqdm(range(epoch), desc="KAN Train", ncols=120)

for step in pbar:
    # LBFGS
    train_loss = optimizer.step(loop)  # 注意：这里返回的是 loss（标量）
    # 记录训练损失
    T_loss_energy.append(model.loss_energy)
    T_loss_force.append(model.loss_force)
    # 每 1 步评估一次测试集
    if step % 1 == 0:
        #with torch.no_grad():
            # test_loss = torch.mean((model(dataset['test_input']) - dataset['test_label']) ** 2).item()
        # 利用test_input进行评估
        coords_test = dataset['test_input'].clone().requires_grad_(True)
        # 预测
        # model前向传播得到energy_test
        # energy loss
        energy_test = model(coords_test)
        energy_test_loss = torch.mean((energy_test - dataset['test_label']) ** 2).item()
        V_loss_energy.append(energy_test_loss)
        # force loss
        test_force_pred = -torch.autograd.grad(
            energy_test.sum(), coords_test,
            create_graph=False, retain_graph=False
        )[0]
        force_test_loss = torch.mean(
            (test_force_pred - dataset['force_test']) ** 2
        ).item()
        V_loss_force.append(force_test_loss)

        # 更新进度条右侧显示的信息
        pbar.set_postfix({
            'train_loss': f"{train_loss:.2e}",
            'E_val_loss': f"{energy_test_loss:.2e}",
            'F_val_loss': f"{force_test_loss:.2e}"
        })

# === Save Model ===
torch.save(model.state_dict(), 'H2O_KAN\checkpoints/H2O.pth')
model.kan.saveckpt('H2O_KAN/checkpoints/KAN')
print("model save to checkpoints")

# === drawing ===
# 绘制能量损失图
plot_loss(
    train_loss=T_loss_energy,
    val_loss=V_loss_energy,
    title='Energy',
    ylabel='Energy Loss',
    save_path='H2O_KAN/plots/loss_curve_force.png',
    color_train='blue',
    color_val='cyan'
)

# 绘制力损失图
plot_loss(
    train_loss=T_loss_force,
    val_loss=V_loss_force,
    title='Force',
    ylabel='Force Loss',
    save_path='H2O_KAN/plots/loss_curve_force.png',
    color_train='red',
    color_val='orange'
)