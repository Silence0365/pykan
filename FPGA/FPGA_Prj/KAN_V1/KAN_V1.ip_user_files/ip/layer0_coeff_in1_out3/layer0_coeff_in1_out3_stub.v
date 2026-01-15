// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:23:57 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top layer0_coeff_in1_out3 -prefix
//               layer0_coeff_in1_out3_ layer0_coeff_in1_out3_stub.v
// Design      : layer0_coeff_in1_out3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *)
module layer0_coeff_in1_out3(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="ena,addra[5:0],douta[31:0]" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input ena;
  input [5:0]addra;
  output [31:0]douta;
endmodule
