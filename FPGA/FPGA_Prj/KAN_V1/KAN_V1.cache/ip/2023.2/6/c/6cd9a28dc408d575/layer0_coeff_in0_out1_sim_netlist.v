// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jan 10 04:17:44 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in0_out1_sim_netlist.v
// Design      : layer0_coeff_in0_out1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in0_out1.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out1.mif" *) 
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
