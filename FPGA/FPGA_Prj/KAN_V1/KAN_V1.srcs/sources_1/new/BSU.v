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
    output reg signed[63:0]BSU_out0,//E
    output reg signed[63:0]BSU_out1,//Grad
    output reg [1:0]status
    );

    //IF
    wire [7:0]internal_finder_coeff_addr;
    wire input_valid;
    wire if_rdy;

    reg internal_finder_locked;
    reg signed[31:0]if_diff;
    reg  if_en;
    
    
    //U_CAL
    wire signed[31:0]x;

    reg  signed[31:0]x_temp;
    reg  signed[31:0]x_2;
    reg  signed[31:0]x_3;
    reg  signed[31:0]dx_temp;
    reg  signed[31:0]dx;
    reg  signed[31:0]dx_2;
    reg U_CAL_mac_rdy1_temp;
    reg U_CAL_finish;


    //Coeff_ROM
    reg [3:0]ROM_Count;
    reg coeff_rdy;


    //mac_reg
    reg  input_data_end0;
    reg  input_data_end1;

    reg  acc_reg_en0;
    reg  acc_reg_en1;

    reg  mac0_en;
    reg  mac1_en;

    wire mac_rdy0;
    wire mac_rdy1;

    reg  mac_rdy0_temp;
    reg  mac_rdy1_temp;

    reg  signed[31:0]mac_ina0;
    reg  signed[31:0]mac_inb0;
    wire signed[63:0]mac_out0;

    reg  signed[31:0]mac_ina1;
    reg  signed[31:0]mac_inb1;
    wire signed[63:0]mac_out1;

    reg MAC_CAL_finish;


    //FSM状态机
    parameter            IDLE     = 3'b000 ;
    parameter            IF       = 3'b001 ;
    parameter            U_CAL    = 3'b010 ;
    parameter            MAC_CAL  = 3'b011 ;
    parameter            Finish   = 3'b100 ;

    reg [2:0]            st_next ;
    reg [2:0]            st_cur ;

    internal_finder internal_finder(
        .clk(clk),
        .rst(rst),
        .en(if_en),
        .mul_crt(mac_out0),//直连不用寄存器减少周期
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
        .en(mac0_en),
        .acc_reg(acc_reg_en0),
        .data_end(input_data_end0),
        .in_a(mac_ina0),
        .in_b(mac_inb0),
        .out_mac(mac_out0),
        .mac_rdy(mac_rdy0)
    );

    mac mac1(
        .clk(clk),
        .rst(rst),
        .en(mac1_en),
        .acc_reg(acc_reg_en1),
        .data_end(input_data_end1),
        .in_a(mac_ina1),
        .in_b(mac_inb1),
        .out_mac(mac_out1),
        .mac_rdy(mac_rdy1)
    );



    // 系数读取周期6clk
    //状态转化
    always @(posedge clk or posedge rst)begin
        if(rst)begin
            st_cur <= IDLE;
        end
        else begin
            st_cur <= st_next;
        end
    end
    
    //状态处理
    always@(*)begin
        case(st_cur)
            IDLE:
                st_next = IF;
            IF:
                st_next = (en & if_rdy)? U_CAL : IF;//提前一拍 
            U_CAL:
                st_next = U_CAL_finish? MAC_CAL: U_CAL;
            MAC_CAL:
                st_next = MAC_CAL_finish? Finish : MAC_CAL;
            Finish:
                st_next = IDLE;
            default: st_next = IDLE;
        endcase
    end
                
    //逻辑处理
    always@(posedge clk)begin
        case(st_cur)
            IDLE:begin
                //IF
                if_en <= 0;
                // U_CAL
                x_temp <= 32'b0;
                x_2 <= 32'b0;
                x_3 <= 32'b0;
                dx_temp <= 32'b0;
                dx <= 32'b0;
                dx_2 <= 32'b0;
                U_CAL_mac_rdy1_temp <= 0;
                U_CAL_finish <= 0;
                
                //MAC_CAL
                input_data_end0 <= 0;
                input_data_end1<= 0;
                acc_reg_en0 <= 0;
                acc_reg_en1 <= 0;
                mac0_en <= 0;
                mac1_en <= 0;
                mac_rdy0_temp <= 0;
                mac_rdy1_temp <= 0;
                mac_ina0 <= 32'b0;
                mac_inb0 <= 32'b0;
                mac_ina1 <= 32'b0;
                mac_inb1 <= 32'b0;
                MAC_CAL_finish <= 0;

                // Finish
                BSU_out0 <= 0;
                BSU_out1 <= 0;

            end
            IF:begin
                mac0_en <= if_rdy? 1'b0:1'b1;
                if_en <= mac_rdy0? 1'b1:1'b0;//延迟一拍
                acc_reg_en0 <= 0;//无需累加寄存器
                mac_ina0 <= if_diff;
                mac_inb0 <= h_inv;
            end
            U_CAL:begin
                mac1_en <= U_CAL_mac_rdy1_temp? 1'b0:1'b1;
                U_CAL_mac_rdy1_temp <= mac_rdy1;//确保inb1的值能参与计算
                acc_reg_en1 <= 0;//无需累加寄存器
                mac_ina1 <= x;
                mac_inb1 <= mac_rdy1? (mac_out1 >>> N_number_bits):x;
                x_3 <= (mac_out1 >>> N_number_bits);
                x_2 <= x_3;
                x_temp <= x;
                dx <= x << 1;
                dx_2 <= mac_rdy1? (mac_inb1 * 3) : dx_2;
                U_CAL_finish <= ({mac1_en,mac_rdy1}==2'b01)? 1'b1 : 1'b0;
            end
            MAC_CAL:begin
                mac0_en <= 1;
                mac1_en <= 1;
                mac_rdy0_temp <= mac_rdy0? 1'b1:mac_rdy0_temp;
                mac_rdy1_temp <= mac_rdy1? 1'b1:mac_rdy1_temp;
                acc_reg_en0 <= 1;
                //c3 * x^3 + c2 * x^2 + c1 * x + c0
                mac_ina0 <= coeff_data;
                input_data_end0 <= coeff_rdy;

                mac_inb0 <= x_3;
                x_3 <= x_2;
                x_2 <= x_temp;
                x_temp <= (32'b1 <<< N_number_bits);
                BSU_out0 <= (mac_rdy0 & (~mac_rdy0_temp))? (mac_out0 >>> N_number_bits) : BSU_out0;
                
                // 3 * c3 * x_2 + 2 * c2 * x + c1
                acc_reg_en1 <= mac_rdy1? 1'b0:1'b1;
                input_data_end1 <= (ROM_Count == 3)? 1'b1:1'b0;
                mac_ina1 <= (mac_rdy1)? h_inv:coeff_data;
                mac_inb1 <= (mac_rdy1)? (mac_out1 >>> N_number_bits) : dx_2;
                dx_2 <= dx;
                dx <= (32'b1 <<< N_number_bits);
                BSU_out1 <= (mac_rdy1 & mac_rdy1_temp)? (mac_out1 >>> N_number_bits) : BSU_out1;
                MAC_CAL_finish <= (mac_rdy0 & mac_rdy1)? 1'b1 : 1'b0;
            end
            Finish:begin
                // 判断是否越界
                BSU_out0 <= input_valid? BSU_out0 : 64'b0;
                BSU_out1 <= input_valid? BSU_out1 : 64'b0;
            end
        endcase
    end

    // ROM逻辑
    always@ (posedge clk or posedge rst)begin
        if(rst)begin
            coeff_rdy <= 0;
            ROM_Count <= 4'b0;
        end
        else if(st_cur == IDLE)begin
            ROM_Count <= 4'b0;
            coeff_rdy <= 1'b0;
        end
        else begin
            ROM_Count <= (Coeff_Rom_en & (~coeff_rdy))? (ROM_Count + 1):ROM_Count;
            coeff_rdy <= (ROM_Count == 3)? 1'b1:coeff_rdy;//取0-3
        end
    end

    always @(*)begin
        if_diff = BSU_in + (~x_initial + 1);//diff计算
        internal_finder_locked = if_rdy? 1'b1:1'b0;
        Coeff_Rom_en = (st_next == MAC_CAL)? 1'b1: 1'b0;//test
        coeff_addr = internal_finder_coeff_addr + (3 - ROM_Count);

    end
endmodule
