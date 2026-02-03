#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <string.h>

//x：输入浮点数组
//x_int：输出定点数组
//len：数组长度
//M_num_bits：整数部分位宽
//N_num_bits：小数部分位宽
//scale_out：输出scale值

void quantizer(const float* x, int64_t* x_int, int len, int M_num_bits, int N_num_bits, float* scale_out){
    //溢出标志
    int overflow = 0;
    //总位宽
    int total_bits = 1 + M_num_bits + N_num_bits;

    //计算阈值
    int64_t quant_max = (1LL << (total_bits - 1)) - 1;   // 2^(total-1) - 1
    int64_t quant_min = -(1LL << (total_bits - 1));      // -2^(total-1)

    //计算scale
    float scale = powf(2.0f, -(float)N_num_bits);        // scale = 2^(-N)
    *scale_out = scale;

    //输入的数组长度
    for (int i = 0; i < len; i++) {

        //计算x_int并舍入
        float x_temp = x[i] / scale;  // equivalent to x[i] * (1 << N_num_bits) in ideal case
        int64_t xi = (int64_t)roundf(x_temp);

        // Saturation
        if (xi > quant_max) {
            xi = quant_max;
            overflow = 1;
        } else if (xi < quant_min) {
            xi = quant_min;
            overflow = 1;
        }

        //output x_int
        x_int[i] = xi;
    }

} 