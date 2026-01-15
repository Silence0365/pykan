// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:28:50 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer1_coeff_in0_out0 -prefix
//               layer1_coeff_in0_out0_ layer1_coeff_in0_out0_sim_netlist.v
// Design      : layer1_coeff_in0_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in0_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer1_coeff_in0_out0
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
  (* C_INIT_FILE = "layer1_coeff_in0_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in0_out0.mif" *) 
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
  layer1_coeff_in0_out0_blk_mem_gen_v8_4_7 U0
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
