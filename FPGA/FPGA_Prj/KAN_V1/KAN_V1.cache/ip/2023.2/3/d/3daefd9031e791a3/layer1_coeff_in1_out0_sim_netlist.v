// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:29:45 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer1_coeff_in1_out0_sim_netlist.v
// Design      : layer1_coeff_in1_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in1_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer1_coeff_in1_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in1_out0.mif" *) 
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
+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
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
