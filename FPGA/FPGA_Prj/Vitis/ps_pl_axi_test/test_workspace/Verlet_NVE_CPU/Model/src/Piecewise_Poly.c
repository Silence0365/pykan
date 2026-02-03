#include "../include/Piecewise_Poly.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// helper: clamp a 64-bit value into int32 range between lo and hi
static inline int32_t clamp_int32(int64_t v, int32_t lo, int32_t hi) {
    if (v < lo) return lo;
    if (v > hi) return hi;
    return (int32_t)v;
}

//Coeff_Table & Grid_Table Read
#define COEFF(d, od, inter, c) coeff[ \
    ((d) * out_dim + (od)) * (grid_size - 1) * 4 + (inter) * 4 + (c) \
]

#define GRID(d, i) grid[(d) * grid_size + (i)]

//Qmn Config
#define M_NUM_BITS 7
#define N_NUM_BITS 24
#define BIT_WIDTH  32


void calculate_Piecewise_polynomial(
    const int32_t* x_eval,
    const int32_t* grid,
    const int32_t* coeff,
    int global_shift,
    int batch,
    int in_dim,
    int out_dim,
    int grid_size,
    int64_t* y_eval
) {
    const int num_intervals = grid_size - 1;
    //create a memory space for output
    memset(y_eval, 0, (size_t)batch * in_dim * out_dim * sizeof(int64_t));

    //遍历 in_dim 维度
    for (int d = 0; d < in_dim; d++) {
        // 计算 h 和 h_inv = round(2^(2*N) / h) 和 x_initial
        int32_t h = GRID(d, 1) - GRID(d, 0);
        // 使用四舍五入方式计算 h_inv 保持与 Python round 行为一致
        int64_t h_inv = (((int64_t)1 << (2 * N_NUM_BITS)) + (h / 2)) / h;
        int32_t x_initial = GRID(d, 0);

        //遍历batch维度
        for (int b = 0; b < batch; b++) {
            int32_t xd = x_eval[b * in_dim + d];
            int64_t diff = (int64_t)xd - (int64_t)x_initial;
            int64_t mul = diff * h_inv;

            int64_t interval_raw = mul >> (2 * N_NUM_BITS);
            int32_t interval = clamp_int32(interval_raw, 0, (int32_t)(num_intervals - 1));

            // 局部坐标 u = (mul - interval_clipped * 2^(2N)) >> N
            // 使用已裁剪的 interval 与 Python 实现保持一致
            int64_t u_val = (mul - ((int64_t)interval << (2 * N_NUM_BITS))) >> N_NUM_BITS;
            // 注意：u_val 可能为负（若 interval_raw 被 clamp），但后续 mask 会处理

            for (int od = 0; od < out_dim; od++) {
                // 提取系数 [c0, c1, c2, c3] = [a0, a1, a2, a3]
                int64_t c0 = ((int64_t)COEFF(d, od, interval, 0)) << global_shift;
                int64_t c1 = ((int64_t)COEFF(d, od, interval, 1)) << global_shift;
                int64_t c2 = ((int64_t)COEFF(d, od, interval, 2)) << global_shift;
                int64_t c3 = ((int64_t)COEFF(d, od, interval, 3)) << global_shift;

                // u in Q0.N
                int64_t u = u_val;
                int64_t u2 = (u * u) >> N_NUM_BITS;
                int64_t u3 = (u2 * u) >> N_NUM_BITS;

                // 广播到标量（每个 od 独立）
                int64_t term0 = c0 << N_NUM_BITS;
                int64_t term1 = c1 * u;
                int64_t term2 = c2 * u2;
                int64_t term3 = c3 * u3;

                int64_t fd = (term0 + term1 + term2 + term3) >> N_NUM_BITS;

                // Mask invalid: outside [0, num_intervals - 1]
                if (interval_raw < 0 || interval_raw >= num_intervals) {
                    fd = 0;
                }

                y_eval[b * in_dim * out_dim + d * out_dim + od] = fd;
            }
        }
    }
}


void calculate_Piecewise_polynomial_derivative(
    const int32_t* x_eval,
    const int32_t* grid,
    const int32_t* coeff,
    int global_shift,
    int batch,
    int in_dim,
    int out_dim,
    int grid_size,
    int64_t* dy_dx
) {
    const int num_intervals = grid_size - 1;
    memset(dy_dx, 0, (size_t)batch * in_dim * out_dim * sizeof(int64_t));

    for (int d = 0; d < in_dim; d++) {
        int32_t h = GRID(d, 1) - GRID(d, 0);
        // 使用与前向一致的四舍五入计算，保持与 Python 实现一致
        int64_t h_inv = (((int64_t)1 << (2 * N_NUM_BITS)) + (h / 2)) / h;
        int32_t x_initial = GRID(d, 0);


        for (int b = 0; b < batch; b++) {
            int32_t xd = x_eval[b * in_dim + d];
            int64_t diff = (int64_t)xd - (int64_t)x_initial;
            int64_t mul = diff * h_inv;
            int64_t interval_raw = mul >> (2 * N_NUM_BITS);
            int32_t interval = clamp_int32(interval_raw, 0, (int32_t)(num_intervals - 1));

            int64_t u_val = (mul - ((int64_t)interval << (2 * N_NUM_BITS))) >> N_NUM_BITS;


            for (int od = 0; od < out_dim; od++) {
                //int64_t c0 = ((int64_t)COEFF(d, od, interval, 0)) << global_shift;
                int64_t c1 = ((int64_t)COEFF(d, od, interval, 1)) << global_shift;
                int64_t c2 = ((int64_t)COEFF(d, od, interval, 2)) << global_shift;
                int64_t c3 = ((int64_t)COEFF(d, od, interval, 3)) << global_shift;

                int64_t u = u_val;
                int64_t u2 = (u * u) >> N_NUM_BITS;

                // df/du = 3*c3*u^2 + 2*c2*u + c1
                int64_t term_u2 = 3 * c3 * u2;
                int64_t term_u1 = 2 * c2 * u;
                int64_t term_u0 = c1 << N_NUM_BITS;

                int64_t df_du = (term_u2 + term_u1 + term_u0) >> N_NUM_BITS;

                // df/dx = df/du * (1/h) ≈ df_du * h_inv (as in Python)
                int64_t df_dx = df_du * h_inv;

                if (interval_raw < 0 || interval_raw >= num_intervals) {
                    df_dx = 0;
                }

                dy_dx[b * in_dim * out_dim + d * out_dim + od] = df_dx;
            }
        }
    }
}