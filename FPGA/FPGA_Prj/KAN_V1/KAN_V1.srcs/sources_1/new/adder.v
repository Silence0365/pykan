`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/07 21:26:26
// Design Name: 
// Module Name: adder
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


module adder(
    input clk,
    input rst,
    input [31:0]in_a,
    input [31:0]in_b,
    input en,
    output reg [31:0]out_sum,
    output reg [1:0]status
    );
    
    //status : 00 Rst
    //         01 No Enable(Idle)
    //         10 Busy
    //         11 Finish
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            out_sum <= 32'b0;
            status <= 0;
        end
        else begin
            if(en)begin
                status <= 2'b10;
                out_sum <= in_a + in_b;
                status <= 2'b11;
            end
            else begin
                status <= 2'b01;
                out_sum <= 2'b00;
            end
        end
    end

            
endmodule
