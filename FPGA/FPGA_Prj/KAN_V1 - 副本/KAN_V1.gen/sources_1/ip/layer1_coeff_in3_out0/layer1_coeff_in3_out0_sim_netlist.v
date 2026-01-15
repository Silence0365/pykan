// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:30:48 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer1_coeff_in3_out0 -prefix
//               layer1_coeff_in3_out0_ layer1_coeff_in3_out0_sim_netlist.v
// Design      : layer1_coeff_in3_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in3_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer1_coeff_in3_out0
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
  (* C_INIT_FILE = "layer1_coeff_in3_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in3_out0.mif" *) 
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
  layer1_coeff_in3_out0_blk_mem_gen_v8_4_7 U0
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
