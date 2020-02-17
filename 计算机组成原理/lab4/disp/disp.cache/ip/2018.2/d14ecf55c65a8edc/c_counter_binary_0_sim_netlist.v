// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Dec 14 13:47:42 2018
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
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
G37FgxFdxKbZCqP0zzEtDEmbi88BF66E/Ev3YtFdTzA79LVMXyoDbucS0jwmP4HxSrsGC1UfZ3gh
38sCNW1wTy5ecWv7p2u1RVDVtImjlJOVKgkD4OP8NrpKOCCE+ZQK89MbQ8B3KZIOVdF/xer9Sv1K
ExBmhs4c/NR60L72nIjks6EEsxwoxdIR1QKvYcN7Mm/tmhFdVQziX2kT3cRpc1KV1QIDohKityaf
VlDutNbr2tj3Biroq6tgOY3+fnIUhE7TymIV5TY4JtoO8PfkJtqYm7UnoFwxiwKDkAkpXuhYnNti
GV5or+fQWb04GLR3bjue0KLwPfyg8kGekqICRw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbEq6DlGNgOUxooQYiK2QOO69z+dPm8skk77h26VftBdTY/qlv0d9djq6QVnLLBe+XUT+PgTt7BV
5sX0iwdmPSi2Re43DN04XmimCmeQ0w7YDNmIec2/NA4F/P4KuTh9WRlyaAdNvYC6HHjslrjif5QX
vLLv3JDsmNjejEaG/TiSBphQ1pQn7ADOrdxe9eYN3BBMw9EyZxcQIRj5DkjS8qRdSaDDCkI/QTlr
Thpsv1VLS7SxqB3hn08V87zBfSfBgcAed9wuMkjbYIRNvSeXLfGd0tV47e4WBV040NotOCt8DmHA
3VxIZQzzP0CzUD8gZKe7RWeBbr5OPtRR+4CWyg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4784)
`pragma protect data_block
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
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
