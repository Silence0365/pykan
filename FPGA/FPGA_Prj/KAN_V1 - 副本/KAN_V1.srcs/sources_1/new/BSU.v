`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/08 19:29:39
// Design Name: 
// Module Name: BSU
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

//优化思路：如果确定读取数据需要6clk的话，就用一个MAC完成
//clk1算x^2,clk2算x^3
//clk3算a0,clk4算a0+a1*x,clk5算(a0+a1*x)+a2*x,clk6算((a0+a1*x)+a2*x^2)+a3*x^3
module BSU(
    input clk,
    input rst,
    input en,

    //IF
    input signed[31:0]BSU_in,
    input signed[31:0]x_initial,    //第一个格点
    input signed[31:0]h_inv,        //h=grid_d[1] - grid_d[0]倒数注意倒数后还原成Q7,24
    input [7:0]grid_num,            //格点个数
    input [7:0]N_number_bits,       //小数量化位数
    // rom
    input signed[31:0]coeff_data,
    output reg Coeff_Rom_en,
    output reg [7:0]coeff_addr,
    // output
    output reg signed[63:0]BSU_out1,//E
    output reg signed[63:0]BSU_out2,//Grad
    output reg [1:0]status
    );

    //IF
    reg signed[31:0]if_diff;
    reg signed[63:0]if_mul;
    reg en_if;
    wire if_rdy;

    wire [7:0]internal_finder_coeff_addr;
    reg internal_finder_locked;
    wire signed[31:0]x;
    reg signed[31:0]x_2;
    reg signed[31:0]x_3;
    reg U_CAL_finish;
    reg MAC_CAL_finish;
    wire input_valid;

    //Coeff_ROM
    reg [3:0]ROM_Count;
    reg coeff_rdy;

    //mul_reg
    reg en_mac_temp;
    reg en_mul;
    reg[31:0]mul_ina;
    reg[31:0]mul_inb;
    reg first_mul;
    wire[63:0]mul_out;
    wire[1:0]mul_status;
    reg [3:0]mul_count;

    //mac_reg
    reg input_data_end;
    reg acc_reg_en;
    reg en_mac;
    reg[31:0]mac_ina0;
    reg[31:0]mac_inb0;
    wire[63:0]mac_out0;
    wire      mac_rdy0;
    reg[31:0]mac_ina1;
    reg[31:0]mac_inb1;
    wire[63:0]mac_out1;
    wire      mac_rdy1;
    reg [3:0]mac_count;
    reg mac_total_rdy;


    parameter            IF       = 3'b001 ;
    parameter            U_CAL    = 3'b010 ;
    parameter            MAC_CAL  = 3'b011 ;
    parameter            Finish   = 3'b100 ;

    reg [2:0]            st_next ;
    reg [2:0]            st_cur ;

    internal_finder internal_finder(
        .clk(clk),
        .rst(rst),
        .en(en_if),
        .mul(mac_out0),//直连不用寄存器减少周期
        .diff(if_diff),
        .grid_num(grid_num),
        .N_number_bits(N_number_bits),
        .coeff_addr(internal_finder_coeff_addr),
        .local_coords(x),
        .output_locked(internal_finder_locked),
        .if_rdy(if_rdy),//?
        .valid(input_valid)
    );

    mac mac0(
        .clk(clk),
        .rst(rst),
        .en(en_mac),
        .acc_reg(acc_reg_en),
        .data_end(input_data_end),
        .in_a(mac_ina0),
        .in_b(mac_inb0),
        .out_mac(mac_out0),
        .mac_rdy(mac_rdy0)
    );

    mac mac1(
        .clk(clk),
        .rst(rst),
        .en(en_mac),
        .acc_reg(acc_reg_en),
        .data_end(input_data_end),
        .in_a(mac_ina1),
        .in_b(mac_inb1),
        .out_mac(mac_out1),
        .mac_rdy(mac_rdy1)
    );

//status--20stages
always@(posedge clk or posedge rst)begin
    if(rst)begin
        if_status0 <= 0;
    end
    else begin
        if_status0 <= (mac_status4 | first_input)? 1'b1:1'b0;
        if_status1 <=  if_status0;
        if_status2 <=  if_status1;
        if_status3 <=  if_status2;
        u_cal_status0 <= if_status3;
        u_cal_status1 <= u_cal_status0;
        u_cal_status2 <= u_cal_status1;
        u_cal_status3 <= u_cal_status2;
        mac_status0 <= u_cal_status3;
        mac_status1 <= mac_status0;
        mac_status2 <= mac_status1;
        mac_status3 <= mac_status2;
        mac_status4 <= mac_status3;
    end
end

always@(*)begin
    if_step = {if_status3,if_status2,if_status1,if_status0};
end

//MAC0
always@(posedge clk or posedge rst)begin
    if(rst)begin
        en_mac <= 0;
        acc_reg_en <= 0;
        input_data_end <= 0;//可能不用了
        mac_ina0 <= 0;
        mac_inb0 <= 0;
    end
    else if(st_cur == IF)begin
        mac_ina <= if_temp_a2;
        mac_inb <= if_temp_b2;
    end
    else if (st_cur == U_CAL)begin
        
    end
    else if (st_cur == MAC)begin
        
    end
    else begin
        mac_ina0 <= 0;
        mac_inb0 <= 0;
    end
end

//IF
always@(posedge clk or posedge rst)begin
    if(rst)begin
        if_temp_a0 <= 32'b0;
        if_temp_b0 <= 32'b0;
    end
    else if(status_reg0)begin
        if_temp_a0 <= if_diff;
        if_temp_a1 <= h_inv;
    end
    else begin
        if_temp_a1 <= if_temp_a0;
        if_temp_b1 <= if_temp_b0;
        if_temp_a2 <= if_temp_a1;
        if_temp_b2 <= if_temp_b1;        
    end
end

endmodule
