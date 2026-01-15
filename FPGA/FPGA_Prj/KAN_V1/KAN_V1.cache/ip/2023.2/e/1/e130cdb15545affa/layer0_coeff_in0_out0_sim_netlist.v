// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jan 10 04:16:44 2026
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
  (* C_INIT_FILE_NAME = "layer0_coeff_in0_out0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19152)
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
