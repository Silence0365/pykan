// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:23:57 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in1_out3_sim_netlist.v
// Design      : layer0_coeff_in1_out3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in1_out3.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out3.mif" *) 
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
