// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:27:25 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in2_out3 -prefix
//               layer0_coeff_in2_out3_ layer0_coeff_in2_out3_sim_netlist.v
// Design      : layer0_coeff_in2_out3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in2_out3
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
  (* C_INIT_FILE = "layer0_coeff_in2_out3.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out3.mif" *) 
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
  layer0_coeff_in2_out3_blk_mem_gen_v8_4_7 U0
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
