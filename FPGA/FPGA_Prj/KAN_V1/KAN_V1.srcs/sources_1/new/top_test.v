`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/10 04:14:10
// Design Name: 
// Module Name: top_test
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


module top_test(
    input                clk,
    input                rst,
    input                en,
    input  signed [31:0] bsu_in,
    input  signed [31:0] x_initial,
    input  signed [31:0] h_inv,
    input        [7:0]  grid_num,
    input        [7:0]  N_number_bits,

    output       [7:0]  coeff_addr,      // 可选：用于调试或外接 ROM
    output               coeff_en,
    output signed [31:0] BSU_out0,
    output signed [31:0] BSU_out1
    );


    wire        rom_bsu_rdy;
    wire signed [31:0]rom_bsu_data;
    wire [7:0] bsu_rom_addr;

    //test
    wire Coeff_en;

    //coeff_rom
    // Coeff_Rom ROM_TEST(
    //     .clk(clk),
    //     .rst(rst),
    //     .en_total(Coeff_en),
    //     .channel0_cs(0),
    //     //.channel1_cs(channel1_cs),
    //     // .channel2_cs(channel2_cs),
    //     // .channel3_cs(channel3_cs),
    //     // .channel4_cs(channel4_cs),
    //     .channel0_addr(bsu_rom_addr),
    //     //.channel1_addr(channel1_addr),
    //     // .channel2_addr(channel2_addr),
    //     // .channel3_addr(channel3_addr),
    //     // .channel4_addr(channel4_addr),
    //     .channel0_data(rom_bsu_data),
    //     //.channel1_data(channel1_data),
    //     // .channel2_data(channel2_data),
    //     // .channel3_data(channel3_data),
    //     // .channel4_data(channel4_data),
    //     .coeff_rdy(rom_bsu_rdy)
    // );
    layer0_coeff_in0_out0 bram0(
        .clka(clk),
        .addra(bsu_rom_addr),
        .douta(rom_bsu_data),
        .ena(Coeff_en)
    );
    BSU BSU_TEST(
        .clk(clk),
        .rst(rst),
        .en(en),
        .BSU_in(bsu_in),
        .x_initial(x_initial),
        .h_inv(h_inv),
        .grid_num(grid_num),
        .N_number_bits(N_number_bits),
        .coeff_data(rom_bsu_data),
        .Coeff_Rom_en(Coeff_en),
        .coeff_addr(bsu_rom_addr),
        .BSU_out0(BSU_out0),
        .BSU_out1(BSU_out1)
    );
endmodule
