// 计算原子受力: F = - sum_k (grad_desc[k] * ∂desc_k/∂R)
// M: batch size
// grad_desc: [M][3]  -> ∂E/∂desc (float)
// J:          [M][3][9] -> ∂desc/∂R (float)
// F:          [M][3][3] -> output forces (O, H1, H2) × (x,y,z)

void force_broadcast(int N, const float grad_desc[][3], const float J[][3][9], float F[][3][3]) {
    // 遍历每个样本
    for (int i = 0; i < N; i++) {
        // 初始化当前样本的力为零
        float (*f_atom)[3] = F[i]; // f_atom[3][3]
        for (int a = 0; a < 3; a++) {
            f_atom[a][0] = 0.0f;
            f_atom[a][1] = 0.0f;
            f_atom[a][2] = 0.0f;
        }

        // 遍历每个描述子分量 k (0:d_mean, 1:d_diff, 2:cos_theta)
        for (int k = 0; k < 3; k++) {
            float g = grad_desc[i][k]; // ∂E/∂desc_k

            // 累加到 O 原子 (index 0)
            f_atom[0][0] -= g * J[i][k][0]; // Ox
            f_atom[0][1] -= g * J[i][k][1]; // Oy
            f_atom[0][2] -= g * J[i][k][2]; // Oz

            // 累加到 H1 原子 (index 1)
            f_atom[1][0] -= g * J[i][k][3]; // H1x
            f_atom[1][1] -= g * J[i][k][4]; // H1y
            f_atom[1][2] -= g * J[i][k][5]; // H1z

            // 累加到 H2 原子 (index 2)
            f_atom[2][0] -= g * J[i][k][6]; // H2x
            f_atom[2][1] -= g * J[i][k][7]; // H2y
            f_atom[2][2] -= g * J[i][k][8]; // H2z
        }
    }
}