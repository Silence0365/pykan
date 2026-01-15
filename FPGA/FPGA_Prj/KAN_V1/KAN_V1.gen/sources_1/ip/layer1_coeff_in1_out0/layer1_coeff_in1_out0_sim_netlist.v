// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:29:45 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer1_coeff_in1_out0 -prefix
//               layer1_coeff_in1_out0_ layer1_coeff_in1_out0_sim_netlist.v
// Design      : layer1_coeff_in1_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in1_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer1_coeff_in1_out0
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
  (* C_INIT_FILE = "layer1_coeff_in1_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in1_out0.mif" *) 
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
  layer1_coeff_in1_out0_blk_mem_gen_v8_4_7 U0
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
+RvMab7ppOnMZMgHeiJBqJOKb7xa4p9gpYaqUCqPlDMka+vU/Ub+KfVMOiY9buPZ9gYu5ewYcNGW
ypxFMbMhwoJkYIb4UiLgJSERIGVpRS13+7NBqeQ3PQsi94DYQ1IL7+TSgIdOTFEUC2cmOd4G9DTv
q0DrWXroi4t2HW4Apov5NjU/shW9ga76VaBpWkjOJaVNfePgPNtusMaW51cGdoDbwwz2RKGqwOxc
dNQI7+P3LnBs7fURBOykimXA6GEDB5kaeU+Wiv5wN1E12GWTxIYVivb4EnjuzZMnWTQoojs3Bl5x
FVi9I4hdzk1Rrec2h+y/PG3OtCHeIwD3OzAuub68zTBShGTuUHJ0WZeapBcHl66oP42XtVvIsOjo
Cq1Ug/0kMSnrhV4L7xdCWy3nldeQ42zXBH5r4SXusrfvhVgb5QuQM2eQTiYvUytCmu7rDuAndbxY
j6djx4Mqma+IgBD0OOw2Y2nVVaYbigpmXYS7LIC8xho/N9UuP0LQCayVfbqj2Z+aXcVcfz8du8s3
RuIdYdspYgNESj8hDl+K9OJ7+5/aLbqtISPoILRrXqnC2yOtT9zyjZyp/R2hQ2w2xFG9Aj3POv0D
AhjIVJxGpXOCMlvqoq77geVzh9n6nV6g3yISXDtTNjJYmuosZLyXfDh00LOlBRmNZwG2yE7KB08f
EE7/VlxcZUwPezSmsRb8WYoABZ/rsArIjw0zjrHq3ue+HdBlOERT8V40QluF7dQjpYTRQoo9P34n
LO6w+zDvJwSioKrVgcRdspIoSNPexTMaw1bzxrMjsqpm1MfmFcZBl8SRO/rTv2mY8aMzzmC0NxAQ
WL+rbex0kJoTRO4gya1LVKL+ndpjW1VNoOrOY0rP0ZUTseJSQVDNwBWYG9E4/DvC45VyWo2Q0bX2
AgUfKNAN/ub/0OMvw07ikDsaZsO+OTpQf7d4y4RYhGsNF5wy6dD9NBHQVGnUipKg0kisb9iJoCFT
LWmq8sR6pgMImP9jHsgqpsQJRkgaFI9Q0b1ZgMcWh+DB644cNSuQAeOtbcN84iGgIlqiQ1RtIsmJ
5vgcwRvzSt/QLoBunPJziSLH7uz3mPael2VOQq1pxIN2kyAlkBp/Q1BvxEZ+wWoLug85cMiXhfob
6aCZn4Sv02nzSRK0nd5sapOqCnDBdPQezLlBX7B2v5YJXfuhrforCPp9oj0ECV/Bp22Om5pv4tXX
jtKnMgjbHL5inMIESt3orz2CeLPC+2qhOQbD7oXuCUzjDSCm5e2g8HMQECFlA9TfL0f+zZtFXNb+
V0bEcFg7LXn9ulUDGXGqcsoDux92fphObgGE6SusMi5y5887qoRrSmvQRG+CpClAxNHERZnppmWm
RIor4NdvOSgC1TMtlU5H+M3VRGGLU2Gbe8YHKwKSproLOIidKItBbHmUiXBaV8SyYP5/vIAmBsjW
OHprwBCCufBGILpxDh+7nRgx/WGrZ+5rd3/NVrb1Ip5PKzqVFixStD79xkcptdVmRbcD/J+SzugC
9Ksda+bDxpIxHNhONzabzHccAjKnCLhiaGcIspGekfGrBsELzrj0+udx8TURr2OGJ8wjzypmUhFQ
AIyR+yMni+je/YWfm4r1rBfXuj6W7E/pVmvMPzaqEnYHqq8uSEdwn5yzYgsnEoIFhbjt0dILfPsX
cZdLGF/XlyiMlmj6KnPFilBUDuD5/T76OYg8N6ySurOhXDG+//gP6aN6drq0E2RBlq1kNUpNLNdL
FqEQbisc5SxlEnx2cVCWaAWfG0B8MtV8kDrgLfOGXWf+4HtVfhdcZ8JNnVhfhQv1mewPVeKiJXyN
4XWZRB8OpcTEAsGIq/9ddsixGgVqv3jXA1imZiShJ4h1b1cDiJTTBbuyejbeLAKmSqgWf6HZI+r6
V0i0N3RfQjslKSyCkJKUOvEmhDZSMEdt7xc5aaj1TEVBZW3jEQNoOLITaGeZQKKkjAjQ8xTOnOGD
NnUQJc9TEEn5hFjIzyQcjHnu5L71+l14NAqvsAX0Vqwg4/L/KiIo2vVeRyuQhN817LlW97g9eXTd
f0NE+PTz3MOTG5TF7lTqfPgvur7KI0dKHfRJilunAaxZWJiKw/se7kysSjZC7VoqbbbvIli+2Uh9
XmBWeVx6ISlGDofkrLaVPpI7PvQidCfHLnXJPnBdg9z/2jZITgd14LjkP/ighJ7k5QNgS+U9WI5q
0c/9nrJq0ad8iY1U1O71TYcARy6gLI7HjOIUPiW5shGIC55f+j6mopvqRwrfiwk5DcaspxAur2hg
U+yl2oUa7/vv7CAqRqOpW+lgnTG6GVD9GGOAAQoA/HN05Hf7clyhOB3i8O6izAsyryb/jpzZyiJh
TbiDEv4jD3ARrgWbcIz5RHrlu6i54PxritMoPm+pxFEkdzQwiTAWgX5gTPqJw7+4uxCdQ1Wn/PS7
jCoJ9fPPilqZkyCQwbfstVuo11FE/1rPI60tVOIWDXGNkS1G7/91OD8kmDF2Xpr6jkV68FwHHt68
DLllPUGwMMVlVuTTmtZEc+PSJhDNJ7xawyQYd5QndaFxKzQ6b9Xrl/pucZ9OkekjpTb8yN5teS4L
7Auydifoaw9lv9awvHMEVamyCQJAckeMrFRG5aVJmwWI+nHgU32pYJ0Yiz/pexKlVAPBErirIh85
yZcuqTrPy4BD5FAxTilmTpxSg8klEssLjOV4p0QGBD0fGjcqVMmVB6iGZVMn0nknZ6kDyIso4gcD
1rYdTOD/BqHXhfWI0DpV9lkyz6kZLyNnCqr16Sjxlvg8A6/Uv2Afc9n8fFm5UHg2TBCMw/29tAo5
ivNYjdtJO2dEU+tAzY5rYm4K2jt5L8Jzzgu1tL7AlJTJR8olE7dYzt9wY/2n/W3zeDn8GJ3cFzgz
JA4dWKVgUksnsj0Qaiq2bldaQt7qFGfCAlfeQ4B2xk0GkmvGYy8cCh+amZb+yd6/WyHZ0LYfoqUq
58EJCfgWyDO2SX0Uwe+L8IoogCchT6CvLxTZdgkXtnjQMiTJGLMM0Rk/itCMiqT+A6NJCWv9kzd8
gTevstFIArmGEcY5gKe56bVgUr9nlKth4YoVz7cZahCVqUC/g438RX0n6dfswuwTIXQQV00ldC7J
aumY90UQaHkb8d857y788yQ23mymtNS/mMKlIAyTjTrQOxwnBtYfISP33/YstR/5gyqefJaKr9XB
mBd/5zy3zufuImQKsauWZ6sn3v3Br5X/z/MtxAxAvMKkJ8C6E4w/trG9IbeI0AFu9DnS7rH4jUWL
Na6H3TGOPDF/nnVrSAqpsCMv2L2Nsy0trqAKoQfucfLsH4/Zq6kvIV4680SN/hp2sxGEtyO72aBY
XdYhDK61ulS1j5W7hdYbY8iV/iCrPVMnaO3umfRw7q+fUxoE0TbknYp9vpdb3VSzfF7u6dvYq3L+
PBrMvujmfrzjf5CWkvFB7Wh0fAhle9KuZABKgShkrF1aAZlHTRrrDAIcJQfCz9GFhpTkVHjnPRAG
Y6b4gTldAI87aWN4He7VpgTfh2kLjzLXmwtqPZF612E1Gn4WCCciO6IEc3JgCyyx+/FLbgeOcCHG
VBEpOaSUHZkbYaZp5pQ11nE7EhDGO2iYNrvp33AYxpf1H5Lqwy3euf24493dLPCvApBSLj6laA0z
zV9agOknvFAUhg+XHgM0vajVHoDB5230kaA/cXIBrUlXhzLCIKCrOs27QZauRf1QbxbcBlJIiNjN
pCtv1c4ksOVfeReNXxtkc9ltTgO90rkVZeSN+QDiRMNF8HUuEw9uZtBfrswDD8A1jbje3NYTPJiC
i/s6H685fsMoen2Yc8VXszHLcX/F7XrQ/Wxd0ZIXpXbNP5zs7hfPb0s/Ez0D+PgM9rV30dNryb2D
myVY3gE7SawQNz2Y2O5KLxe1x6hQbIzZgrIKmDVmFSHdMcCg396dKX5fEw4OMjI3mxHEFl8oErWu
kJxDTzBSsQjItOTEgu/xQW3x+TOwoMF1anNFi3fyYTHyA0N1ly31TVVrgnafdLHJnPoJqzE1Hb1P
P7OvBB+GAV1BhW7iK63lv/ZBpSXlx7MHxgUdxODu6NA0yErJ9/BmEtnTeE0JSziDQUN3J3yn6ibS
S2uH62dw4oMXzmsE1kknoE5yWSkZFSujMr2UaGsiFJvftVRGgET1QqHp0MRz8IfgJa03Z1PPM3g7
GAhLpRReTy4h3eAEGufhV0zFv+rZ2x/9L9Ef8tjif7kh1UomeRPMv0g4jUuNh5kPwQh6+lG2dA5c
bu9aTXkg87BcJoy0wWko1q/J7oVI96dQ4+TWPPGM3LUXJCiDQKmlBNgABdN+gkRnRfOKWS9/FhNv
P8tQE5sRIEZWWYMhh8IYSdboElONk7MzCeaN28LdK5e+McxA4zWCDKDCnC1cpuA0uNd5jOOl+c1j
UUqgqwAa9hKp7NLe2PcT8Xqp4ythVW6K6mU30ahw1kw56xBmIVedwy/90G81FANZXiv1mok1mGOc
7/7JWh0uvRmbGENaOrDRTR7JHxOgEnoYFHgc7KYao0l00iSOevWoa7bgMUsv2EHZN1UURswNAF6M
7QfywiMv0W3nFWrEf7MXPY/xxousdW1N958Z/bzcJJw+S5Lhh1y79DmAlPjA7yaQ+XF34Bk1Wwn4
ty6Pvj5SFnThH8hJTKfEQTf0kty6i0glytHq4Rujk1+L1pcmcTMQHu2ZITSDfJ2f/lBNdq+WaLDN
P/mRMn1m4f3HiEEQ8LDneNREGb68H078/+2Dkn1MZNSAtjhO/aWVgcRLemHKo+ys9py7TqOrpfZL
UCOiSOHY3iCwoKxTJy7bpMGPSW03nRHmnVNKyeB5bKZuFnsMjOoOHshGSlmoEZHyDG8dGyIQ11ez
8QOGVDnxG49GzIXKIygXoS8kCF1/czLn3r/J6hCL9PSf1OpIYzPyIrackkmUr6QQfXSlOBEMB73j
p39fKdFsWm5KJ1JGGG6lUArnPITKG4sAjEWGfem3IsUTgr31E1kVXGp7OBtoN86cq82lhxp/9BEw
NUbVFKZzPVgZBwCK1zLvOIKZ74s9HpYqYSuelV6/m5mZVAlfI1Hb1FU41baSijiiE8eIccsOXlE/
AJQdogQjz0Fi/sE6/3Bytm4rkmLmyGU+iA+ofAu2pMxEVwgNjrsZQPCL1SqUVl8lvUreh/o1Qma5
1YP4wDohPuNZ0fqM3LP6UwX7GVwXi/SEnax2pTW9/GyQ5n/C463g+ocDYiiPMKx1L6x7lYSzJB39
Gry+p13Q6NdBa29yyxIdWmWp/y2mTuMm4Ir7Tpx75egbjADNC127U+qw84C8g3h+eQ0beOFjhkjP
0ZWSwL/58mWrJHPcWVJwtUtKVj+2BnjmJPq0sPT6+2W5VW4X0UTxqKGXCpykPNd7W6BdElacf/r5
nShEL5mvhBJguXzjtYRXFk/Wci7Akb/lZTCh2C+tKl1H7myIUxW84jgHxWn0bhpCu98KrtkgfI6M
WvgU40SODxdeIYZUXeY3h0/zy5eSKgLVKr1/PKceU5Ez8gWUyGQY+5DGx48FpOLn8OkpL0NvWHXW
HcRfnTLUkmlA2q3SJRLEp/0FYmDEEvuctRtJBncpRkuCDES4Fl4vBm6GaiMiPpXq9kM8KZ88L+8h
/6Yz76+rXn4dMneHXtNtBnpEGo3FM69DnZXwbJQ3G5JbryuP62nCvWIKvGISE7kqPJuhTto+Moy4
eFvgDjh+V+6z0dEiNMzgB3zQGFFJJOWsM0wx+XVq40qrYOQQR1a9u2W8eb30K3Dv03IiXcplk+e8
MOHppFbX+0QNYcjBJqEC+tNK92/cozz63+SGI2uIRt7JvzW4kdo/jjTc2/XXEHUmPi3sH9FVRaYg
O4IEXGaWqHtSeM/euCun/APs6U1MuufAzt7/NKxauUHWLs2TijOXYNPcea0ZL70VAxRzFURROrJ9
Mi4mOl1QCzRwvHKkbdVmJkPELF0yMnkpyJ21O/DTagdPV8E09WQQAJqVJIEIpJZCfgUk+NRMvPrw
4kxQ2cWofSmK+NR+WW45PSTLRZkwkN2Zpit9Tk/bChaWM/ys8IgsyByGPszNAUBPCTswpYwu4xBC
qVDaerpx9NFOkqRk1XA2HW9FVb36N/cwSRUrLUr1EPmiOF41BYtVKOSj8U48wnpiyaFAS/vkziqP
Wf6SyXRKO0XW/YGS4vvXcrTJA97YEZHIPOgPglQutd//xYy1693SyVgOMm2FdLVEXpwiX/VvBcx0
qlts8ooCUW5CmS8rAM5EyaZCKpqsVjidN7C+OIyQYadnPsCjjtwfKRCjrFydOFYXHFLwRGs25cn0
eWdJYHnk1mSUYO0e8pXD3eCI0g+SfRTKi3NrIYZzPXsRRLapMOqcI9bQ78jadnHF3Ib8pejrG4Ho
nghTvM8hDdVy7r908zDf1lVVYfIxr/vUlwgq/gkkMHWcQ31FctC/dAsiaHI0DNOTZp6gs8YT9StR
SFAMlnWdanLEOUxwbpy9MBRqdnL6XWo3meCsPG1bWafD9xQpBr+veRM38BTnO36l2GGyLYEtIdWs
qYy1FXHBrp7AD62JHgnZciGaEFD4nA4SV14WfNd3sKdaWbLniFgrk+p8jSExltScu54EmTHQW8yV
qc7ZPHhzTs11/e2xowngetkprcyM74UZdr8666do5RPvqsz4anbSKmQcD+zCIn0eoi3v+YXSblKb
4WpAyew5mh6fBwKnbgdxsyQ7mytm/X4xNRUV0De2ovAitOzO4Ovxqdkghje4mZu1XIX0/nesDtCj
uWZp4ZbngmUyxndc0uJyebE3ik8qExccuo/BPznjUXkro+v4i6mDGAInXMAOAGME1TeM1hF9MOKi
R/zvYObQlxRNL5ep6PDT1++wkWFsSZ+TdJneUwscluNqDTehjAkho7ukmbInlrnVE6hhvuQ8UqjY
/2000VIwJgv1hUmzGiEAxSIVAUh5I5omiupwo+SJk6Fq+maCmRdGTdvnw52SUeTScCdOW42sp1bX
aChx5pQn3PiDbVu2IZO5hC+Mpr8I1cnEuPSyFEash8sijiFH0sqqra1WFj9MOeF9Cq0bP1TprUo3
xDu0hBE0wTAnM38tEO8qDuC87oBu5Aqqb0oEbgtXZb4P0fpFGOpLYFBQx8Vp7y1hWjRuGczORI+a
vjpl5T8U2Y5VZJqJB7i+5f0ghXrxLfYp//G3TgwTMPmRjULRlHkzn5LynQobhx6jzpQH/kwcSPEW
4C2xODjhXQ+OUiiL8QT9wiRvz0GmJrUgFS4WPREwWV8oNd7xIWfe+ntUXsGxeUKg6uy2xdoV0AvH
bXkx/xc0bAQi9vWwoJyKiRbBq37FJDBbW0V8iyam7ourOO4RXxsc2q4mZqj/8ud/EgcaH86wWhPy
huq3RRwm4Vgmi4AuIokLZVkezylrqc49CFnMvy0hZRnO6c4rI0cKrt+wbBdF34w2IouBc7ZB1kqy
pmYKHWleaQIAYHyKPX3KqpU499Bks2LeQSRokSYmviMUw3iSKsGW0+mPSq1UslfLG05wEJL56mBh
18MZmspWGwRfpcn2wp5CLckeRrwuTLr8kws+8OooG/KqrZ+rxUHxDHVN7RhuI9IPiDFMCQEz/gQB
WUel7NqXEL8ws/sqPB7wkHiKuo+0YiFBR0deD8dilqxJmnybxtgwcnbCq2nT8L79S9ooHv1tcIEw
Z2/j7JceZUzJo6h9IaRbtubahSAhTTNPbu+ID8hl2vr/41W1PBptSe5EB20kaWvMl8bCCP4XS4z0
608D+TCCJ9xN0yTxsIomPmMwXKvC23GAK+nTx8/hlgWYUke2PpQIO0TMP5+ZIvuR6bsyeJMBLvQn
0CFKOHcnu/0QF1/if0zQ5S9rN9VSc6ZUxl8+WgwQihBodXoP2gLbSAEVbO902jJC65ktaNeiR2Vb
Fvu9kCgNSElNVrmFWGCE/2PQeybdoze5kHi71XRrJcqDC7GgsJAW0YntKh4xzytAOxO8jYcCRsca
jdDnJYY5EDeibAfJfxB12hu7wYyfDBAz0ieg8aRlibjnmNxL95VA8rKz2GIal8xZUWpDfXms/KS2
EwFHkIOmcgs+Xn++5jRXO+3o/LDzRdYCPAOI0VqqrMVRzsksWOeprv6qehKxGau85I93Y2ocNA47
Tvf9wPpBNSWKixl870wj8ugYH/xef5iuXCVdmyul0n00VHushPm0VOV8cTETVHiCoBinXXmNYQMx
GmH8hFnGN+3bRNyv//xpvYTL91qwhulNojJW8zoeR7l24vnhkZeWUWU3fHyCoA4RWxuJ0YHo8V/4
j0Uu1SrDbSFgE8IQuUAQXyT6TctFKTzFkUA2w6LmDuWm9eCtMaJZVm+PkAjJN6XiJnRrqIzvMRaQ
FkNCQkPysiO3DmHaqxJ6Hbmz8pNcj5Dcl5gfIxHlXJ9Ngt0Vx8UL+n9CUbxNNryrSMQbU5kUGsDe
M+e+kDZ7aqGeRvb/368jKEQexPb6pf0fMiWD15l5AnJ4mufgfoCMRCcKEirRNHf2RPNV9UBZ8Owg
06SvM+VT5fj+ZxhKt7bJG00UZ1Viztlx0K+liEVmxM+QhzAeVcQk/Rl169iiE+5hW9ZhFT/fnxxW
LNU5OdRyKsq+to1cwdqy1jtTQu6rr1TpHP3+O+8eI71KoaE3JIz7BADqCF4uFbnpHzKTZ0scQqdO
ANZUE5hRfYSDFOJqOO+/xuFPZgY2qc6rSUWPcAFeHwLiOq4d0al+wb0HEKqMJJ2vZyJRuZmGVo0c
l+B0/b2DTmEpYwFKfKFGVIvGwrjm1BR+Cyp3w5Hvf6CkDUJz/LdC68F69x/EnO48q/CBqT4UnKSG
caV8bDU8dWB5tgIz85Mem9kpmn/sgIEB4jQk5l1lrQp9CVWzGDz0Wu2FGugne9AF5ZMdJyh1e3um
f3WxXy4H0UHgysb7DgQMFzyZRbEVHriq7TyX61Fnig7HoKW7/sE/8i88OHBZstNU5/1sEZ2QrdS7
MOCgsCJaRNmQXUjc6YO3FowuNDtSTzOthFYoydpF29NzWrWL8PsvK/nI62b/oDG8aAtOAbrZJz3o
5noNiw5L2VFVE2jtf7H22vQgAf1J3jQ2vHWuB5pFaUflWKgrglSwOfqRbDEXwGwHAjHlNtUNBKCP
3nvjkVECo6HyfgM65/b9zG8U2rOZMkv4Pg0+10gK7UM+sG4zW9PfXzcrSSdS3IyGHDGeeF0sKbrZ
EN3kMzRtxIqsk9x7dEtgYG6BPj0cVMqAbEzc5Tcqpr7UE2o6Ir8s62o1HisjzLMhZtWsu2MivzTu
Li1slPBJFs2q87qucJdmuO5GN26YXmGp80aLYcKfClY1VhNEINHW5P2v2OVlvSXfjOcyPC+JQGyY
3pWQSJ10oiupyNPDav/WJVBtyyXf6LIKRfTkEQ7dE+Ef9Jlg+UmBW2THW8nNlkpdMjadPeBIXjai
31oslwsK14y5rMXnx0r7AwXJ5OAWMFzTSp882Njpo5uMIC2ESZJ101x0j20yTy0m7oGj/BnVgwCy
6OmuwwVG++fRrAF+jKn/evaJ1OZSbHGMp03/xknHFTjfV6BaM+opL1Op29TWjF8D28HbWdd28zBu
633PfSlvSkqbBXYHEnxHj7u+zrE5PnPA8qneAI0Jni2p0HiZJguEn9sJRkLlCTL9SOY+YrVavDrf
4WwfS2y62Eo5JKSJbUwKfkK2MMj3kjcDs42VfcNkxhbgZhcF2ArIMpFkIf611mClhKr06wibnRfV
O4W0NbqtPUtjVEm6TMNOlj158GozWzlVJt8EQEyLeBpJdWxTAynL756//zB0v9Z+smiSl/O+CFaw
D3CRRrHA6i9D+TTnO6j0uAEz6D76xm7Ti9Vi/+ilrfl+Lva07AiZa+KmA+gYGz185LoDQyQFhs3p
cBEANR/k2mQkrGlN1bj6W6iAqkGhNtPEV2N5o10yVF3gc6YaiaY7RFQaQEDKDBrz+pxaeYWT47SR
+kFRvxVTdm05oViqFSBVpaw75zZP+sOH+xxWaPZIb7ipCQmCwcvgvU3eXVFKlbxlsGCRfz1NrN5l
Y+QgaT2n4Z62nG+SdpSMdzRjX6/Lf05zd3357+ImmG4TUd7B+wxIAwVtv8q7r4KF1zlYDKDagbDT
KLrpEcGOws34X+xCorvMhDADXR7ueW7ZWKvjYuDhd9ElGC7RWOflguIbIFdm032bGaNO1FwAFho9
bOB4+YEuH2dquhSa10JOqF+VPgG9Bi4+VA3rQ44GGlDJfCoiuDF5/aJJIeJ9xZ+IMn7SLKxFUkCw
Z8RseiHZ797+orYYgWusOqrAAPvnHso7z+nMb8jK8djrT8/T7S79Wm1OF1GW1uJN6c7h94GSiPaF
bDWmEk6Z7x0tsfvAHNZz+9ayDFLJmE/HEg/D1SCRLYnZ1ph4vJoe6aI5gH4AMlMIxzU0Gd6m0nnM
9VzR03sIqpu0DZH6auSlpdLJr2QeNXWmzZLZELzf7gjQTTu6HcjaPI/RUZh0OGnxPxequNmS7PIe
LD9wTkrG4oHtCBWm3a/ikcAnnokwMLgXLya2QHGgu5yPrhzsHg0dyzDlKoKtsjPwyq2PpocRh2An
ZFUv0qRrHdDwJL6bIkfdaXZ7oc7R8JqIAWVbh1g5Wn4LlcRBptBbztsV1Byr5pVak9wWnXQtLmkt
+nk4CPHQaeYID+pZ1ecWXKzOuRHkkw7iX26RV4LIwhLCB9+1ctEP6/zq9qC5zHQfUrZQRdJLpbDM
IasjcN4FFlJBnEHWQjC/KuaQBkhHtZItcBBY8jpjE+TEizs2w9FxcpVANtNw58sYI2CPas3PBI7x
vqK/wQmSb9tFrPiL1//vKTD/TSwNvy7e5O7gCtkuvbHfLvJRGZtTL97HB1Fl4h0CF28twgFmM4Mn
7Cs3ukYv7nkMMkt+0wGNWOjrGefuHyoVopwSGxY/fo15ZWRuf3hu/U/4z0HT/wp3yKyDSa5cvQAr
23y7r5WokyPGp9JzHZTwtRdyF0qCFb9Mcb3i8S7fAFnj6GOzJKFB+0M8H1afQTxo8wPv144Kvkc6
KYTZ8yBS5lZPVovpIC5KAsBnM+8Z9VyDCsvSUJpMSNrocP1e26fB51r7b17WUPGTx95qMLqWMjda
WdPF1UEB+awKKWTl4A47gl6b4yEbll/4Bmoa6NdX1X5vGMRExD42tslmK5vSDsgx7WxC6AVmGQov
cyl//L88f3hyUeBZVcgSqxN44FgCmpMLWlclFj6G8rTnAX3MlJA4meWLdgmanG7jFg+DLBmZo1FQ
yDOYxJwkUuLdhLKCTDA0dNgCiCtlOmGX8OoRlYdW99/brlW/UKlsffez+VG6+YaK8zUBP/jm2aB6
unDR3hO2x8SeQp0Vwq13xVMzdyTssrMNOBtrIBN3lURKJz/P2+tCddZYbzFuQRlsRxvsH99A6aMn
Tdst2aQohEHpvJ/rod2BolhvJRYJyRbizWIwaBvmpijP+pGYHdT6BFCMzlaLOuQ+GJzuFNjWXzqQ
5hxZ0hFVQUAAw6Mqq0/Byj3J5zI4AL662GeOslCHSqJTtyZwJpL/zjoBchlh0kK2HV1zgGMtTUZS
sFa83eR1nHb0Jot/nkPIFxtH2Ds4UBI6CespEBkWLpCbYMeX926/CTAOhiHZVHW/q8Kp3IHQak1x
iu82PMthGPByHoUZz8iLqgvymXMAnreturp7z7ftHKvnT0RKx4iZUyHFLsKcv4mwxmL+hmyCOdT3
SMYOa9WWxjmISAOYQRrxViF+P3Ebv6IfCzElIQe1KR6i6jlaA3TPh+s0Ns9pXRYcxBb9I82h5Cb9
mWuUI1dlgLIsdEQfSa/bhLrGcKdjaPLqNqWWFdMZxsQY8viVOJ6/mcvc3UaXwYTInPussPX1Z+PC
xpR3aOb+h5o9PEkCGMTJyN6iid1aNd5Tm5KTmYZTmqnp0Qs8UBqdFIDfJtwksdSaOHepNpjQpRnU
JGQs6KjXZEmAw0qfSyzW2M5mlaSvRvC33LlDA5FyJJqUD8Y4Nsk55XT/T/KEPkGrVZue43LZqdHp
vbqHfjQslhHlLqHjugFnep86z3awRcLOeS385EMXp3NopUexWCpbdlsHR9hXfaGcNVx59v6ElBH1
zyEw07+9LaoMa/Hk9V+LI+Cmbm2WWEGVWW+vD2cgygj98ymKLma5r/V3IAimY8rY/Qa9mzRSrnBM
g3WYya3Y7mlxmE4iV8+B1k3KNOyCWS7nJR70Bb0ZsAb1diXTMX4VHFuaDYnrMluUDckbRWz/8eo+
K4NoE6YfhEPpNC0wi/mhiaC9Gfv9CTEfkkvDDU+XuHxPqUSix7kBANj1f0vWZk08vtqiiZ/o5fYI
nj8M0caidhWtpfTPUYenxHC9yzX7YpYDeDibq1rJuH8I8pbdum8Z6kUopqvZcmP4mcGMxeN1z4mx
kQWHN7eOGobimPK4Ol37Q6rqbAGu7uon8yQAUew+RnYs/5QYmsaXa4UQVdxHvGpLBpu6KbvX26Nh
tA7j5w2KfU96ePBcp8E3vTS/5n0x9beXocIgxYis/qB/LIiV/OeNfTDqccsLT8mOYtqAQyZu6ya0
DWIFNB0S0oAh1LMprAqF6IvBe2BO57W8NeHxSdDDVRW+w5Gr5wLzL49TK3xiEldSqB8b+q7+xhdw
HXCYSNmt++du7rgZuV0djCjbytxQpESLhxiWsDuis16sLUkbCRtA+dov2fkjNpyBRgTBU8ljd56Y
ZdggC1tsE7kyc42tWBfDEJQUplQ6B0hwGmDpxL2GKkhvOzSuqFrmcQQKdw2MV70v08tq6cYkC+y6
r7EqUQylzjBtvTtSgcSP4Sfe1O4jYiyf7QLl+DCu0h+zpVAa1WfoqNVc3Vq2/kmoPUqsj0einIPr
WnuTMOl/w+WYYBFrBFEUK74F/91A8Kw5rMn1VC+CHnm4OJ9Admm3WAVuIimoxYusWEOlwf7NK196
85/7Itulks4xFRmNtjkE7pQNVcvlcAK/Zip9TT99Vi/dvcH93PAYMmxRT8vP7KDta1Gfz5ydAzAP
pVX7V5EbL+dZ+HFxitdDCjxmUKrlUrEKJ2zHpk+V/R3g5kcqp/3s6Us+E8bDoAm9QpgXSMZJn4n4
vSUhN3jNzgaLo34sPwj8dw8hUUYxitqiZEsNcZsy2sf2fvf1B3Ed94ErUj7L8cUw5Vv0Px2x9Mbp
0MsjLyh9Bu6BPYjG9D34mRlUo3IfqKMkuy7s8eyD2DHSCuv1NVtxQ2svM0sKtjSQf0hG/ewAePsC
hz1fulSobTdefZ/LPQ83BGq3jXVl2hio6XdgiKPK7T6zHKecE4LZvvzc+EuSaPbxU03mugOntmtq
FVzL/1IE9aZoAs4BVxS+sYwTRJ1JjT3dYqovYWihfd8MFNl3+itcP9RiMhv/tA3yqyYanBhKxRC5
R334JUg4lF0qj08Lwo3EaXi/MecarYIFr4/SkMu1NYcWYN1Ka0ao09e54YV8zpP2MlwYUHOlnDlU
FqXUxcOLfbou4zEIY6ZfE4f+f4O258T/vopsgfKSROb+2NakQnpi19VYZ8fjEsgi5zadZWToCbDn
GYpVI9hV6O5T6kyBmjESSgO2xmajY14tLtICUKveeF/RQ0Uj7acvGKtYesFXn0OISaDFQsknGi5t
HOuJKlgQ+kf3rimqjLPH5cZrgexb3yv1shtyMfPSGgaHIgdUaJa+ONDA21Ig8ccWDxNZni7u2bT8
jUxPynMu9PH1+V2Aty3xd5xrXMB3tbXwePa/I4crjAIlUX+DnfvKcfTIjfVmsNHOHM/8V8yVjMym
o3dxr+uWl2xNTfwJzJF3umbAxmw3vdFki/E4J4RylWSlA7EMe3GlfKCWkAXxtrvA6IzgmBkY/Kge
y9/Lm5zb64gREZTOzhF3lKink91SmQBfEkUIrRXxa2kNiQ5fY+jlOmHY18vKHFusZzGMA5/TLawS
nxwtffeevZoOwykxfF+t/4lrhYnWb3IZSB1b2RQYINrQuh2iBt5GvGnD9dRTvYQuFy/A1HxYE2Vf
0VNFOJ8+1bc0HMdn3keJ2yQIGguvPQo9sI5W9VMcVwIFTELXRr86BPVjICydJOgvvE6zTBkjgslt
8QltGdIdOf/DbvMNd+SkxP1iR6SfLLuPZJ/WevXxLs5AQW5ZFHcikMggrvySdMy1FE73UXaqsxak
WpUVpyVg9ReDtAHIK9i1HQuNy0pfm+h6HwJOltZcpFnYtAY5ixkndQgXevJ2JMfaQjrmdUfK/197
d5DLzX1t+Q+iR0woxHPsJtG6iIEE55D2+Z01L6m2bGuInQyF1XOl8RjlosRb128xoAA0Ny976f4v
36zs2DetrCtgkSpDV3kqs2G59z5ncqHWn2OiJmQTRLAsRvJwsLCGj8f3n0vNYVVMDnVxF5fP9MLX
zjmhGQwgV6ltnE0kTmO3/CsOKC+v8j3e9eDOMfKsm5sW3hI1XM+8/xUItUeb+NFUikKVMCmWlq3a
YKb5NjZBOVC9EerZu+SHyp5p9Sc4zxoz1XdcQqaqXlA+pTkv3gY6PKSXF9asZpO+zRUrkpH078E2
SE3xEqVWPsMboe3duzBG37uz10TjkDsQSGLD1JrEOoArx9xHl6e7fvNqX2c/XkbkLa1fE8Jd6zE9
3wLPXDF2nRxodAASYeqWf5Y010VwBBXUmAVkznUJAmv9dd3+iPkzr6aczBIs0YY+HV6KdXWRnYqG
3lF+zMnZrjnU9WILRr6mT6q275nbbtB7Qn4T+f8Rf0UJA3bKuIynMxz9qTW2Fxs8/3qJabJN+PO6
5JeYjRSa+cOZrJ/1bzkIuT3bUEtsetbFZakaFdJejbN1pNh5Jimqvaqqr93N/2t5rE7f4aS7HeEx
Bs77XNKpDRH6Yu2mkuYIhB/A5C7QRIgxKuKWX1m2JRdC1Qe0+EC81kQoJ9Qx1zBTJ1EomakdUR0Y
UmMG57SpswGDQ8qDR5eG0i0ccixwAe/sGC4+aSf0I+Jl59g/20Sli6kV9B6xybWouJNY8+p12RIP
jjfTOtGSWRcssRvI2LmAblo00FQNFKPbfCLSiLw+kreN3hEGDGVWZ5TpQsJ25DxGihvXG4JQSPge
4uZ84SS8luVE4Dt9OogTlCKEOAQulgB1if4YWfc5pqSHAuv1leuxcBZDN/7j8l6NkGs+eHYyXDW4
k/CF4YnpjuI6aUlAGKNTqEpJG59GHNDu2VUcsSwiPZ+nw7dtsB8e9xaeElU3q+UO0+EGuRK1HkZ0
Y4C1p4R8gUDetlZwq0CklB6XmdHw0q4hJurKbLHj4C1izcWeKnO5HG+3ewTvjyTpGw4xmGqNkQ/N
blhgXlzSsH6eAIWM7TVNj42MsFgcm0nXxXA8Z6yF+lRz4asLR7iMRkZpKbKQ7dMLcA3Zim3bPnRI
zySiHpT9z93qn/af4dnqtc4gAg7IOXQD9ZROG1YQU0SMI/2dvpl1qV2kRAmpNPOU8H6QVLgZQsq4
/k4DwkAjMB1Q5eROIpDStd73qeZ5s2snoNafeblRJQHqHZqoq6QXlyjza0v8KBFeetgHteFTqcea
+hCznKTPb3eJCmufdUjSnkrhkIMT894HX0nJbImyXpQ+DHjoKCMX0rOQjIH0Ck3RY+XyYUDdOFdw
JLhdtgoEp+tT/8fdpZzoGDCP/BtPxAWkxUpDcPvcWUy9HOFngPPUmV4caTxaL1Hb9i6fj8xek0G5
wD5MZ7NEnbwBxLYWA0d8IKq55pHHKIDH7sIo08cgoIeBhMPkl9n9vrZTBumbDEbGeV/bszIh1FsD
ZeLD2oPZSZF2Z/OV1JBVqPip4xOTejJTRQ68u3aAbA0SoqeacpWIXKaFx9KvWR8JaguHAZcemzu0
1E8SfUWq1A8NiZwUixIcmY7ICjeIUvySBVkoBCHj53C8uVJiirYJZdQUyFNysSJpVlOJATGFhSsU
FoeEjZR8Dn1knnK5zZKVIQZBGDmOkgVXBlt/662G55zx4P5keRAlSAnmnh34h0hjP8fBpt3OcP9P
d+NxjAuKs9NmNb7xnWWe3LADqy0F2UnbCItf2Coh82h1OnG/ySa1hGtSSnVqQwHkis8QyJEgbdqc
COP0x/J1emSojeViacClQQH588VSaGg93Ki0gSfRojErbgB3fYEKBPx9DmKfCJfrHBI9rG2J2opV
sDoyfEh7PpeFPU9T/qFHL7C299oP2dNiMxCKHCr3M6mNgWmB7xxHqxRQQW70vmTxDEnXIpWR9tqA
FxKB1Sp5kTbTDbeVyHjKv8H8Ka03lGK/1bYzihAPVz7eT1YGg9dILLHba1PilAAQvsdg6tWWs8BE
IEv0DmJ6YyPi+i3SClEAq4qdtRXVMLS0SlhuPECRljREhAS63N/VjWr2TZ50O9rn2UroTyq9sEqe
EWIYWUYj5imD6V5s5BAcdavpRVi0zSc29APP2KnG3nC76JZjB3wIk+GfUMVqS4bxtpark4aUWo5s
sOGboZDeh9WNtrx0OlrmrvGxOte9fDcffldb1JFpnQd4bhW3B9LlbTfm5TXFcNFZ2ZbNgnG9yrPL
I72v3IIjUpGoIIWOv0P0Q8dZ0VN2EzpvuXsq4ovVDuzxCnSQmDKbfY7DxK2p5T9mNyn7rYXI9Rzd
Q87z+Q8AEIY+q2XtFOsJe+6U+qheVw9JMIcOXcddn/WHqyP5fEoXiV4PWqDotVIKdNTf+rOuaMJZ
svAejtu82Z0qIf9WdkE27iAIHedDMUKrorjgER4j8VH4AUaxf1N1w8CNKcO+vS8PMuoAwpqOI4rw
wZeZN1kUrsga49PfIxKcRz07xDNJHKMtTXgXQyKcohbrtNcc+9X8hq4UgdbTg0VreQXAZ2avdefy
QDGrX3AIAVNa+09xR8l465YYSo6hqgELKbf1JHwGmAIQdPWW8QeUbvA6JboactD9NjZ62HoRDYwD
+2a0FucgJT5CSXEQXT3EArYs9nB+hF9Ojm5GmQjQW3YMrvYfhgMtQjrArtydhhND6JF8MaaZ2gnO
chyepZfL0nI6TmiHkCjh8v48OL1t7r/4n+Mwj85k8t8bndQxwqKDF3e/WbnuDtk33QBwcesZ1Jyr
RZgh4tkMZffw0zaf8+7dZDuTUeq4rOLqm3mbH9pMct083cOGXryJ5Xh7tNuvUCK/IFCjFIvhtZbl
N1XmvUOUXD98ixsf5ywa5WQ4rek/9ngx5NmscWR4eP0XRHmMaV27t7FkajLgh2+RadyAiO5rb3+Y
29FhrbLhPDW2kZWpB7HNG5LgvrDquGmsawgjvZgUuWxcaxIsxlIGuHuWdvVZ+vtlTbblwRJFe1OG
fdLXC9DjnpKCX4v4vPP5jR/mDh7HH8k99i5slrmlqWAq0B524dQbo6POkf1SescckBkbgWuwAAmL
xXluUNi3EdTMklBwu80rMgmcFTVYEw+Cp0adK0SoLUCWR/aI43WyIFnLBUiCtasn2f2GdeWAyrml
TsfdjwpQkvdJcu3zZbMr30Kuu8SxoFO4ujXWGFwOWsIRdZJ2n7PFKtLNmW+DtE3X6WHyJblJOGDQ
LeoN1SUhxHMiZ0T4EQ6dXKWqwfFB6kg1WaagFNz3H/RTJl87dwceuoZ73ZLvG7nQBRBuf4NP7hwr
J+u60xRLg5ihgoP92q1KJGDnYByAN7H4Pk5gvhLsIiDndUB3MVZDyOyOakTCQp1TALbglTtsAizh
hsUm2xdXvbI2IjjRkukRKx3CePC2yM7Iso2LAPpGvixFNW2dlR2DpeMpCKKg3YkKIqGNEeB+cwzf
rzkKEFwNtED47StxbDffUb6i6Mm+D2I1DynOg2i9NJN1fk9nfKpT219iyUGaG0z3lBkUfLeOOcKs
peab/951j7CXJVDhquMaTMr8wcslQ4Z1oDP/IkPu+6sfZ90bNC0VmD2CdOWJMBg+6jZuF3BmOtvk
g27aHdrAe/V2IyE6FIpRf6rX6tP7VxmHxBcjb5Xfx3xe3D8rvbubVo0O08Kf+u0DGdII/CGp7olL
d3kad3MGP7k9YsoKJURAp88wD+7SiGXpz5zrov95QmIIee6hPgge18/KjlO6sm0MTf412PtJTkdi
ufc8GhaUdKYdY4UuEr9wi01tZycc73fSyTfp1fz8XRUxaKohXJYf5T6sS5DWGsay3+IGXFXjKvUy
ZuB7+qeO+4eXkGO1vUJblfnXdlhAFxttFSSR2aqVqrv6pBHsvkpRROtXwI+pqDhctLDy+cij85bP
69GYtNOEy9xyLLp252hDaVN7IzVfENMO/muaCD+0z1b8FyXVYfjNwe5rtUf7QfmqJYxfSlROYv/w
Dd++FyC9Ma/2SaQJAAxdtx1pPVD0U6NqeaivvExZpBSDZX5anRpVcgchGQTngS6BUnLRLHVvDleu
J1bnklzUsRacPFDZOlzfUBmRfyaqqnt2UX+6lKMMXWH7URhuNXXdh6TUfABKfvYpb21SQkDCC5PW
V7s1ykdYnN5Rb0cBPwlK4HotGTqJLyLkYYT0ZGaxHJlBdiLk+1kBEPxZ/Ar9uimoj3fePLY98SIJ
BXRP+uHGxYFdqVnVB8DfY3q1JkWf7Dxrxo3EaoyGA2VRfagJhCS3EG2rvIt0MF6eubriuAWnUVPy
39nVtGWWd9nk4zD2YIehNnIfgb+cjMyPnBBQZzGoEzcNObGSdnfIO1wz0nfK0kXLadhzEgwH7DaX
TdQgOEbKvynQ4ns/xOookcM4iNnxzUFpMiDUor1dWT5DCSDghwbl21HdA4AM2XDUsRCdcP2uV+YR
N58+/yc5Xi6awBQu12mIFuuORG1gr5tMhax5JQDzHN5A5rQykIJcsKrmyF/NltpRkjvrT5Xf8qNZ
rZ3/J2GYdaLzmAZMhTPQdcagi7t1OYV+1E9cTQCgn9BCq3NoDvFXEI8t4XCkwfs3VUn/2ZvwumqB
xJ5el31UmVGpc1YpPj9VbI0HJwlFfyWDEZKaAGFZO+6Hz4s7QWwXHDjdB6NNhYvDL999JBfWuEIg
1xRomKxSLnRuwEvPwXim0dCqhZBgtAOrvrtv91l73xacXVJc9Pz5YVCVRTI53hvM+Voms1Yfm970
b4y70zXycIaEhHsa97Cax3IWvApAWtpNFpiAQ0OusSvKhX7bkA3fIbyTt/pCnoNStaZFBsYr6btA
2upI4Hqdm3LPqEMLOJXmGShXbTwmhDB+5ltomdAA4N3niG+gNd6kZMTKLpeLKuWdKQbd4qFg0LUG
JEvKFp6JdYtAzRR3k9BPcQKbcoo+WHH9XB9uOe+qpl1pD8e5EyFGujIi4miAoGByBZ+GiJWiUNnR
otsjC9Gtc3cPOCvHBc6gSYURV6nVm58nykKeZ3hANfRX6X1McKGk1r8ZH47jwe0c9PoAXkb73C+R
s822/ndWGRhfEGd/I3rwGXUc8r1DIeU7/G5SaN6PWhx8NuyMFIJh9vdoGWj6TneEz96FWzUBEdoO
ii5mElmQ/lwDZ3VZWDL9H8TQ6rG1HLQ6bN5XzAjnSl13EcuxIX0jUHT2/rsVkurpoqHnNCXYjNY1
gZRUEnOSw2k5H8TaZ3xYTA5tPVsAEb6UjddlcI7PhuHGT82etcq+o3VQBg1qQV1n0v37SJ75Emnk
YtT/Iijw0FNu9KCk1ed6ZFSOKnAVnRGI/HJlgbafeWnE4U7a30KK5bCxdsxgzhLNyLzjFYOeGunX
heRPiLiOxbbtLJG9JAPyH8zJfXxIS1R7egmOHShQzy038LgdCrXWztyKzt1Cbk38kYhOEMItmZfl
MnplvbjR/3wx6x3LCOomspXxbUqjoEX3tqAFVhiOkgwZZ5OLtN2ZWrcpHeynAeFI1PYfkM/ddDls
9SSeGguYS/TZ2tIpn1kq5OUnOYxtiF0rQUUGMADub0ggfFVxNs5kBN96qKQG/QAG1j0i0PqI+Pc9
/6wOxQX9tGNcYtP3PDoWJr0SnCh5qX8E0L1QTKXnUSAtWu6YMlK2Vy8mRCU1v5Hvp9DCYZsfEnlh
3Eo+irlvTbMIcscHiTctTFKMpycGI218u5P5GRqi7eyw1lkaDRpbormBXsLVoe2/JGcz7AMC8TeU
jJewFhVoT2er1F7X7H8JlWYjZdXf1ZT7M+a4D8iAmPyCzh8bB+byA+y1Rojls/IKS/dTLE411GmO
C0HKsJBdcMEKqshpuPuZoTteC0tCvJhEVmPbskf7UwvDIwK70fl5myDqbhM6L85P6YaUDWRRrspq
BU6y3+cDeuNQ+kAaz+T5mTlfCBEBWsOR68uxuRpNYifYKX3h1m+z/BhMT1M3psxxo9rMpvhMrBT7
6c3R6lvgNOKU7IKFHdSIzdoXehozKCBWHNtSL/2OIf0ULjKwB2D2YynfsA6+sY7WaKn09/yY9U0s
OGl4IQ0cEScAvH08wBfiF1tOlyYCNavnxZRzTZrzuU0CNbNFvLM9AiOJCTdlP3pfQzNwIvPx6OzD
ja1z7E1hPTsJbvyUsLbQczXiIMjX/dXF107TxHF1u3Od1GO55ieI3SIYyjHMkQwE1TDyITepkNl6
7Ju4xzJcIv0tuTaCr3b7GY80ZpWGxPDCSpDPw3iMxi80ZrMhoNiAaYnZJg3hWuLjjhNJIygz6h2K
OW2AVlBv142W6mqPspcHSX9aew3atx7sVRoNL7fli20Sj3P1JEAZykpCqrCs6m/8KHGelN8iug0l
4VlH9W46ptuuHvgHwnhR+dsA2sfClYLE3EKParjV/Z0nZkA9uQtN6NQzHgHxeC8bERkoxH7yD4wC
/6wE0q+velyWLNs222f53A9+U/FhcAepOXuV3WpsmjbEWoFnGyvqXoFj+syI6BgORZGzuIbGelxZ
XoeMbeUXAYOD3sGyEG570n9IiJh0jQf3BiY2MpFffxMD+wTSL9h5YiuyDv5djIw5JHpMp3rbb5Ek
AxXZ8Q2Mz17bTdZFEY9ILUcpK4T7cwAIhV4+bSbRVV+oQ1Zo0LqsvTwSGRjsKc3i/cXyhX3vqUzB
UgUpTyznF3VTpywN6VDlXMvzZoidr4CceQ4H7C8Vo3MvKWMmoDB4xLbHW0gl2yM/jXYu7EHM+dmq
jajPl/L8cLSSpVv6fWgi7Fg/kyvBRtAZSrx+EjWncKwoOVrcD23BAyMiMeh+bQXLBqrdZkx44Ken
IRVw3vLqDr9s+F1CRo4wt7J4ODLGjBirqKc9P+0ILGIMub26SbUBpRZ1pv4sPl7Es34LvPk2BvnY
8fN1Hbl82+8CvlMuTw9OF0pp1EyD8QG1CdKTfZZVe67BqZHXjRc5o/GVMcW2BqFsWaOzoeEmPUV0
XSCPm5WynQFrZ8g2gsNEXyFZXdcfHFIrcBwDo6R+tPWALn4eb0Hj8S5jrsE8UfIV+6nfqQ8JmMCY
aBCUZV+ntcV4nNdjFpaIz8ZYhY9T0gir9YxCoQWZfsGZYfPegxJDbm9BqFr+gij/a3bES4FptjDI
5pKa83yFgUmQKcGkKiTqO2SVTwAwgc416N8+nYl5Iq/XF9C12tY+vwPrOsKm3YHWaDj+S+LC4PCz
tMq1RZnMm2TohfJFBIZAE8dX2zBnCVA76cT6NStrMmrOZsHcURr3skX5NKyDFOOufOsaQKLbr04H
SVPjpd+MJzjkWE2zem4VBKWIKua10DfKTKyxTPOP/5o0c9c4wysSlHXhoCOmyqYM2eWE6H+nli7H
qpFslZv2aVqfBLDI6yv3nNBtO98EOfpIT9JXjlIL/0kSFOtlkUu5lAWFYmDcbjRDYUCXMxJeCafI
fHwHaK4Uo4ilMtC0LAJ2aMDObjdQG03ECRc8k3RTaBEiF5NQbgbQelyESqVAoNxsNrv9HPb2WseS
GLNaRMheXoQ7GkxwvvPV4Y6iekzbLvlupmf4xJrxJocs8hLqjIulGX1rOt62zplg702IBo1sNaXX
5c1Hyy5YDP/RC3VWgCdFfNvLnvxZD2PSVOExWOwupVxpOuW0Ip/B3d1vMr7rekntBk3SKLveQ+8r
uOGbOn/jRzcYTqT+ifw8RR1CfW7MTMMfu1+EQW8QkgwlioMQq1st2FsNjzGwoNGAS1p8jIxyePYE
wMM7HZpgdjHpLpaWcr2vzQgc6MJx4UxOSZkG7HmNFB+hMKhIICYdnrvBqU1kQhRfSJxA6cw8f3lP
eIRsGQjIjS5uy7675Mapd7NMnhCVR6Mi7x6yX1GbzSUaN8v1dBpBzIC7cY025YqKVQQQQFvmHSNn
YHSeMGV6FtmA+SUYsBcio6Wh7D8PfwN58BnlH4FMtq1rWEQdzGeg4rD8t73y5qSYYasOE7bsp4uA
gEYGYU/5F/u3AgQldoNzGPcZZO1XshF4mKotIaGPG7J3DeE/GFn9W8OACESWrReoYb+GdoNnNF86
FWmUwXB4M6vMHSIlrN0idG2WVu1JDYOcI9Cv79O0iBTsWdniYtU8a/qPKbJK7qAnS1rbxuKs1281
nKXBPVie60kaLLEwKpOP5paBit8Se//9DrdkUjCiYaEjFlVwu39p/J2NBDaJB3f7b1CNc5O2VgDj
SADYUSyttsAlcLS4Q05GfoWU7plIRz7sOFppu+EVBxOr60Wk4zdT6bKhndQHF6pSKbKwFzvbYaMG
pwina6MFyJ8dTkIU8MFXPTh3TvInwRYD4F6nz6Gz7Bpgosc+fSTA7WC5MUT0zJR6VeC5l1BI5u9T
E++L/fLQ/jTNCwaMfVgKk5h+laDjmFDazCu7KkcMtya9q0so5LOR9/E9FU+OI/Kwk9nh/8ie4tGR
VGVqnQvOv9RbGi8k+t0Hsg1W1W9wtnlxrwCovRygOFdaPR/5rq3IdDxUfXXQK9dZuxErvLKSzjQF
xiziTgxy9V0n2IxGLClvsOBTBOFpec2HdJEO1P0upHJ4JFi//9kF0FjLecsv2gGAZHxUg+o0udIS
HgIs0pXlNvqznd8tl34ZS1AE86eg/KWSg0UIDLdPoU4FeIzNSNflW3ZgFOtEjQmnvDDJF+exJFO4
stRdFwPnmt/dlG4Jw9ssdVbuL3vg9GzTzLkLR95iokszNO1Z9vUL81aKlgE/IbHKksqWI6mULAb/
4/jQFXqhHYYiYRbdoZ6ID9PzV9Zp99Ygow9BLXYYeZYnktWm8yZ+02NnejpyOxWcIcR7gysWx89/
eTyI9nlgKQKxH3Zmc75oHUs31epoUmLsoIXLCUmRcg7qr3SsM+C6kl0oxkrk5oqfkrNjJreDilvd
fzTi1gPO6pDQX+zRmsuUh4G2XrOeCs8B3AJr2UU+xJkcHcOrzY69pc2zfJdletLxGGPmoTJXZUrQ
hdBAGyInwss4F3XIxxpTD8leA2xOCPU61nIHK1K++FLRQyzMkILFn44WmcUe5mdwFktKKpnuiErO
IUTK+T03+GdQTxNj+gkSv3ODhg2KIRDnvzJZd++OQVJtSn4KF1GYvEWkSaIm8c8ExT7b6Dmetq8T
/8ysbTcAtWoaIy73+/8w6d4KIaEWNL4WmvM8bJdEYmUITlaFhlToeRZagyiy5WaY/FoTkJr3wIaI
4P9ZhmKMA8SV/priN/YBcU7RGXL2EIsY5pPI+fQnxYzL53jYfFtU6zZ5a1uktlGXVFvynaTA8A1h
wQVGwIY+RYvDwmqVgDR1Cka/rkcqboXFfkUYsTZB0V8wr7oKSiV/o15cGTi4EPmwc5L5RPgfTga3
A/TThDy0V6HGf04/gn7+b7M5s0O/OuyjhN167I485G2oPMJ/G5SKcwGgAtmyYns/Q1tUjyENUb+0
sj4j/xXM0nry4RxAEIr/SMAmfVHDVAZDX5KWIMqX5tlkN93icftuMe28BvoI6PbofITuf8p25fOs
OnrvDNNpwkeT51N5cwEAPhSAKxp+iPZfiB6HxwAGYuIlUWCsf0WodU4ss8OVWgDQippXlRQLXmPc
dsVGUqDK8mtF0JTtGDX0sBmnXJnYnlMc9CevLwHIGIviAaz6fIyZ7UnLM/v/a66rNsc749weR9o4
mYZFKrE0OmwCUip34dkYw4Kp3+dB/IBEgIlT99Q4D1SxhylGLXt8Ig3OakIWhSIoPnB2E++D2Y52
whds7tstIsGp9dCdDdpaMyBhvs82SEKPOwf0Qhe6vzA1paMA5LvurW/Ct+QlF/x/PL/sSqPHUJ0R
mjwGA4FgrkPAqJitSKLT0MG6bPgBeC28wNuV3eMZgqq/rD/KU3CefDyQGMqlzGYGScjpGrhbO3s+
c5NYBVvRMRgf6rfL9tnKXsLXjnqoKpRiJjmNiaPwQsgEhimkzcmdN7Hr0ixXrjWR+o+lZcU04Rrr
F6YAmvXZNXYiERCK4Hf0UhaOeqob9vzL2eoV0KHMd/mV+8nG4NFEwT64LDbrodeuoNSK+kkRNmaa
Qc4gbWz9SfASBV/zOdRA/J+Pgd5ar17b+mpRyOxcYP05kwhEIeyXEKH2e+TlkeVKaCagKQ1P4iA8
1fQoIDqgEN1p79p0hsgwxED5/cds6s2zmxHo/f/3aEjTdQJ4BRyRijAXis4Yg96DQoyVKRIOpXOE
Ekkg+YLfqpLoeVfhjngCQ332g5Ho/3G3F8ETr6WRnL0GzfP+yctnLTy4yntezCrFHFbaEAPz6Skd
qtss6aT9HOwZF6vNE1a7FBwMpvTtzY+mcT0VjzB/qADhRokMs1xjB1JaFOYhe9nvA4aq2IMCu0e5
C4dgKhhbCgrYzGi0Bds93lixRCWLXcZ2ktcMn+w5BEg1ugdGwVbR/Gqfot5euXKxGPxk20zhlLT/
2Hd/d2x6pkQMlUo8kDS/5lfZMjk5TC3P/G05lmfxvKsB7netAk5CV24+Y+XH9zf9eWl8jSe8wWjz
PiHb99mh2LLHa9mA/tkkei+aFf3b0sFX/yWmLXP4iN2/s4VpxgCtKIbqyDGOlOIzOj0O7X0F1KSJ
ZKIoJu5cQn0lEZhGQOYxJIc/jjfMMBxqF7Pbz60RFhzCkmaSnn7bsinfiO0EwAWQL1MUS5ZvYqIu
ewdTx8N2xuFxOXh1oD8mNU0aRDbhuOdGli2zMKT3mWWnlcoCPnm+ZAed4vHOKd82m7klZk5wjQUL
y7DWpGtR41GlUhrulScj9xXdHSzIMQn2ToNWFqjVAqUgVVuZJgelrIJ00KVZapKHUO+WF/EhCumS
gZF4e/NL6FiMwW+lqy/FLRmKy4groCT1g5hsGvSE59KijZ0hxQ2Prrjqp1vZoeFIt2dN0l5vPJfO
wzrT1YO2RGN1+CX3x1wpKDyIv0u2fTvKcZ4PqA8wXQ+WbUnvs0HJntheV6g3G5cQUGofqiWA
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
