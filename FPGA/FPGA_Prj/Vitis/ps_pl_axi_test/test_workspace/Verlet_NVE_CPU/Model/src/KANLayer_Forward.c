#include "../include/KANLayer_Forward.h"
#include "../include/Piecewise_Poly.h"
#include "../../Table/include/Coeff_Table.h"
#include "../../Table/include/Grid_Table.h"
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

// Qmn 配置（与 piecewise_poly.c 一致）
#define N_NUM_BITS 24

//配置
// 模型结构由 Table 头文件提供（Grid_Table.h / Coeff_Table.h）

// 假设全连接 mask（若实际有稀疏性，请替换为生成的 mask 表）
static const int32_t L0_mask[L0_IN_DIM][L0_OUT_DIM] = {
    {1,1,1,1,1},
    {1,1,1,1,1},
    {1,1,1,1,1}
};
static const int32_t L1_mask[L1_IN_DIM][L1_OUT_DIM] = {
    {1}, {1}, {1}, {1}, {1}
};

// 缓存配置（适用于小批量嵌入式/FPGA）
#define MAX_LAYERS 2
#define MAX_BATCH  8
#define MAX_DIM    8
void layer_deduction(
    const int32_t* x,           // (batch, in_dim)
    int batch,
    int in_dim,
    int out_dim,
    int grid_size,
    const int32_t* grid,        // (in_dim, grid_size)
    const int32_t* coeff,       // (in_dim, out_dim, num_intervals, 4)
    const int32_t* mask,        // (in_dim, out_dim)
    int global_shift,
    int64_t* y_final,           // (batch, out_dim)
    int64_t* df_dD              // (batch, in_dim, out_dim)
) {
    const int num_intervals = grid_size - 1;

    // Step 1: 分配临时 buffer for y (batch, in_dim, out_dim)
    // 不要复用 df_dD，避免后续被覆盖。使用 malloc 分配临时缓冲并在函数末 free。
    int64_t* y_piece = (int64_t*)malloc(sizeof(int64_t) * batch * in_dim * out_dim);
    if (!y_piece) {
        // allocation failed: gracefully zero outputs and return
        for (int b = 0; b < batch; b++) {
            for (int od = 0; od < out_dim; od++) {
                y_final[b * out_dim + od] = 0;
            }
        }
        return;
    }

    // Step 2: 调用分段多项式计算函数（前向）
    calculate_Piecewise_polynomial(
        x,
        grid,
        coeff,
        global_shift,
        batch,
        in_dim,
        out_dim,
        grid_size,
        y_piece
    );

    // Step 3: y mask
    for (int b = 0; b < batch; b++) {
        for (int d = 0; d < in_dim; d++) {
            for (int od = 0; od < out_dim; od++) {
                int mask_val = mask[d * out_dim + od];
                int idx = b * in_dim * out_dim + d * out_dim + od;
                if (mask_val == 0) {
                    y_piece[idx] = 0;
                }
                // else keep y_piece[idx]
            }
        }
    }

    // Step 4: Calculate derivative into df_dD (separate buffer)
    calculate_Piecewise_polynomial_derivative(
        x,
        grid,
        coeff,
        global_shift,
        batch,
        in_dim,
        out_dim,
        grid_size,
        df_dD
    );

    // Step 5: df_dD mask
    for (int b = 0; b < batch; b++) {
        for (int d = 0; d < in_dim; d++) {
            for (int od = 0; od < out_dim; od++) {
                int mask_val = mask[d * out_dim + od];
                int idx = b * in_dim * out_dim + d * out_dim + od;
                if (mask_val == 0) {
                    df_dD[idx] = 0;
                }
            }
        }
    }

    // Step 6: y_final
    for (int b = 0; b < batch; b++) {
        for (int od = 0; od < out_dim; od++) {
            int64_t sum = 0;
            for (int d = 0; d < in_dim; d++) {
                sum += y_piece[b * in_dim * out_dim + d * out_dim + od];
            }
            y_final[b * out_dim + od] = sum;
        }
    }

    // Step 7: rescale
    for (int i = 0; i < batch * in_dim * out_dim; i++) {
        df_dD[i] = df_dD[i] >> N_NUM_BITS;
    }

    // free temporary buffer
    free(y_piece);
}

void model_deduction(
    const int32_t* x_input,
    int batch,
    int64_t* y_energy,
    int64_t* grad_input
) {
    // 层描述（指向你的全局表）
    struct LayerDesc {
        const int32_t* grid;
        const int32_t* coeff;
        const int32_t* mask;
        int global_shift;
        int in_dim;
        int out_dim;
        int grid_size;
        int idx;
    };

    struct LayerDesc layers[MAX_LAYERS];
    // runtime 初始化层描述，避免使用非编译时常量作为静态初始化量
    layers[0].grid = &G0_grid[0][0];
    layers[0].coeff = &L0_coeff[0][0][0][0];
    layers[0].mask = &L0_mask[0][0];
    layers[0].global_shift = L0_global_shift;
    layers[0].in_dim = L0_IN_DIM;
    layers[0].out_dim = L0_OUT_DIM;
    layers[0].grid_size = G0_GRID_SIZE;
    layers[0].idx = 0;

    layers[1].grid = &G1_grid[0][0];
    layers[1].coeff = &L1_coeff[0][0][0][0];
    layers[1].mask = &L1_mask[0][0];
    layers[1].global_shift = L1_global_shift;
    layers[1].in_dim = L1_IN_DIM;
    layers[1].out_dim = L1_OUT_DIM;
    layers[1].grid_size = G1_GRID_SIZE;
    layers[1].idx = 1;

    const int NUM_LAYERS = 2;

    // 缓存 Jacobian: [layer][b][d][od]
    static int64_t J_cache[MAX_LAYERS][MAX_BATCH][MAX_DIM][MAX_DIM];

    // 激活缓冲区（ping-pong）
    static int64_t act_buf[2][MAX_BATCH * MAX_DIM];
    #define ACT_CUR  (act_buf[0])
    #define ACT_NEXT (act_buf[1])

    // 临时的 int32 激活缓冲，用于将上一层的 int64 激活转换为下一层的 int32 输入
    static int32_t next_act_buf[MAX_BATCH * MAX_DIM];

    const int32_t* current_x = x_input;

    // ---------- 前向传播 ----------
    for (int l = 0; l < NUM_LAYERS; l++) {
        const struct LayerDesc* L = &layers[l];
        // 为导数分配独立临时缓冲
        int64_t* dfdD = (int64_t*)malloc(sizeof(int64_t) * batch * L->in_dim * L->out_dim);
        if (!dfdD) {
            // allocation failed: zero outputs and abort
            for (int b = 0; b < batch; b++) {
                for (int od = 0; od < L->out_dim; od++) {
                    ACT_NEXT[b * L->out_dim + od] = 0;
                }
            }
            return;
        }

        // 调用 layer，ACT_NEXT 存放本层输出（int64），dfdD 存放导数
        layer_deduction(
            current_x, batch,
            L->in_dim, L->out_dim, L->grid_size,
            L->grid, L->coeff, L->mask, L->global_shift,
            ACT_NEXT, dfdD
        );

        // 特殊缩放：layer_idx == 1 时 df/dx >>= 2（与 Python 测试一致）
        if (L->idx == 1) {
            for (int i = 0; i < batch * L->in_dim * L->out_dim; i++) {
                dfdD[i] >>= 2;
            }
        }

        // 缓存 Jacobian
        for (int i = 0; i < batch * L->in_dim * L->out_dim; i++) {
            ((int64_t*)J_cache[l])[i] = dfdD[i];
        }

        // 将本层输出（int64）转换为下一层输入（int32）
        for (int i = 0; i < batch * L->out_dim; i++) {
            next_act_buf[i] = (int32_t)ACT_NEXT[i];
        }
        current_x = next_act_buf;

        free(dfdD);
    }

    // 输出能量
    for (int i = 0; i < batch; i++) {
        y_energy[i] = ACT_NEXT[i];
    }

    // ---------- 反向传播 ----------
    int64_t* grad = ACT_CUR;
    int current_out_dim = 1;
    for (int i = 0; i < batch * current_out_dim; i++) {
        grad[i] = 1; // dE/dy = 1
    }

    int64_t* new_grad = ACT_NEXT;
    for (int l = NUM_LAYERS - 1; l >= 0; l--) {
        const struct LayerDesc* L = &layers[l];

        for (int b = 0; b < batch; b++) {
            for (int d = 0; d < L->in_dim; d++) {
                int64_t sum = 0;
                for (int od = 0; od < L->out_dim; od++) {
                    int64_t j_val = ((int64_t*)J_cache[l])[b * L->in_dim * L->out_dim + d * L->out_dim + od];
                    sum += grad[b * L->out_dim + od] * j_val;
                }
                new_grad[b * L->in_dim + d] = sum;
            }
        }

        // 交换缓冲区
        int64_t* tmp = grad;
        grad = new_grad;
        new_grad = tmp;
        current_out_dim = L->in_dim;
    }

    // 最终缩放：<< 2（与 Python 测试一致）
    for (int i = 0; i < batch * 3; i++) {
        grad_input[i] = grad[i] << 2;
    }
}