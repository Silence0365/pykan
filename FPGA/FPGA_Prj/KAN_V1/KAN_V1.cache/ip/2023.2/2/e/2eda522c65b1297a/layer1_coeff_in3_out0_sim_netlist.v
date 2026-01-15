// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:30:48 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer1_coeff_in3_out0_sim_netlist.v
// Design      : layer1_coeff_in3_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in3_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer1_coeff_in3_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in3_out0.mif" *) 
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
