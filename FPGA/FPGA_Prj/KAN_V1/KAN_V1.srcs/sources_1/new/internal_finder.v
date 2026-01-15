`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/07 23:26:12
// Design Name: 
// Module Name: internal_finder
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


module internal_finder(
    input clk,
    input rst,
    input en,
    input signed[63:0]mul_crt,  //h_inv * diff
    input signed [31:0]diff,
    input [7:0]grid_num,    //格点个数
    input [7:0]N_number_bits,//小数量化位数
    input output_locked,
    output reg[7:0]coeff_addr,
    output reg signed[31:0]local_coords,
    output reg if_rdy,
    output reg valid

    );


    parameter            IDLE     = 2'b00 ;
    parameter            BC       = 2'b01 ;// boarder clip(边界裁剪)--防止索引溢出
    parameter            LOCK     = 2'b10 ;

    reg [2:0]            st_next ;
    reg [2:0]            st_cur ;

    reg signed[31:0]interval;
    reg signed[31:0]interval_current;
    reg signed[63:0]mul;
    reg [7:0]coeff_addr_crt;
    reg signed[31:0]local_coords_crt;

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
            IDLE:begin
                st_next <= BC;
            end
            BC:begin
                st_next <= en? LOCK : BC;
            end
            LOCK:begin
                st_next <= output_locked? LOCK : IDLE;
            end
            default:st_next <= IDLE;
        endcase
    end

    //逻辑处理
    always@(posedge clk)begin
        case(st_cur)
            IDLE:begin
                coeff_addr <= 8'b0;
                local_coords <= 32'b0;
                interval <= 32'b0;
            end
            BC:begin
                if (diff < 0)begin
                    interval <= 0;
                end
                else if(interval_current > grid_num-2)begin //索引从0开始多减去一次1
                    interval <= grid_num-2;
                end
                else begin
                    interval <= interval_current;
                end
                mul <= mul_crt;
            end
            LOCK:begin
                coeff_addr <= output_locked? coeff_addr_crt : coeff_addr;
                local_coords <= output_locked? local_coords_crt :local_coords;
                //coeff_addr = (interval << 2);
                //local_coords = output_locked? local_coords:((mul - (interval <<< (N_number_bits << 1))>>>N_number_bits));
                 //匹配Q7,24
                //local_coords <= local_coords;
            end
        endcase
    end

    //补充组合逻辑
    always @(*)begin
        //find interval(查找区间)--必须为均匀网格
        //diff = in_x + (~x_initial + 1);
        //mul = ($signed(diff) * $signed(h_inv));
        if_rdy = (st_cur == LOCK)? 1'b1:1'b0;
        // coeff_addr = output_locked? coeff_addr:(interval << 2);
        // local_coords = output_locked? local_coords:((mul - (interval <<< (N_number_bits << 1))>>>N_number_bits)); //匹配Q7,24
        coeff_addr_crt = (interval << 2);
        local_coords_crt = ((mul - (interval <<< (N_number_bits << 1))>>>N_number_bits)); //匹配Q7,24
        interval_current = en? (mul_crt >>> (N_number_bits << 1)) : 0; //Rescale--找区间
        //判断值是否valid
        valid = (mul >= 0) && (mul < ($signed(grid_num - 1) << (N_number_bits << 1)));
    end





    // always@(posedge clk or posedge rst)begin
    //     if(rst)begin
    //         coeff_addr <= 8'b0;
    //         status <= 2'b00;
    //         interval <= 31'b0;
    //     end
    //     else begin
    //         if(en & (~output_locked))begin
    //             // boarder clip(边界裁剪)--防止索引溢出
    //             if (diff < 0)begin
    //                 interval <= 0;
    //                 status <= 2'b01;
    //             end
    //             else if(interval_current > grid_num-2)begin //索引从0开始多减去一次1
    //                 interval <= grid_num-2;
    //                 status <= 2'b01;
    //             end
    //             else begin
    //                 interval <= interval_current;
    //                 status <= 2'b01;
    //             end
    //             // calculate coeff_addr & local coords
    //             coeff_addr <= (status == 2'b01)? (4 * interval) : coeff_addr;
    //             local_coords <= (status == 2'b01)? (mul - (interval <<< (2 * N_number_bits))>>>N_number_bits) : local_coords; //匹配Q7,24
    //             status <= (status == 2'b01)? 2'b10 : status;
    //         end
    //         else if(en & output_locked)begin
    //             status <= 2'b11;
    //             coeff_addr <= coeff_addr;
    //             local_coords <= local_coords;
    //         end
    //         else begin
    //             status <= 2'b00;
    //         end
    //     end
    // end
    



endmodule
