// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:20:30 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in0_out3_sim_netlist.v
// Design      : layer0_coeff_in0_out3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out3,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in0_out3.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out3.mif" *) 
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
