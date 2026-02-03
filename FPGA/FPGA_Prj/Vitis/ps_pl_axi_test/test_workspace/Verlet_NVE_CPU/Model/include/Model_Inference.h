#ifndef MODEL_INFERENCE_H
#define MODEL_INFERENCE_H

#include <stdint.h>

// 配置参数（与你的代码一致）
#define M_NUM_BITS 7
#define N_NUM_BITS 24

/**
 * @brief 执行 KAN 模型前向推理 + 原子力计算
 *
 * @param input_coords   输入：[1][3][3]，batch=1, 3 atoms, xyz
 * @param energy         输出：标量能量（eV）
 * @param forces         输出：原子力 [1][3][3]
 * @param total_us       输出：总耗时（微秒），可为 NULL
 * @param model_us       输出：model_deduction 耗时（微秒），可为 NULL
 * @return int           0: success
 */
int KAN_Inference(
    const float input_coords[1][3][3],
    float* energy,
    float forces[1][3][3],
    double* total_us,
    double* model_us
);

#endif // MODEL_INFERENCE_H