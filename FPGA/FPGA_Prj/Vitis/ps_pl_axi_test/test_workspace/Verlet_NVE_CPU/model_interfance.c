// #include <stdint.h>
// #include <string.h>
// #include <math.h>

// //Model
// #include "./Model/include/Model_Inference.h"

// //Tools
// #include "./Tools/include/Uart.h"

// // Xilinx headers
// #include "xparameters.h"
// #include "xil_io.h"
// #include "xil_printf.h"


// char input_line[256];
// #define PS_PL_REG0_BASE_ADDR 0x43C00000
// volatile int led_count = 0;
// int led_state = 0;

// // ==================== Main ====================
// void run_kan_inference(const float input_coords[1][3][3]) {
//     // const float input_coords[1][3][3] = {{
//     //     {2.226191f, 6.438836f, 3.200885f},   // O
//     //     {2.226191f, 6.453672f, 2.204584f},   // H1
//     //     {2.226191f, 7.397542f, 3.496887f}    // H2
//     // }};

//     float energy;
//     float forces[1][3][3];
//     double total_us, model_us;

//     int ret = KAN_Inference(input_coords, &energy, forces, &total_us, &model_us);
//     if (ret != 0) {
//         printf("Model_Forward failed!\r\n");
//         return;
//     }

//     // Print results
//     printf("\r\n=== Timing ===\r\n");
//     printf("Total inference time: %.3f us\r\n", total_us);
//     printf("model_deduction time: %.3f us\r\n", model_us);

//     printf("\r\n=== Model Output ===\r\n");
//     printf("Energy: %.8f eV\r\n", energy);

//     printf("\r\n=== Atomic Forces ===\r\n");
//     const char* atom_names[3] = {"O", "H1", "H2"};
//     for (int a = 0; a < 3; a++) {
//         printf("%s: (%+.8f, %+.8f, %+.8f)\r\n",
//                    atom_names[a],
//                    forces[0][a][0], forces[0][a][1], forces[0][a][2]);
//     }
// }

// int main() {
//     Uart_Init();
//     Uart_Intr_Init();

//     printf("Ready. Send 'start' to begin.\r\n");

//     while (1) {
//         if (ReadLineFromRingBuffer(&uart_rx_buf, input_line, sizeof(input_line)) == 0) {
//             char* p = input_line;
//             while (*p == ' ' || *p == '\t') p++; // trim leading whitespace

//             if (strcmp(p, "start") == 0) {
//                 printf("mode:KAN_Forward\r\n");
//                 printf("device:CPU\r\n");
//                 printf("Input 9 floats (O_x O_y O_z H1_x H1_y H1_z H2_x H2_y H2_z): ");

//                 char coord_line[256];
//                 // Wait for next line
//                 while (ReadLineFromRingBuffer(&uart_rx_buf, coord_line, sizeof(coord_line)) != 0) {
//                     // Busy-wait (or add delay/yield if needed)
//                 }

//                 float coords[1][3][3];
//                 int parsed = sscanf(coord_line,
//                     "%f %f %f %f %f %f %f %f %f",
//                     &coords[0][0][0], &coords[0][0][1], &coords[0][0][2],
//                     &coords[0][1][0], &coords[0][1][1], &coords[0][1][2],
//                     &coords[0][2][0], &coords[0][2][1], &coords[0][2][2]
//                 );

//                 if (parsed != 9) {
//                     printf("ERR: Need exactly 9 floats. Got %d.\r\n", parsed);
//                 } else {
//                     run_kan_inference(coords);
//                 }

//                 printf("Finish\r\n");
//             }
//         }

//         // LED blink
//         if (led_count >= 10000000) {
//             led_count = 0;
//             led_state = ~led_state;
//             Xil_Out32(PS_PL_REG0_BASE_ADDR, led_state);
//         }
//         led_count++;
//     }

//     return 0;
// }