// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jan 10 04:19:03 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in1_out1 -prefix
//               layer0_coeff_in1_out1_ layer0_coeff_in1_out1_sim_netlist.v
// Design      : layer0_coeff_in1_out1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in1_out1
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
  (* C_INIT_FILE = "layer0_coeff_in1_out1.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out1.mif" *) 
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
  layer0_coeff_in1_out1_blk_mem_gen_v8_4_7 U0
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
