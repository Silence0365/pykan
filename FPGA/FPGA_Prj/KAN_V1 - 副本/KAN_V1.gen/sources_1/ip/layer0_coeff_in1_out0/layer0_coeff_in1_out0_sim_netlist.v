// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:21:55 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in1_out0 -prefix
//               layer0_coeff_in1_out0_ layer0_coeff_in1_out0_sim_netlist.v
// Design      : layer0_coeff_in1_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in1_out0
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
  (* C_INIT_FILE = "layer0_coeff_in1_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out0.mif" *) 
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
  layer0_coeff_in1_out0_blk_mem_gen_v8_4_7 U0
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
