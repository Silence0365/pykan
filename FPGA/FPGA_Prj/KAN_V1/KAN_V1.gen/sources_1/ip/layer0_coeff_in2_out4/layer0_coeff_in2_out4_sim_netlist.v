// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:28:06 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in2_out4 -prefix
//               layer0_coeff_in2_out4_ layer0_coeff_in2_out4_sim_netlist.v
// Design      : layer0_coeff_in2_out4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out4,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in2_out4
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
  (* C_INIT_FILE = "layer0_coeff_in2_out4.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out4.mif" *) 
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
  layer0_coeff_in2_out4_blk_mem_gen_v8_4_7 U0
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
