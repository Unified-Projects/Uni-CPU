// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug  6 18:38:26 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Setup_blk_mem_gen_0_0_sim_netlist.v
// Design      : Setup_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Setup_blk_mem_gen_0_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.535699 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "Setup_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48768)
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
