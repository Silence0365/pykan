`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/09 21:28:05
// Design Name: 
// Module Name: tb_bsu
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


module tb_bsu(

    );
    reg clk;
    reg rst;
    reg en;
    wire        rom_bsu_rdy;
    wire signed [31:0]rom_bsu_data;
    reg  signed [31:0]bsu_in;
    reg  signed [31:0]x_initial;
    reg  signed [31:0]h_inv;
    reg  [7:0] grid_num;
    reg  [7:0] N_number_bits;
    wire [7:0] bsu_rom_addr;
    wire signed [63:0]BSU_out1;
    wire signed [63:0]BSU_out2;

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
        .BSU_out1(BSU_out1),
        .BSU_out2(BSU_out2)
    );

    
    initial begin
        clk = 0;
        rst = 1;
        #5 rst =0;

        x_initial = -36909876;
        bsu_in = 16775312;
        h_inv = 41943030;
        grid_num = 12;
        N_number_bits = 24;

        en = 1;
        

    end
    always # 10 clk=~clk;
    
endmodule
