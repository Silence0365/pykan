// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:26:45 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in2_out2_sim_netlist.v
// Design      : layer0_coeff_in2_out2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in2_out2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in2_out2.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in2_out2.mif" *) 
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
