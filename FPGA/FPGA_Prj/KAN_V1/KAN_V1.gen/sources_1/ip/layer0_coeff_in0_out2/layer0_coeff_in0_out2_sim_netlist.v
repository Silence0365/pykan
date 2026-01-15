// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:19:58 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in0_out2 -prefix
//               layer0_coeff_in0_out2_ layer0_coeff_in0_out2_sim_netlist.v
// Design      : layer0_coeff_in0_out2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in0_out2
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
  (* C_INIT_FILE = "layer0_coeff_in0_out2.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out2.mif" *) 
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
  layer0_coeff_in0_out2_blk_mem_gen_v8_4_7 U0
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
