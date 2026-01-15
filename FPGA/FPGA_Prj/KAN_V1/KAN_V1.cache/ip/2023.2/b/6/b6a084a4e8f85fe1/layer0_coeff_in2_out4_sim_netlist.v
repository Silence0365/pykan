// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:28:06 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in2_out4_sim_netlist.v
// Design      : layer0_coeff_in2_out4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out4,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in2_out4.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out4.mif" *) 
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
