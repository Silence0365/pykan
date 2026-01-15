// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:23:16 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in1_out2 -prefix
//               layer0_coeff_in1_out2_ layer0_coeff_in1_out2_sim_netlist.v
// Design      : layer0_coeff_in1_out2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in1_out2
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
  (* C_INIT_FILE = "layer0_coeff_in1_out2.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out2.mif" *) 
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
  layer0_coeff_in1_out2_blk_mem_gen_v8_4_7 U0
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
u8LHioIm7R1RhMyRE6tOnekBYbEe7Nj0OuBJ18ud+eglarklyzQpJkhf8zYiKiBjmjKbURgl3BfX
7PRwpt7qTtrKLVjdKGLW1qVnnGSzDvd2n/ujO/D2h3pFIcwhaaDcIw7I2IhaH7QZv3c/Xgd9OUWq
3ySO79zujj3tzNTfqsiqnvbmtuaSr2/wyMNDRFQpq8z6U3a1//Zj6/X1CBYeDsm8I+XyFDwmPyaj
oa6szIS0cqQFYxFqQn6BUxt+eReFM0Man0RbyrMAKdoxQRkPxz9jSCzGtWvfzupz5yGKdZkpHJik
wY6LTdmuaFqlUqY+ov9J1/3k+9VRt91IBfgLFNV9aSZFbiJTqbueCKrUBQyVsN3TOYB4JKsy9ATo
QHDF0igCQNW9WDw5FgQ28D9Rn6Xc1Y6q5+I8pYKOO5a0xw1qC5Hw2Hxk2oGYCrz3c4KDod542QwZ
O/ky45Ovgecc0FtgBHgrBThF1lLBwGgddabWd2p629Rp7CUrrT5bwwomPGnXCvodVO0n2lV2eQ6a
/xNCoyw8ekeD8wg9tP2Nb9kh+dK4XbUDH9BEz6owbTnPSdYMfGdd+SHWltEmxgAVtHKzGHEhQNsi
wh550OUWsMciLqnlA8Uy8n+PA7UFoM2csWXw278lz60l1uGJa/JwZ5qRfk/bBtk3M9vk0mWpHozl
cWfqh4r3xUwFzVyo3DNq2M4C7oJFSVCqTL9Pb7bQmjKw6vyOw0EGpHzcDkWtukec47Mrm3fFkCcz
Oui0yH6bdpE6N8iYxYATLcwyjk4J3BLybvlWnWZVoMOOaY+zqt8Y5S5/T882n5G5SACSMol71eRY
gZiPnrX5WzK4QDLMhsy1C9RIoGe5h5c1n+Xg+8zoyn7SGAUy4Qx6QnuE9pRzDiS28X7rHj748h2D
Ucq3mxUU4taK4rAYHf5lANvww3uhgqnZFO6T7UjNHQr2jWCnIFpZopq+uGc/umB/SGO7vkGII0/K
DUnAfGhN7dPQ3Cql9MzoE3Vq2DgHWN20rgh9nVB2bXEWmE9V48Y9GBJnLlXvQhzakmGqnVtzv/Dp
NvIM0BtCgCIPUVVhSb592P1Ohy/1qw9bqYZ0dcJBPnONO19zJDM1qFb2zgBTs4Nnjqo2txdc0XoN
oo3WFY3GUu9Y0O/TLL0q/NQ1i8LQHqya2CzI2ibIGDATQohSoeqr29BtfH5pM9IxfwRJZD+4rGt9
nh6wONhp/LPZQ3Bem7xSeLvLEDZ+8Pah5zqfqbcM1W08Zx3fIYQiZ0zlt+V9DGSBR/Kd6wUZvVL3
wFd/PZuVpEsyD6PLSbctfhpwEgv4A3+FLzO/xbcxh+BmXDHfxdZi/nx1Qe9pp0jf+CIeKSPa/cwo
4qdYzNp+BaeMwVozNA7llqKRNPpRhdeTYr4npxytaYCZjOXrqbZEiakFS2YfnH9lYDZxSEqzJD0O
VH91aX306XqFhIolfcbNzLMUTVrXGwTYWf8khZKzimj6N0x4zcCgtANun3arWoSpNe1Jwq/gijk7
A6kr0+OfPu8sR7Kpd3TEKG0QYpUylxb7CBQND5BK7cQhdwzCDFXpw8nDR5gHgP41ct/aUU56IvTE
EmuKPldMUdaKCV5MTpK/0/Lj+ji4GW2QcJQGR+F5gnJbeATJDqXhk7weWOD8SRuoKB9nkdREEu8h
5oJ0Plzk0VMTP+dHJEsPuAs7KJ6cdnhpOCnbvN9WBt3p2YsDPFgx+7j7vOAN3pdZo3T7YuCgWDGq
9jQDl05G8WqFgoxKBHoBXbKFd05gDxNbZ+8rv6/+yayeZCe286+ZqhtMQ0t3jOqWU/1kxpHb1wEo
EAxWUNBsEd0LOw7FCC5N8kBd85PlCpcBV3pNwCtxdBd96nj4u6ROT91Wn9Xx/0OqjlpCsGAk3OAI
v3YumuHwmvl7hZAU4X4L2gxzhf1zovGzLYy9UIJgM+nQNhI6Szm3VPODx+z0h71OjPJ3XY0LOlJE
IcQNP/wBjecbvxtM0R6blBxp0v1IadTUy7uAIYxKLS4EDiSax+lELdvncge2m8GfH4wTkrpMYbSw
YzeYPlMJdS2ERVJH0iUwxKaIePdrwQrWuBBCBMW1uMqO69wRcycTMM30qcSEcFUxBf8eF7jKGKbQ
t/6BbrD468gKODSaaR290pY/RHirdImD5JRDDBxuaHMQLXoxjLRBf34pR7RLKAhqXcbn1V7d79au
9pcCOE2hSv6cVyFkaAJ+jqqGfOl193eCfJSF8LYh7Q5gWc2G6FImXHkozGROqyAHgccowNoTouZ+
gSLhdjNBbsIFwXbGlBBMdZwm+bJ6Ytpv+TNBPdGSiXhbzslDOnzQKEmkro5JACC2yjIEMnp81qIw
f0/TpF6MWEFoh9IQ/1jE29jDp4H5dLvqjHg6VovSALrRo7sg7PfnqdSqNRcAJey8UBawJdVAMlKL
Vmt8dY2kqAmVLuMdkQxNtJFu9nQ4CiZJDKlYF+3Sh7NARabohBYP3tL7hnrjfxCWH3v1PVnnf6EY
qbCLgJrWUbY7Oo8Qqw/6ig/6bX7OJGpFIb1bRJMkHSbCUf7CpvkcGTaZEKYzXPIHq2q3U+OLnge6
N4byWjgAIkIWRAUl3IgoqIsemswGptGX7zTeX8Uz2T2cqih2Wf3HoRcc8nqQXHshgkBju/Ovh0jA
eLOBa53zOCGPn4Y6yvWjj+YLAzFXeOTS5xvPZxqGCtKPJkqAATV1Fh8UPfsM9o37UNlfL0TrQkyC
flQnfOrJ2k1k7OHBBTXKKpz5TwOUQ5oObX9dxPLYvurr+3sHajyvnCcT7CByguEiZElOpTRAWmIj
DaVyJW1FV2VNr+/VhRcIQBtHBmVsaDxlQ4VJrU83evXg7cU34lD9QFKVCKMigIBdjtzmWPhAbfPI
82akJzWc38b8s7M5XEnT0ZlAyxoQi4sw0xM6Jzs8Xl7a/mZANpdbCctjT4DscTzHK9YXuoaZRYsT
eOD2kgc1ToAPj/+Gvu1hSoaqhEIUvxveDXRCAOydGwY6m3ymrRxuM5MKrv9jPrkiGP4Fstr4aKvS
6UR7d4b0ZvBjzen95bzojlmRfL0/5by+8X12deGao57d0aQlIUDAR9Gd/LWuo2H+z1X1IGgGtxuR
Nz+RZ2DMfKui5i2zz4Exw20nBYnJuFz4+sDoAGftouerEccDmb8G3XfPjMpnra4xIsdCbBj877OL
ap2R7HysBwi73iE4/Gfe5pwE0R8paxrQAejImokrESAskt8k0iynxBD3xojQ5j3hdOUmmKWNg1Lr
Z7Av/8RKQPx+vwTqLVVf6PM0W3bNA8hq3EiULi4QqmiMslOJY8YMF8WAV1tElpE8Z11fBButKs9M
iY/d7UttbAG+IGzqIyHjfmazNhUVgAipSjlLktArLdZwXwT8iss8bEKGTd6bosiwacPji8eKWdHf
sKrzctLnqe6h77fG+sVCvogwJUZoq70bilWL3FMhKFfO4g9p1jllpzoHYZPL7guvrYNZ+wLghHzD
cCatY9vsWGyAPcgLxYu7tbJJTR/+Pz4IuS16tXqLkEL764BDg1kb1YXWLP7hyzhOqIDjX/y30Apm
lkEnmqvxvs24thH8JO8xi1Xz1jiZqviFgDpT/6sQNBBAUdPwspmr6e5Oh3wgptLW5PUYwUoHIGow
Y30rU3WQYe8aU8dYsGnvQVnBhm/xacBh3FJTqZR9c+FmsaK+1JW3AAPZukVzOyDN5tNEEepgEPFj
CdSNBNv9axsfjHXQmv3loc2H/H4OVlDb5VkxCxhHTavgXYZj9u8vhTLHWXnhZzsPBtalm7IHaPfw
Ty47Fzgr6uguWKQf8fhzPBGdM8/d2a1CgJCZp2WP3Obl8bInYoa30cD9DYCpwp0ZWQrKVyDb0Pr9
8mHcnTXE5SMczPNVhDwyJWDk5Juwwiu8NepwoPB3P69rCDnQmOxe3JZM76kOPoGKYPLRmw2NO0yW
iiu55S5KqTTSp1vt7raI3PSjw2oDUit2qCbG+QpA18hIYiSGiL6eMaxsBquLCgc6gbg1bv2XAZX9
7RtRWIxCzetHWyyQW3LTgV1AvL+TJJiMiVpFFTP6rD8Y5Y82O3VeOd0VUlSygfy+Tg5xrp0fLS1W
8d58zrf0HY4cSYNiuqA9gOrOQ7TNCmfk3g4baQwiUgqyWdWYEDkTIck+xv7fC8G5BrXrQPVeicJ9
kQMOzm6480NPj0+0XjNbZU5Wt8DjBtxu6ammQOZP+LZSxgtGL7HQ098zx+Ubx5viih7qu10TA9o4
1IKKh+lLPPsbeF1NRu2U/wmi0IHCyYXtSU7B5zT7miAp/F+z//jq04Z4jpO1akuXkSWIBVIp3lmb
sNK1O3FZK6b8UGTKEK2dKB3+/gjjhoMeENuvN8BGJsSDgY2sMfj9XAxgFsj2ZmK/SBdtUin3ay2/
J+2jT6dviexL2+N2B7TZ4i0+DGmEY9GXP7oKJDdG17/UAgTxpluzozYHjvtgTnGDT2K08+jaUh+t
PijRTUixAtkUSIS2hFz/z3bzTExNVlvkFlErSHN7iQ7x+xdBbTwTW1p/lMenQjD06b1trGB04nHN
GLhtFPw70PS8lnxFzeA9Jk4P5nn/J25evaFSrWkm1ieADu7jwUMnD2M1wK4TYPbS8Yh3dkiP42ed
ipqpEVu3TPhSkVDi9df8FIcOsfza83F0DNQOT24KdL/maqivaYLntWuF4J3LLL91lbtFmvu6qAyz
0EJPzbqSFCQ1BZD+uv23ZegcilyxGbD1U8Zk+2f0LO2tAyRi1medZYF27YV5GcTfsyMZg1S52dwz
s3n2Am6CD37DE8oQcfrlXoq//7zav4D6oCjy6UG4cWs2reI0fzS/hXmKN6t0atVU0n0euyQeCRhB
al71V9m7/352CNY/ufqMTQzzo6XCNr8Dkq/IgRbsdPH9WZC+HNUiImjiOAI8Uhsdn96uC8lAOmru
C1g5pzbiYMIhuedZBnl5VU/0VceDY483e1vyYk8mK9OfP0mZngWEFpyn65ArbCr9RjJgP4mEt6yF
BkFK9M9TPNdAhY2YCQKmiA4GswrpZuXnefs0NkzQxG8TM4zAeOZTdZ0OVUmujVPlhy+HQUS43h9M
9fIqC2BmjOPoiGJn8xd7mpXsznaDwDjpB0aviTmPKbWkGQB5HyaaJRBiIeVpaYCHvboYsBDJBmoH
71dLSWNYjukvYEBXU8LPNjg9ecoLnoPZch++HN8p+Azx2/lkzocN8UWCGMcJVMQ7pRKaL/uqK072
ftNXDm34AKE+R6IWDPq5p1g7jcR25QnCVG+Nkjtp/oh6Z0kGNlTqpHaVCVHoeCntF5UxRbQnug3w
FMxR9jvpC2aK0kpT24LWOp7Llp7R+O0fFJeCj4bpA4nJ8Mg+t6UlEhwlmCsAB8MTIT0jqe4oetdb
BTziN9e276cWtB0BlqrAxImfPmY8R+BQmI8UFm81WYJERSvR/pVs7dljoyFbO3pGt7M7APe5xY1x
wDA64Ni1JAHMwJW5EvaPqBYrX1TpByW9YlEfm7nOBEalp8Ka9rOupHmw5j5cObDU2B/oqDxhj/FN
A/8lA+XmCZPUExldLuFa40IMQoZBlnzKsDcb+QFxCz5bm+7BCtTGYGJtEKLkdi1mK/iRT8+OB8Bf
c44899wUsRo5pyTLp2cGWv3js9ZW4MuO27/eq8fJ6R77wX7/gA2FLA8ic3WUVR2hhmBrxqAK/wx3
us7odQi4QPHxvS0iS7w3Ll8gOA1vC0zd5BFmA5leMKXLj8HP6tZmfvvmK1/Tovr9VLjHc0Ha8MlU
DiHnYdQZFWz1p8RuF3Y3fOdPzpNHIN7V/QcdbwwAZUvhy0zHFDqIt1tVDMbIMrz6iI9X7JLbq2N2
JrUb60qmqk78rKXpf4HUlVmyZBsATl7xglVcap1rp/kqqXW7Lg1OWUoAKrih1FTcV3HJTpM77Knz
aW40bS/j/XKJfdOQQfCEnH0+PM3XP/Xzz/AxXaxrJVqJyHQKEwSLOgPOksgHZ9ueaPxoBVb4oysf
hyTzgKhpuOjeK/B6ZzbUuwmY5EzCIBejc3I8joO0SnyOEx/2w/vdUb4Dz62s6L2TAhHmzqSZbThW
/5/TfAk98SUxTQi3r51VdIU2PfDN0eE5Fk2KiStMaDrBhiLALUqkkZYf8Uttcl9oCAYHTsRyoV0G
yYQYlZasrgSvWKcm1SPmP9OYAOsJCep7GXZJt305e2tdgSSHqhGlEI6xEN9mVa1J1U23R2UIFji+
dhfEJmwioIHw3i/MsjsSDiY3ORyBIdoQA7NQ4DD6zuVbuXIcCRvPbse+5lChxnuyIwdko6PmHLHF
veOISVGGOLmaXRT1euxQ/qS1YRDH5byEPNlBgtQveqmtR9AKzYtZA/jTC7nbaeJ3TabA5fTEF26j
8Yo8aTU4iCR00gfR/86XRXutRqE0OgY13ImMXDF6k0Pv61kSab6O6tVU5qFfZ3iEa+lMzzBYykaL
CX1132/Gz9UFIHDibM5DQJ6XEs9squZvQvFPLniMF3TvwJwE6ClV+Pzt1bJDqz0WzCZ8JUwO0QPs
SAzuJ+z/jUYisqUBib0SVDVFUei8j/LGwhEUJnJlDM+v3Xg7nfdqWAe9D8NZLfZCkru+qjOolUjD
UQqZxS4hQ2+fs0IOIGp1HDGZKHlj/fXsIW62jhW4SC9pl8kGsO2+PP3DcWMgEmIqni3avAWhR0jh
zVqeNzzXhUr7Gp/F5Y6O/ZG3EL6akzx0tgF7j0uGOaIO6yDBW1jEqsXL8AcKpnRTURbGGqk3h91a
wb3WXftPWV5pHffo/QzHJE3ZsUp0JFK6qUW7RVpv5AU9BaEDgwotgmTCNJW4u2jaMy9YyqmMbfL9
S7c53fSr6gK2wnbzH8qAfwd9eYCF8H044gXu10y2SPFSWIcFsnmk1ST+dQ5atumF9/vE+sMx4ZRw
icuoTW48qOP+nsG2DNlT45cT3te8tMzibmuL2Ra5WeYWCu7yCeNgQaHzl7Sob4h+sxkNxglRU5ra
tBRpLTQMUHtYYTM0fEGkDlktEXT8Mf9W89zk0vOv0RdobHh+xhl++nSfEKuANNbl4jTW+iLJ4ENQ
XWhYw2rS8yjz26bSQzzWs8S7x50K4M84zSLalE9bUthJs3LSpGJxh1Uc1BHgtIWqfRFcbO3UCND5
Y4hv37RvMKcPHIkhV9yQuUu7vxicZ04LorCzbudzwB/nK/sJ5czxp2X2xbcP0XkC718A9mQdAZjl
PJCva/B+u6ryqYTogS46+OKQPUt/B2HfFcsfYqKZTBsxFvGWTmO68aMtcJT8DIUpgzGLoDPsDTk/
ldcIEVvO5s9xTO4XYsKPFUHWrJ20ABlPkLTWy1Ak6/0Nnac7B5z49uzCZTfdxU4tAo+bDnxApCGN
b6P49/f83/eP7itFy4pCENGyWjmgwFQGRYEWOnOkUrtWHYMJ41IO06yp7mY4ALkFSJJHRphecVh5
Uh5ZsOdICgkzDH70ZrfDfKjsUarAZek1ySh68P/Oacy6/7PcQ/kTjLiAPXFrW0v2Y4tVPQAO08QM
j77l5kPZ0AqnpexheKjXTgIB2e0dY3ZmLaToZS4TPycjTRsO6LFbWVlI0zUWNrsLH0EOrvXo9bbc
LfAlRPoge0OOABmBjeHs/4ZJHZcXMeUTPsI3fViia/eGzwGNSeJMka9D0g/DGRL90enrvu2dIhKf
24oYRWJ5dGAAmOvQ5hI0Q5jVBZFjJAj9tq/+zlpOQ94Ya36tKBbuNRPUmXeCTmrJoCVXh7oh5g7x
Gbs4fQ4maLzelzCDcI2A1G8s9FXahqmyJeB4+VF1RrTYLiyxQv7jcmPJh/3yNRKwDPvw2/rirRJl
sPLNLGOqh0bKagjEj9YPWWN+OerShQKQpdz2du3+sAWOclyh/5XrLxDhg0Wvp7LJHWzJ/xRe3Ntl
ZFMmbWSZC/8XKGUDKaee/nGhFaIqvVugtS2b21NvcFWsYEEWj0BkVZPx053S51fZQ2XmBgjyspik
DzydKikFMBDxYO6G1LR01KHcyoD0FKHF0+OWb9+goQNJ/uqRGfFGClzjJCTnrlhjh3+Ll+ykF0YR
uuFUjmj744VS5cfpTcLIyTGTGyG9H2BWf2l0Ju7fGapMHp/5LBhAskr8k2AT5VljCWvQV8qXdIyU
xHX7/plTYc/a5KCtJ9G1AUgS73pCW3NpKLdXpHIxEfM1t/njnUgHqmPa6urR0mTabzmsgPBzgshX
DprcG5H8FSRNfx94s2xmyAWT8o+wFSTMb6lFq+U94iOd5nwcD3NhfdrJiDCLWJuw8ANgmgre+JV6
UbDMT8mi2cC/xJdhVZJKjSefRzgyBNQSCgEKewyp3Oe8Gu+vS1EAVVPSDLALMhyRj/LNaanB8gKd
76gDUAuD7WOzKT5PO4eafzje393rifctrhKS/XzzVEjTFHPFIssZgduvJ9a+dYWlt723USekjxoT
55kZCUPww4tUl5y2ZyaZVFSACi9Ds4BM+lFJXtFSg0O3wWDz51nnQGbEvRFLX0RW/u3vpBim42+j
5zAShSy6xa5IKC3OsAUwAok7CFHUw0ow0LIsYPG8jfQv/WEkA3x//ERZOkZkF0vU1vpmmD95jnL2
SZxjoti/HefRAj57vZDqtgwQepEu4UQrxiZ6sp7HQCLmAziHBANh/hJM2IPQpizxudjIl0JS6Adl
ZWMIwC7Kpi3p+oEW17rudF6c7lnNljV1MkcRb2rwMoVjJlzq7fq0zQwFRKby6WZYWOCak54TFE2o
bN62v15Nn1kBa7w9+xDibm/5KXTFHudfXg4eR7EZ6iN6CmOkRjVuKKD6NFcixSJ7+CQ9QsDAASDJ
J1KcAh18uJF1UlrZKg0Q82Z4PfQkCfRtp+taXGJL2sfBGLJx/YVZ5je0W3H1d/Kz8VRXVLkU/xRb
Ihing7mervzTgU9X0sYkqIb2ewKYbL3R/4V+wdR5cctAdVclmfY2S0gPyRJXbhNrcTeOch9E3/O2
8CFCaMjKY7c51nATSLCRHroPjZ4/bI45Gqy9qEg21bxui+fi4s1rsmH6Wcc7fQhfGM8o3gNWmSL+
Fljjum9iGPdh1p4PhZhhdZ+Dy6fXjCgHGaLE+0kf9ldfoEV8kXgamgVnYUrnbtPJ2tFR+Uz9ObeT
Kn9FHC8+D42dtsTMO2+gMby5DnxjHtMskyr0nlkmnvUcAExc6mCiS5QrDekNf8BQjkJUeadWC/Ia
5t/BOnTHGIo/tsRoo8BvohEj9rz9/1PdQyZe5YMM1WP1p/OcIyIOQf9bgmTdr/uwrHufhEwT3CuB
c7JhUH3UDgeuOu6wAvMTnoAXPPejSUPTukwZPTkHUQnh+NJQs+SyVb4eD2ZxAFoeONc4Um8282rF
jER0qtGRFg/hUxZwzesxxkM54YzoskfKF1qdLnaR4tO7def1F9ct2Ry+vy0r/GIciquUe9FtuR87
TXMZiWHu3UC4KFzVpcjyS1D3WRhXBNgB3BGVDZ2+gfZ0r+yo0Bx4WvqHjawZg/X/IoNwGeUMfztL
mPE6gxFosoVgyUYKGzK/XcpdnrhMT1AmdRs7kr5sDyUHaf8dGcwdNVSQJERbZQzPp4oteo1xlhD3
QNyd6QrkKNzxw0LKGbJGi+/8bmieXpPrBMFfJg2Qru/UCzaibFMp6BNWuuhtV4L1IW22AqB0eKnh
If2S1Cc3I2St24vUETQCtyI2WCKQA8M+6QhX6qXDUTDij41H1aNQdySrz/rppN4eP4bC9gvRwcdM
Idgvfjo7zjmQFgX6UAWV+cuPw187Wz3Xv0/Qczc5qvxlRA1yJfZqSFKqfJj7kjXa6O63pxHmaIcw
9MCc+F/JwHPUWsBKtJCoxkQmxBknCOwzayaIDdE0n7XoBwwYDx5ommOpJOFrdQHfTZCGs3KB4yFC
QYCrzTZM5arAq2mLLfxvemRAWAkaiTupdaQ4JJBC0YXL65YQ15lF0sKXkOzYXRSqahmlyEA/90Kh
oKuCKyRTHUhGA4Sa1Vdj7hBoSAfnnr4tl7tccDvE6bR6K66IDyHxRS+Fx76Z9pnYLjR1Jo6bwFCi
Kouhd+1GuZW0xEqGyBURVrXZqSJ8QykRR+ABAyIs7j6riYFqQ8JmsT1nAmAaaRmu6Fu4FUIdm0Sb
2mkpqXtVXh4cD7vifqy+m9GgrpE+JJA5ejMeANJSFZPXtz9vU88N0jC0xOAx4mSBSu+D3UXiA1EH
ueZQ+4ra9GSi4omQHtnFhq0pBiGPQ83bML5sNPM/w2WOvo397qmFzTg+jpnw1CIMGFWp7ZsTvxii
U6iN7zG3Bp4P1mmFhIxhVOrt0UtE+HpOz4MpDwVofr3VuSqx1S0XxddKbR2e9KNMMfuX3yLbsP5g
cRw5rhT2Ab/Q1/oiupFz2/nanVxy9GqNCGGnoxadNTAYZShnqO5y0Uo5qoND6zZgW80EtG+BMd8J
KOPlU9sh4H25oBMj7tzj7JpshrvvkwGX9nSiZzdbNGuYuf5+cNEydnkaiqmYqal1hLVCGKsiNonO
ROoh10hKAg4zib2pNmX8qvDze2q42rcJVLm2vqXzbzYQtDJwZ9T2+nuNzMf7OsMgDTD5XHh+fMrx
LLVWJcYspqBdThU5CziRIaSwN7v7vWKd5k/LoE8MGv6mpr/qWXLjuZ85kDd+2K0Mj1ArfLacE8t+
l1gmkmU4tLzoobosZDpGt1mZCYcTBwqxn8kRZOHGqriZYS9tzKrC3uyK8sJuqnyUgRgR8eO26vdM
le6i14MBku3Bsa/O6rUAVQDA4e5Z+QOePlinRAO3b6S9uwqHUDsvgNeAEStPMDw9QaMSPUwy18TI
gL1CDaTXzNjQzNxmAb95dHPtKum6Kr2le6wTVuo+Nh4Ux4bdmc7waBLvcT2P+FgkkPy2nKgtgMzG
CejN7SP0LuK5MehqLMmp/q88lZSIsfevYydjAgyyhYhyZ10kPC+5BxzKA6sJxp1EbVvVinBBQbbn
aKmvM/r+gXHK03PQXU7nBxdtXj+1U6BKOX2X610H+Ez9x+ROqcKlYG/rNYP1fdW3CzYLRh9iW7cU
e3IAlw4ntWENBpHC6UwJiQYHATReGgkQ3WMJPQuLE+SD36Woaobibl8AqRall+iL2G1i4vDIEU0e
OHDnAzaumUYu2DMkWI4Wm7fO9ICeVI9nBJZUAxOwGnjWGpBLjS/HFBI/0knLMUIw3yostNyOLqR0
PorJJw1uHWgFOrhSkL9TxuFaH8UE3WlipCEW274eSb6ekK62WUTVB+9BkZizEXS/eE/YFyHFAUJx
yxx1m8iF+mgKV0KJSQHDZURTPAcAyGQjaJajNO5Hxhzq0fRheXyxzCneBEP13v0Ro5kP5l+kUel7
+XIDMcppp5P1+yrNZEyeHdifNZrEyDhNWJx4qd9j2lkXvycUAPtkCm/U68FneF9VSrVnWO/7+MND
1ontCZIJDwLoZ+BhqvZaCmQ13xdgY4eTTXFMzw1TzDEwWNNLnWjm4Ev79y1kwV9YZs5tH9jg9SmA
eCsvBX5K9Od4/fTHNjpM49FR31IJMn+jW/y3wz+T9FSJemCVvpp6sEfxoyHVVLyC+yyeq+FAO9Vh
QHd6tCesnVg+olU6X5nmVOahgN3495IgKp/sLFVLh4z/2qigDz1EBA08gKGbzsMyVE4s+/CbGC6b
bOQBcAkNl9h324M4AFNfngorDn0DlZTVqwLXOXoS5liP2YAI2IoRfxOk5e5sT/g/hjsx/6CY/lnN
Q3F0fNU/gu+ph91ogM8bRegBV699J/nLiweeFZkDa9jqFYq4lz3UJYaEwHB2f9L9Sq63JaV/5ngY
L3lUIBxNpUarHogUc+VBoW+QDphGMLy6tOPhp0Ev9DQZnrCCSib2/TlcbSLQ6ICc/a+KpxsEWO4M
OFZj8O9/URuuwGAh6sFnRNaa02+EONYA6lIoJsjO0wR2Wlr4o+OL+0NgTVfdctk2rhPGue3ObK/8
11CQcOJPf4DUT/YwK5RYOMUscCZ9WJYgrS0cmzlAuozFIdR5IQAJokwKJ/YlVGlrfV+RaM7OVXR/
x5hahC0aQssJMjJp+Ckbd4A6iE8JztyuAVnf3RI8uLVNTpHfuuvyA33nU9mXzQKAs8t3TwCryCXF
8akfS3ZVmNXIr1DeDtQpJKf6DQg6Ss9O9y9k6/ka3Vqb3vqxlBPYehz8NSNW7qYoanipA/E/hFhA
IgxisVyBap2uo4s8+W5YNWtsCohPkJHaZ1XhrKdJAKoB43KxrP7ZAy+uNr19sqBSjtjchkYflXEF
NQfvahk8MYQpdHXBw/6t0uTFJiCD+x2IA/+QbGAecCESR6kLH0ivvuE9Sg4NSDgEBDyTqG5i5tDR
/hIwfjk2tJbW9ELzzmBKYrEq3K8NwlY9nHR7gwpRGKaO5pj2QyIxRTeijuNk63OsB+NDk7zG8k5+
evOQsPYUJ36DsVkNIPSwzJGfNxgXmyhHNQMWwti9hYxrBuBQqKOUJTL8QbhQb4l4zk5y2Ghp8F35
9gIcfHupMwDo4EjO3GrBBwkVqQSrjEUdzqAiq+UA2V2VFMDIdwD4deBYoV/UBUUQamRvZ9lLl8zh
EvuaDOw2O7oxMgG42SwsAAClL/EwbgfDKu6ZE5IuM4Oqqn7t7cRzv4rzFlMOeb8n/fo/Vk/k13BJ
LH7OpXoyvOXBz4J7jp4QCSV9gvAhbBdVCzXKd5y42KCMxwa9qUWHjRtF0cwZG1Pl+zyS6AkLkzft
4hUETSnaUh/ThIqIP+EbJ7vVd6S4fr17E4sasw+DbFcncfJamRtgGnYNnAHROBRtVqUKrWJ0S2Ve
9O2RBDFTRWofO8qdDSlMoaeyJRAfGXLl4JCI4z6GmMki+JTuApYVhl3ov9lul9aH3diNbDX5shaU
rencPkPQGfJIVVVz7KI+SpJoMc5KLQoQPglndGSXErbKqpShyE2eyznzAvwvLiueg7qSZoVWxIqL
OLjwSXcOkoOjsGTqi4AqaTvET5qmyWh8wF2wBrAiVAt/OaKx5NMwUBQEPJat5w32Px59YzNG8W5L
G324fOE6LR/1NQr58xsNot2HMft8gYU8hJVGB19K7TVPiVdGFcLKyxzaIO59Fy9su7rQtOMCtwIl
vyYM0vY2ZEbD0ssTqfSCZiiFnvJ1ROlAnESuM1J5aFkTnav220GRkvWSkhhMvN3pLAL71Cl/tlTH
dMNh25KRt+dJijpOwBOTHi2pp22VxvHZ5XveP5UU8rCAjEyw5BmUx2CnvjFn9WT4NVyhTIV5Db30
TQFlZVHcu5TEfIjUXSBZH3v9GSAUYMWL+XVLOlaNdmKT22ahGaQUw94qXwoBm9akCNREkvQ5fV1d
9EJBZ2LZCLPdT5GUK1ULsgRtX1V6BTa/wQejHcWGhdoScrCRu9oyq/aFul2d6Kw6/qmINC8PB4iE
rknnBGJsmi0VPfkDN+GpYaSpEGRlDDuBikZKIYZNffLKW5tF6dxkBDX0w+60eYT7PSVPiT/6unuP
aPAjbd2euFrK+Y3sTDHUZNdG1Hc6nIFcx7FR4tM4i4fndwGq7pENbQWRra01LaebyFElx0+4j3dy
/qGpa7O+ZhWfzroaSym5+GZ2AAm5ZU44V6TMcVoTYXL+IJBlHu0v+D7jykSMdzr90uD2QZNIJ7aW
3bc2JGgEcNl5fkm6ceGTR9CIvnBLAiRcFAeT1urTMT1a05w9JJjhi48sPiUKuIs9DL1exDF6yW+g
SX5DrkpInIsGgr8iKAVCi0c1327I2TlnTejsV3wdmcFQKfMbassE0OuiTQ599eQb5Fspd38xE+vw
6vzFp2Ks75uIeQaF+xAmoVeheRA9rdOlbeKu9fwgeawCwSDxjWBLW+Vi3BKrK2itk5myUGFriqXV
HfDnjAc+QWILP9Ew4rPpvTgX8kZfKjMvF6dMdfENyHTETj4BLoPfdND/XPja571fUo2xFiv4m/nc
ADdUMzv4u3MYorWCQVza+rxKC1nXRQbnziEpsHP2oDa0N0aNJtSfmoEQQqfDBIsGzsa4AS7HzSa2
NHgcv8TTI4fxCL19OOCak8c9SyyQAv57WkuW9PnpxiYUqL3xpON2s5PQl+/gd5lMtkIeOJTQf0L4
YPjEWwv6QmGigvqSbnzvHHPGoVCBCqQ+0mAv9BPSCfO9z1o53yqS1rPEUXTNDuP/xdYJLHqeRyw7
HKsVZ90paAtPA9fTJH5i1cPKfcOggYopfRum73WsEBp4PQXcqL8YmDB/H3w1WE+TEuYCrzAIYw8V
sgctECK3CryMoALXEMwuf2qzuth9xBIhax9zxHbHqn9EJHSLLXo/Povj8OSjEuzOSlLT8UJ2nQvS
f7IFBhERvd3I32QynVkMK/uX2P8lhW6Wy7wpXHGWZMe1qHYRJBfhtp4oSWt57IOaAmv6EZtyqeEZ
7DI/JDVx2rt+ML2SPcxMQtSSNHl8U9/HYBTS//9mojlxuO/FF8nXbh3CCukxlZ/lK97gOta5wRAG
bKfHIlEjU5m7hDTus/py25ci9WNuTXQeNpG+7KaCdmOwo0LQllIG5ETBBJlv1si1spm5yrYzuS9m
dkuTrBELRnVFnYI+YcvgqRc3dHJyuAcq92C8IzPY1EktcfKXcoIyQ9PzQik5q5c85L/dOC99qeF0
KQn9VBzK9mPkjZU1fGKq7fayAtNk83H/63Hf9F0j3hGMsXfbGONVU8AnTAt2H8avUMUNqDb51nQD
OpyGEMisbyq3Rwk/JwK9TqO1+WhKrPI4aYUidbh+5yOL9xdWJfQNp806z5R417zR1r0pioh0EgZn
yKziu1Ei8sLGINB42wlLEVPE3WZ1ar57bcGyv1p6/L7z4eEVzXcaW6Ab5UsJvW/YeOHVv1seFODP
DNxI9n5BLEbuL56IQckq2famPCEDJl9tMqG5aVNIRvjqK4DcJzSFu6s3y/PkhMB0lNEzXLWwdQaj
T+7C2KvJLcKHtf+yGSkCQe+LZLp/oQ9Y3rD7W1C6PNkYrjtuLKZgDPUEaID7T99GdeN8u5eq8NCM
Cquat2kNCmaUZJROR0uY0xNj5hLCukcVx1atXxusJjVi4mx9BSuHfpUQnOFON7663YcdP+bqqTLS
FFoROQVu/C6XLtSx4c3cyVIjb7syg2VyOhQ0N07spU4L3ipobBPCCgCmMQYdllyVN+NSUXvisnGr
/SmhekuW+8YdPMftOcAM+RGTDtbgpDN3YngxGE4DCbEGeSNpB7OxxaAjrTa7/ksNmMa9Upq/LuPU
565EQZ+JzeKPAd2udqp87Ryf3JTWdH0LGZgnEiCxHlmL776NCzaPNHhEv8bfGtI9nWcWn05UQ4Gg
VnGry9qVqfTiYrkN8mKR2CJFeKezSyMVH5+B1VHgkRKYCCAYiYaRB+aOgdl65hWw6/h+p73TYmDd
T4Pe5bQYQRS7n9Ch+vGz5uz/95K5QzbSY40+owF7LUHXfLL66C6WmISgCN13QzBu4Rc6dgfe7XjT
HIsHjK76dg3dWbcdZLMLPu+UxThX5fDE02xTjGI05eh6qyi/gUpicPYgoQqC3etUqphz09fD+6K+
QK/6MKMD/Pr5kpjrANMrfqz0Gh4jWCnda6vwFjtOnsql2usiRhQJR0mpnMFOB+6HSBsnX37I6Y3o
HfMl2s4R8BhXsQZPuAlRNvVdsc2WMlB2hnmWkJwm4ZUV8VSy+Zz5la0d820oUt3uMquJSI/g6XKZ
0yflvLUF1pejiaDvt2jl5iq4wW0pZUiWKGhbk1vhAuv03L4QcmH24mrXIWEDcykURn8eTkN1/BhJ
zjXrN6ey/jT/TzP4giRc6//N54mBMt5L9bwJLmqliLX8fr9V+f/iIq3kGLEQk/UJDh4VogsbKi2v
Q/e+SbbQLYZEnSFdBgUAqQ50ycBp1VKHW/X9EWJajnL0sfeDhlV4WOdk+ehnXNRDt5o6+2GFrFe7
ds+OeTD361Ruz+oetQ26bnUZkZ3HYsAQy7/QnNyTyGisvrfVvPZXmxoSisffp61pI0rlUp7VX4UQ
/5o5EFmDhkY5i8On+fvixlMq8kuQlx4Ka3s275JUg7yjPu++O5RZr2KIpXLdWo8X9j3bolbSGK8f
ZxqNz8a482fYaX8Js41De+JD+ULC47wjnkvoJN7dymtcS94BDwUoKbsR1pXg0p7JlRjCdxv7bgTS
QFAPfXJCHuTA87OF4wQibrWZjxT/CXxLAz5NHdLEyrE9OvQ2qi+66XjEXdkRNeF7FPmIv12ErTTD
iHR91e51/wV99uMTTa5ILFUZX32SqHMsbVhIuq9refJaOGEAB01Y8DD0U28hIp5DMrYUV3gLHEOB
2EyX/qmoc/tfixijoMKprL/ffyRSFymsk/y2Vi6S8yCDUrMAtkPkiFGb5jLrF7EmAu2ok5DF2KR9
ZM9NXJmxlOroAKWsiqwW2ngXBh+6QBa2bQart40yUJmyTK1IgTvEEPYgiEENY8ncfNbu4BdGl5lH
cWl8tAolkIc4lLutjy7JObiUKQC9v8xovcx+XVRZFhX6InzE40haKF9gmvQZib7zvO4kXIJGH+cU
hdVsLZXGrtufSSw71GWwOgrMyhpACt7vHFVAlHKGUvs1Kw9kebGrN8e4z9IJiWE20KU6wTnysTFD
8cMvVVIgBGHQTpYbtcE7mxhfJayeiLornXp7Xzrz1AcvJJJbrLzOV53hC3SeyOLnum/HrPnVmYMe
FBnaAwOu+E+e7t95LJ1v05JfN9Eg9ihtVCrtd5kSNQ2WwU0lQQKq3BsMLgnCIDYuuTonYQAMpQsG
/t13RHyXOelP/+zkE+9bo8blnUMK0axOt51KGviMCMjzqqFeaPn+xyCNJDYvNuleX/K1+14oqqty
w3PgjgJNQ3JdB95b96HW5qRACHUS0FzrOuhAS5M0RkpgeeVx1ERmx7ylQL4YB9z3s4y1jAu30y4V
wGOKJUGfRn51Jkm9qPbM7H6QmsEkBnhUGmkIEQoo807iGRucTkN1wajJdxRqypekaXWPZ7k7fvwq
MqiN5Shj7jLe266DZEf/9cCNQ1ZPmqj2y5oxNsegtdTCFaWqVw7SzWbQqihhMw2l0yt5X3ZTtmSS
EiNFQfv77yz2H9XCx2r/4+nUPEG2KeyCK3PxcCPbMDA9Q31hF6fOqlQmkBLCAW/eSltJIAP44WxU
MpFEittugD39o9ln2Bh7wp5DsNWaJ+tuFaxtk4OeWQrBtQQcHa1wflkJAKTX5DcacKOyBVgMk+pI
oekzojMySnLxxinW3lMynXGBxKSrEb5m7PbDIJ5qwYU4DbdjbSF3R2+Ri6b4vn63CpMK0/7hZDsh
d4VMgwa35LQSX4bh4AanWamXSyq0h1LekHKL4SRxpA3Il+0WgQ1Rff5yo6bDk2HCdH5jR8gmMoLy
mhRE5Sd5FoMPDn9lxyAjaNV5f2s1OlXFnPgoQDTx47ELoTP1i8sbhxqa7tlnx+6NJAtAQj7Lei61
7iA4LnnpKDgoeLisoq6iFGlc8rBeuofffxoCrM1ONSQMLEvUaaVK3mC6ovIBF8Df5LN06zvlpia3
rzvUu7fTxd8k2maOJcqLk4UreGAZ9yxrQJON1gu+E9GwHJh3W7RReiz30fjtbNnpyWyaxI8pzQ0l
cqpfS/3f/pXmLuGLOQBMvSZZ3Vg4x86HuW1IaTX2k+UA3itwtXeJJVHEqM4XvKbatms2trMi4JWK
1CUg4sv4HuyHQlQgwbRcNc3GhfOws8oUHWpV2xaXnOmE/rx02qu4dbksOQbfp4YxX7ES+NWmYOoR
Dlrnar9jAAMzzwnrdwJhjhqM3y7AUMi+U3gp0BwdBfnsR2LdtnB0AeFrmjZSfn1rYF7TIvGBQMD+
AGpGdX4x5Gi9wwXp8C+ZGg4SYcOwQZoEjUcWuTRTxXChcnpoeZ65TGAdt4e1mbKo1zgtKxaMF9lH
aySaH8pjR8ROOz3EtzYBSnG+45rU0TNJR5w6ikF3usnXL1ct52Xf2+QdpVFqxxwGKHYnNhFI/og7
ife0fHz49qvL7Fmz7xuYyW063l4+towF3JvbR7RjyK69+skaCC7jlfNolK8jcGt0J/Fy8QRSjSkz
0XZgLDrPZvBZbkbLWrrjRmuFtvwQJ1ZBaFPsFi+cufoWTc3lvsPcQ4WFX53EK5ffNQNiZXpglzvt
Tni+8re4P7kFH65bftVPDfDjgcN+Kd9w9NIa4UzorQot1tO0gPIAA21kiZCR9uqxElbGCA60BiHc
Ii/eQvC5PM6NiJeXzFeYfsQrhsi+ySxuVXXDbTp5qHzoKdCPNsANyun+Bjz3PMpqG2sRFflutk/Z
qMhhmg7Fh2VGrIIWdDVE/3y1RcTlKxzRw0ouyebELtkPXYqKDjjc8a4TKv5y7yFAaePP5jjFVFyy
LjyhWs23ygaZyPGAUQNTGjCRH7XtUgYJswC+NQQn/8YOZ8LsjADPb4AB3buay2IvVYhdv/Q0KXQC
XAsOleqKbH6u+h2a7HP4KgzSXcZaDKxDDH8n5jHuVZTZrS64A3XVrAZa5GF6MaJZMrv3sAu1Va5M
Jqx1sZ1TI0cWfPWHo4I7a3dSEycbuP1WUOikt6uGzghC8xc7HBB/tPYA6u2aUuagjKw27wC6zuAI
oisyKEKUzHQLLQl/4hpJCO844K43orddmWNDhMZCqCrIkFHEqpN8kNTW9bhMkL0B9ZOlzjajfeiM
7buGJhSUBM8mDKFg+U4cFwmvLngqdC9rpMFtyyQ0G8W4OWs5/vE9fPTuRStBprU+drSJBGd2Iywk
YqFsi21yqPMrdKAd84HDIqDUfypdZnG44Vh0QXqkfSNypP9Vh1HRcbLiQf7/Ik1/D4zji9GQyYWY
uOXRAa48pSCHbqTnWwjogefzfIfg4kx0CQ9gOEh0Vn1SwI2l4d9PKlq54M+b3LFw2Iu5gWocbyec
FPB3LXR9G6fimVcEe6uIGjwjTK+DgAI96DuIPrB1aPMixfj+7f33DNLEJvGRpwryc3OwjS70siB+
Q74EvXPB7v1egmFoKMJb+4xzfEEOJ7NW4OjYcNtfa9ZyAE7YRfUbJZjJ2qGlPYxImxxGSks+ZR1y
QkxVtuK2xqIxH7HXzUA4hyiL2c/COqR3N7kjxq0XhwHDPUIyGK7JMY7mCtBtLkPGVICdO79Owk7I
2wwwr9eElPx1ZiBJhWGwAygJmrfpoWRU8yezGJqW+s4jZQ7j5vnDcDaS6+ENbSsHKnKBJ+hTNNTk
9xRjgA5dxOFCcGcT/InN212zXRX9FOADUTkq5cJBDhcS/2syKB8CyGO2vAo8TeXdDBDgKRkHP4tN
nJaq6nkEi3Zfr2uGCqbELF9UauecSwgeRAkd2q3TVioWPJ3zIdWqgDyvvin5iwE0rLoaIbGIhwa5
NQEP8+LqZnTDmqf4538lqnBWOpaQWvFw2vPrbNcXBpiZOVGjA+j92G0TqsEZcERAX1M0FhDaSOti
4loBgmnJoOypWofuBC+gliGpNVutKgGh54TGEY337l92/b4dzLhOg2dlU/xoQe2YKOtip7jtQSzm
9k96MZvRpnqGrtni2y7tISIQXxWifBiz79TuSRbP4uqaJALP0BXk64fMwOHoeEYAUlohTonAAZwC
eyV4lO4BnX+nk8NThtQbrDyqZQXF+eMhtO0pebot2YBA6khpO2Qr0Lsl+RIVZ+CqMlRYJHD7HJFq
gf9mlbZU7ZaUbe86fP8exYSf6VhEPtnpNeJqmoUe9raA4FmNQqMkcs5k0wpPrtqI+pxvO5Ob6fAV
HLejH2PXJJG93F03bW/9C3kxVK1Q6ykgwltngMA3Q3zh6XU54TTxcuQ3DXBtkZxAIunqZNIoSuYM
I8LF8Zj7dxOeuQlR9Zp9Q6XoatVjFN+PWPYg30KFiuwfEPsja+UyRYTbsnErVZpIGtePYU/9lo6Z
0/SshEe/jCnIMd4Oo1j1ACkgHGWMjYAKYJ8fxjs7SD70GiKLmXzl1GcSr3IZupdz5dF6iXYb2iq/
sseYWFU41PRQUgCpzUE064iHGDFa8w5djikCetHJYaKxIaI+SLQIAqQfvEfbOpE8DFqUlB3POATc
ihgn4MmxlRwGC3VB8gZDE79TnBEGPRphygMuulf2TxGT+x0XIAYpWNNPnd3bLz8Qv7C9o8gbdHMJ
pFojaS3ZquYdWlmlWp9U6osKCGysOD7Md3nTDNEiwdTqLMt95EHtQwdKCcLDQqTfX272pQYtUeAs
NpJDpDjdMqyPOrlKaTn85folGOn3oiUigxMccKwvIc43MnbYoKIvBO1V1MWQGuTmDvsaGSqV03Ev
DAWiEV1+MsO7X8SXQ6EDPW1DQZ9ZIkWQSZrdhd+lPLhLThCaRKPKYR9UTHUvQcGdAqDkjD6xEBLL
zqN3zmXewYZzUjpOPYMNYyU7pwFSF2NxuZVhsyi4FhFP5ypNmReCCc205IINKDh0fmIjHEoAxrVi
5yGtLlKUckbrd4XLa4o68iJ3FS/qx+WEYOpM6JS02cg8CUCYAqEsdEOC3XGkdupe5m25o29tEOVN
GsRtM/lqYTjh6um9Qrv2Wuv7F6BmGKzxQ8tOUqN2vUvLh9cy0cFo7L+Bgxgh5KleWMkhs8X5wkMl
uX81gJDlsK6Us2bBbfDBNNvVA+O7FiOu9OdXdvKz3smCokaohfYHftoVQJtbH02y0L+7f6X29eNC
b6e1/Ljnrx/gHLnc3exGz4BMm+L6R20HmENREjE1c8jHqpJdl3OIdOJi3JlFlIcLjicvkFmNCD/Y
9GIHCwU5LeLU2hL+Nq4f8Lac8wfsJjr6tB1BVJQs9SUjFj9sd2cVmXwnpSSBVRveV/Tc6oNTXL1e
YaKXd3nU8VpMeHAags03fcGu2AQD3Hc5mm4E48pNSci+G5ApzdorNIlIOXdyWSTcHsVoffmj0oyd
+rkh969PGl5N1wswdoi11SqOFAp/ktV26v2haQwalcIpyOtkifmmPL8R5FfP1eaRTGx3EA3xTAjb
ATV9Gcjk6NNjJJpoAg31Emr0LWV3WaTuStHaw3qsV5j4qq93ysBvRe/U8xtMof78Gi+ZpVfrC9nI
7dOxpHRtnF8N0q2w43NpYif+Y67P0ulLpSbtQs8Nsi5jTMBC9sKxn/UP3k9tgDjW8fEENuSC+gDy
kXS81Jw+FSR7fbcOoc7tke0n2WBJ2kDU3o9ToFJDRVReyNKcMLNNrsLLO4LuNTlgciSvkg/EVLWm
amNWaGZgwk7aIg9mvXWgOZc2Wt5lB9NswMQSbUz7v04OQMA2+eglH9fLP07P1K6YKxovNP3yjlbJ
WCjlwmulFo+Qf6krAZsf7lrQWJV3xYlxD1d7l30B901U78wuB6Bp9kssPwthnHlt8WlH4hQyGSpA
KFq4QozLuMJALr364NBjGHECbMIrmCckw1hwzUUUO5SlpnusXPuci2c/vm28NNiJFb7GU3662nVa
Fbc9BVp9tea1R+wRuNeErHf0wYJmE80f+KBY8EZNcxKAVA3A2SxSMuXg/pfhfSlEi6gOYpyVgaa2
LWTmQpqBADt6puN7YGf8a8WbbG7+Uu6FLKaCZQtuqiE03dW0XlzLhKgnVz+As/brp/54NbE0OKKJ
2ncKcBVXxHk9AadvPwe3m3CwIA4NTqHMTORpMszFTaxhOSp3DLt04CYZSVesly5wNyTX3G6wtEfo
NpmPFrHrmSFTG/NcOGBK3plsKdAsJzMLXjwqAqkaSNO8KJuoyj4KISc+Q+XLBaWKl1D3R3JXVc86
i3DHEx9Fq+r5opVLq+LLSicTqFthO+5ppIIMCCH21RcdRomviBAJxoGngf3+4wP8Aj231dbuFvbI
i5sgI8etwhA3XXWpXxgT2O4iHvQlAqhJWZtwplePpKBa9Q14mNq1A4uLmWMW1nJqdgY9MjGbTPwR
Y6qpT0FoIAokARE9LnpUx9MbFd5Jd0hKi67TlbV6EcnpIVTfAhVZf9rn6kPs/bhzx0wAynkw0A1x
PTysME4aLMW3gsYkzUXtNz4+4BSgMnAloKwt5kdUZQCrO0rGb8xKiRpLmwmBjL7PN5CoRhISNzVg
cA7+WdDYXNrpdi65didpps3+c1BbTgKHWaF2PCzvXCM4F7oRIZriRpbvmAa7il/x30bGjh0mvwjv
TZ1VKWjkOQpB/zIEYDHjXNlq6IaHPJKPMVFEFWRf49in3u5gGsaE6GEz5Xa1HW5jhtmy0dLRacrd
myZh3Tui0G2XpmLOzFGWfn2H2tvD6QC/FeMjF0uHZv0WYmQP1Z77bMCYVfbhto+QBEEeV8CwDzu9
llZisia+XbYqxx2HTB0TCV34UUHUWyAdQgTpn9llpgQ19lGLBEUvwYWXhNBe5ShZdXGAI3W5oVbN
UJQxTfiECHpFI5a6VdPFAwCzhC190RQ0LM8cZMH73BZUvy1N2RWUXP2LIMudWuJqhn3GA08A76DI
F2WBBdwWS3h3VY2BKWPIYGeZvnMRtyUyyL46zk0Hpc5Th6C9wwp4S7I+0fBgyAkb4EZLvEb8idNB
6khcoLoXIYnUjQsiDccAIGmx409f8xNkLzHet48gXs1LjmdND8Gx7FjQM2DgJFV8fX8yzSXU4Tyn
uVH2NUsCH7YXTIx0wvQdXZ3wMrz/LCd1oDKP6MfhH0bTbHcvH93sLV3ggjOPS0Q7tX3CAItg869J
ABCXDdORo5KgLus5vm9oSmnz6dGHbsp6sTUHkQB3QTVlg9C0g5X1iRz9uSeKvrqRIPpvhkQ7zTB4
41ac6whu52/gZmMJ5DxO9bVUSlZX0q/9mV+ptLvC5PkuvSEDnReUrhtA2aJgJ6IqQxSNy0h3q/dP
4W+9jyCGOQ9sNctxdIUu/IO4GP7kqTwa7sXAQEEWPRwvRyd4SzL28DKmHHeBnN/dsYh4xsV7Yk/t
WH9hgBlxAo1Aem77D6tglBTyC/V5RW4ojwiv60hlzGbXetkaE+ZRISio3R+/pEHacf6aRKYgK2+A
T0YFzuURbJViqBj3Cg2TH+8w6igfRbm96KkUq7g2nxWlCEMLcHRUxuiw3NIw9kyXlfH1zajeZLTq
HT6PxmW3r1NaY/e1Rr++u7+HKxL7pvU6Ddst1hRosObqGP6cDXruf3ITrlTYDjAf4umch/iItmGc
ehhSJV5qQNg6o8hNZHMjQzUou9ukAyXHSdv2wJkn4z7IUbO8XESRYYuyB6i3in1jrRmlLE3AwO+r
B5t/HQgLzRGHcV05LrRB5/+Qlf+T230bdbR7Q1154a/ZvMqIywa57iFigMCF7q2qIvTme0LEyNao
cRpc3zj0/gTE37JjUXH13q7VLT9QiUOytZmGStWhN0jb92jQQo0N9Vz4mWK5wjegMSB5ZFAJat+y
CCrdOBMT/SZ0fY6bJOu5Xc9bCVk3LOu3i5xhbd7l/xQthyMdYqTg7R39iXbbPbk8PSk3KBwtPs9j
T0FEOJ03vge/AJio41vonMcmajJY7TfXmofGaRgUnWWwGEsh6J0CYPoaD0t7k33dzoBSByhmGZri
5iAXDLNc1oL+BxukhksbwtUoUTil9DGmreLj+49iC0mn7LFcgm1dRZIn2vkUvx0NN0xaB6omRFV9
2fuXnSUHe185dhL0KqCx6CF+vlVZq6ZZxT7xfPQLoLWI89Kb/TM37G6PVepe6b4xcJEtQOBJT8xB
FM+VJJg3sAE5B5+lrXpdi4DMqLpqlSkXA50Lxdrusm/blKFTcM4lSdfFiARm1pO5Qs+6zBI8bqLc
r1JYmCNOA8U6r9w9PgXAvQfTw0BHmc/G5B8Xjrt1yJ11EW+buMlH8aRRzjK1kS9vPaQ5u6iXpFPD
nKDEEAGd4l/0yoUuUGLSxJscYyODJVTpK0tqtNI7YD0YAf3pVhlqeOrVUy4LN9WD/ChoZaD5984v
cGOKoiAZfE4qGMBCwfk6PMuxSJ6LQBNQMMCdDfao8WM646hGA/MB9+JJhX4B/GDN4LQ3Ux1XEcv7
CCYg2/yFrcz7Vsb3td2JsfUET9mlqNoqDqMidATFHIH+zc5wvYwChudvTx/S79cwy0x8xnxl15hG
68lWVcUzeAldlPc4GQRHfPN6UMEGICLeYfQc7YXcryEWJnem7r7tod+h433Mvp0nN67W2S3VP98H
aSzZUzKi+nTyZYRQIqSqo7cLz48CgBhowwrluNZOd1QmJ7m47RicG785LZxWKuxJgyhmdARgKfFB
xNeesFdJ2niPsL5YMtaIqtwmJgDG1SOc2W06g9fnspf1+r58Gxho5Oer7Ug243KWEHeGG8eKCCoR
O9hBA6Zu9hDcZCj7cNVi8k6IR5qoXy85gQgkDxYgy8gcVCL6cju0974sFseRuV5CD7N1hR1q8/rM
0U4WotSedULRnL83X+G+MaHS4ubQvmXsSEmpXBY8ITbrXF0qVl9UN+Fs5hmEHqqaHjEyxVDawL8f
Z2vS7IosW0L6e/0OL6ZQ6BzS/MiC/XgS0XE1mq37I8YktjryGcAlaLV3cBzEnNXWaBTcvXnEtiUu
U08hc2KfC0lC2qPjaKrY+tOEYCa3sBaN7I9op2JuP421I/zw8HoQFZ0FbF9E/9Tz/6zJk603AJoP
vG8BfIYu/GN0Fm5v2LENMs3h28SIt7bflQWcmMLjOCfgRyQ+1h/zGJjWZZ4evCuGRS7RD8uo2VT0
TM/PPPz6wG3gpIuwxLqk4/S5R9TU5UGqcxuJYolRRey2R/L8cCtrrQsT19svXNPA9TfwLRYPzg1M
EK3Kvdm6JKBqEXSqi/rA36eTF/kGot4hSAGq9RL0/cu+1iRgR5mINwVky7Q2rlvQA2OBxeUIyzbi
PsS8YYmquz39JvDwlzjFayp0Wi/1k5ylZgMhiIktHBnedFortFDQDq31744ajtTZ+YYKTLdGMKuq
sT4usoVMpjJY+zecb1BVR9NWr9h6xEbnkpN6dO1iirI2nAbQDbzHf1tA1iLcZbx2sQ6tuV8Ctsx1
uxQ0ar1VhIqNiFQ/j5U1gaVeHuOkRWiR3aq2Zp45m6OX1GZB3+13dcW9p5wKbnvRKU0M5xztNuMZ
ou1nn9IgsKJVNH/rtVWammI9zBLsf+F3BS3HAelzPgUOCuuek2N5j1ODPx4wx6mNMYa7LftpCgD+
HFNwbEsDBG9kWj7eZa/ExR8su0I/T/cS+wD42pkG0jnsIUumFm9yzHl3TLIyHENOqaCmPcTYRROm
nkIV41txmDde5LGyr+WRUznlLKlSYnFRv/mhUuMQmsRu9HwSMEz+Umk4P7Qv8+ucS83caSqx
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
