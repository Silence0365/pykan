// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:26:45 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in2_out2 -prefix
//               layer0_coeff_in2_out2_ layer0_coeff_in2_out2_sim_netlist.v
// Design      : layer0_coeff_in2_out2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in2_out2
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
  (* C_INIT_FILE = "layer0_coeff_in2_out2.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out2.mif" *) 
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
  layer0_coeff_in2_out2_blk_mem_gen_v8_4_7 U0
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
