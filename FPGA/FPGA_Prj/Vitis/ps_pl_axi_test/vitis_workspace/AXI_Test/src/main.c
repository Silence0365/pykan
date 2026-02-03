#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "../UART/uart.h"

#include <string.h>
#include <stdlib.h>
#define PS_PL_REG0_BASE_ADDR 0x43c00000

char input_line[256];
int slv_reg1;
int slv_reg2;
int slv_reg3;
int value;
int led_count;
int led_state;


int main()
{

    //串口初始化
    Uart_Init();
    Uart_Intr_Init();

    print("mode:AXI_TEST\r\n");
    slv_reg1 = Xil_In32(PS_PL_REG0_BASE_ADDR + 4);
    xil_printf("reg1 Raw Data: = %d\r\n",slv_reg1);
    slv_reg2 = Xil_In32(PS_PL_REG0_BASE_ADDR + 8);
    xil_printf("reg2 Raw Data: = %d\r\n",slv_reg2);


    while(1)
    {
        if (ReadLineFromRingBuffer(&uart_rx_buf, input_line, sizeof(input_line)) == 0)
        {
            //环回测试
            value = atoi(input_line);
            Xil_Out32(PS_PL_REG0_BASE_ADDR + 4, value);         //写reg1
            slv_reg3 = Xil_In32(PS_PL_REG0_BASE_ADDR + 12);     //读reg3
            xil_printf("Write %d to reg1, read reg3 = %d\r\n", value, slv_reg3);
        }
       
        if(led_count == 10000000)
        {
            //LED
            led_count = 0;
            led_state = ~led_state;
            Xil_Out32(PS_PL_REG0_BASE_ADDR, led_state);
        }
        led_count++;
    }

    return 0;
}
