// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jan 10 04:16:44 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in0_out0 -prefix
//               layer0_coeff_in0_out0_ layer0_coeff_in0_out0_sim_netlist.v
// Design      : layer0_coeff_in0_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in0_out0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in0_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "100" *) 
  (* C_READ_DEPTH_B = "100" *) 
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
  (* C_WRITE_DEPTH_A = "100" *) 
  (* C_WRITE_DEPTH_B = "100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  layer0_coeff_in0_out0_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
8+E+4w==
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
