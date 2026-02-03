#ifndef PIECEWISE_POLY_H
#define PIECEWISE_POLY_H

#include <stdint.h>

//分段多项式计算函数
void calculate_Piecewise_polynomial(
    const int32_t* x_eval,          // user_input       shape: (batch, in_dim)
    const int32_t* grid,            // from Grid_Table  shape: (in_dim, grid_size)
    const int32_t* coeff_input,     // from Coeff_Table shape: (in_dim, out_dim, num_intervals, 4)
    int global_shift,
    int batch,
    int in_dim,
    int out_dim,
    int grid_size,
    int64_t* y_eval                 // output:          shape：(batch, in_dim, out_dim)
);

// //分段多项式导数计算函数
void calculate_Piecewise_polynomial_derivative(
    const int32_t* x_eval,          // user_input       shape: (batch, in_dim)
    const int32_t* grid,            // from Grid_Table  shape: (in_dim, grid_size)
    const int32_t* coeff_input,     // from Coeff_Table shape: (in_dim, out_dim, num_intervals, 4)
    int global_shift,
    int batch,
    int in_dim,
    int out_dim,
    int grid_size,
    int64_t* dy_dx                  // output: (batch, in_dim, out_dim)
);

#endif // PIECEWISE_POLY_H