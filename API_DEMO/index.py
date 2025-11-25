#索引
from kan import *

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

model = KAN(width=[2,3,2,1], noise_scale=0.3, device=device)# noise_scale噪声
x = torch.normal(0,1,size=(100,2)).to(device)# 从标准正态分布生成100个样本，每个样本2个特征
model(x);# 执行前向传播
beta = 100 # 激活强度的显示范围
model.plot(beta=beta)
plt.show()
# [2,3,2,1] 
# 2 输入节点
# 3 神经元位于第一层
# 2 神经元位于第二层
# 1 输出节点


#relu_index
#(层索引，输入神经元索引，输出神经元索引)
model.fix_symbolic(0,1,1,'sin')# 第0层（输入层)的第二个输入节点到下一层（第一隐藏层）的第2个节点固定为指定的sin函数
model.plot(beta=beta)
plt.show()
model.unfix_symbolic(0,1,1)# 解除符号函数的指定

#node_index
#(层索引，节点索引)
model.remove_node(1,0)# 移除第1层的第1个节点的链接
model.plot(beta=beta)
plt.show()

#layer_index
model = KAN(width=[2,3,5,1])

i = 0
model.act_fun[i] # => KAN Layer (Spline)样条层
model.symbolic_fun[i] # => KAN Layer (Symbolic)符号层

for i in range(3):
    print(model.act_fun[i].in_dim, model.act_fun[i].out_dim)
    print(model.symbolic_fun[i].in_dim, model.symbolic_fun[i].out_dim)

#output
# 2 3 第0层样条层：2输入3输出
# 2 3 第0层符号层（分支）：2输入3输出
# 3 5 第1层样条层：3输入5输出
# 3 5 第1层符号层（分支）：3输入5输出
# 5 1 第2层样条层：5输入1输出
# 5 1 第2层符号层（分支）：5输入1输出