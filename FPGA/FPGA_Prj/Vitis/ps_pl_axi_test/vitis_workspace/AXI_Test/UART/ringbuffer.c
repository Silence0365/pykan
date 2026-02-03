#include "ringbuffer.h"

// 初始化（通常非必需，因全局变量会清零，但提供以支持局部变量）
void RingBuffer_Init(RingBuffer *rb)
{
    rb->head = 0;
    rb->tail = 0;
}

// 向缓冲区写入一个字节（非阻塞）
// 返回: 0 = 成功, -1 = 缓冲区满（丢弃）
int RingBuffer_Put(RingBuffer *rb, uint8_t data)
{
    uint32_t next_head = (rb->head + 1) & (RING_BUFFER_SIZE - 1);
    
    if (next_head == rb->tail) {
        return -1; // full
    }
    
    rb->buffer[rb->head] = data;
    rb->head = next_head;
    return 0;
}

// 从缓冲区读取一个字节（非阻塞）
// 返回: 0 = 成功, -1 = 缓冲区空
int RingBuffer_Get(RingBuffer *rb, uint8_t *data)
{
    if (rb->head == rb->tail) {
        return -1; // empty
    }
    
    *data = rb->buffer[rb->tail];
    rb->tail = (rb->tail + 1) & (RING_BUFFER_SIZE - 1);
    return 0;
}

// 检查是否为空
int RingBuffer_IsEmpty(const RingBuffer *rb)
{
    return (rb->head == rb->tail);
}

// 检查是否为满
int RingBuffer_IsFull(const RingBuffer *rb)
{
    return ((rb->head + 1) & (RING_BUFFER_SIZE - 1)) == rb->tail;
}

// 获取当前数据个数
uint32_t RingBuffer_Count(const RingBuffer *rb)
{
    return (rb->head - rb->tail) & (RING_BUFFER_SIZE - 1);
}