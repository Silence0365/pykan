// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:26:06 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in2_out1 -prefix
//               layer0_coeff_in2_out1_ layer0_coeff_in2_out1_sim_netlist.v
// Design      : layer0_coeff_in2_out1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in2_out1
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "layer0_coeff_in2_out1.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "50" *) 
  (* C_READ_DEPTH_B = "50" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "50" *) 
  (* C_WRITE_DEPTH_B = "50" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer0_coeff_in2_out1_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18864)
`pragma protect data_block
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
`pragma protect end_protected
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
