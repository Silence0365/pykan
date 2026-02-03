#include <stdio.h>
#include <stdint.h>
#include "./Model/include/KANLayer_Forward.h"
#include "./Model/include/Desc_Differentialer.h"
#include "./Model/include/Descriptor_Builder.h"
#include "./Model/include/Quantizer.h"
#include "./Model/include/Force_Broadcast.h"


//Config
int64_t x_int64[3];
float scale;
const int M_num_bits = 7;
const int N_num_bits = 24;

int main() {
    // === Step 1: 原子坐标输入 ===
    const float input_coords[1][3][3] = {{
        {2.226191f, 6.438836f, 3.200885f},   // O
        {2.226191f, 6.453672f, 2.204584f},   // H1
        {2.226191f, 7.397542f, 3.496887f}    // H2
    }};

    // === Step 2: 构建描述子（float32）===
    float descriptor[1][3];
    simple_descriptor_builder(1, input_coords, descriptor);
    float x_float[3] = {
        descriptor[0][0],  // d_mean
        descriptor[0][1],  // d_diff
        descriptor[0][2]   // cos_theta
    };


    // === Step 3: 量化为 Q7.24（即 M=7, N=24）===
    quantizer(x_float, x_int64, 3, M_num_bits, N_num_bits, &scale);

    // 转为 int32_t（Q7.24
    int32_t x_input[3];
    for (int i = 0; i < 3; i++) {
        x_input[i] = (int32_t)x_int64[i];
    }

    // === Step 4: 调用 KAN 模型推理 ===
    int64_t y_energy[1];
    int64_t grad_input[3];  // ∂E/∂x_quant

    model_deduction(x_input, 1, y_energy, grad_input);

    // === Step 5: 反量化梯度 (∂E/∂desc ≈ grad_input / scale_desc) ===
    float grad_desc[1][3];

    // 反量化
    const float grad_scale = ldexpf(1.0f, -2 * N_num_bits); // 2^(-2*N)
    for (int k = 0; k < 3; k++) {
        grad_desc[0][k] = (float)grad_input[k] * grad_scale;
    }

    // === Step 6: 计算 ∂desc/∂R ===
    // Jacobian 矩阵 J[batch=1][desc=3][param=9] ===
    float J[1][3][9];
    desc_differentialer(1, input_coords, J);

    // === Step 7: 计算受力 F = - sum_k (grad_desc[k] * J[0][k][p]) ===
    // 初始化为 0
    float F[1][3][3] = {{{0.0f}}};
    force_broadcast(1, grad_desc, J, F);

    // === Step 8: 打印结果 ===
    printf("\n=== Model Output ===\n");
    printf("y_energy[0] = %lld (scaled = %.8f eV)\n", 
        (long long)y_energy[0], 
        ldexp((double)y_energy[0], -N_num_bits));

    printf("\n=== Atomic Forces ===\n");
    const char* atom_names[3] = {"O", "H1", "H2"};
    for (int a = 0; a < 3; a++) {
        printf("%s: (%+.8f, %+.8f, %+.8f)\n",
            atom_names[a], F[0][a][0], F[0][a][1], F[0][a][2]);
    }

    return 0;
}