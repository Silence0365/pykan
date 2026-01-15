// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:25:36 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in2_out0 -prefix
//               layer0_coeff_in2_out0_ layer0_coeff_in2_out0_sim_netlist.v
// Design      : layer0_coeff_in2_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in2_out0
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
  (* C_INIT_FILE = "layer0_coeff_in2_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out0.mif" *) 
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
  layer0_coeff_in2_out0_blk_mem_gen_v8_4_7 U0
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
