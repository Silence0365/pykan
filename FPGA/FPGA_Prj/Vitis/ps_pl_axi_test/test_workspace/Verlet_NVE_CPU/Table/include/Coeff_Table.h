#ifndef COEFF_TABLE_H
#define COEFF_TABLE_H

#include <stdint.h>

// Layer 0
#define L0_IN_DIM 3
#define L0_OUT_DIM 5
#define L0_NUM_INTERVALS 11

extern const int L0_global_shift;
extern const int32_t L0_coeff[3][5][11][4];

// Layer 1
#define L1_IN_DIM 5
#define L1_OUT_DIM 1
#define L1_NUM_INTERVALS 11

extern const int L1_global_shift;
extern const int32_t L1_coeff[5][1][11][4];

#endif /* COEFF_TABLE_H */
