// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:24:51 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in1_out4 -prefix
//               layer0_coeff_in1_out4_ layer0_coeff_in1_out4_sim_netlist.v
// Design      : layer0_coeff_in1_out4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out4,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in1_out4
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
  (* C_INIT_FILE = "layer0_coeff_in1_out4.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out4.mif" *) 
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
  layer0_coeff_in1_out4_blk_mem_gen_v8_4_7 U0
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
