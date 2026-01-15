// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:30:17 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer1_coeff_in2_out0_sim_netlist.v
// Design      : layer1_coeff_in2_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in2_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer1_coeff_in2_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in2_out0.mif" *) 
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
