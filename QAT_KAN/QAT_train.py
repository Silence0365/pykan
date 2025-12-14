import os
import torch
import matplotlib.pyplot as plt
from dataset import dataset_loader
from model import QATKAN
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
Origin_MODEL_CKPT = "QAT_KAN/checkpoints/Raw_model.pth"
model = QATKAN(width=[3, 5, 1], grid=5, k=3, device=device,QAT_mode = True,M_num_bits= 7,N_num_bits =8)
model.load_state_dict(torch.load(Origin_MODEL_CKPT, map_location=device),strict=True)
print('Origin model Loading')
# 量化--减低lr 

# torch.优化器库.优化器ADAM
optimizer = torch.optim.Adam(
    model.parameters(),# 传入model
    lr=1e-6,# lr学习率
)

# ===  calibration ===
model.eval()
with torch.no_grad():
    _ = model(dataset['train_input'][:500])  # 小批量 calibration
model.train()

# === training loop === 
def train_step():
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
    loss = model.loss_energy + 5 * model.loss_force #增加force loss权重
    # 利用损失函数反向传播--计算梯度
    loss.backward()
    optimizer.step()
    return loss,model.loss_energy,model.loss_force

# === Train ===
best_loss = float('inf')
best_epoch = 0
epoch = 100

# 创建 tqdm 进度条对象
pbar = tqdm(range(epoch), desc="QATKAN Train", ncols=120)

for step in pbar:
    # LBFGS
    train_loss,model.loss_energy,model.loss_force = train_step()  # 注意：这里返回的是 loss（标量）
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
        # early stop
        # if energy_test_loss < best_loss:
        #     best_loss = energy_test_loss
        #     best_epoch = step
        # if step > best_epoch + 1:
        #     print(f"Early stopping at epoch {step}, best at {best_epoch}")
        #     break

# === Save Model ===
torch.save(model.state_dict(), 'QAT_KAN/checkpoints/QAT_model.pth')
#model.kan.saveckpt('QAT_KAN/checkpoints/KAN')
print("model save to checkpoints")

# === drawing ===
# 绘制能量损失图
plot_loss(
    train_loss=T_loss_energy,
    val_loss=V_loss_energy,
    title='Energy',
    ylabel='Energy Loss',
    save_path='QAT_KAN/plots/QAT_model_loss_energy.png',
    color_train='blue',
    color_val='cyan'
)

# 绘制力损失图
plot_loss(
    train_loss=T_loss_force,
    val_loss=V_loss_force,
    title='Force',
    ylabel='Force Loss',
    save_path='QAT_KAN/plots/QAT_model_loss_force.png',
    color_train='red',
    color_val='orange'
)