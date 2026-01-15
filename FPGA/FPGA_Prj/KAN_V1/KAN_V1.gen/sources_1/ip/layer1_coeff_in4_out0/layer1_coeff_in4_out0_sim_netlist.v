// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:31:22 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer1_coeff_in4_out0 -prefix
//               layer1_coeff_in4_out0_ layer1_coeff_in4_out0_sim_netlist.v
// Design      : layer1_coeff_in4_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in4_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer1_coeff_in4_out0
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
  (* C_INIT_FILE = "layer1_coeff_in4_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in4_out0.mif" *) 
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
  layer1_coeff_in4_out0_blk_mem_gen_v8_4_7 U0
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
