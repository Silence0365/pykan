`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/09 02:28:38
// Design Name: 
// Module Name: mac
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

//a*b+c
//acc_Reg = 1输出累加结果，acc_Reg = 0 输出乘积结果
module mac(
    input clk,
    input rst,
    input en,
    input acc_reg,
    input data_end,
    input signed[31:0]in_a,
    input signed[31:0]in_b,
    output reg signed[63:0]out_mac,
    output reg mac_rdy
    );

    //stage1--reg
    reg signed [63:0] mul_out_temp;
    reg  data_end_temp;
    reg  acc_reg_temp;
    reg  mac_rdy_temp;
    reg  en_temp;

    //stage2--reg

    //stage1
    always @(posedge clk or posedge rst) begin
        if(rst)begin
            mul_out_temp <= 64'b0;
            data_end_temp <= 0;
            acc_reg_temp <= 0;
            mac_rdy_temp <= 0;
            en_temp <= 0;
        end
        else if(en)begin
            if(acc_reg)begin
                mac_rdy_temp <= data_end? 1'b1:1'b0;
            end
            else begin
                mac_rdy_temp <= 1'b1;
            end
            mul_out_temp <= $signed(in_a) * $signed(in_b);
            data_end_temp <= data_end;
            acc_reg_temp <= acc_reg;
            en_temp <= en;
        end
        else begin
            mac_rdy_temp <= 0;
            mul_out_temp <= 64'b0;
            en_temp <= 0;
        end
    end
    //stage2
    always @(posedge clk or posedge rst)begin
        if(rst)begin
            out_mac <= 64'b0;
            mac_rdy <= 0;
        end
        else if(en_temp) begin
            if(acc_reg_temp)begin
                out_mac <= $signed(mul_out_temp) +  $signed(out_mac);
                mac_rdy <= mac_rdy_temp;
            end
            else begin
                out_mac <= mul_out_temp;
                mac_rdy <= mac_rdy_temp;
            end
        end
        else begin
            out_mac <= 64'b0;
            mac_rdy <= 0;
        end
    end

    // 组合逻辑
    // assign mul_out = $signed(in_a) * $signed(in_b);
endmodule
