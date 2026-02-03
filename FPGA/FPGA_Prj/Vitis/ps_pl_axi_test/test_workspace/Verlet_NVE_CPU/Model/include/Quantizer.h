#ifndef QUANTIZER_H
#define QUANTIZER_H

#include <stdint.h>

void quantizer(const float* x, int64_t* x_int, int len, int M_num_bits, int N_num_bits, float* scale_out);

#endif // QUANTIZER_H