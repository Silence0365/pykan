// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan  7 22:29:38 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Layer0_coeff_sim_netlist.v
// Design      : Layer0_coeff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Layer0_coeff,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
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
  (* C_INIT_FILE = "Layer0_coeff.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
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
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27424)
`pragma protect data_block
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
nOrUvQKJmw==
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
