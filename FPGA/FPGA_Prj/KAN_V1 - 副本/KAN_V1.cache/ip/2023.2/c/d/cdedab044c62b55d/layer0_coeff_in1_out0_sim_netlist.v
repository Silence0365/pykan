// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:21:55 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in1_out0_sim_netlist.v
// Design      : layer0_coeff_in1_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in1_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in1_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in1_out0.mif" *) 
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
