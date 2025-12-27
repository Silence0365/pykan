import numpy as np

# === simple_descriptor_builder ===
def Qmn_descriptor_builder(coords,M_num_bits=7,N_num_bits=20):
    # coords =np.load(coords)
    # 取出各个原子的坐标
    # attention:对应关系取决于output文件的Atomic coordinates (Ang)
    # shape[N,3]
    O  = coords[:,0,:]
    H1 = coords[:,1,:]
    H2 = coords[:,2,:]

    # 利用欧几里得距离公式求出键长--沿着(xyz轴)第一维度求范数，保留样本数N
    # shape(N,)
    r1_sqaure = np.sum(((O - H1) ** 2),axis = 1)
    r2_sqaure = np.sum(((O - H2) ** 2),axis = 1)
    r1 = np.round(np.sqrt(r1_sqaure)).astype(np.int64)
    r2 = np.round(np.sqrt(r2_sqaure)).astype(np.int64)
    # r1 = np.linalg.norm(O - H1, axis=1)  # O-H1 键长
    # r2 = np.linalg.norm(O - H2, axis=1)  # O-H2 键长
    # =========CHECK SHAPE==========
    # print(f"r1:{r1.shape}")
    # print(f"r2:{r2.shape}")
    # 满足对称不变性
    d_mean = (r1 + r2) // 2      # 平均 O–H 键长
    d_diff = np.abs(r1 - r2)      # 键长不对称性（>=0）
    # 键角计算
    v1 = H1 - O
    v2 = H2 - O 
    dot_mul = np.sum(v1 * v2, axis=1)# 点积--对应元素相乘(v1*v2)再求和(sum)
    # np.linalg.norm--计算向量模长
    cos_theta = (dot_mul << N_num_bits) // (r1 * r2 )

    # 将三个描述子按axis=1位置拼接
    descriptor = np.stack([d_mean, d_diff, cos_theta], axis=1) # shape(N)-->shape(N,3)
    return descriptor

