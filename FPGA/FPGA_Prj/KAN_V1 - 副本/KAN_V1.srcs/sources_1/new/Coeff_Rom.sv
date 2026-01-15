`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/08 21:31:42
// Design Name: 
// Module Name: Coeff_Rom
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

//5路并行
module Coeff_Rom(
    input clk,
    input rst,
    input en_total,
    input [4:0]channel0_cs,                     //通路0片选
    input [4:0]channel1_cs,                     //通路1片选
    input [4:0]channel2_cs,                     //通路2片选
    input [4:0]channel3_cs,                     //通路3片选
    input [4:0]channel4_cs,                     //通路4片选
        
    input [7:0]channel0_addr,                  //通路0地址
    input [7:0]channel1_addr,                  //通路1地址
    input [7:0]channel2_addr,                  //通路2地址
    input [7:0]channel3_addr,                  //通路3地址
    input [7:0]channel4_addr,                  //通路4地址
        
    output reg [1:0]channel0_status,            //通路0状态
    output reg [1:0]channel1_status,            //通路1状态
    output reg [1:0]channel2_status,            //通路2状态
    output reg [1:0]channel3_status,            //通路3状态
    output reg [1:0]channel4_status,            //通路4状态

    output reg signed[31:0]channel0_data,      //通路0数据
    output reg signed[31:0]channel1_data,      //通路1数据
    output reg signed[31:0]channel2_data,      //通路2数据
    output reg signed[31:0]channel3_data,      //通路3数据
    output reg signed[31:0]channel4_data,      //通路4数据
    
    output reg coeff_rdy

    );


    wire signed [31:0]channel0_data_crt;      //通路0数据--组合逻辑
    wire signed [31:0]channel1_data_crt;      //通路1数据--组合逻辑
    wire signed [31:0]channel2_data_crt;      //通路2数据--组合逻辑
    wire signed [31:0]channel3_data_crt;      //通路3数据--组合逻辑
    wire signed [31:0]channel4_data_crt;       //通路4数据--组合逻辑

    reg [7:0]channel0_addr_crt;                  //通路0地址--组合逻辑
    reg [7:0]channel1_addr_crt;                  //通路1地址--组合逻辑
    reg [7:0]channel2_addr_crt;                  //通路2地址--组合逻辑
    reg [7:0]channel3_addr_crt;                  //通路3地址--组合逻辑
    reg [7:0]channel4_addr_crt;                  //通路4地址--组合逻辑

    reg READ_finish;
    reg [3:0]count;
    reg [31:0]inside_addr[0:19];
    wire signed[31:0]inside_data[0:19];
    wire en[0:19];


    //generate连线
    genvar i;
    generate
        for(i=0;i<20;i=i+1)begin
            assign en[i] = en_total & (channel0_cs == i|channel1_cs == i|channel2_cs == i|channel3_cs == i|channel4_cs == i);
            always@(*)begin
                if(channel0_cs == i)        inside_addr[i] = channel0_addr_crt;
                else if(channel1_cs == i)   inside_addr[i] = channel1_addr_crt;
                else if(channel2_cs == i)   inside_addr[i] = channel2_addr_crt;
                else if(channel3_cs == i)   inside_addr[i] = channel3_addr_crt;
                else if(channel4_cs == i)   inside_addr[i] = channel4_addr_crt;
                else                        inside_addr[i] = 32'b0;
            end
        end
    endgenerate
    assign  channel0_data_crt = inside_data[channel0_cs];
    assign  channel1_data_crt = inside_data[channel1_cs];
    assign  channel2_data_crt = inside_data[channel2_cs];
    assign  channel3_data_crt = inside_data[channel3_cs];
    assign  channel4_data_crt = inside_data[channel4_cs];

    parameter            IDLE     = 2'b00 ;
    parameter            MUX      = 2'b01 ;//多路选择
    parameter            READ     = 2'b10 ;//读对应ROM
    parameter            Finish   = 2'b11 ;

    reg [2:0]            st_next ;
    reg [2:0]            st_cur ;

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
                st_next = en_total? MUX : IDLE;
            MUX:
                st_next = READ;
            READ:
                st_next = READ_finish? Finish : READ;
            Finish:
                st_next = IDLE;
            default: st_next = IDLE;
        endcase
    end

    //逻辑处理
    always@(posedge clk)begin
        case(st_cur)
            IDLE:begin
                channel0_status <= 0;
                channel1_status <= 0;
                channel2_status <= 0;
                channel3_status <= 0;
                channel4_status <= 0;
                // channel0_data <= 0;
                // channel1_data <= 0;
                // channel2_data <= 0;
                // channel3_data <= 0;
                // channel4_data <= 0;
                //计数器和标志位
                count <= 0;
                // READ_finish <= 0;
            end

            MUX:begin
                channel0_addr_crt <= channel0_addr;
                channel1_addr_crt <= channel1_addr;
                channel2_addr_crt <= channel2_addr;
                channel3_addr_crt <= channel3_addr;
                channel4_addr_crt <= channel4_addr;
                count <= count + 1;
            end
            READ:begin
                //data
                channel0_data <= channel0_data_crt;
                channel1_data <= channel1_data_crt;
                channel2_data <= channel2_data_crt;
                channel3_data <= channel3_data_crt;
                channel4_data <= channel4_data_crt;
                //addr
                channel0_addr_crt <= channel0_addr + count;
                channel1_addr_crt <= channel1_addr + count;
                channel2_addr_crt <= channel2_addr + count;
                channel3_addr_crt <= channel3_addr + count;
                channel4_addr_crt <= channel4_addr + count;

                count <= count + 1;
                // READ_finish <= (count == 4)? 1 : 0;
            end
            Finish:begin
                count <= 0;
            end
            
        endcase
    end
    assign coeff_rdy = (st_cur == Finish)? 1'b1 : 1'b0;
    assign READ_finish =(count == 5)? 1 : 0; 
    
    // always @(posedge clk or rst)begin
    //     if(rst)begin
    //         channel0_status <= 0;
    //         channel1_status <= 0;
    //         channel2_status <= 0;
    //         channel3_status <= 0;
    //         channel4_status <= 0;
    //         channel0_data <= 0;
    //         channel1_data <= 0;
    //         channel2_data <= 0;
    //         channel3_data <= 0;
    //         channel4_data <= 0;
    //         //内部地址线
    //         inside_addr <= 0;
    //         inside_data <= 0;
    //         en <= 0;
    //     end
    //     else begin
    //         if(en_total)begin
    //             status <= 2'b01;

                
    //     end
    // end
        

    //模块实例化
    layer0_coeff_in0_out0 bram0(
        .clka(clk),
        .addra(inside_addr[0]),
        .douta(inside_data[0]),
        .ena(en[0])
    );
    layer0_coeff_in0_out1 bram1(
        .clka(clk),
        .addra(inside_addr[1]),
        .douta(inside_data[1]),
        .ena(en[1])
    );
    layer0_coeff_in0_out2 bram2(
        .clka(clk),
        .addra(inside_addr[2]),
        .douta(inside_data[2]),
        .ena(en[2])
    );
    layer0_coeff_in0_out3 bram3(
        .clka(clk),
        .addra(inside_addr[3]),
        .douta(inside_data[3]),
        .ena(en[3])
    );
    layer0_coeff_in0_out4 bram4(
        .clka(clk),
        .addra(inside_addr[4]),
        .douta(inside_data[4]),
        .ena(en[4])

    );
    
    layer0_coeff_in1_out0 bram5(
        .clka(clk),
        .addra(inside_addr[5]),
        .douta(inside_data[5]),
        .ena(en[5])
    );
    layer0_coeff_in1_out1 bram6(
        .clka(clk),
        .addra(inside_addr[6]),
        .douta(inside_data[6]),
        .ena(en[6])
    );
    layer0_coeff_in1_out2 bram7(
        .clka(clk),
        .addra(inside_addr[7]),
        .douta(inside_data[7]),
        .ena(en[7])

    );
    layer0_coeff_in1_out3 bram8(
        .clka(clk),
        .addra(inside_addr[8]),
        .douta(inside_data[8]),
        .ena(en[8])

    );
    layer0_coeff_in1_out4 bram9(
        .clka(clk),
        .addra(inside_addr[9]),
        .douta(inside_data[9]),
        .ena(en[9])
    );

    layer0_coeff_in2_out0 bram10(
        .clka(clk),
        .addra(inside_addr[10]),
        .douta(inside_data[10]),
        .ena(en[10])
    );
    layer0_coeff_in2_out1 bram11(
        .clka(clk),
        .addra(inside_addr[11]),
        .douta(inside_data[11]),
        .ena(en[11])
    );
    layer0_coeff_in2_out2 bram12(
        .clka(clk),
        .addra(inside_addr[12]),
        .douta(inside_data[12]),
        .ena(en[12])
    );
    layer0_coeff_in2_out3 bram13(
        .clka(clk),
        .addra(inside_addr[13]),
        .douta(inside_data[13]),
        .ena(en[13])
    );
    layer0_coeff_in2_out4 bram14(
        .clka(clk),
        .addra(inside_addr[14]),
        .douta(inside_data[14]),
        .ena(en[14])
    );

    layer1_coeff_in0_out0 bram15(
        .clka(clk),
        .addra(inside_addr[15]),
        .douta(inside_data[15]),
        .ena(en[15])
    );
    layer1_coeff_in1_out0 bram16(
        .clka(clk),
        .addra(inside_addr[16]),
        .douta(inside_data[16]),
        .ena(en[16])
    );
    layer1_coeff_in2_out0 bram17(
        .clka(clk),
        .addra(inside_addr[17]),
        .douta(inside_data[17]),
        .ena(en[17])
    );
    layer1_coeff_in3_out0 bram18(
        .clka(clk),
        .addra(inside_addr[18]),
        .douta(inside_data[18]),
        .ena(en[18])
    );
    layer1_coeff_in4_out0 bram19(
        .clka(clk),
        .addra(inside_addr[19]),
        .douta(inside_data[19]),
        .ena(en[19])
    );

endmodule
