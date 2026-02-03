#include "xparameters.h"
#include "xuartps.h"
#include "xuartps_hw.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xstatus.h"
#include "xplatform_info.h"
#include <xscugic_hw.h>
#include "ringbuffer.h"

#define UART_INT_IRQ_ID  		59U//中断号--手册查询

XUartPs Uart_Ps; //XuartPS结构体
RingBuffer uart_rx_buf;//RingBuffer 结构体
XScuGic Uart_Intr; //XScuGic结构体

int Uart_Init()
{   
    int Status;
    // XUartPs_Config Uart_Config;//结构体
    // Uart_Config.BaseAddress = XPAR_UART0_BASEADDR;//将Uart_Config结构体的BaseAddress赋值为XPAR_UART0_BASEADDR，传入CfgInitialize
    // Status = XUartPs_CfgInitialize(&Uart_Ps, &Uart_Config, Uart_Config.BaseAddress);
    XUartPs_Config *Uart_Config;//指针
    Uart_Config = XUartPs_LookupConfig(XPAR_UART0_BASEADDR);//查找XUartPs结构体的config信息BaseAddress---指针操作
    XUartPs_CfgInitialize(&Uart_Ps, Uart_Config, Uart_Config->BaseAddress);

    //硬件自检
    Status = XUartPs_SelfTest(&Uart_Ps);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
        
    }
    //设置波特率
    XUartPs_SetBaudRate(&Uart_Ps, 115200);
    
    //设置UART工作模式--NORMAL MODE
    XUartPs_SetOperMode(&Uart_Ps, XUARTPS_OPER_MODE_NORMAL);

    //设置RX FIFO触发阈值--1bit
    XUartPs_SetFifoThreshold(&Uart_Ps,1);
    
    return Status;

}


//中断服务函数--从XScuGic_Connect中返回CallBackRef给予
void Uart_Intr_Handler(void *CallbackRef)
{
    int IsrStatus;
    u8 receive_data;
     XUartPs *UartPtr = (XUartPs *)CallbackRef;//转换为 XUartPs 指针
    // //获取中断状态寄存器值（器件基地址，偏移值）
    // IsrStatus = XUartPs_ReadReg(UartPtr->Config.BaseAddress, XUARTPS_IMR_OFFSET);
    //获取中断状态寄存器标志位（器件基地址，偏移值）
    IsrStatus = XUartPs_ReadReg(UartPtr->Config.BaseAddress, XUARTPS_ISR_OFFSET);
    
    //中断判断(产生中断方式与所设置的中断触发方式相同)
    if(IsrStatus & XUARTPS_IXR_RXOVR)
    {
        while ((XUartPs_ReadReg(UartPtr->Config.BaseAddress, 0x2C) & 0x02) == 0) 
        {
            receive_data = XUartPs_RecvByte(UartPtr->Config.BaseAddress);
            RingBuffer_Put(&uart_rx_buf, receive_data);
        }
        XUartPs_WriteReg(UartPtr->Config.BaseAddress, XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR);//清除标志位--写1清0
    }
}


int Uart_Intr_Init()
{   
    int Status;
    //初始化中断
    XScuGic_Config *Uart_Intr_Config;//指针
    Uart_Intr_Config = XScuGic_LookupConfig(XPAR_XSCUGIC_0_BASEADDR);
    Status = XScuGic_CfgInitialize(&Uart_Intr, Uart_Intr_Config, Uart_Intr_Config->CpuBaseAddress);
    if(Status != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
    //关联中断ID与中断函数(结构体、中断ID号、中断服务函数、所需要链接的结构体)
    XScuGic_Connect(&Uart_Intr, UART_INT_IRQ_ID, Uart_Intr_Handler, &Uart_Ps);

    //中断异常处理
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                &Uart_Intr);
    
    //设置中断触发方式（MASK）--达到RX FIFO阈值后产生中断
   XUartPs_SetInterruptMask(&Uart_Ps,XUARTPS_IXR_RXOVR);

    //使能中断
    XScuGic_Enable(&Uart_Intr, UART_INT_IRQ_ID);

    //全局中断

    Xil_ExceptionEnable();

    
    return Status;
}

//demo:行解析器，后续用于start，传入输入输出变量等等
int ReadLineFromRingBuffer(RingBuffer *rb, char *line, int max_len)
{
    static int pos = 0; // 静态变量保存当前行位置
    u8 ch;

    while (pos < max_len - 1 && RingBuffer_Get(rb, &ch) == 0) {
        if (ch == '\n') {
            // 遇到 \n，行结束
            line[pos] = '\0';
            pos = 0; // 重置，准备下一行
            return 0;
        }
        else if (ch == '\r') {
            // 忽略 \r（兼容 Windows）
            continue;
        }
        else if (ch >= 32 && ch <= 126) {
            line[pos++] = (char)ch;
        }
        // 其他字符忽略（或可扩展处理退格等）
    }

    // 缓冲区空 或 行未结束
    return -1;
}

// int main()
// {
//     Uart_Init();
//     Uart_Intr_Init();
//     print("Hello World\n\r");
//     char line[64];
//     while (1) {
//         if (ReadLineFromRingBuffer(&uart_rx_buf, line, sizeof(line)) == 0) {
//             xil_printf("received: %s\r\n", line);
//         }
//         // 可加延时避免死循环占满 CPU（裸机通常不需要）
//     }
//     return 0;
// }