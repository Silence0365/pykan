// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:23:57 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in1_out3 -prefix
//               layer0_coeff_in1_out3_ layer0_coeff_in1_out3_sim_netlist.v
// Design      : layer0_coeff_in1_out3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in1_out3
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
  (* C_INIT_FILE = "layer0_coeff_in1_out3.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out3.mif" *) 
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
  layer0_coeff_in1_out3_blk_mem_gen_v8_4_7 U0
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
+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
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
