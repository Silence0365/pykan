// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:31:22 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer1_coeff_in4_out0_sim_netlist.v
// Design      : layer1_coeff_in4_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer1_coeff_in4_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer1_coeff_in4_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer1_coeff_in4_out0.mif" *) 
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
