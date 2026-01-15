// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:21:07 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in0_out4_sim_netlist.v
// Design      : layer0_coeff_in0_out4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out4,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in0_out4.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out4.mif" *) 
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
