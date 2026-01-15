`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/07 21:45:17
// Design Name: 
// Module Name: tb_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_module(

    );
    reg clk;
    reg rst;
    reg ena;
    reg enb;
    reg enc;
    reg [31:0]in_a;
    reg [31:0]in_b;
    adder add_test(
        .clk(clk),
        .rst(rst),
        .en(ena),
        .in_a(in_a),
        .in_b(in_b),
        .out_sum(add_result)
    );
    multiplier mul_test(
        .clk(clk),
        .rst(rst),
        .en(enb),
        .in_a(in_a),
        .in_b(in_b),
        .out_mul(mul_result)
    );
    reg [31:0]x_initial;
    reg [31:0]in_x;
    reg [31:0]h_inv;
    reg[7:0]grid_num;
    reg[7:0]N_number_bits;
    wire [63:0]mul_result;
    wire [31:0]add_result;
    wire [31:0]coeff_addr;
    internal_finder internal_finder_test(
        .clk(clk),
        .rst(rst),
        .en(enc),
        .x_initial(x_initial),
        .in_x(in_x),
        .h_inv(h_inv),
        .grid_num(grid_num),
        .N_number_bits(N_number_bits),
        .coeff_addr(coeff_addr),
        .status(status)
    );
    reg [4:0]channel0_cs;
    reg [7:0]channel0_addr;
    reg [31:0]channel0_data;
    reg [4:0]channel1_cs;
    reg [7:0]channel1_addr;
    reg [31:0]channel1_data;
    reg coeff_rdy;
    Coeff_Rom ROM_TEST(
        .clk(clk),
        .rst(rst),
        .en_total(enc),
        .channel0_cs(channel0_cs),
        .channel1_cs(channel1_cs),
        // .channel2_cs(channel2_cs),
        // .channel3_cs(channel3_cs),
        // .channel4_cs(channel4_cs),
        .channel0_addr(channel0_addr),
        .channel1_addr(channel1_addr),
        // .channel2_addr(channel2_addr),
        // .channel3_addr(channel3_addr),
        // .channel4_addr(channel4_addr),
        .channel0_data(channel0_data),
        .channel1_data(channel1_data),
        // .channel2_data(channel2_data),
        // .channel3_data(channel3_data),
        // .channel4_data(channel4_data),
        .coeff_rdy(coeff_rdy)
    );

    initial begin
        clk = 0;
        rst = 1;
        #5 rst =0;
        in_a = 30;
        in_b =20;
        #5 ena = 1;
        #15 enb =1;

        //internal_finder
        #20 enc =1;
        x_initial = -36909876;
        in_x = 16775312 ;
        h_inv = 41943030;
        grid_num = 12;
        N_number_bits = 24;

        //coeff_rom
        channel0_cs = 0;
        channel0_addr = 1;
        channel1_cs = 3;
        channel1_addr = 7;
        

    end
    always # 10 clk=~clk;
endmodule
