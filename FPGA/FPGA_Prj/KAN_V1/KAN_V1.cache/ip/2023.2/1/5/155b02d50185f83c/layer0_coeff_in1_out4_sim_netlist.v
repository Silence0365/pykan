// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:24:51 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in1_out4_sim_netlist.v
// Design      : layer0_coeff_in1_out4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out4,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in1_out4.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out4.mif" *) 
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
eQ59Uju6Q/FDoSfNjncJci/alhYZiNu+ar7GEqThUX55exjYFD+t+aziFVIR8KYBcURxlAumfObo
RljWUK+QkJC14CFTB25t9GABmyNpYwR3egoO0ZEMEB52ii/ywN0O9Jx9DQNSCBMmxM7kdzb2+bK3
eOVT5HdkclR+7ecVh8gPXmeeruJvBLPuqREhSYGomJzxvEdRgDmZN7/ZSJgSqAPwaSNwGbXCDNcd
iFJP7lIJdDUXePcRV9hjyGE1UIuhSQr6ioKMLQRV2gc42+bDQ5V/kiMUIESkmfttnhWrGqj9KKVT
RGpOR5TVvTi5hEnacjnEuVxq+dq0Rd/L9cEUOwll86a1Fx+QXX5Clpmcvy27i1DXX4MRV2BBZAwd
TEdbbu2zhoitPthSpybSs8sipMO8cSZnlcKD0LmYWAxUqfHlGApYNSNDrZ9wcLmYgl0V/S9z1+iS
mh/YQYXqxH4qE18mR4Cz5LNOQcsHD6gBHipg2ziddSvLyw+67PgnydmowNkbs7Nk1Eux3e7yzyhB
RKPwwz3Kzbc71ZvUkos8T12waO+RJCaDT0DYVY/WzUbCiV9rYUwn+VUu7iRVsiryTOK1ka2Z2+ym
3VaaFqadoT0vLdSdC774i5/HZryx9OjTELGdpix53BbNnnGU5VLHC5dz/3KQSCkqWES4OBVBuy+G
4LGhLoywQDTOMP1wot5GU2n10SjLIWHu1EgF64SP7mLxgHy8qlEt/ubeFCZf1JJXMnpTX2ijYs//
iJiWsu4+H2zkcbEifYYwW0QB4+0afvsWCk3RIpwZSQ8M3Vb2gDCTAlwlwl39QEUCBLzSM9P7cglz
YJT1gwy3T8OD3Q2vckQ4QoHXCM70KipFfwFFiu0Od6Ca6jUvEFg2rg8tb6pxJeNk+tv/pxE+2rFR
HNozuIt+etCJDVvoev+s9J5N7Swgm5shBSGmQs6TJY5muAqo59ozxOXYG3q3WGRDwEqgBo9KVfEu
/MD/CVLPfkhAcTr2PTCaKTbyuS3nNBeubH7VWWkSY4USBJqH1l3XvSKroCkO2yvYTIlssHhaxCDI
4vRWgmqfk/4tPnx3CnFNeDB7wuFV4cJATqGm1gfV75tWwyJjZ0l2kO+5aof2DCG/dvCykDvJZgcF
wnCDhuLXwixsfJloKez4WMSRKSMjR3H7IpVRYtpt1Qaj7CjyTUZ7sFmASpVZnBqo9JmugAmguKPy
6u7QVPwTNr88tyOdWrHgX+FGQrW+4emzUUCjDXtD8onYcBkK4qjwdlHX5uToUo2SzyIbv5q3a21i
w5X7cuBohbFNoqslwLjQRWnKrJkdnp7yh+7UACjqZ2SHcg7HSGQXjRauQIp33roI1skWrMJwE+UB
XJRvZBeTyOIqxhqDSF0rBJx/RsFDTTPf7pv2x4+m6e/bWt3LDAGcusl7FsnBOvxPGLIwlCYDTwx9
YXqT5pbY1FP9261ZsOCDW35rN0mw2I9EMcz6CJs1A7ewLEQkaF5yr75DqKCnEUajp7oeOsU8e7ca
kFAX4K6vwTXHd1ZhOfzUXzKnVpXGKTa2elpD4miBbWF7ztXh4iJdWfwh9/X8wLdAHe/BK/BFkT2P
1Hl8F+kwkj7u5KihlofsO1628Z7ZTqKAZ8nHUaeKrWBlrd6aK1TJO2Ga+iu1ohUu719rZswJSOcq
wqQbTsdIN3sUGIh2C96b12yD1Kh385hzCv6WelGydCiX/4xDX83rOywuRtMFLmdgB6j8qtpOQPqL
mTZ4xJ/bHfIGFiRj6v8NePLXcql/GgcvV7FnZF+BQASMYesLsTL9TOoDeovMvi7nuE1eVU1n5j7v
zZ8uy6a3WCEJzA2T11SS+bOX54x/axoAUR2ra53WavQXD3HXUza0WbQ7snLP8Rt2+11JzHUIXW7x
H6UadS+RE3TrbHtLJXU1FcBTWlT8x2UhVpkDMEgbgEaQRrArIhSaVcHab0US+ajdXA1crldGl7/j
BdgDgm9bwUpHMD9Bgqilmny322GBL2Eq7KeICAIN+wGl4+qqmK7r085tFFKaRCJCO2bHei4OpGjl
q8yqe65354T5462oTZPIaiJj3PInZm8CuYRTvf7y6IF6SM47KO6qD5WYQSsngBt43RzJN0Kn/cH4
x1wBJ9luZujePHFgFTnAS55b8UV+6dDpFPLJh1Xn6Z8poaWrCMPYq4mlxf/1tx3UCpZkYYJPAjvA
oeg17MVdPIF6pJVIN20bdqQPWjsWG9y8x5pH+u8nPUIa93FTbSUdt6mpQJ9JemhqjH/aj0RTMxZ6
erUiCcc7UG1y1JKlcRiNxPOafzjbSyFN61gUepZ1/Q1EzqMlW4ix7GjSQ/mOx9jBpTGGUK34RQ6w
hX4GdUay6RdN7BKnvMsNVURcPuJ3tFmBVUAh6jfFS6wr3O/Zm3qD1SLqzcMmZizmeH/Ww+hNIaAS
aJN968g3wpyNTuV8ZQegIM+dNzEw88QgT8T/r4UbOzJtkq/0mpGYZqIBekp2hjAE3vBO7UO9IiEP
Uil52hcl/H2pC+A5IQfwQivYrppmcdbmSR1YlGlTV9lKTGaUFDMCiWT07a50WbPLEiA3gCkIuGd9
kPqCTM4Ohi59hxQqr6Bm3n2V1tvTg9sjJfep2RobmoKvu6wK9NAvyTYke3JXvYKpsrzATZJEivdH
enxcsjvTLrxqtm89blTI/nUOryfKGSdpuTqVloOH4XFY0+6u+3e6sWsQ1lCgU1S/i+9DZVwywd47
w0NFInb5ruT0EHSy7aeDsHMCTK2nAVRDiqol6ry9ajPSoDxfLGLGAfukmqXXHiRT0TuukxBQ27V5
dhxwWhgZkIDxTG5kHQ8zGldlhaxWsqrga0htAjWt3SoLY5WNPJ2yW4ssZ0F4XYL1ziPEPaSmMT1y
xFe6PE2hMEa+W1BRWlx3gBSJ/MpaBsjub9jAJacjVhZ2zSJwihoD3dhI+vIwhAsZXK5zTdTzuUK4
r7uo2f7I1gLBuD5J1lUMSyDB3ekL5mYY4FPQc6jwcHtX/lAVvGG5XZrrLX26O06El9B/X5YXAX1K
qAY/yMTcj/Wi9ZU7B/S1qEtyNCU0QDyI1QZXBEeJuwe3WADc+qh8HeZq4FbwTO2Ct2Gv3nE8v4J4
0ZtkovUjyp0DR/IEOKHMLMfPZprp/gIXcQ8Gz3C/KGcAm1hJ+hrU6xBAzsi3jJLf5boBowyTZTma
2RDcLlHmr3+n7JZCDhPWN2GJYWXioc5ElC3eODumPc/30m2QZMSQlkBZHfgSesyjsRywjP81iwTv
vkavD4IOoHgR2sioWU4llmlKZ8gpbXexiZpmNDXOy7l6WuM62jcTQ+m+DS0kxVA/oIpTMIiIg4OE
h7e9t/q5WvLm+ic/6osWrUVSJIaj0fvN4phodZgq+OBXcmM0cGFMEE0vj6tsmeJquUyQfB+vOTIT
fCR4n29Iw8fQk1HFUiWXvj/S82HhDKssX13qImOXLg5I/icfCvV3gdf1F1lobq9UENxFGX7ftwPf
0dL4I5qbxtchNIVfG/BIAvrDs0UoH9wgpwMLfgUIbc7rWLcpKo1PJJOiIeELMwheGRqQECXdCC++
67P269AoRLqbuN0FQKGMUQNW9LFKp59vBaQiTIhGgPEAdWvJyZAt+f35Chc3MqhaWnrVznI07x5u
yvkzwGPGQ7Z/EFvgRWrz74NszbpCrmsogopK4wEbloVgJk2YVbbe7hfaLp0GLrjsxUFx/5ArZB8s
/HIbIm+XEkQsS/pKa5FQzq4yV4bm98naF3r02qe4+E2gBXTbtZRHkAZTjb5RGog7s2vIup6whzXZ
EFzRMhF3pA5mmzdvsvII2eSw8MBcn0hmT5IS1wJ8n6soAoBsebzusfzu3qZ8u8SIZXSeuNBSxBJc
hhj7hyXJbUmJBM7Ry3cFGtJMRAj6KhgJuh1Bbqf7w5qusTvKXkgFsuXdPCkdDW9UMZ8dRJ5sYbks
i5LFghGi00B7U6mEHYHPGxqv3zKYHFKtrfTnW+mZvopb30YCn+KFt5VKO/41oiqG20yNM3Q/54nz
FyF9TRx95j2vkHUVzU0/UFxkB6pWq0BYOjARqq5fJFSDIV+7BlpcIDRqHzCDEnkMO6Baz7cortr9
RymsIpJWdkqV+xUAMm9fNXE9spAdDX4efKqk92kyt6GmCOAUpn2GuZ5lKRoIPvshRJRL8vglNIcI
M399cI/1Qc4Rg48j69aB3T0Pwx7eeIpbHA6kOkCAaAVadm20TSmKaOGqvVdxVf7/Gy3bCfvGDD20
Zc3ZfYBOchSc4CJ9wBmJ7buV3l2DhpZwfbCAMt86hPkPGqMCUiqY5nWDM0Ga73XReTVjTZtr7lyK
VfMR08Wfk3MNkEjc3JvGkJwctWPbXgiziyB/gNj/IRBZqMWVu55dO9j/9UdFz+mRv0GyO2cGzMyy
vQ+MWRS4tzs2HfKbBAODlBnDVFADza/4ssahD7yW4gHEXKhyXV3sNLd1irGii7mSrbUIzl1FRRxH
t+Kklilfzv+/DuGi23hB+r1LHEVDuVu29LGY+NJGEZtifw5HqPjJxK5ie4Lohsfby3qM79JTx3Ch
GRdESkbi5h5UbHPdeu1wScIVtOqeCJbj/sjt+VbpJubold1mOhGjXXF8iE1C2NnVgFKvmoIw3ZIH
e9/v39HyEF7goTcmCaAoCALr2m6W52YEggu5dpxvClZxUY93KvvMDObpyczDef9yKGdFvkpGyFJe
EFqmOxfzv7vHRHVEMSiOwZtsCmBwfiajCcbvOA8pZtQP5URMVeDvZ4zpUF7/9UZB6f3a8UZRclYe
n1UPQ2NY3ELBtgXkBiKa/zqgtCvF0rp8v46TxDiFIHjb0yLHuGSVJV8rfRtbBi3w21NAWfoee5v3
RUZ6f096JEplrttAaGWBkMRvyxmwjT9VqK6S4tN6ike5gtKifuNM2RanZ9WwY+GgXyFKYIWFBknu
x95aDVaWqS6R/jFMF1j8KwJfso7uYwfnGznqeS/Vm6UlzJKHRhM1ZQAaGKgKFSAu0Q3YlbalI+0i
ofwquSoQhYoFmLeinMEvcdKUv/dzfxwbKauQvbOLm/vqk6S4xK3+lOw7CxteK/n9nG86y0HgxsMK
uxTXKlGq2kC3IFlhCaYmYkkpOzptxQw5tWQIyx6S8TtRYBqpMITZbHreAaXauryahrkeRgxuoXYu
I62P9RFcpc+A5r0kEBh1hAmosy4iwNGm9RKIIff88ETGt+HgRZjVm4wNHckzUgF8vDuP/o9DYlJw
mnllsUhx/E+BA3LFHHZZQ2I5gcDcYsAyA9M4kJfXIT0R5VSuiN/hQrZFsXJOb3GxhuUhx2sHgf19
jlcMzknmoJqOzbW/PgA3+0jsdoAgxxMxs6uObt/Nx02T2vdbX1nTrI96qtswdeKGp5pSz8swApS1
Yw//zKMXsiqCJGaPWb8tmXGVNdUFhzjacRhrsN5D++JFCfdHQxUrMWGRIjMf1po93+VL01IC+yDJ
alWO4cPqyHYAugHDLPs7pOuSLxk992JjFjX5RzgFiCj4ZyrLA7qt98bARMF+HYxedCBHgesEH1H6
IS7n08tmI5Ma+yO6UJ/BUPRmNlOByJuhMmXXeYOQI8jVIvla4HpGwHgGUPoyFu1iPPuPsH5Ne/dz
lXtVHop+4ddgH2h+NI1q8i6BGcP5n7IcvT4neSLhgSZw3T1l/qPCCfvlmlhv+JA2eylRbi4lfrh1
L4y75c2itY6V3LzAiBYoPGzpp5/mNjZnjkNM0Uxs60yDeRbAqR2nA2Re3yZNXuLxUheCBS2FqVB+
DoFNeicYn6pcDNSNiim4sENHd/By1QwlezSSrwcadQdI3gQJuf6lptgRQJDq8Q4JeBw4tt5K5Rn1
0mgo0Erl47/mpveTYjQ7EhMeh7N3Qt7yqA9NuKMKbB7w/cn8+CUsX01EHiYMVJ3Hk2VFgSq9O1V8
Ixi1tJ9yifIfGbCLK0vXJbyLAl12GNxkg7g/w+pnkCN7r7J5t4dBqG4hhEz4uJ1sJ8SQX360Flpt
xDtJ+Ilp7GUGgieEO5DpW1nkI+l9sG4rDinfv7Y85aSX1RKhgMYvsQoI0APpdiYE6WDEqjyIMyvj
+3xUez9CEe8RJP1UN2cc9HMQPNm1Tsk4tWZXaL8jxSV7j3XBfprmeoDbT1CS8nOeh5Ez2u/6fHzk
Uf9suQKU8tGTjw6hskhDcQwm6oqyBV7af+PX7Onqiasl4ArUpJHIjxVrrR8mc0mAiGRqSgPbrMWX
hGrtDNJcpzy/Z8dQaBp0jMXWQC5IgloNdEJd9S8V0jXCDGCGvRG4AFDY4lwf8ukf+dx+PFN+ToTu
FouZEyLSgRmRd+djLWx1W/JmX+Oc/KJRs7czeImEQTckmmupUxoTKftVwE9/8rXitjIsOZbHSZHr
qS+zqRUOTZLKaUt88htViHPZdCS0+dEdfgMeeAxpJMGO7btHN52ol0T8t3R4mMcE1qIZwWHoK/eH
Y5eKKY7bs4bKWwllvaxVsTnH2rPEHS21LkyRtb8hJ0ssBTNyPrFYOoxWDuIXxOKyOzv0Lv6Fltzg
ng7Mco6u0EH9UhSbNrWq6tZerm3YqqdzVVf+dm6/vhGSSZxRbNMS+CmE9eCGff+QHoaULmjY9II4
ShADMiaLcF2Gz8/En8/zStSLNjyTx1qXWUOvkaVwI6RUTNxqq9xuaZ4efhu33GgpgWtanw7Ms3an
N7qdsame0zbuDwzxuKrBxMh95TxljdyZ8QbM24JLwqzXVQ2Q/h/ngG6LkDR7hNhv346g+pkmrMyh
xWVrXB/OsZ3OXmu91Muz76soXrcfxVebT5QJao+1whbLc7HCqefvWEulNOMjDdAFetxCwIvSsYjZ
GoJfvSWaz9IQyH3htx5GLUUPjavBTrnCyAdVV+RqXl2GQxWsvDpNyVowpMv6SiqBoePyu9A8ffdV
TCoNU+o/4uJLqmjxiKeH+LvgzNaSjfnpx7wWxDNAd1VCl/ArpEWYp3J3KIPT7avykLaWREOm5D1b
VZ+Hk70kSfJ3mtwi9wrEP4K3NKJUqErjKwGkr5y40fCoY+MPOfMJZblSBt+TS60E9m4ffI6wVQXM
TX1P2K4E6IEXXO2rwI95mS3ehM11caIaX/BDFceF08GgWU9e3SpASE2mcJIr+qKC+bRUNqM0kKAS
uACe+4vm19dHXm2Mmgu7IBfIFpJqOFB/bxpfzRof+ot77tolusr4WRG+lbYhk9uz61qCqDbSz6Ns
6CuzA28+YUqNpEkn8/LHgwT/Y96Az+kjwiiozGG768Lq0Or9FuY3pbs+3eI+b7XMC9u+38ouvlyN
Qh1WUduPPaeWkSlbKSVO/4mgEDY5GkUY4e95goxg6tuGLePZ+t1Cb0cAWJM9KIf38Gcu2cWWh4Hl
SyzuXdm46q96g1Utuh9HF+jSE38MR8P8t0+otRxNrJu/ZWPK9BwxXUKknAIAsTJby4MaeJEi4AZU
FcypYL2hlqSNotBmHnQucFn70Y0PNkEsJOdOsQMLFLzfY8GgM4DkDPWEELlEKMLgsiQIpNBLaZRP
SfZsTo4taRRrndebK8t9ah0LLQmgcJMCCb0ypYOv3au2HpSYW+WbkF87l4coC8UJ9Iyf/JEJMmb2
OP3EN7uxLqmItoL0Agm0vp0XsWVuHYRxvF9xL6D3BPPxA/Ksk/vgqgZtVO02tLdXHC+PJJ77yLwh
d8i5u1pHcyf0ufV8BgyNKebCwjZ+FwU64mM4UEOVGsfDZ0iSOh42fs7UhGOtPi3VwfWN3HW/f46r
oWWYbPSun502jBWzAmlYhZisYC5MP5fABkl3ZNfr3xg7mxWLo1EgDWNBf02h+ZmIS/NpvUIALn84
Uw8c4gceN6L3cmx0QcfO6pdKkZ+Jac/Vrqrsk1kiNr8iCAsAlfKetQ/zbbf9wd9e7yEzk1rHvVyZ
olPqr81mLoAjkt65Hqr8COe4CZwlxSY3G9kiknDAak6nhRsgOkXSPmu3PNs3te6kxhvIaAtNcHE4
S6WHVAY4FoqQcGn6kI8onSt8mXh6/Z8Dz1RHRn1x3kEnJg0nEpG5BAFHXFg9+GOSJmZLyRgj9eF+
Oa+N/TjdntpkDxn6aUYmx/izPoYUD3PiYwwFCTIQiEj3xSMUvselpJzoq+ei7/eIIjS70M5aG4Ro
MQri12RbimmWo8BkKLaDhrUE3askAwr2JtxQANqgg/Vm9k5ZHSz782X+r9T1IiCGFpIdRQFrMZyf
vNrrV3MRPCfin3//eUxlyIoE1d0ho0kAesJV+jNQUmmETf7b8Kin1/zZVANsr0C24S4itc+ayTYq
wWN1sbGUDJD4cSQXCAHUP4TrvJLvx3Qf3755XFxGvq6h4YhAwMHJgPbnl6SmGTDP2rdantmFzL/s
LIjslcDMQNl7pJC62sVk9I1oI6xoE3bp3p39+llv6va5Oo6X7ZZtbFwlNJrBBWs3qEXa9Tw2l0XI
zgKG7rGzrC3KsqvB2KGOVHPprZ/6R8JCIl6d0rLdxk1JhJQ/itWdUbipA5pWVUhJ7lF6Xz6C02qB
SLrc67r6x1xcMIeJgArfWpUATZ13PYyIPm8gxU981U88vRMyZvEHTam+PeGDEjR82rpkihSZFb6G
Rbqw25vITGE/ekA0Qo9iaX5WHCoycjuQIr7j9sj+Qr51yNkOato25BjltgtKJDRdWW4ZIgH/r+uk
8VrwPtM1GwDQOg+I5eajvsZWH5b0fVjXIxlKtvCUqkwh8+0NnPgmwg2+FSzdo5fdpjXjI502soaS
ayubrH34DcQ1zfcQbiZ9ixjovTw0QbTA/ZG3/H0V7CCrBS6BR5GIoagRveKP2qVDCG8U31I6zVFc
mxHMiwfqnj8Gayx5mvs+Q50XB7kFOUMij2rMuNEYbxR7r69ee/DsSwyYgAdft7zUW2QuRRVWRAnd
AGg6vNsvKoKYdp2+sOe0WKzOTiyCm4Jq+mpxLWcgJ51/xs3LTU70G4Y1BmVayMIZZmS6pnNkdj5q
bAXSElXjB5WHxsbyLZQUvCdkMilZEO30nvy5Z7lnkI1sRQTvh+RB+Swzv5TpMFkvDe0DgX2BzdMH
/Qvy5GP+hKakux+bGnxSPhFvsb/ujdtgh/4tcNWxyHGUXkPz2KNx+zEx+EK9Rwb7VbuOLjDZzMs/
xOtL4YC5q3M5OeJ3C9e3yTHjMnzai5YIDc+rxzJqnbtL8t691YHqSuVrU1zFp/i+qpGr4m8At3fP
vQDybEHC5a0jIaZCLsp1UzY2kFV7E/oR4HZsoYL2DX/VOyU4uAimqLpK5V72Xh7ikqi5Trjq9JzD
Fkarw1M9tMNRWg/5zHiJWwrSvJZuRXNL4dqiUgH2d2wUZ8e3bssDi99kOC+++KtT/dsJ9MHd0sLN
JiPj/jYO8rElb9LUk9nGg38lttj296L0g5Si6TH1MAi6F6LGV5oW4n4jJegukuCkf7ILVmr9B45S
7Gq6PWs2v79DjsohBUrdFCKekkpSdYH0KxfeGuIV1R5TGXIDasLuwC0Mx24kx4tf8G5LLAVatDP/
ctkSkqt5yfZj+hN2QVT/RQP17x0xnsAxtMEQDm85yFYO9jgAj/ZWG3VWDsf8xTrSFG0qVUzUEVP/
JWzM1Bbz/Kn065E6ri7c9/YlqxrhVnIlhRUSvcibGUvNC5N/gh3hiBx5kV89NPId1Nrc4jgPcaTi
BeZXSLJTpu6wasSsyAhuSWH9LGAbDJQy8bQyBd2gjT1yUMTigD0Fe0IHkItoy5YRn3+RelgxiGEL
waoMu6AFp6X1+xlWvklJfHxkgEpHPMn8bYeUnYKJw3fPyvtUaqrIBgIljfbAntLdeZknXurCplg4
chJRf02jTOwE2rWJGwgoG/hd9RkX9du65cTy2Nfyl/ZIwvhu/0JcFbxPPA71LRHVrSqjCT+mbGRh
mFcxPO3xH/UIqjlPPC97SRpiiT+vNIvW0tToRC+G6apfaNb+fCc0Z/OhxYpmGNWwiTAJI9ZgQTQ/
Nc+/xjIOPxsTGBGFWIsuMCD+kYk3+sn2PUZOpYmXt4sPY87VWEP8CPxA0Poj/hBhZDzvp6+UciVA
hobUvm7QXFbkiuMEzTqEEmn+nk5zvPFQB3CTAY6DbE8g0nRIfDe1eSe7TzTEtXB+/hKwTFrL5rQs
f3+zVm8nq1ry/7d04DepyhLLcKDWK4gcg0UKVCZS+1iGFPxotMeFTvIX16tpbUVdP7TLnixQwJ48
fylygV4K019u1AoEc4mQnOeyhAe51vaKEf1is+TgcxTlBRrkAP6DQASZG7W1CoNGleY2C9GvJZzs
Y38mPVttagX0DeeGy0iCuYvFrT+kt9Hvauiaem9c1oBD+0I4q5u95pyUdumVXlMNo6sJktVl+EwJ
R1x2pnTG+ZiAK5k0vRmKvD5gTN8SeUz+RASNHf15hEGOLLJIVpBe/hTKTZyEblsC7oksq2j96iK0
p93eYkyZlE0775gyr8+SruwotuhrkXSNI5l6URp/rk8xSoUxUx08WKUIrV/UkxvQwJ1i6RMSQcLt
00y124cSwKnG/JTgf7yCfN3KMmcaIxlNrVs8V2mIFTG+u+4ARk4AY0oQmOXlDf9nqkpXe0Fr8GCr
PkdAEvaHfz4/NxJIYSTaHfCYz/SOJrhFl3zTKbbOGUZqGaG8T5N49zMiMrRFkjYCUb/akQsYYrwK
wFq0eM59Cf3kC7P6SgDFwaLsKTXAYLG+zXYzzagqrfPY3q6pajkzZtctile+dVf0FgfFuQidBPeo
zHTwAooe/aQMkOpBJ0VMlVf1rJ2hStzCnJOmRGpzVXuMP8Oeaz6Pp4V2gHsy0FbtNhQPIVcIULmQ
OTeRA7hHqFaPQd+eT7YobLMAhhVIp2/4T/pTOpKslrDT888pgpBcWJJ6V+a9UsOVKIgGr4A9Fprf
sGJHrIaIAPfY6DSwIwp7+L6yFlxQr3hL5qGyByC/U3Pmk6DTQHVo8M9TrWTcBhePmCLVyrgPoa+a
b/4Q/WezYnUe+s+jsJel5xCxIwmXmD1Befo1Jce0SgNdX1UqCht1Z2rrweOlnB3UJXDG7JU3oge5
rSC8wpV4YjvBD0tVAk6JwRjody5doUqQWjLfm8mWUy2qP4vYrFoXFYQJKDc/pwyD7W1IM3Gvt/Bg
l1ny8FOWldUQ3kXg+9UcnvaoGSYv8enCZNqgoZFkE3gAIVHG5ufKBsnjQG/kgJ3meSAOLTc6C6Ep
6Ajj947+8sfIWMqCJ5cspxlAqiFOpL3AM7SY0Yjj4r8uFxUuzGngHx0/KvN5HyafBd+2HXTU+njz
+ejWPXUR1j5QSGaTRkkbPo5MeVr1HVcJiq4uydH7jDwaJ0dMpN0ikIoZEr+1cDh6ayzKAHXmkFhw
ALO0qNsyr5zD5IXG5k55+OyWQTuMFgS4mGcB2GE9gI5DyIlWA9vYWeiEnaR4/9QcZiLl9ICKV6TS
sbA3I/vvY4+MShNmF4e3LGqbm8Wf+EIjo/AsMfTYeTa0yz1BPD3OnGAP9Y4BBkDCIMrK/spKskyV
nIF+DKAwHVneoTKKCoK7P9pha3KD2Wc7IzHc12p4WiN20RCLLWecskReJzUx/Uw5ke0gLfqGeD8Y
nH3vt0BzAVvr01Q0Vg+Siu7KEewyAAcQ2gnT2yvs+0uNzSRS0OOth/jYbrJNvDNZk+xD84IVHjUb
OUZDbg2KK6Ym41/WCZ6/dWP/PLIMmLITTPn6Rerq9kZvOshGrX//KPVMgbOdeRqLprvaWkidhtE1
GquqFEHeEBfg10oul7CzQKxmb+QVS+fk0nRsUQjj6AXJqsyRNgp99ZKzuqTIG6J+wL+xWiKcsrhu
8zYiLyNbMMDun5uLojAyH3PxwZ6qxwzTvOONbkd6af0tRwy3AGdt2mOJozx7EvWu2PjOc6uenppT
kSS2tJFbtDBBiQ28n7lA2dWnV1glMCRPRJWT9eUiXT7vI3634eRKX6g9u8joMo9X2Fhgl1BfnIqx
NHR0WB0fFJdsM5pcw2U9QJLYyD4aOLki/sKE9niVphOa5aUCfZSaJGry8fJJ0LZUejfBZk4xtTQP
CoJjk+NVmG0Ue+9/DLEWADchZMkK79e2zi9Ssg+i9s2LZbGn6n4di4635fO3PcgCetjAT1cg6sQn
6Ujm86SyDOGR55k2c/y4ySkGAvF5QL4sdSZqAPv62Ij581q42k4TymGIXhyuHt6QEJ9mEMj1DtwO
e7+EiOBPCeDV2TRpObDTKOzpEaWOHyGmAtawcdL4mHihm0hbG/QDUXsx1UMOv0WJMpkh+SZ02dda
tdrb6BspZ/vRiUWHbhTgRJ/svZxWWGC2eDtvlj7ibADpZU0dDIg3nkPFMZgN/gdokjhql03+HgyI
LzhjYwQgTV5+fKr2Vs8mknPZKoCLZcVsiEziQhcg8TDuZvvQ3fSc3jUICMt+qJY1b/xDLpZezKUJ
u1ubX7nbjctZS05KnnyCr6JDdgnjtajP+XmouuKh7ysprLsEc24N6dEI/XbaVqQG2Q2jSuMi6jwD
ZnpPFNBLmfPFEohD7b4pqUv3oJ6h7egdCQi+R3Q2cFmozh6MSmBzr9g/UVTRZOp3CGFaKdnjQg9p
etxF/W1ZpumEwOGOCE0TLEZ05Zt42eKbLWpE29uLSrvtA0RSUjoT4ty/YN0KS11SiVFiO+RWpdkX
RxihssLukHdGg0GMs7Apoy3GMdyvXgDtJuxrSgLOCBonyn8hiqNaCTqZAFyOOvyA0n6vKCCeempe
98mcYZPRIRJ/oC4eM8SdWhyCUbbEIyhqLFW3Y137zSILBhkyV8U80PaAoEcbNLQn6Ug17ut3j6Di
XcXoUJcumAm3xoytlmf6jMlj2E0QSAO9doH7xlD9IymxIVezcCpue+3TWViolT/w6OtH8Dq9o3Qh
0G3Ld0R+1fTFGwVwpPkNrf7SozlAFK3sD8GYQj9e4EhKNCWCYRfwkANC9TxVKGw7/DqblD/EFFN0
RT9+LYYjG4FuzzqgjdsgS5x9GYDUqxJWcd0rUQHGw5260FRfJjaIzdrpSmUKfXMXhrj2+t1iGeyX
Fr6DOAaHSU3EZBF8DQajuehufOFkEh8m2wzkjyBnBKXzCwLVCPyCUVPTRzI1e7SAUYFdjStRjaub
2nzdCdpsBbMZHFTKj2wAlkO7mpZCdBJfXtQCKa6MEbQAs4lvBLAgfVDpghjPg3VR6YpuwioFbkU6
Cx2G3/ZS6kIU7XvewI6cTn3oLk7emTcBO565SVgX/jCRiiivUZdSXAoM7y4SlO9L5r+SRMW/ED48
KTxDJPlU9z7hqhSXPKqtOAO0su4H6jNFbBwVyrCHEkW/JRMAt3GciYstHxCb3FzhhfTedaAw7p8A
C38ky9Sr6feThd/oce6NBZDxRuX3LsrnmO9dUKHKpkckqTxBWhVb0C2AE/QQSncLKwwwTZqTC/+O
/oj5ETDpyQdh8NzTi2ie1vhaycdlb0HyrXWVyxjNypw8HO7VpCZDUJivRZtXKPYRt1ScNOCLet8S
6w2YtydBmRSNLlpR0aVExoeX5bv1SAMxMBk/d7KMoPhK83hyiv4E5YRtIAiYZelcGkDsruoZpG38
NnMPG+Y4N6xV4iXkL4cNjQQcMMXw+sYFFUPbB3Ar8vsfKB1UfXotsEJxhLyZmVcey7Xdgwx17kgl
t+6qkODDLwuMox8vJjO/le4OEAjBXBvBIV3yIkRRzA3ht5+33eCKGzp6ojs1lLaIGsBalYX2C1J5
ELLUFyCl92qInhplD7Mt5r0Sc0SMgiWo1cMb52WAmCNE3sD6K+rUrqCW9pdZlPFfEyu4/jffrKyX
fCFeH7VKO0EGnTk68V7vBIW8B2IL2L8UbRuB1vJAyq3zr6AhLzaWxE+HnJa08783Fl297fITxOhX
fdc264iDsCkR0RKbQ9Lk/7UBy0NwRtUXqb3Jd6uvc1VwRiFtRV742p9HC6x03ITe1cIqiBACyRFw
uDiyMsIk9qEDTivVu2dhrpqtEY0IzbXLD8oIyNdYxcqNYYZxuDAq8ciAfP5XydyC5VoYTpn4X0v4
4XKR2T/kPGxVR3a42DSvoRNg9PY84C/g/nWBt/N5xD4KAHz0RtsrRQRWoiMWkzL5fNgSBJkqLXW5
P9x7/UaiUz7gsl/ssXkfZvg6sXcjE7m0AIFvj68+Qvbwh+gbsLrr2HQCOsGBCNfnSopJUDTkMpKR
UKSkyYLtguCoy40r+Eh2l7l7WbaCH8fC7KyBso9Vau5TdXLFUnAzkakY9U9y3Ha5ho3YE/kySKZt
q0sr2EfGm/zMsa+xpuz1qQ65M7fvk3KRQT/OklsdIDPQV6rq+3w0OIrNAGhac6EKPJsZVJlH+YsK
cfK8+Qr61DrFs+XY9VORT2Xja6oReIVPrDC6rCPIfezDQyh1tnUwW55d/Fw/WIrdazkTdVWYCiyb
mBNLhHEZFb92fGff4qhVaYY9PeR/6RJEw4JVx6DU69+NrqvN8p2kUgSbq4FrPRk+/54JP9ZmeUuZ
SsvHgneNvCtfBmylmc6bcJwAzEsVpcyOUyshiTTmJslLrgSWNOvbQkoaPGyevDZ+UeTKScCfTBW5
C9iQJFYE8DNZcwIQ+9nisz5ek+OFK5eaBTBShMlBQE2Ckyd+40RXPch+WJz9EyPHnEzqrt8G4rsU
5j/em9MaGfzDM6S8/OYu41DQHjoE3g9tuybuqplIJ+RXQDOBYH+Xbkjcl0D1MquVo58J2dCaqzN8
BH57oxYySboY0nxq1VhRmG0j3QCFB5FRDKtgm+21OsbLwJ4tD/qDb5YchleLclR9CszckhKl8mPk
pijoXWMtN66+C+uFTE6MzP2L+SRDRSFT77BVMvKcW3TTIAUfQ9qPV0QNuOgUZAyGgxjm4+N/lHE0
nBdP75bee7xzJvnw5FPIJdKAS+KnnTREAnv2PYPfpmxI6ooC1qn6jYkM09EHFHfBuI/KyuWWlXU7
uC0VrTo0jDAUREwWtWphjqImB/xVbusCqLMc2Vynm5r8FP6S18xBvC8K5TCNNu/JQrDWbsQBZ5hI
p/zmOWtsnKJ7oC+WAVrWFD/a3hlAfbWtzBBp96Pev2MO4MOtaxTAj9zAUnL/p1uTJO31+vzDO03I
gMoGd55qtAuje0mgZrY//vyQxHmpA8NgqVvGWxCt1g9fEGk7jsAoRgmPr/te9gXAa3pHRNpjgrhv
on7DlUA3vjIvSWUpWcWyJ4DFFBsMEpI3hPvgCdb/ZzeQGiE1ryIrWz2ssVn6qyPiroSTvMwQ3Hp6
M2Q2iZ7opoDRWFSk4QuPApJpxxss/kF7izK8pW3nwWyppHIQpwObY4u8hFkU/S8xhd40HicAY4Ll
4nUGBgoMxQHn4m1fqJZWlpIHsx80d4to1j76VQfdQN1a8bKXD3x6YaJAsg6l/q2O6qT9zpcZ7D79
E5mDk7LCmiqNBQ4Mb/fggpXoanj7Pwq7ntSPXQoPY9RMU7VpGlDY9e+J61tvLzOY7ywvGBU5W70n
quRbJrDABWY/3jXmICi5s/MRbJiEaBJannC0ckJ1C/UhKKzkyNp+mgaKOkvictNcBalpj4NHYXIB
u9B5Z3ioY35RtvnSUdHpzygZ6M8Fom5Rqp/IiWLM+FkVMO12D7PRJWHN+QPg1GO9vxcYQ1bm5Lkw
FvQ7EoJsqIeopsQqAQIfzryx1kLPIkLN/Vcek2t+I2F4/PDVui7JJQdIBeuASLMJJvX2+J+0clW3
4dO+iuBqMBAHvZf8XDRUWUh2yvMCkk12dFyVwkQxZKIPbkDDZOVKx/2ML3IpM8Oy6gkObiKzGYNx
ZrXdzVAsYNoJwciU9Dh9+qVecvbPRiOhGm0lJmYIeFp6VJRhT46Mh+idRulq3+/fiUvqM4z+KcLW
+NmYh/KL9BaRnHq79KR4dfYJTEzwHOazivvGfUvtpZHWsthWH2UMFFK/+UjO4Xii19RSBR+xJ8yr
GGftaR0c9SUVabZ59C9DVf+lzrRJtg1SyzzBzTEXD3f2tgNzJrpqdTviI5gPGTxSjNU0e+1YWgWo
vhw8rIZF6aqhzJPJLBi/mLx4qox7qNeV8nT2WjdQbACX6Zgcj56hcea5uUNf26xKXPkXDa0ZbH2p
40fE1H7yKokiEK+9FPZle75pcpdrj4RjScPUNJ+50tYY3CO3ftteZZKq4yg00H/J2+k42Cub3C/+
Q9MqvF3GrV62Wi/jRoXUcZQ5rk7vmg7Utz7CqKS7rki5lVrlT2/1edUJ9lHIrhcc1K+NM+wy71Va
HVJt8FcPrF8pfdrqRMyVSXyWG3zmfVqwrFxXhleTNEqucZd1qAgf5RDxq15a3ZPgqUloEM+cX2i8
mQybhaPz/CNWElPyHqkM3Q/z/hGCFUN0jq6ozxNhCJEsEfPVXKDHqAslT/iRC7d8Cn8WIV6CUd+I
y/2EkoQFNNmiPpu8dxKG8Nd4ni09Nbf0xhmjx4nUKwdqtNdzJ/1Dc9GSJDzLanEzdHmNK92yZBZH
PwyElbAfEYF1RpWD3DjHFlICLhz6JKjATC+l8o/rQMTYPVux/u7sFOUeG/N+BRmWoyZrwckVD9zd
k8B1SHzVdDGI9xfsiQpy5/4Z5BBZlpqxzVcG6LBXfqvyhEYpQ3WS/sAjFJ25UCddcuBxiMSI0leu
GsIY0Koe+IDUzORo3iN9/epPWMwy9JQy4qiOztG3Gke8fVqAx6ylIXOXmLJNoSlIQWOcuY0y9FMI
mEE53nNeqh7Eho0y5RFBoqA+j/owSk7Mizu4rlm9wQwKrrkx/HtCcLQTvY+FfPBqPPr0FPyr/mQ5
cRWDECYrZjI8Nz1FBsZVsNRiBBMVF6A7MgWREKEmNreDghqR/1QRdlVzhL8jpe4B+fRNwsWn1CpG
8QTLXe5RTvfL4TJn+uVF5G4feIianPU0W0E3OQcdvgQHgjVBDtjgU0y1knXl21m9YbmnXQfPT0TY
l3i3pS95mFsUu7GGrjdQGcmA2OiDibjJIkg3ErzqdetHAYgXrmsUhTVa4PsXtmCLIDkDa5HfXe6+
wOtwWdhocmTciBRLzTs4u+racgWOfHOJVFrY45OxX3Rs2YJMcSVi6QF5GkJIVOlprmzSa3WnlOal
14WxY9OaNUTnRpTKJxgvHfeGXt1SZXEJST3uUKEaFxRbgT/gchqQnBWZa6IFW4Jn+av3nFgQDy7k
h1WOLenffrAoqP9kquEPDOHs2fc81c39TdWx+1no2ikkxmwgUqTD+1MuphPWQN9uPGKXnMQg/34l
Rp1SPL6Ccr7QT5P/ZXrDgY4DvzKp+QKmNUX/zZQggJajDowq7ca5ek5YuLruEPLq7INm7sM4QshX
HQYszMMSnAJrp60sx2Tkm/Bf3EtT3gAba/5K3jj/9aZqG9cpMY3nrBc5cEKFhzR0u9OYLDAnvtpz
a1ZVMO1RyuhgcwA0fbxP8jyeu6i6Ru8FOcgLoykb+amFftyH2IRKwdtRF+e8hQxGzgK0c3zyUcEv
UpTSOeoDzUWR6txWoBC7rBj0bYGUea/7jaDl2iQmeDC8kcZb1gnGfTtEFW793qwuIQ/QbuLAHbUY
1ptG1UIOBJc88KVNE19hbbGA0dgrE0nUYXRg8h9EWzO4n+4MKVwMTCyMy+gdrxicps+wg50NrzpA
xrGVSCWG02VtWCecynbDpvZ4QBR1B0y6rYPUuhMQwu5HygCC9i4enwfbnBhW+cqxZplbjc9htA1o
Ojc6z4+rnig+FrRigK+0JoCW9eWGNyv83I/bAJ5pP75J2J1h/i38jkkDJdnsB9oU8oWOK/tkHiIS
uMB7bwwBxVPIPYtqnLCSVtSl99aO3/uxXmHM/2456bLkoucVbN8zD3a9GIaqKxiQZL0fYkSFgffD
mgiSVe6JyAVN9kBKJxDjgYdJ0A1FqJcqJ8u2Iln2P+4z6VVlDSaNu4uqsfFDIhZNtI6Xl5QYizbr
h2q1z1lY5NoEcYBiVVxUX6HKuTpv1NT6U6aSXLO5sTuBs38w+wqOso9p7z3AgkAUQDYla/lEzPfx
jNtcOaRzrye/Wj8QBoVS8k3Jys1STRkcgmqstvOgSjhF6XPoBpOE5aRxNbneMK2kg9MOwy/EFPjL
Aw085/qPZq4I6kJd7iOJuo3/ZRfFAfpQjRpddZgyJMuLbFWMNrAoN932rR5TedbffT2d7gkYIQGO
/wD0lfCX3AKM13wzm0voDHzUhkJdDxAROMgh598e4qvHdPD+Q1jIOEGJLpXgsRO1lz1DmFJSGoU7
+1JdMqlJu2mhZGz34oNnkeaoEwgEoaLUQn67+XAHtlCdNlwU+dGMJjVRHi7UXyOvn/oZCJ0Z3fRg
8ZlhLjAoO/xIw4U6JJv1GxlGtTQDsFqoK2OVuQBHEH4Ob+r7l6kr9emKDrfScHFH81IWUok3MFzy
8PcDrMdfAklIwU2VlEoESZLAyv8OgxnJ6zQk/4YPNmpnYLffnpmppAIFbRVQ5qOj6i/wZ/IULk3Q
6kYfY92djTcR8SCW3gjbjus7ugX/OfG/diCSnVGUNwfwGll30n+ldDc7zYeBrdKJS8Vc7PPO25q8
qZPQRgsbYu4oi5QzPTcuF+HLWKDyJyvo+WfC91Mc8YfNaATzDxZzKWJad86usf1+DcSvJ+EB3q81
ijssg10mryNlTDxY9zuaiuIn5bBguFuNu2CyyONEFWTxBJg+5I+vF6zPWKeY1z/W7fKJWx58EE8+
TdwApuDsXBGetik6/yndOpzM0psY7BbQI47stK3YDGmvpcv++Ak50JPBTgcY0sYScoVBP0U9ZA5c
+0aPii5XDM/7fZdcrMDtSSLu4RNMBlacE0x1HBRG/7RD/ayIRfci42Zr/63CtkUP6dsWgJ8WV10C
ACYvuGntCERJiRlgCahPoTzisMF1G2JgSf14bXT607te61Xm6fbqdOIIC4RQzzR+e1WXiBMsm+3c
Tfz5GFKl3U393Sd/Ut45A3CDa1TLB2O2SL5TSlsIH3ue7FASedRWzGLY7uM4H7Ll+VUcrygV27n3
i5Rpi32VwrjA0enQkloPGm29yCMzeTgJwq/nh6EHo7MFwcbf1iTJI6Q/8H+v1plYqAeQgHWbC9Ed
wVMBj6eqPtP9nl8GM9+BjNHCBn/PVUwLDyfAMguvjQnwbI5EKWYwruir6SrFOoPOe1FRVY+pRVR3
D5pUHLnIGpLGCYIZYvDzm6ruF4DBQCw/d59xG5ZOuyJqloozu7m6W0bIgr8QQDdgFzjuKRTbMSFp
9hfjamjYGfwGGy7W6uKfQ/4oKzcqeKwqAmiyi+RA3QrFmXWJZr6EeI0k1w+NV46eE7KdsvPsWusE
QJdUo2fC2N2xg8I9D8XtZQItWmUkPADct00aWbAvpSktaSH07UFJgXM/pGit5+rbGhbQEzhdw+sY
pL+CucxocRBj5Z6ReSAXYsiJ3iCnU8V7SOmd//pwtLRkyBh0mkSg54SuDzGz5R/eBa9ZkOS5gmHe
RVp/tF6w7CPW8J6v+1UagDdXBJ8xcAKXHsNJZxiEWSFjhG/JW3VmmNWqajtvcam5l4CjNAWjKCTk
sv8fqu6puyxvj1ADC3hLctIa+4eNpEugFfzssPUTuKAzExQQz2ey/KE6TKCajH5DpcbcXaWrpAwX
+CLgd4BLqVMf+pFWE0sf64e24rn5whvLCfdURlF4j35NgF2gd4OXDV68FYkEWeuhnpsBzEs5O2NN
enkJ32Eei7ZZGONlVBSv7cKmTPm9+2s1wQDPeOzprDOzo07yzrTuuLVT1bGmjdQyjOHdVSIqL4VB
iS9I2tHB8Hvirx48hJJr9PT5nFnWmtuPF10gYw8C/COY1UPYYcxWYO5Z7Pep583OUAamcRzCFn8z
9a6go7sByImXh1BOpp3nhwTatpYwOn8Q2FBJQQ9kP/CsBJ8dUGAXYLFHmiIMdwu4iJk1DNCLTz6j
d0wsB5EtsSnaFDxUlHFVqpXAB3DCoMZf/OTpymGluFTTuJWQZOeWu50iF8xAUIlG/zflW9vqWADh
EhwZQNDcLUmbsY1BDC52tBw3Zkoav6Fuw9ptv18d2s18sio7WlHCoMdB8bpvzgvl1NpmjgQyyfaJ
D/6OhHO0xruvOYK57zh+9pzwzXYIVfW+bcKK109FKJalUiD4OBEksDg+KjBqaYVk6GT731wp/aWT
JXmTcukyZMnqAzZo7IyWIHL7RkdXRzTeAINh9O93QhI+b1ZW+PPPSnDprEt0LoysCyCnXW2IANOx
5lzOrakpq/7GgscHRaMvpbtAYC7bOm1WCHWHC3R4rq87SHZsB5pEOkrWbTsIIpMIYKb6hrlEecQS
tdBhUUBwZRkQAbJ4TmNvW0o1WzYeRupJ5w3iy8rdHWizgMRyIagF4YQLwfsv+cb5PhtFijQhslmk
2evOv49TucmXjzexUuOF4lAfgKbih681KRm0rFFsleiYt1MjGcn5n6ZRj5EYj6TA1BEwDgzh6OAv
cXxFbNKqBcNt5cGQM/4YWYdH96z2CCS5vAnFntAx6zfV5F4FriMp76lOhTuK0uAz2707aNAkAgar
cIlInFBrNQMTZPAeOnpgvzKzZEKGNyKJfah1qL8ZB/ls072mb6X6OgX/delD1RqpRpvtXj5AW2h+
2fqy9RZsxUyst9NQETUVnsw03yioAg+q9KGFN5P4iHFSXzhTgMCFIIf4nKDHrpAtgzT/fZBAnZqP
ByBFCNhrPpxRNDgfFHTjINj4jU6G67IXRmvDeLZYIrKZk0LTVN1Ms6BnawMUwGQuNkChBNT/I01W
s1mirKIxQHpGugwLNmHLIK27ltHzpWsU0HIUrj4czbS3ykLrdZNuGnxgeNfE5bTnVXPrvV7xvXT+
RhOcP+Zb9aQKyujJCZiOCZpgayN5cvzrECYIkgJ0LMevPDcJHduFzFjngs57gjEslPGCtFEeH3nF
82kxDWPqE2d1QN3gQ+MUs9R+QUeDv+V8CahdMZ4hwyN9EFbGocAqx1wt8reRjcEDiPSvaGWAjDKN
uwArGqK7c6dUFcvbIg1+chYbJZjxF3PH3Dub342dC+lqe/gQIKy4C5MQ4ONbLclRrBbuelge8kQa
j3U3WjG62zbXMzouTS9O1+KHQGsL+kmfYKcFwHOlpcFPz6NrCCu6yjc0oYsSwHAeLDn58LMjBFcz
S2snSrUBuqx7bAhsy5Tf5ug65mL/jdGvtR7423ezY7LVzEu3YODXoxwOvOyjAEGjVj3YjscQ/ruf
9de7o0lJGpMYd3vwYQZVcvmXIo+FEuuimI6EdLuiDyLUAMC/AadQdJ9mfUKsNfA9LTE1wAs140Ot
fjtXKL8AK7NOXnpPPjGymEPWt9HhSfxjNXlQMDGqIksuDXJ/xJpvQrQBlDZWPQAvISEjqZIHzujj
u4tpd3A8OMQT+jf04rRBhFTlpvZcADeG+R0hrEeCcKIt8fNrv76OMO6FQxlz4KkPS0e1gAS41wk4
l9jKNre2pefQKvDpz/z08jsIYd978qQXn8oXES0OhiLiJdZY1v74jK3w22ELJ04c6DMc2D9B338r
hmb0lmfMnejGn+GSAy+a2/GZ7YuiUOQWLA4N4LQBQ7xrg4j4wHWN+GWQF9s6yZx9aGrtgupd4BNS
vFlcu/zujABXfPfMi3OWa7yNTVXjRhSbhdzF3jDgflbPr7mX0uQN+UmNWQresIrYRC4spx927rsy
9iaAHkh/9nFSIMDSgVe0cnFek0u1JGF/QV+5oLs1Qb4N474CLtGmxeM99iY2MRzM53esBaZAOfua
3Bif/Uo+yGS2pR8rE+bgJI/IwdR0JiDMMjdvRunichiWI2SonG4d2ZNgoTYb++0HHrGNSQK1DbgK
VqYMwrNVaTUT6PV2LJiZjcbLWhL5W2vyITAtVLUnq5GC98HkidRsGiq+5J/GOSkrxDZyTfZp+lA6
a9IStGv7pnIIy3hx2BGBBbdcImE0RVzGF9WLC1lpABEdT6X5vD4PsyOAN/RRxKWAUyBJrIgvnM34
gUZpbcbzt0vS+W94n+LXlnAwa09LAgJAAgf6SCD+EABCdL41f5NtjuqDJnSnOfQzPJM54wNHr0l5
s5T1P/GH+yJ5rz112bIiR4j56XfPzsCwfpXI/WTzJGIrLNM9YafqS+8PNSV/5A4bQ2WtxVZrYn9n
8yopo2bvokPGP8sBO373sXawg2jSRzurixP3zL5uO7qOLKjPrUAbqa8i99IyzlIjaE00gK4BDjn+
YrO22sikzE0hzSrr55OzmSQLyiYPguvIEEjXxjzrNGcAuWJMFNOiox6OhpBbEZUiqrQAmZHxLy7b
xHSmaltoZeP+Y4XYTHUTV0HhKtx3Di0SkpqXSZzeKlrlyg5Z8f+GtiFWbQlZwz5OE8j3BBeBLKW9
cLXol6SWP36/EyeVzsktnyusSSu1jLPVTOX85WlqNSsbUrPdEg3SM6U5GhKH4lOPeWlXUYQ8Hlbe
4dcj44rSSmEYG4nMXIQBf1C2snWiMDBeJFGDEDzH0bYI96UuA2TdX0JsJ99dBFVLUmBE1Z2XEPLg
aem+vrCNAH/vLJggAYrfRGCop0PPMaVkKQfHSiNwJhJXe5i7CozXZDNIlF7GrmSB8aNzIXvabzzp
wABBioARmfd6c38/+XV8dlOK1jihVkpTuXrRqTmEVju/R0ktTCsYn1mYp0AQMqp+dimnZtozvRul
YfzVXc5WLnnOX5UDoSZUvDWqKvmXhON6NDnoYmwVysIOeUfnR2BiFeJ9fy5MdgibaiqefQzJBOsm
jB/VMaWTYNIF6PYePdH8QgkYgbfe5hg2NQdubZbXzTs3GUMdsS+5NkwXfTLXndTx90jUDLqN1UPo
gdDnl+0R6ZuGGHo3GupJ2Ms1A2qjFPaAebQ2Hpz9X9Ub+dRVw0/cgWJ34royECQ9jmO6J1eBrjKc
cS3+/patl3cx2yMbbxAMMOj5kHpdZ9fGbURN31igBtgBJIEZ9C0F64k+nKlpRDGk0DvrUFRdbReW
GDxkFo1MhXaQhsMwRKgnDB0z+G15SESo1U/N7jKwOGZ0a7HuWka7DNyg6rtwlMBqSvOt0hu0r3cW
RW6YdhJd5V0uhYimQkj/cht092woUTDs93kY/DJlVe29YyW9Ig1sONEZkClUseEPVL6QRtBiOS13
Xm9EXjQfcSx55xGSYfOhGLKV6Ua5VRAfnYo9IiHfLP+YMKfqG/MD4gMsTL5Kw7/BWCtPpPsvQhLN
FZKOrrOp1XTmjoaJRVPPvTz1kFqplMQitLJObIzASaRyt5FUwQw1qyWy6M4fILMmPwmKDw2LrsDZ
H+T+nteNiFfYGLDMQ4+uXzmQiEgAbtOeTCWZFhNQGY9OUsbAVWqoju0T6Y8teICrbSz6LF6M7GtR
5YsKW4hU0SjJskvZyrBsqutBBragW17958opPxVskvZCOm5lo34wch2Phd1UKOe94ymSmEJDiuEt
jRcu8ZMB6k1SwZUAobe3r5eDBQKnAA4mWfm+DOWPE2rawUwo9V8hN/k6R2HjtKqjcvaydS1MP8Nw
QJyTGuTkHwwNBo+6SEOZdndF6EDKBcATx+sqveRjQy22FgmFlva1CgxUEZyeLLw7UJha48S7nU/z
KYOUoNcMAnECdXUOkkWpAljgGrTKJ9aiWpMpgc6rzsWjqRBodJYl8Lu/3hSsVfbX3z1E4Aj5zp1o
c0/p6AcLqC8RJzYSPNC84kGAS76LS2hyELc1RDXf7xTuR/FoF9FgDSbU8h5H/IFUakP640PT+pm4
Ey23WkukWzf+i587/dskgWL+IJTyGgATyDS1Voxb/8/XO2WekLCN/Ti3CMnh6qKXQjACMD0PbMxj
upMD3TcSjqhy22UH3367L+RZMsxElMJm+H6guMV6qQ7jTXQJldOq+aPl7MtIKoANOC+3x5gYt89H
xYPD2rVPP4unflbqItPGEQklgCUGlaDlMQcsQucPOFaANabkn/xrNYDhisXplFU7VFCTGTzrGpbh
XBfvE8moscDrXpcNMI84zruHIKz7fXzKmyYbFulBeTy+V82F99mKPM4fKOJlGRYgq+C1QLqkoVHv
lAWbcRVwLDfX0qFE8Ic/zohitaWhB69nIrBuEDS7vaF9IZtLTf5LX3Jek9y3EpAd46WcKfD5qYtS
iRl3tv4OFyg0td1FrpGrAh/OgmeBwY/r2kQoZMR1qz2vzkco/fH8ReTOeBhIz3VhOlXhNgSt/unM
JoxlNe2VFj9MTYNZvPaskLg+eBFdd7oxbQs/RrgNGOsldEAiKy28MwDxaRpmyY6X1SUz1rbPGTHf
4DuKJLv3T/WA6exhf6xRhPK88fPFdjp4E71LkblgI60i5RFFiUd41/jMaTdXpqD9zio2ZwaIXfmx
qP2eDTcWmrsYMC3CpyJBSa7PXSe6CeMV+A43No1XC2hQkuFcMzuyQFqo024TcOt0exmwm4X9m0AY
H2M9N6/iEyTW9nzcXUEtq5ryhPbV8fYlroVaWHHk5H+0mrYDgpL8i4gPvOgIgkHnACu3Q0B3edYb
wo6lLBUYv5ngyliuUm0RL5ThYAZ5+Vo8S/lD9KkCY4kLfVvfeK9ZH8CRxaGNgyvhgG7ozUTlntg/
IqED2nSjmWG0h8KCfFUjw7K61dRj11ZS4nIGW+6k2Fe7lqb4DI0Pio+lJl3gR3dPlHUdVx2At4fc
TWfRh04au8Y4gn/XtpNi3b9QThXOAC+UGZlKKJMgr/5nWu6VPkFuTpdNvOEX1WgkhDqOibTWtm0L
iAn9OswMR3Bq74wU15Lu9eoiPt4ctntgx7CUfuTo2hTmAhHiBaOYPokiMBTlNQUH4VitWpT+raZf
qvW5WNKdjZIxg20Qw822Fa6zmYwDwPmQhOQ229/CEp7n6TXozg1kGJIguo/s3Kyf5DTv+VS2jDPw
r4Qzow2+IkptwxQsHmcC/8FdiHT5KKHn2eNf7U1N0mjVwkiKppsBO0tT5TC7VgH6DJW37irHMfUF
c9NGUrkHR7LLrsCiipYBgoBumtd7pSRdFnv6dVINUp9PYeS5VRkwgpRNlTF+oXpfWvpTA3MO1qX3
kmXNaF6lnnI5y+sgNV4wSUf8x5GPOHXNbwBus9aETp0jCkdwDsMV/oIAeXxn2ZT/NgJBMRaZuw7M
+lGBQj5AoyLLaUCw8z9jPoFp7NLCrhD3Wv5f0iISoHTAmm+8JuVLAXQfyy+ynzS0hNbzANHLEmE9
wR5xPoC2d5j/onvJkwpCWdB+GXlAxQPpCbmXZwdKvYULI20MKVImVH552cu7sske/b8QFr+8qYA7
Ce/+9WInHGZW/wzJlSVymVev5dGrdnWS7tZdBqfBE7PLKmHDneVgojxv9jy21k0ENca6WEweixSk
3pP/JGRmHpdHDn42+kiGflqghwigygBpOaTHZIeTr34V33EM7StbhaStExqzXtSajiWD05cJBz+C
vOF9fqnvhIbhFw62toxw+/hYKAtnFtmbzDrzivX/QozUkphGsBni8q+PQbYj0wR7t5CVxs6gnOy4
kZrn4TaG+fe65YodXB8FRg19Ay+idb+wRCcGYOsfxg8N66Pbcc6opgiXxo4ONjpaNJw=
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
