// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 21:19:58 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in0_out2_sim_netlist.v
// Design      : layer0_coeff_in0_out2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in0_out2.mem" *) 
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out2.mif" *) 
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
