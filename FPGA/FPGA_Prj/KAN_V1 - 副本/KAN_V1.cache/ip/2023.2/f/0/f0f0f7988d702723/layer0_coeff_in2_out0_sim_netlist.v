// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:25:36 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in2_out0_sim_netlist.v
// Design      : layer0_coeff_in2_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in2_out0.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out0.mif" *) 
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
