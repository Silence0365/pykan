#include "../include/Model_Inference.h"
#include <math.h>
#include "xil_printf.h"  // 可选，用于内部调试（正式版可移除）

// Model headers (adjust paths as needed)
#include "../include/Descriptor_Builder.h"
#include "../include/Quantizer.h"
#include "../include/KANLayer_Forward.h"
#include "../include/Desc_Differentialer.h"
#include "../include/Force_Broadcast.h"

// Timer
#include "../../Tools/include/Timer_Count.h"

int KAN_Inference(
    const float input_coords[1][3][3],
    float* energy,
    float forces[1][3][3],
    double* total_us,
    double* model_us
) {
    if (!input_coords || !energy || !forces) {
        return -1;
    }

    uint64_t total_start = Timer_GetCount();

    // === Step 1: Build descriptor ===
    float descriptor[1][3];
    simple_descriptor_builder(1, input_coords, descriptor);
    float x_float[3] = {
        descriptor[0][0],  // d_mean
        descriptor[0][1],  // d_diff
        descriptor[0][2]   // cos_theta
    };

    // === Step 2: Quantize to Q7.24 ===
    int64_t x_int64[3];
    float scale;
    quantizer(x_float, x_int64, 3, M_NUM_BITS, N_NUM_BITS, &scale);

    int32_t x_input[3];
    for (int i = 0; i < 3; i++) {
        x_input[i] = (int32_t)x_int64[i];
    }

    // === Step 3: Run model_deduction ===
    uint64_t model_start = Timer_GetCount();
    int64_t y_energy[1];
    int64_t grad_input[3];
    model_deduction(x_input, 1, y_energy, grad_input);
    uint64_t model_end = Timer_GetCount();

    // Convert energy
    *energy = ldexpf((float)y_energy[0], -N_NUM_BITS);

    // === Step 4: Backprop through quantization ===
    float grad_desc[1][3];
    const float grad_scale = ldexpf(1.0f, -2 * N_NUM_BITS);
    for (int k = 0; k < 3; k++) {
        grad_desc[0][k] = (float)grad_input[k] * grad_scale;
    }

    // === Step 5: Compute Jacobian d(desc)/d(coords) ===
    float J[1][3][9];
    desc_differentialer(1, input_coords, J);

    // === Step 6: Broadcast force ===
    force_broadcast(1, grad_desc, J, forces);  // directly write to output

    uint64_t total_end = Timer_GetCount();

    // === Optional timing output ===
    uint32_t freq_hz = Timer_GetFreqHz();
    if (total_us) {
        *total_us = (double)(total_end - total_start) * 1e6 / freq_hz;
    }
    if (model_us) {
        *model_us = (double)(model_end - model_start) * 1e6 / freq_hz;
    }

    return 0;
}