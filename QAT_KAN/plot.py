import matplotlib.pyplot as plt
import os
import numpy as np

# 假设 T_loss_energy, V_loss_energy, T_loss_force, V_loss_force 已定义

def plot_loss(train_loss, val_loss, title, ylabel, save_path, color_train, color_val):
    plt.figure(figsize=(10, 5))
    plt.plot([t.detach().cpu().numpy() if hasattr(t, "detach") else t for t in train_loss], label='Train ' + title, color=color_train)
    plt.plot(val_loss, label='Validation ' + title, color=color_val)

    plt.yscale('log')
    plt.grid(True, which="both", ls="--")
    plt.legend()
    plt.title(f'Training and Validation Loss Curves for {title}')
    plt.xlabel('Step/Epoch')
    plt.ylabel(ylabel)
    plt.tight_layout()

    # 创建保存路径文件夹
    os.makedirs(os.path.dirname(save_path), exist_ok=True)
    
    plt.savefig(save_path, dpi=300)
    plt.show()

