import numpy as np

# === ∂desc/∂R ===
def desc_differentialer(R_path):
    '''
    描述子微分计算  ∂desc/∂R
    
    Args:
    -----
        R: (M, 3, 3) — [O, H1, H2] coordinates —— [batch,atom,coord]
    
    Returns:
    --------
        J: (M, 3, 9) — Jacobian matrix —— [batch,atom,parameter] (parameter:O_x,O_y,...,H1_x,H1_y,...,H2_x,H2_y)
    '''
    R = np.load(R_path)
    batch = R.shape[0]# shape-算样本量
    O,H1,H2 = R[:,0],R[:,1],R[:,2]
    # O-H距离
    r1 = np.linalg.norm(H1-O,axis=1)    # axis=1 多了batch样本维
    r1 = r1[:,None]
    r2 = np.linalg.norm(H2-O,axis=1)
    r2 = r2[:,None]
    # d_mean, d_diff, cos_theta
    d_mean = (r1 + r2) / 2.0      # 平均 O–H 键长
    d_diff = np.abs(r1 - r2)      # 键长不对称性（>=0）
    v1 = H1 - O
    v2 = H2 - O 
    dot_mul = np.sum(v1 * v2, axis=1)# 点积--对应元素相乘(v1*v2)再求和(sum)
    # np.linalg.norm--计算向量模长
    cos_theta = dot_mul / (np.linalg.norm(v1,axis=1) * np.linalg.norm(v2,axis=1))
    cos_theta = cos_theta[:,None]


    # 单位向量
    e1 = (H1-O)/r1
    e2 = (H2-O)/r2

    # d_mean 偏导
    d_mean_O = -0.5 * (e1 + e2)
    d_mean_H1 = 0.5 * e1
    d_mean_H2 = 0.5 * e2

    # d_diff 偏导
    sign = np.where(r1 > r2, 1.0, np.where(r1 < r2, -1.0, 0.0)) # 多了batch样本维

    d_diff_O   = -sign * (e1 - e2)     # ∂|r1-r2|/∂O = -s*e1 + s*e2
    d_diff_H1  =  sign * e1            # ∂|r1-r2|/∂H1 = s*e1
    d_diff_H2  = -sign * e2            # ∂|r1-r2|/∂H2 = -s*e2

    # cos偏导
    # ∂cos/∂r
    dcos_r1 = e2 / r1 - cos_theta * e1 /r1
    dcos_r2 = e1 / r2 - cos_theta * e2 /r2
    # (∂cos/∂r)/∂R
    d_costheta_O   = -(dcos_r1 + dcos_r2)    # ∂r1/∂O = -I, ∂r2/∂O = -I O与r1,r2有关
    d_costheta_H1  = dcos_r1                # ∂r1/∂H1 r1仅与H1有关
    d_costheta_H2  = dcos_r2                # ∂r2/∂H2 r2仅与H2有关

    # 组装Jacobian矩阵 3x9
    J = np.zeros((batch,3, 9))

    # d_mean的三个微分∂O\∂H1\∂H2
    J[:,0, 0:3] = d_mean_O # [d_mean_Ox,d_mean_Oy,d_mean_Oz]
    J[:,0, 3:6] = d_mean_H1
    J[:,0, 6:9] = d_mean_H2

    # d_diff的三个微分∂O\∂H1\∂H2
    J[:,1, 0:3] = d_diff_O
    J[:,1, 3:6] = d_diff_H1
    J[:,1, 6:9] = d_diff_H2

    # cos的三个微分∂O\∂H1\∂H2
    J[:,2, 0:3] = d_costheta_O
    J[:,2, 3:6] = d_costheta_H1
    J[:,2, 6:9] = d_costheta_H2
    
    return J