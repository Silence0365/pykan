#ifndef GRID_TABLE_H
#define GRID_TABLE_H

#include <stdint.h>

#define GRID_TABLE_PRESENT 1

// Layer 0 grid
#define G0_IN_DIM 3
#define G0_GRID_SIZE 12
extern const int32_t G0_grid[3][12];

// Layer 1 grid
#define G1_IN_DIM 5
#define G1_GRID_SIZE 12
extern const int32_t G1_grid[5][12];

#endif /* GRID_TABLE_H */
