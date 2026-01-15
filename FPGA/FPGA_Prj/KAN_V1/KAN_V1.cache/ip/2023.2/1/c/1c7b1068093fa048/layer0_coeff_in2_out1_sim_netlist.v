// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:26:06 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in2_out1_sim_netlist.v
// Design      : layer0_coeff_in2_out1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_INIT_FILE = "layer0_coeff_in2_out1.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out1.mif" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19088)
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
