#ifndef TIMER_COUNT_H
#define TIMER_COUNT_H

#include <stdint.h>

// 初始化 Global Timer（使能时钟）
void Timer_Init(void);

// 安全读取 64 位 Global Timer 计数值（单位：cycles）
uint64_t Timer_GetCount(void);

// 获取 Global Timer 频率（Hz），用于转换为时间
// 注意：Zynq-7000 中 = CPU_3x / 3
uint32_t Timer_GetFreqHz(void);

#endif // TIMER_COUNT_H