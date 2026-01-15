// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:23:16 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in1_out2_sim_netlist.v
// Design      : layer0_coeff_in1_out2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in1_out2.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out2.mif" *) 
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
