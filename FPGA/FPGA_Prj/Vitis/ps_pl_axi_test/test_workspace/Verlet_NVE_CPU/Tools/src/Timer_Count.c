#include "../include/Timer_Count.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xpseudo_asm.h"  // for dsb()

// SLCR and Global Timer register addresses
#define SLCR_BASE                   0xF8000000
#define SLCR_GLOBAL_TMR_CLK_CTRL    (SLCR_BASE + 0x124)

#define GLOBAL_TMR_BASE             0xF8F00200
#define GTIMER_COUNTER_LOW          (GLOBAL_TMR_BASE + 0x00)
#define GTIMER_COUNTER_HIGH         (GLOBAL_TMR_BASE + 0x04)

void Timer_Init(void) {
    // Enable clock to Global Timer
    Xil_Out32(SLCR_GLOBAL_TMR_CLK_CTRL, 0x1);
    dsb(); // Ensure write completes before use
}

uint64_t Timer_GetCount(void) {
    uint32_t high1, low, high2;
    do {
        high1 = Xil_In32(GTIMER_COUNTER_HIGH);
        low   = Xil_In32(GTIMER_COUNTER_LOW);
        high2 = Xil_In32(GTIMER_COUNTER_HIGH);
    } while (high1 != high2);
    return ((uint64_t)high1 << 32) | low;
}

uint32_t Timer_GetFreqHz(void) {
    // Zynq-7000: Global Timer runs at CPU_1x = CPU_3x / 3
    return (uint32_t)(XPAR_CPU_CORE_CLOCK_FREQ_HZ / 3);
}