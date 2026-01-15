// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan 15 21:43:41 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/KAN/FPGA_Prj/KAN_V1/KAN_V1.sim/sim_1/synth/func/xsim/tb_bsu_func_synth.v
// Design      : top_test
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "659500dc" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_test
   (clk,
    rst,
    en,
    bsu_in,
    x_initial,
    h_inv,
    grid_num,
    N_number_bits,
    coeff_addr,
    coeff_en,
    BSU_out1,
    BSU_out2);
  input clk;
  input rst;
  input en;
  input [31:0]bsu_in;
  input [31:0]x_initial;
  input [31:0]h_inv;
  input [7:0]grid_num;
  input [7:0]N_number_bits;
  output [7:0]coeff_addr;
  output coeff_en;
  output [31:0]BSU_out1;
  output [31:0]BSU_out2;

  wire [31:0]BSU_out1;
  wire [31:0]BSU_out2;
  wire [7:0]coeff_addr;
  wire coeff_en;

  OBUF \BSU_out1_OBUF[0]_inst 
       (.I(1'b0),
        .O(BSU_out1[0]));
  OBUF \BSU_out1_OBUF[10]_inst 
       (.I(1'b0),
        .O(BSU_out1[10]));
  OBUF \BSU_out1_OBUF[11]_inst 
       (.I(1'b0),
        .O(BSU_out1[11]));
  OBUF \BSU_out1_OBUF[12]_inst 
       (.I(1'b0),
        .O(BSU_out1[12]));
  OBUF \BSU_out1_OBUF[13]_inst 
       (.I(1'b0),
        .O(BSU_out1[13]));
  OBUF \BSU_out1_OBUF[14]_inst 
       (.I(1'b0),
        .O(BSU_out1[14]));
  OBUF \BSU_out1_OBUF[15]_inst 
       (.I(1'b0),
        .O(BSU_out1[15]));
  OBUF \BSU_out1_OBUF[16]_inst 
       (.I(1'b0),
        .O(BSU_out1[16]));
  OBUF \BSU_out1_OBUF[17]_inst 
       (.I(1'b0),
        .O(BSU_out1[17]));
  OBUF \BSU_out1_OBUF[18]_inst 
       (.I(1'b0),
        .O(BSU_out1[18]));
  OBUF \BSU_out1_OBUF[19]_inst 
       (.I(1'b0),
        .O(BSU_out1[19]));
  OBUF \BSU_out1_OBUF[1]_inst 
       (.I(1'b0),
        .O(BSU_out1[1]));
  OBUF \BSU_out1_OBUF[20]_inst 
       (.I(1'b0),
        .O(BSU_out1[20]));
  OBUF \BSU_out1_OBUF[21]_inst 
       (.I(1'b0),
        .O(BSU_out1[21]));
  OBUF \BSU_out1_OBUF[22]_inst 
       (.I(1'b0),
        .O(BSU_out1[22]));
  OBUF \BSU_out1_OBUF[23]_inst 
       (.I(1'b0),
        .O(BSU_out1[23]));
  OBUF \BSU_out1_OBUF[24]_inst 
       (.I(1'b0),
        .O(BSU_out1[24]));
  OBUF \BSU_out1_OBUF[25]_inst 
       (.I(1'b0),
        .O(BSU_out1[25]));
  OBUF \BSU_out1_OBUF[26]_inst 
       (.I(1'b0),
        .O(BSU_out1[26]));
  OBUF \BSU_out1_OBUF[27]_inst 
       (.I(1'b0),
        .O(BSU_out1[27]));
  OBUF \BSU_out1_OBUF[28]_inst 
       (.I(1'b0),
        .O(BSU_out1[28]));
  OBUF \BSU_out1_OBUF[29]_inst 
       (.I(1'b0),
        .O(BSU_out1[29]));
  OBUF \BSU_out1_OBUF[2]_inst 
       (.I(1'b0),
        .O(BSU_out1[2]));
  OBUF \BSU_out1_OBUF[30]_inst 
       (.I(1'b0),
        .O(BSU_out1[30]));
  OBUF \BSU_out1_OBUF[31]_inst 
       (.I(1'b0),
        .O(BSU_out1[31]));
  OBUF \BSU_out1_OBUF[3]_inst 
       (.I(1'b0),
        .O(BSU_out1[3]));
  OBUF \BSU_out1_OBUF[4]_inst 
       (.I(1'b0),
        .O(BSU_out1[4]));
  OBUF \BSU_out1_OBUF[5]_inst 
       (.I(1'b0),
        .O(BSU_out1[5]));
  OBUF \BSU_out1_OBUF[6]_inst 
       (.I(1'b0),
        .O(BSU_out1[6]));
  OBUF \BSU_out1_OBUF[7]_inst 
       (.I(1'b0),
        .O(BSU_out1[7]));
  OBUF \BSU_out1_OBUF[8]_inst 
       (.I(1'b0),
        .O(BSU_out1[8]));
  OBUF \BSU_out1_OBUF[9]_inst 
       (.I(1'b0),
        .O(BSU_out1[9]));
  OBUF \BSU_out2_OBUF[0]_inst 
       (.I(1'b0),
        .O(BSU_out2[0]));
  OBUF \BSU_out2_OBUF[10]_inst 
       (.I(1'b0),
        .O(BSU_out2[10]));
  OBUF \BSU_out2_OBUF[11]_inst 
       (.I(1'b0),
        .O(BSU_out2[11]));
  OBUF \BSU_out2_OBUF[12]_inst 
       (.I(1'b0),
        .O(BSU_out2[12]));
  OBUF \BSU_out2_OBUF[13]_inst 
       (.I(1'b0),
        .O(BSU_out2[13]));
  OBUF \BSU_out2_OBUF[14]_inst 
       (.I(1'b0),
        .O(BSU_out2[14]));
  OBUF \BSU_out2_OBUF[15]_inst 
       (.I(1'b0),
        .O(BSU_out2[15]));
  OBUF \BSU_out2_OBUF[16]_inst 
       (.I(1'b0),
        .O(BSU_out2[16]));
  OBUF \BSU_out2_OBUF[17]_inst 
       (.I(1'b0),
        .O(BSU_out2[17]));
  OBUF \BSU_out2_OBUF[18]_inst 
       (.I(1'b0),
        .O(BSU_out2[18]));
  OBUF \BSU_out2_OBUF[19]_inst 
       (.I(1'b0),
        .O(BSU_out2[19]));
  OBUF \BSU_out2_OBUF[1]_inst 
       (.I(1'b0),
        .O(BSU_out2[1]));
  OBUF \BSU_out2_OBUF[20]_inst 
       (.I(1'b0),
        .O(BSU_out2[20]));
  OBUF \BSU_out2_OBUF[21]_inst 
       (.I(1'b0),
        .O(BSU_out2[21]));
  OBUF \BSU_out2_OBUF[22]_inst 
       (.I(1'b0),
        .O(BSU_out2[22]));
  OBUF \BSU_out2_OBUF[23]_inst 
       (.I(1'b0),
        .O(BSU_out2[23]));
  OBUF \BSU_out2_OBUF[24]_inst 
       (.I(1'b0),
        .O(BSU_out2[24]));
  OBUF \BSU_out2_OBUF[25]_inst 
       (.I(1'b0),
        .O(BSU_out2[25]));
  OBUF \BSU_out2_OBUF[26]_inst 
       (.I(1'b0),
        .O(BSU_out2[26]));
  OBUF \BSU_out2_OBUF[27]_inst 
       (.I(1'b0),
        .O(BSU_out2[27]));
  OBUF \BSU_out2_OBUF[28]_inst 
       (.I(1'b0),
        .O(BSU_out2[28]));
  OBUF \BSU_out2_OBUF[29]_inst 
       (.I(1'b0),
        .O(BSU_out2[29]));
  OBUF \BSU_out2_OBUF[2]_inst 
       (.I(1'b0),
        .O(BSU_out2[2]));
  OBUF \BSU_out2_OBUF[30]_inst 
       (.I(1'b0),
        .O(BSU_out2[30]));
  OBUF \BSU_out2_OBUF[31]_inst 
       (.I(1'b0),
        .O(BSU_out2[31]));
  OBUF \BSU_out2_OBUF[3]_inst 
       (.I(1'b0),
        .O(BSU_out2[3]));
  OBUF \BSU_out2_OBUF[4]_inst 
       (.I(1'b0),
        .O(BSU_out2[4]));
  OBUF \BSU_out2_OBUF[5]_inst 
       (.I(1'b0),
        .O(BSU_out2[5]));
  OBUF \BSU_out2_OBUF[6]_inst 
       (.I(1'b0),
        .O(BSU_out2[6]));
  OBUF \BSU_out2_OBUF[7]_inst 
       (.I(1'b0),
        .O(BSU_out2[7]));
  OBUF \BSU_out2_OBUF[8]_inst 
       (.I(1'b0),
        .O(BSU_out2[8]));
  OBUF \BSU_out2_OBUF[9]_inst 
       (.I(1'b0),
        .O(BSU_out2[9]));
  OBUFT \coeff_addr_OBUF[0]_inst 
       (.I(1'b0),
        .O(coeff_addr[0]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[1]_inst 
       (.I(1'b0),
        .O(coeff_addr[1]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[2]_inst 
       (.I(1'b0),
        .O(coeff_addr[2]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[3]_inst 
       (.I(1'b0),
        .O(coeff_addr[3]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[4]_inst 
       (.I(1'b0),
        .O(coeff_addr[4]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[5]_inst 
       (.I(1'b0),
        .O(coeff_addr[5]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[6]_inst 
       (.I(1'b0),
        .O(coeff_addr[6]),
        .T(1'b1));
  OBUFT \coeff_addr_OBUF[7]_inst 
       (.I(1'b0),
        .O(coeff_addr[7]),
        .T(1'b1));
  OBUFT coeff_en_OBUF_inst
       (.I(1'b0),
        .O(coeff_en),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
