// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jan 10 04:17:44 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in0_out1 -prefix
//               layer0_coeff_in0_out1_ layer0_coeff_in0_out1_sim_netlist.v
// Design      : layer0_coeff_in0_out1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in0_out1
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
  (* C_INIT_FILE = "layer0_coeff_in0_out1.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out1.mif" *) 
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
  layer0_coeff_in0_out1_blk_mem_gen_v8_4_7 U0
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
