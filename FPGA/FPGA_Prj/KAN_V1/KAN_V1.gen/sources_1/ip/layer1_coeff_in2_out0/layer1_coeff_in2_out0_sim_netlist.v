// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:30:17 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer1_coeff_in2_out0 -prefix
//               layer1_coeff_in2_out0_ layer1_coeff_in2_out0_sim_netlist.v
// Design      : layer1_coeff_in2_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in2_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer1_coeff_in2_out0
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
  (* C_INIT_FILE = "layer1_coeff_in2_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in2_out0.mif" *) 
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
  layer1_coeff_in2_out0_blk_mem_gen_v8_4_7 U0
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
