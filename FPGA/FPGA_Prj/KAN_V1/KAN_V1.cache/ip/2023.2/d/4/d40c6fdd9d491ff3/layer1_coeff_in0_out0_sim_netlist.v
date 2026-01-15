// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:28:50 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer1_coeff_in0_out0_sim_netlist.v
// Design      : layer1_coeff_in0_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in0_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer1_coeff_in0_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in0_out0.mif" *) 
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
