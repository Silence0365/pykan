// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:20:30 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top layer0_coeff_in0_out3 -prefix
//               layer0_coeff_in0_out3_ layer0_coeff_in0_out3_sim_netlist.v
// Design      : layer0_coeff_in0_out3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module layer0_coeff_in0_out3
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
  (* C_INIT_FILE = "layer0_coeff_in0_out3.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out3.mif" *) 
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
  layer0_coeff_in0_out3_blk_mem_gen_v8_4_7 U0
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
