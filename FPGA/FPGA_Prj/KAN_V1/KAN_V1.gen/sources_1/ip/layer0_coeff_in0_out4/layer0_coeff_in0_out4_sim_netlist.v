// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:21:07 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in0_out4 -prefix
//               layer0_coeff_in0_out4_ layer0_coeff_in0_out4_sim_netlist.v
// Design      : layer0_coeff_in0_out4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out4,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in0_out4
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
  (* C_INIT_FILE = "layer0_coeff_in0_out4.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out4.mif" *) 
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
  layer0_coeff_in0_out4_blk_mem_gen_v8_4_7 U0
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
