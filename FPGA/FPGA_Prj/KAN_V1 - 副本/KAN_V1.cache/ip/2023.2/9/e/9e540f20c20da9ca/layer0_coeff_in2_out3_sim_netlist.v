// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:27:25 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in2_out3_sim_netlist.v
// Design      : layer0_coeff_in2_out3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in2_out3.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out3.mif" *) 
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
