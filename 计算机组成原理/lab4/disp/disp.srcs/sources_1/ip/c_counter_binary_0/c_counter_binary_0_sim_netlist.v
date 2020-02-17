// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Dec 14 13:47:42 2018
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/1Freeeee/msfiles/disp/disp.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dnGVxjMLHv5cb3qnSszbyCc2GT4/A/yR5YtyG6Hx7TZTUgg6oLcj8VOZXOa95w6Jp/K0lAp2lIQu
gYA0zRvtvR874kF37GgvCuuu/EtqfNkvWKCOWhNqBjRTapVtDv7J0ddhOMnNx40Epzbj2XjTOVxB
wmL/PMNiTesNh5B5CK5iYpmGwP1GK4ofnfgyvBsQKfkTMeX36xZrMm1B49G98QKkhs8odMnNnjut
QBIXmnANNCjaFjB8VKj4hIYAx+OIyH8WxysZ65t2pUsajwt4p5RQrxoMOJgYYmzXfBTRzZI6Rafd
b3fWJm+K5rd7L2FeBIzYQRMvc28CRDEEM4rQcA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZGG9E3pVYsweF8IXg9K5FUoh7cd/8sdtSSuIH36Qavv/5H/5QFNBYIc+X6ZYqTvLrZqXElV02wek
el9Bn5jnLCxAXnPZ7kTM7ucrYb5WeGJd+aNPyajDZsqPbZMmc9N2kwZiCQwSNjPREUEJwDcqFcfd
VfwtDY8yoWSBSLcGnL3bnjeajR7BG6kBsRZMxUfCl0/KwSHCPUrBQfkDMSb4Z+ddGPX00S/kFJTi
94Pd6rNCM+BIjI6sNq5uxR5NYP26kBpxwiJdDpq6rPH/r8iVltOrmnDm8Domvtp6OJuDZGpkDVOI
PwvqHj9ruDAV5YcmUt82N8tmWDGhJ+ZJs8UNrw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4848)
`pragma protect data_block
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
vtq3
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
