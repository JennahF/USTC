-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Dec 14 13:47:42 2018
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.vhdl
-- Design      : c_counter_binary_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HGCCM75Bxj1vCJeqkPqePOZgLrTwXm7bQ5GNbDCQs6k0q8EmzyKdy6u/rxWcHF8Tl7JihEYcdIBk
Ir523zRZe09a6tG+MxaL2CF579Lufmo8qAfBBJChv5wyQ8VISkTBUT4mUttZgbZlq0HE/NliHivY
evYIhBH8xCWidH8coPoyU1SOWMWkqbdm4rzJRGKc8E/E5+qR45zcXAtbvCqiFa55o8K7nsn/I8vb
6Wg1p+mvTw/O9GjCia/5cab4lZ5Qt6L0YlCGskWW9tVQkojoZW4xIIDbOURQqJIkj68TsyMVIxoZ
hRg5SFqleHJRzI+MlzYlkk7Ag5LCru8aFyHi9A==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BIbPtZqKYIfACBWb+YAvFagJLVLYhfHu88OAtNdh+wUv14eb/N1Yu2rKrfvxcyXPkwD2XQGwQL1q
ekRDz0BndA6i7wSc8m72dwW/fudKUsGIkgk2l6W7Fco26QCZyqhTPTtFEZbQXpGU6ip5G7vJ1+sT
3SWh8SBZk1tW+x+Qc9ouLp+r7uC0N1nL1BUVfsMMExAiaeDu504IBcivEsHeAjt/u1X3MBx/bcie
0z29AJtbmuFarfAZqe3by0P0gGeM8kkhI7g+c/rOWrdzhlN2KZQePzNKU86rZFOfh3BPRbwCvbSU
jK79aKw4SUhmDP+a46Lr5HCtK9TiSAdlLoD0uA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    UP : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_BY : string;
  attribute C_COUNT_BY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_COUNT_MODE : integer;
  attribute C_COUNT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_TO : string;
  attribute C_COUNT_TO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_LOAD : integer;
  attribute C_HAS_LOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_THRESH0 : integer;
  attribute C_HAS_THRESH0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_LOAD_LOW : integer;
  attribute C_LOAD_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_RESTRICT_COUNT : integer;
  attribute C_RESTRICT_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_THRESH0_VALUE : string;
  attribute C_THRESH0_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 4;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_CE_OVERRIDES_SYNC of i_synth : label is 0;
  attribute C_FB_LATENCY of i_synth : label is 0;
  attribute C_HAS_CE of i_synth : label is 1;
  attribute C_HAS_SCLR of i_synth : label is 0;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_IMPLEMENTATION of i_synth : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_VERBOSITY of i_synth : label is 0;
  attribute C_WIDTH of i_synth : label is 4;
  attribute C_XDEVICEFAMILY of i_synth : label is "artix7";
  attribute c_count_by of i_synth : label is "1";
  attribute c_count_mode of i_synth : label is 0;
  attribute c_count_to of i_synth : label is "1";
  attribute c_has_load of i_synth : label is 0;
  attribute c_has_thresh0 of i_synth : label is 1;
  attribute c_latency of i_synth : label is 1;
  attribute c_load_low of i_synth : label is 0;
  attribute c_restrict_count of i_synth : label is 0;
  attribute c_thresh0_value of i_synth : label is "1";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv
     port map (
      CE => CE,
      CLK => CLK,
      L(3 downto 0) => B"0000",
      LOAD => '0',
      Q(3 downto 0) => Q(3 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0',
      THRESH0 => THRESH0,
      UP => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "c_counter_binary_0,c_counter_binary_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "c_counter_binary_v12_0_12,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of U0 : label is 0;
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 4;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_count_by : string;
  attribute c_count_by of U0 : label is "1";
  attribute c_count_mode : integer;
  attribute c_count_mode of U0 : label is 0;
  attribute c_count_to : string;
  attribute c_count_to of U0 : label is "1";
  attribute c_has_load : integer;
  attribute c_has_load of U0 : label is 0;
  attribute c_has_thresh0 : integer;
  attribute c_has_thresh0 of U0 : label is 1;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_load_low : integer;
  attribute c_load_low of U0 : label is 0;
  attribute c_restrict_count : integer;
  attribute c_restrict_count of U0 : label is 0;
  attribute c_thresh0_value : string;
  attribute c_thresh0_value of U0 : label is "1";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of THRESH0 : signal is "xilinx.com:signal:data:1.0 thresh0_intf DATA";
  attribute x_interface_parameter of THRESH0 : signal is "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
     port map (
      CE => CE,
      CLK => CLK,
      L(3 downto 0) => B"0000",
      LOAD => '0',
      Q(3 downto 0) => Q(3 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0',
      THRESH0 => THRESH0,
      UP => '1'
    );
end STRUCTURE;
