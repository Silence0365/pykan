#ifndef UART_H
#define UART_H

#include "ringbuffer.h"

//声明已存在的全局变量
extern RingBuffer uart_rx_buf;

//串口初始化
int Uart_Init();
//串口中断初始化
int Uart_Intr_Init();
//行处理器DEMO
int ReadLineFromRingBuffer(RingBuffer *rb, char *line, int max_len);
#endif // UART_H