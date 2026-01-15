// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jan  8 19:30:00 2026
// Host        : Silence running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ layer0_coeff_in0_out0_sim_netlist.v
// Design      : layer0_coeff_in0_out0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "layer0_coeff_in0_out0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_INIT_FILE = "layer0_coeff_in0_out0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "100" *) 
  (* C_READ_DEPTH_B = "100" *) 
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
  (* C_WRITE_DEPTH_A = "100" *) 
  (* C_WRITE_DEPTH_B = "100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19136)
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
