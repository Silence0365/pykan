import numpy as np

# === simple_descriptor_builder ===
def simple_descriptor_builder(coords_path):
    coords =np.load(coords_path)
    # 取出各个原子的坐标
    # attention:对应关系取决于output文件的Atomic coordinates (Ang)
    # shape[N,3]
    O  = coords[:,0,:]
    H1 = coords[:,1,:]
    H2 = coords[:,2,:]

    # 利用欧几里得距离公式求出键长--沿着(xyz轴)第一维度求范数，保留样本数N
    # shape(N,)
    r1 = np.linalg.norm(O - H1, axis=1)  # O-H1 键长
    r2 = np.linalg.norm(O - H2, axis=1)  # O-H2 键长
    # =========CHECK SHAPE==========
    # print(f"r1:{r1.shape}")
    # print(f"r2:{r2.shape}")
    # 满足对称不变性
    d_mean = (r1 + r2) / 2.0      # 平均 O–H 键长
    d_diff = np.abs(r1 - r2)      # 键长不对称性（>=0）
    # 键角计算
    v1 = H1 - O
    v2 = H2 - O 
    dot_mul = np.sum(v1 * v2, axis=1)# 点积--对应元素相乘(v1*v2)再求和(sum)
    # np.linalg.norm--计算向量模长
    cos_theta = dot_mul / (np.linalg.norm(v1,axis=1) * np.linalg.norm(v2,axis=1))

    # 将三个描述子按axis=1位置拼接
    descriptor = np.stack([d_mean, d_diff, cos_theta], axis=1) # shape(N)-->shape(N,3)
    return descriptor

