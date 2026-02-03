#ifndef RING_BUFFER_H
#define RING_BUFFER_H

#include <stdint.h>

// 配置：缓冲区大小（必须是 2 的幂：16, 32, 64, 128, 256...）
#ifndef RING_BUFFER_SIZE
#define RING_BUFFER_SIZE 128
#endif

// 确保是 2 的幂（编译时检查）
#if (RING_BUFFER_SIZE & (RING_BUFFER_SIZE - 1)) != 0
#error "RING_BUFFER_SIZE must be a power of two!"
#endif

typedef struct {
    volatile uint32_t head;   // 写索引（由生产者更新，如 ISR）
    volatile uint32_t tail;   // 读索引（由消费者更新，如主循环）
    uint8_t buffer[RING_BUFFER_SIZE];
} RingBuffer;

// 函数声明
void RingBuffer_Init(RingBuffer *rb);
int RingBuffer_Put(RingBuffer *rb, uint8_t data);
int RingBuffer_Get(RingBuffer *rb, uint8_t *data);
int RingBuffer_IsEmpty(const RingBuffer *rb);
int RingBuffer_IsFull(const RingBuffer *rb);
uint32_t RingBuffer_Count(const RingBuffer *rb);

#endif // RING_BUFFER_H