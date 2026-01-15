// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jan 10 04:19:03 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in1_out1_sim_netlist.v
// Design      : layer0_coeff_in1_out1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in1_out1.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out1.mif" *) 
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
