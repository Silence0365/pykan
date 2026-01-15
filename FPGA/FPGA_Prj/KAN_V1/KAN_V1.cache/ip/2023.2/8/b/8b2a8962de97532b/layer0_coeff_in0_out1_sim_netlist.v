// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:17:49 2026
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19072)
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
