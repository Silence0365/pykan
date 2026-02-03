#ifndef KANLAYER_FORWARD_H
#define KANLAYER_FORWARD_H

#include <stdint.h>

// 模型推理接口
void model_deduction(
    const int32_t* x_input,
    int batch,
    int64_t* y_energy,
    int64_t* grad_input
);

#endif /* KANLAYER_FORWARD_H */
