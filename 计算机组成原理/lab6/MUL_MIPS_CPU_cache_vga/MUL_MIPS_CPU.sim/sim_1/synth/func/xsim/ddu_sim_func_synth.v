// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 23 16:06:10 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/COD/lab5/MUL_MIPS_CPU/MUL_MIPS_CPU.sim/sim_1/synth/func/xsim/ddu_sim_func_synth.v
// Design      : DDU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (flag,
    \y_reg[3]_0 ,
    \y_reg[7]_0 ,
    \f_reg[0]_0 ,
    \y_reg[15]_0 ,
    \y_reg[19]_0 ,
    \y_reg[23]_0 ,
    \y_reg[27]_0 ,
    \y_reg[31]_0 ,
    \y_reg[3]_1 ,
    O,
    \y_reg[11]_0 ,
    \f_reg[0]_1 ,
    \y_reg[19]_1 ,
    \y_reg[23]_1 ,
    \y_reg[27]_1 ,
    \y_reg[31]_1 ,
    CO,
    Q,
    CLK,
    ALU_a,
    \B_reg[3] ,
    \current_state_reg[2] ,
    \B_reg[11] ,
    \B_reg[15] ,
    \B_reg[19] ,
    \B_reg[23] ,
    \A_reg[27] ,
    \A_reg[31] ,
    \B_reg[3]_0 ,
    \A_reg[7] ,
    \B_reg[11]_0 ,
    \B_reg[15]_0 ,
    \A_reg[19] ,
    \A_reg[23] ,
    \B_reg[27] ,
    \B_reg[31] ,
    \A_reg[6] ,
    S,
    DI,
    \A_reg[14] ,
    \A_reg[22] ,
    \B_reg[22] ,
    \A_reg[31]_0 ,
    \B_reg[30] ,
    \current_state_reg[2]_0 ,
    D);
  output flag;
  output [3:0]\y_reg[3]_0 ;
  output [3:0]\y_reg[7]_0 ;
  output [3:0]\f_reg[0]_0 ;
  output [3:0]\y_reg[15]_0 ;
  output [3:0]\y_reg[19]_0 ;
  output [3:0]\y_reg[23]_0 ;
  output [3:0]\y_reg[27]_0 ;
  output [3:0]\y_reg[31]_0 ;
  output [3:0]\y_reg[3]_1 ;
  output [3:0]O;
  output [3:0]\y_reg[11]_0 ;
  output [3:0]\f_reg[0]_1 ;
  output [3:0]\y_reg[19]_1 ;
  output [3:0]\y_reg[23]_1 ;
  output [3:0]\y_reg[27]_1 ;
  output [3:0]\y_reg[31]_1 ;
  output [0:0]CO;
  output [31:0]Q;
  input CLK;
  input [30:0]ALU_a;
  input [3:0]\B_reg[3] ;
  input [3:0]\current_state_reg[2] ;
  input [3:0]\B_reg[11] ;
  input [3:0]\B_reg[15] ;
  input [3:0]\B_reg[19] ;
  input [3:0]\B_reg[23] ;
  input [3:0]\A_reg[27] ;
  input [3:0]\A_reg[31] ;
  input [3:0]\B_reg[3]_0 ;
  input [3:0]\A_reg[7] ;
  input [3:0]\B_reg[11]_0 ;
  input [3:0]\B_reg[15]_0 ;
  input [3:0]\A_reg[19] ;
  input [3:0]\A_reg[23] ;
  input [3:0]\B_reg[27] ;
  input [3:0]\B_reg[31] ;
  input [3:0]\A_reg[6] ;
  input [3:0]S;
  input [3:0]DI;
  input [3:0]\A_reg[14] ;
  input [3:0]\A_reg[22] ;
  input [3:0]\B_reg[22] ;
  input [3:0]\A_reg[31]_0 ;
  input [3:0]\B_reg[30] ;
  input [2:0]\current_state_reg[2]_0 ;
  input [31:0]D;

  wire [30:0]ALU_a;
  wire [3:0]\A_reg[14] ;
  wire [3:0]\A_reg[19] ;
  wire [3:0]\A_reg[22] ;
  wire [3:0]\A_reg[23] ;
  wire [3:0]\A_reg[27] ;
  wire [3:0]\A_reg[31] ;
  wire [3:0]\A_reg[31]_0 ;
  wire [3:0]\A_reg[6] ;
  wire [3:0]\A_reg[7] ;
  wire [3:0]\B_reg[11] ;
  wire [3:0]\B_reg[11]_0 ;
  wire [3:0]\B_reg[15] ;
  wire [3:0]\B_reg[15]_0 ;
  wire [3:0]\B_reg[19] ;
  wire [3:0]\B_reg[22] ;
  wire [3:0]\B_reg[23] ;
  wire [3:0]\B_reg[27] ;
  wire [3:0]\B_reg[30] ;
  wire [3:0]\B_reg[31] ;
  wire [3:0]\B_reg[3] ;
  wire [3:0]\B_reg[3]_0 ;
  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [3:0]DI;
  wire [3:0]O;
  wire [31:0]Q;
  wire [3:0]S;
  wire [3:0]\current_state_reg[2] ;
  wire [2:0]\current_state_reg[2]_0 ;
  wire \f[0]_i_10_n_1 ;
  wire \f[0]_i_11_n_1 ;
  wire \f[0]_i_12_n_1 ;
  wire \f[0]_i_13_n_1 ;
  wire \f[0]_i_14_n_1 ;
  wire \f[0]_i_15_n_1 ;
  wire \f[0]_i_16_n_1 ;
  wire \f[0]_i_17_n_1 ;
  wire \f[0]_i_18_n_1 ;
  wire \f[0]_i_19_n_1 ;
  wire \f[0]_i_1_n_1 ;
  wire \f[0]_i_20_n_1 ;
  wire \f[0]_i_21_n_1 ;
  wire \f[0]_i_22_n_1 ;
  wire \f[0]_i_23_n_1 ;
  wire \f[0]_i_24_n_1 ;
  wire \f[0]_i_25_n_1 ;
  wire \f[0]_i_26_n_1 ;
  wire \f[0]_i_27_n_1 ;
  wire \f[0]_i_28_n_1 ;
  wire \f[0]_i_29_n_1 ;
  wire \f[0]_i_2_n_1 ;
  wire \f[0]_i_3_n_1 ;
  wire \f[0]_i_4_n_1 ;
  wire \f[0]_i_5_n_1 ;
  wire \f[0]_i_6_n_1 ;
  wire \f[0]_i_7_n_1 ;
  wire \f[0]_i_8_n_1 ;
  wire \f[0]_i_9_n_1 ;
  wire [3:0]\f_reg[0]_0 ;
  wire [3:0]\f_reg[0]_1 ;
  wire flag;
  wire y0_carry__0_n_1;
  wire y0_carry__0_n_2;
  wire y0_carry__0_n_3;
  wire y0_carry__0_n_4;
  wire y0_carry__1_n_1;
  wire y0_carry__1_n_2;
  wire y0_carry__1_n_3;
  wire y0_carry__1_n_4;
  wire y0_carry__2_n_1;
  wire y0_carry__2_n_2;
  wire y0_carry__2_n_3;
  wire y0_carry__2_n_4;
  wire y0_carry__3_n_1;
  wire y0_carry__3_n_2;
  wire y0_carry__3_n_3;
  wire y0_carry__3_n_4;
  wire y0_carry__4_n_1;
  wire y0_carry__4_n_2;
  wire y0_carry__4_n_3;
  wire y0_carry__4_n_4;
  wire y0_carry__5_n_1;
  wire y0_carry__5_n_2;
  wire y0_carry__5_n_3;
  wire y0_carry__5_n_4;
  wire y0_carry__6_n_2;
  wire y0_carry__6_n_3;
  wire y0_carry__6_n_4;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire y0_carry_n_4;
  wire \y0_inferred__0/i__carry__0_n_1 ;
  wire \y0_inferred__0/i__carry__0_n_2 ;
  wire \y0_inferred__0/i__carry__0_n_3 ;
  wire \y0_inferred__0/i__carry__0_n_4 ;
  wire \y0_inferred__0/i__carry__1_n_1 ;
  wire \y0_inferred__0/i__carry__1_n_2 ;
  wire \y0_inferred__0/i__carry__1_n_3 ;
  wire \y0_inferred__0/i__carry__1_n_4 ;
  wire \y0_inferred__0/i__carry__2_n_1 ;
  wire \y0_inferred__0/i__carry__2_n_2 ;
  wire \y0_inferred__0/i__carry__2_n_3 ;
  wire \y0_inferred__0/i__carry__2_n_4 ;
  wire \y0_inferred__0/i__carry__3_n_1 ;
  wire \y0_inferred__0/i__carry__3_n_2 ;
  wire \y0_inferred__0/i__carry__3_n_3 ;
  wire \y0_inferred__0/i__carry__3_n_4 ;
  wire \y0_inferred__0/i__carry__4_n_1 ;
  wire \y0_inferred__0/i__carry__4_n_2 ;
  wire \y0_inferred__0/i__carry__4_n_3 ;
  wire \y0_inferred__0/i__carry__4_n_4 ;
  wire \y0_inferred__0/i__carry__5_n_1 ;
  wire \y0_inferred__0/i__carry__5_n_2 ;
  wire \y0_inferred__0/i__carry__5_n_3 ;
  wire \y0_inferred__0/i__carry__5_n_4 ;
  wire \y0_inferred__0/i__carry__6_n_2 ;
  wire \y0_inferred__0/i__carry__6_n_3 ;
  wire \y0_inferred__0/i__carry__6_n_4 ;
  wire \y0_inferred__0/i__carry_n_1 ;
  wire \y0_inferred__0/i__carry_n_2 ;
  wire \y0_inferred__0/i__carry_n_3 ;
  wire \y0_inferred__0/i__carry_n_4 ;
  wire \y0_inferred__4/i__carry__0_n_1 ;
  wire \y0_inferred__4/i__carry__0_n_2 ;
  wire \y0_inferred__4/i__carry__0_n_3 ;
  wire \y0_inferred__4/i__carry__0_n_4 ;
  wire \y0_inferred__4/i__carry__1_n_1 ;
  wire \y0_inferred__4/i__carry__1_n_2 ;
  wire \y0_inferred__4/i__carry__1_n_3 ;
  wire \y0_inferred__4/i__carry__1_n_4 ;
  wire \y0_inferred__4/i__carry__2_n_2 ;
  wire \y0_inferred__4/i__carry__2_n_3 ;
  wire \y0_inferred__4/i__carry__2_n_4 ;
  wire \y0_inferred__4/i__carry_n_1 ;
  wire \y0_inferred__4/i__carry_n_2 ;
  wire \y0_inferred__4/i__carry_n_3 ;
  wire \y0_inferred__4/i__carry_n_4 ;
  wire [3:0]\y_reg[11]_0 ;
  wire [3:0]\y_reg[15]_0 ;
  wire [3:0]\y_reg[19]_0 ;
  wire [3:0]\y_reg[19]_1 ;
  wire [3:0]\y_reg[23]_0 ;
  wire [3:0]\y_reg[23]_1 ;
  wire [3:0]\y_reg[27]_0 ;
  wire [3:0]\y_reg[27]_1 ;
  wire [3:0]\y_reg[31]_0 ;
  wire [3:0]\y_reg[31]_1 ;
  wire [3:0]\y_reg[3]_0 ;
  wire [3:0]\y_reg[3]_1 ;
  wire [3:0]\y_reg[7]_0 ;
  wire [3:3]NLW_y0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_y0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]\NLW_y0_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_y0_inferred__4/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_y0_inferred__4/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_y0_inferred__4/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \f[0]_i_1 
       (.I0(\f[0]_i_2_n_1 ),
        .I1(\f[0]_i_3_n_1 ),
        .I2(\f[0]_i_4_n_1 ),
        .I3(\f[0]_i_5_n_1 ),
        .I4(\f[0]_i_6_n_1 ),
        .I5(\f[0]_i_7_n_1 ),
        .O(\f[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \f[0]_i_10 
       (.I0(\y_reg[27]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[27]_0 [2]),
        .I3(\y_reg[27]_0 [0]),
        .I4(\y_reg[27]_0 [1]),
        .O(\f[0]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \f[0]_i_11 
       (.I0(\current_state_reg[2]_0 [0]),
        .I1(\y_reg[27]_1 [3]),
        .I2(\y_reg[27]_1 [2]),
        .I3(\y_reg[27]_1 [0]),
        .I4(\y_reg[27]_1 [1]),
        .O(\f[0]_i_11_n_1 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \f[0]_i_12 
       (.I0(\y_reg[31]_1 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[31]_1 [2]),
        .I3(\y_reg[31]_1 [1]),
        .I4(\y_reg[31]_1 [0]),
        .O(\f[0]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \f[0]_i_13 
       (.I0(\y_reg[31]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[31]_0 [2]),
        .I3(\y_reg[31]_0 [0]),
        .I4(\y_reg[31]_0 [1]),
        .O(\f[0]_i_13_n_1 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \f[0]_i_14 
       (.I0(\y_reg[11]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[11]_0 [2]),
        .I3(\y_reg[11]_0 [1]),
        .I4(\y_reg[11]_0 [0]),
        .O(\f[0]_i_14_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \f[0]_i_15 
       (.I0(\y_reg[15]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[15]_0 [2]),
        .I3(\y_reg[15]_0 [1]),
        .I4(\y_reg[15]_0 [0]),
        .O(\f[0]_i_15_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \f[0]_i_16 
       (.I0(\y_reg[3]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[3]_0 [2]),
        .I3(\y_reg[3]_0 [0]),
        .I4(\y_reg[3]_0 [1]),
        .O(\f[0]_i_16_n_1 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \f[0]_i_17 
       (.I0(\y_reg[3]_1 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[3]_1 [2]),
        .I3(\y_reg[3]_1 [0]),
        .I4(\y_reg[3]_1 [1]),
        .O(\f[0]_i_17_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \f[0]_i_18 
       (.I0(O[3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(O[2]),
        .I3(O[1]),
        .I4(O[0]),
        .O(\f[0]_i_18_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \f[0]_i_19 
       (.I0(\y_reg[7]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[7]_0 [2]),
        .I3(\y_reg[7]_0 [1]),
        .I4(\y_reg[7]_0 [0]),
        .O(\f[0]_i_19_n_1 ));
  LUT4 #(
    .INIT(16'hFFF2)) 
    \f[0]_i_2 
       (.I0(\f[0]_i_8_n_1 ),
        .I1(\f[0]_i_9_n_1 ),
        .I2(\current_state_reg[2]_0 [1]),
        .I3(\current_state_reg[2]_0 [2]),
        .O(\f[0]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \f[0]_i_20 
       (.I0(\y_reg[23]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[23]_0 [2]),
        .I3(\y_reg[23]_0 [0]),
        .I4(\y_reg[23]_0 [1]),
        .O(\f[0]_i_20_n_1 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \f[0]_i_21 
       (.I0(\y_reg[23]_1 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[23]_1 [2]),
        .I3(\y_reg[23]_1 [1]),
        .I4(\y_reg[23]_1 [0]),
        .O(\f[0]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \f[0]_i_22 
       (.I0(Q[30]),
        .I1(Q[6]),
        .I2(Q[24]),
        .I3(Q[13]),
        .I4(\f[0]_i_26_n_1 ),
        .I5(\f[0]_i_27_n_1 ),
        .O(\f[0]_i_22_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \f[0]_i_23 
       (.I0(Q[22]),
        .I1(Q[7]),
        .I2(Q[12]),
        .I3(Q[11]),
        .I4(\f[0]_i_28_n_1 ),
        .O(\f[0]_i_23_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \f[0]_i_24 
       (.I0(Q[31]),
        .I1(Q[20]),
        .I2(Q[10]),
        .I3(Q[8]),
        .I4(\f[0]_i_29_n_1 ),
        .O(\f[0]_i_24_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \f[0]_i_25 
       (.I0(\current_state_reg[2]_0 [1]),
        .I1(\current_state_reg[2]_0 [2]),
        .I2(Q[17]),
        .I3(Q[5]),
        .I4(Q[26]),
        .I5(Q[21]),
        .O(\f[0]_i_25_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \f[0]_i_26 
       (.I0(Q[16]),
        .I1(Q[28]),
        .I2(Q[15]),
        .I3(Q[29]),
        .O(\f[0]_i_26_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \f[0]_i_27 
       (.I0(Q[19]),
        .I1(Q[27]),
        .I2(Q[23]),
        .I3(Q[25]),
        .O(\f[0]_i_27_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \f[0]_i_28 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\f[0]_i_28_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \f[0]_i_29 
       (.I0(Q[4]),
        .I1(Q[9]),
        .I2(Q[14]),
        .I3(Q[18]),
        .O(\f[0]_i_29_n_1 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \f[0]_i_3 
       (.I0(\f[0]_i_10_n_1 ),
        .I1(\f[0]_i_11_n_1 ),
        .I2(\f[0]_i_12_n_1 ),
        .I3(\f[0]_i_13_n_1 ),
        .O(\f[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \f[0]_i_4 
       (.I0(\f_reg[0]_0 [1]),
        .I1(\f_reg[0]_0 [0]),
        .I2(\f_reg[0]_0 [2]),
        .I3(\current_state_reg[2]_0 [0]),
        .I4(\f_reg[0]_0 [3]),
        .I5(\f[0]_i_14_n_1 ),
        .O(\f[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
    \f[0]_i_5 
       (.I0(\f_reg[0]_1 [0]),
        .I1(\f_reg[0]_1 [1]),
        .I2(\f_reg[0]_1 [2]),
        .I3(\current_state_reg[2]_0 [0]),
        .I4(\f_reg[0]_1 [3]),
        .I5(\f[0]_i_15_n_1 ),
        .O(\f[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hEE0EEE0E0000EE0E)) 
    \f[0]_i_6 
       (.I0(\f[0]_i_16_n_1 ),
        .I1(\f[0]_i_17_n_1 ),
        .I2(\f[0]_i_18_n_1 ),
        .I3(\f[0]_i_19_n_1 ),
        .I4(\f[0]_i_20_n_1 ),
        .I5(\f[0]_i_21_n_1 ),
        .O(\f[0]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \f[0]_i_7 
       (.I0(\f[0]_i_22_n_1 ),
        .I1(\f[0]_i_23_n_1 ),
        .I2(\f[0]_i_24_n_1 ),
        .I3(\f[0]_i_25_n_1 ),
        .O(\f[0]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \f[0]_i_8 
       (.I0(\current_state_reg[2]_0 [0]),
        .I1(\y_reg[19]_1 [3]),
        .I2(\y_reg[19]_1 [2]),
        .I3(\y_reg[19]_1 [0]),
        .I4(\y_reg[19]_1 [1]),
        .O(\f[0]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \f[0]_i_9 
       (.I0(\y_reg[19]_0 [3]),
        .I1(\current_state_reg[2]_0 [0]),
        .I2(\y_reg[19]_0 [2]),
        .I3(\y_reg[19]_0 [1]),
        .I4(\y_reg[19]_0 [0]),
        .O(\f[0]_i_9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \f_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\f[0]_i_1_n_1 ),
        .Q(flag),
        .R(1'b0));
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_1,y0_carry_n_2,y0_carry_n_3,y0_carry_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[3:0]),
        .O(\y_reg[3]_0 ),
        .S(\B_reg[3] ));
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_1),
        .CO({y0_carry__0_n_1,y0_carry__0_n_2,y0_carry__0_n_3,y0_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[7:4]),
        .O(\y_reg[7]_0 ),
        .S(\current_state_reg[2] ));
  CARRY4 y0_carry__1
       (.CI(y0_carry__0_n_1),
        .CO({y0_carry__1_n_1,y0_carry__1_n_2,y0_carry__1_n_3,y0_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[11:8]),
        .O(\f_reg[0]_0 ),
        .S(\B_reg[11] ));
  CARRY4 y0_carry__2
       (.CI(y0_carry__1_n_1),
        .CO({y0_carry__2_n_1,y0_carry__2_n_2,y0_carry__2_n_3,y0_carry__2_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[15:12]),
        .O(\y_reg[15]_0 ),
        .S(\B_reg[15] ));
  CARRY4 y0_carry__3
       (.CI(y0_carry__2_n_1),
        .CO({y0_carry__3_n_1,y0_carry__3_n_2,y0_carry__3_n_3,y0_carry__3_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[19:16]),
        .O(\y_reg[19]_0 ),
        .S(\B_reg[19] ));
  CARRY4 y0_carry__4
       (.CI(y0_carry__3_n_1),
        .CO({y0_carry__4_n_1,y0_carry__4_n_2,y0_carry__4_n_3,y0_carry__4_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[23:20]),
        .O(\y_reg[23]_0 ),
        .S(\B_reg[23] ));
  CARRY4 y0_carry__5
       (.CI(y0_carry__4_n_1),
        .CO({y0_carry__5_n_1,y0_carry__5_n_2,y0_carry__5_n_3,y0_carry__5_n_4}),
        .CYINIT(1'b0),
        .DI(ALU_a[27:24]),
        .O(\y_reg[27]_0 ),
        .S(\A_reg[27] ));
  CARRY4 y0_carry__6
       (.CI(y0_carry__5_n_1),
        .CO({NLW_y0_carry__6_CO_UNCONNECTED[3],y0_carry__6_n_2,y0_carry__6_n_3,y0_carry__6_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,ALU_a[30:28]}),
        .O(\y_reg[31]_0 ),
        .S(\A_reg[31] ));
  CARRY4 \y0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\y0_inferred__0/i__carry_n_1 ,\y0_inferred__0/i__carry_n_2 ,\y0_inferred__0/i__carry_n_3 ,\y0_inferred__0/i__carry_n_4 }),
        .CYINIT(1'b1),
        .DI(ALU_a[3:0]),
        .O(\y_reg[3]_1 ),
        .S(\B_reg[3]_0 ));
  CARRY4 \y0_inferred__0/i__carry__0 
       (.CI(\y0_inferred__0/i__carry_n_1 ),
        .CO({\y0_inferred__0/i__carry__0_n_1 ,\y0_inferred__0/i__carry__0_n_2 ,\y0_inferred__0/i__carry__0_n_3 ,\y0_inferred__0/i__carry__0_n_4 }),
        .CYINIT(1'b0),
        .DI(ALU_a[7:4]),
        .O(O),
        .S(\A_reg[7] ));
  CARRY4 \y0_inferred__0/i__carry__1 
       (.CI(\y0_inferred__0/i__carry__0_n_1 ),
        .CO({\y0_inferred__0/i__carry__1_n_1 ,\y0_inferred__0/i__carry__1_n_2 ,\y0_inferred__0/i__carry__1_n_3 ,\y0_inferred__0/i__carry__1_n_4 }),
        .CYINIT(1'b0),
        .DI(ALU_a[11:8]),
        .O(\y_reg[11]_0 ),
        .S(\B_reg[11]_0 ));
  CARRY4 \y0_inferred__0/i__carry__2 
       (.CI(\y0_inferred__0/i__carry__1_n_1 ),
        .CO({\y0_inferred__0/i__carry__2_n_1 ,\y0_inferred__0/i__carry__2_n_2 ,\y0_inferred__0/i__carry__2_n_3 ,\y0_inferred__0/i__carry__2_n_4 }),
        .CYINIT(1'b0),
        .DI(ALU_a[15:12]),
        .O(\f_reg[0]_1 ),
        .S(\B_reg[15]_0 ));
  CARRY4 \y0_inferred__0/i__carry__3 
       (.CI(\y0_inferred__0/i__carry__2_n_1 ),
        .CO({\y0_inferred__0/i__carry__3_n_1 ,\y0_inferred__0/i__carry__3_n_2 ,\y0_inferred__0/i__carry__3_n_3 ,\y0_inferred__0/i__carry__3_n_4 }),
        .CYINIT(1'b0),
        .DI(ALU_a[19:16]),
        .O(\y_reg[19]_1 ),
        .S(\A_reg[19] ));
  CARRY4 \y0_inferred__0/i__carry__4 
       (.CI(\y0_inferred__0/i__carry__3_n_1 ),
        .CO({\y0_inferred__0/i__carry__4_n_1 ,\y0_inferred__0/i__carry__4_n_2 ,\y0_inferred__0/i__carry__4_n_3 ,\y0_inferred__0/i__carry__4_n_4 }),
        .CYINIT(1'b0),
        .DI(ALU_a[23:20]),
        .O(\y_reg[23]_1 ),
        .S(\A_reg[23] ));
  CARRY4 \y0_inferred__0/i__carry__5 
       (.CI(\y0_inferred__0/i__carry__4_n_1 ),
        .CO({\y0_inferred__0/i__carry__5_n_1 ,\y0_inferred__0/i__carry__5_n_2 ,\y0_inferred__0/i__carry__5_n_3 ,\y0_inferred__0/i__carry__5_n_4 }),
        .CYINIT(1'b0),
        .DI(ALU_a[27:24]),
        .O(\y_reg[27]_1 ),
        .S(\B_reg[27] ));
  CARRY4 \y0_inferred__0/i__carry__6 
       (.CI(\y0_inferred__0/i__carry__5_n_1 ),
        .CO({\NLW_y0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\y0_inferred__0/i__carry__6_n_2 ,\y0_inferred__0/i__carry__6_n_3 ,\y0_inferred__0/i__carry__6_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,ALU_a[30:28]}),
        .O(\y_reg[31]_1 ),
        .S(\B_reg[31] ));
  CARRY4 \y0_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\y0_inferred__4/i__carry_n_1 ,\y0_inferred__4/i__carry_n_2 ,\y0_inferred__4/i__carry_n_3 ,\y0_inferred__4/i__carry_n_4 }),
        .CYINIT(1'b0),
        .DI(\A_reg[6] ),
        .O(\NLW_y0_inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S(S));
  CARRY4 \y0_inferred__4/i__carry__0 
       (.CI(\y0_inferred__4/i__carry_n_1 ),
        .CO({\y0_inferred__4/i__carry__0_n_1 ,\y0_inferred__4/i__carry__0_n_2 ,\y0_inferred__4/i__carry__0_n_3 ,\y0_inferred__4/i__carry__0_n_4 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O(\NLW_y0_inferred__4/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\A_reg[14] ));
  CARRY4 \y0_inferred__4/i__carry__1 
       (.CI(\y0_inferred__4/i__carry__0_n_1 ),
        .CO({\y0_inferred__4/i__carry__1_n_1 ,\y0_inferred__4/i__carry__1_n_2 ,\y0_inferred__4/i__carry__1_n_3 ,\y0_inferred__4/i__carry__1_n_4 }),
        .CYINIT(1'b0),
        .DI(\A_reg[22] ),
        .O(\NLW_y0_inferred__4/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\B_reg[22] ));
  CARRY4 \y0_inferred__4/i__carry__2 
       (.CI(\y0_inferred__4/i__carry__1_n_1 ),
        .CO({CO,\y0_inferred__4/i__carry__2_n_2 ,\y0_inferred__4/i__carry__2_n_3 ,\y0_inferred__4/i__carry__2_n_4 }),
        .CYINIT(1'b0),
        .DI(\A_reg[31]_0 ),
        .O(\NLW_y0_inferred__4/i__carry__2_O_UNCONNECTED [3:0]),
        .S(\B_reg[30] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module ALU_control
   (D,
    \y_reg[15] ,
    \y_reg[7] ,
    Q,
    \B_reg[15] ,
    \A_reg[15] ,
    \B_reg[14] ,
    \A_reg[14] ,
    \B_reg[13] ,
    \A_reg[13] ,
    \B_reg[12] ,
    \A_reg[12] ,
    \B_reg[11] ,
    \A_reg[11] ,
    \B_reg[10] ,
    \A_reg[10] ,
    \B_reg[9] ,
    \A_reg[9] ,
    \B_reg[8] ,
    \A_reg[8] ,
    \current_state_reg[2] ,
    O,
    \current_state_reg[2]_0 ,
    \B_reg[7] ,
    \ALUout_reg[31] ,
    \current_state_reg[1] ,
    \A_reg[31] ,
    \B_reg[6] ,
    \A_reg[6] ,
    \B_reg[5] ,
    \A_reg[5] ,
    \B_reg[4] ,
    \A_reg[4] ,
    \B_reg[3] ,
    \A_reg[3] ,
    \B_reg[1] ,
    \B_reg[1]_0 ,
    \A_reg[31]_0 ,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \current_state_reg[1]_2 ,
    \B_reg[30] ,
    \B_reg[30]_0 ,
    \B_reg[29] ,
    \B_reg[29]_0 ,
    \B_reg[28] ,
    \B_reg[28]_0 ,
    \B_reg[27] ,
    \B_reg[27]_0 ,
    \B_reg[26] ,
    \B_reg[26]_0 ,
    \B_reg[25] ,
    \B_reg[25]_0 ,
    \B_reg[24] ,
    \B_reg[24]_0 ,
    \B_reg[23] ,
    \B_reg[23]_0 ,
    \B_reg[22] ,
    \B_reg[22]_0 ,
    \B_reg[21] ,
    \B_reg[21]_0 ,
    \B_reg[20] ,
    \B_reg[20]_0 ,
    \B_reg[19] ,
    \B_reg[19]_0 ,
    \B_reg[18] ,
    \B_reg[18]_0 ,
    \B_reg[17] ,
    \B_reg[17]_0 ,
    \B_reg[16] ,
    \A_reg[16] ,
    \B_reg[2] ,
    \A_reg[2] ,
    \B_reg[0] ,
    CO,
    \current_state_reg[1]_3 ,
    \current_state_reg[1]_4 ,
    ALU_b,
    \current_state_reg[1]_5 ,
    \current_state_reg[1]_6 ,
    \current_state_reg[1]_7 ,
    \current_state_reg[1]_8 ,
    \current_state_reg[1]_9 ,
    \current_state_reg[1]_10 ,
    \current_state_reg[1]_11 ,
    \current_state_reg[1]_12 ,
    \current_state_reg[1]_13 ,
    \current_state_reg[1]_14 ,
    \current_state_reg[0] ,
    \current_state_reg[3] ,
    E);
  output [31:0]D;
  output [2:0]\y_reg[15] ;
  output \y_reg[7] ;
  input [31:0]Q;
  input \B_reg[15] ;
  input \A_reg[15] ;
  input \B_reg[14] ;
  input \A_reg[14] ;
  input \B_reg[13] ;
  input \A_reg[13] ;
  input \B_reg[12] ;
  input \A_reg[12] ;
  input \B_reg[11] ;
  input \A_reg[11] ;
  input \B_reg[10] ;
  input \A_reg[10] ;
  input \B_reg[9] ;
  input \A_reg[9] ;
  input \B_reg[8] ;
  input \A_reg[8] ;
  input \current_state_reg[2] ;
  input [3:0]O;
  input [3:0]\current_state_reg[2]_0 ;
  input \B_reg[7] ;
  input [2:0]\ALUout_reg[31] ;
  input \current_state_reg[1] ;
  input [2:0]\A_reg[31] ;
  input \B_reg[6] ;
  input \A_reg[6] ;
  input \B_reg[5] ;
  input \A_reg[5] ;
  input \B_reg[4] ;
  input \A_reg[4] ;
  input \B_reg[3] ;
  input \A_reg[3] ;
  input \B_reg[1] ;
  input \B_reg[1]_0 ;
  input \A_reg[31]_0 ;
  input [3:0]\current_state_reg[1]_0 ;
  input [3:0]\current_state_reg[1]_1 ;
  input \current_state_reg[1]_2 ;
  input \B_reg[30] ;
  input \B_reg[30]_0 ;
  input \B_reg[29] ;
  input \B_reg[29]_0 ;
  input \B_reg[28] ;
  input \B_reg[28]_0 ;
  input \B_reg[27] ;
  input \B_reg[27]_0 ;
  input \B_reg[26] ;
  input \B_reg[26]_0 ;
  input \B_reg[25] ;
  input \B_reg[25]_0 ;
  input \B_reg[24] ;
  input \B_reg[24]_0 ;
  input \B_reg[23] ;
  input \B_reg[23]_0 ;
  input \B_reg[22] ;
  input \B_reg[22]_0 ;
  input \B_reg[21] ;
  input \B_reg[21]_0 ;
  input \B_reg[20] ;
  input \B_reg[20]_0 ;
  input \B_reg[19] ;
  input \B_reg[19]_0 ;
  input \B_reg[18] ;
  input \B_reg[18]_0 ;
  input \B_reg[17] ;
  input \B_reg[17]_0 ;
  input \B_reg[16] ;
  input \A_reg[16] ;
  input \B_reg[2] ;
  input \A_reg[2] ;
  input \B_reg[0] ;
  input [0:0]CO;
  input [3:0]\current_state_reg[1]_3 ;
  input [3:0]\current_state_reg[1]_4 ;
  input [0:0]ALU_b;
  input [3:0]\current_state_reg[1]_5 ;
  input [3:0]\current_state_reg[1]_6 ;
  input [3:0]\current_state_reg[1]_7 ;
  input [3:0]\current_state_reg[1]_8 ;
  input [3:0]\current_state_reg[1]_9 ;
  input [3:0]\current_state_reg[1]_10 ;
  input [3:0]\current_state_reg[1]_11 ;
  input [3:0]\current_state_reg[1]_12 ;
  input [3:0]\current_state_reg[1]_13 ;
  input [3:0]\current_state_reg[1]_14 ;
  input [5:0]\current_state_reg[0] ;
  input [2:0]\current_state_reg[3] ;
  input [0:0]E;

  wire [0:0]ALU_b;
  wire [2:0]\ALUout_reg[31] ;
  wire \A_reg[10] ;
  wire \A_reg[11] ;
  wire \A_reg[12] ;
  wire \A_reg[13] ;
  wire \A_reg[14] ;
  wire \A_reg[15] ;
  wire \A_reg[16] ;
  wire \A_reg[2] ;
  wire [2:0]\A_reg[31] ;
  wire \A_reg[31]_0 ;
  wire \A_reg[3] ;
  wire \A_reg[4] ;
  wire \A_reg[5] ;
  wire \A_reg[6] ;
  wire \A_reg[8] ;
  wire \A_reg[9] ;
  wire \B_reg[0] ;
  wire \B_reg[10] ;
  wire \B_reg[11] ;
  wire \B_reg[12] ;
  wire \B_reg[13] ;
  wire \B_reg[14] ;
  wire \B_reg[15] ;
  wire \B_reg[16] ;
  wire \B_reg[17] ;
  wire \B_reg[17]_0 ;
  wire \B_reg[18] ;
  wire \B_reg[18]_0 ;
  wire \B_reg[19] ;
  wire \B_reg[19]_0 ;
  wire \B_reg[1] ;
  wire \B_reg[1]_0 ;
  wire \B_reg[20] ;
  wire \B_reg[20]_0 ;
  wire \B_reg[21] ;
  wire \B_reg[21]_0 ;
  wire \B_reg[22] ;
  wire \B_reg[22]_0 ;
  wire \B_reg[23] ;
  wire \B_reg[23]_0 ;
  wire \B_reg[24] ;
  wire \B_reg[24]_0 ;
  wire \B_reg[25] ;
  wire \B_reg[25]_0 ;
  wire \B_reg[26] ;
  wire \B_reg[26]_0 ;
  wire \B_reg[27] ;
  wire \B_reg[27]_0 ;
  wire \B_reg[28] ;
  wire \B_reg[28]_0 ;
  wire \B_reg[29] ;
  wire \B_reg[29]_0 ;
  wire \B_reg[2] ;
  wire \B_reg[30] ;
  wire \B_reg[30]_0 ;
  wire \B_reg[3] ;
  wire \B_reg[4] ;
  wire \B_reg[5] ;
  wire \B_reg[6] ;
  wire \B_reg[7] ;
  wire \B_reg[8] ;
  wire \B_reg[9] ;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [31:0]Q;
  wire [5:0]\current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire [3:0]\current_state_reg[1]_0 ;
  wire [3:0]\current_state_reg[1]_1 ;
  wire [3:0]\current_state_reg[1]_10 ;
  wire [3:0]\current_state_reg[1]_11 ;
  wire [3:0]\current_state_reg[1]_12 ;
  wire [3:0]\current_state_reg[1]_13 ;
  wire [3:0]\current_state_reg[1]_14 ;
  wire \current_state_reg[1]_2 ;
  wire [3:0]\current_state_reg[1]_3 ;
  wire [3:0]\current_state_reg[1]_4 ;
  wire [3:0]\current_state_reg[1]_5 ;
  wire [3:0]\current_state_reg[1]_6 ;
  wire [3:0]\current_state_reg[1]_7 ;
  wire [3:0]\current_state_reg[1]_8 ;
  wire [3:0]\current_state_reg[1]_9 ;
  wire \current_state_reg[2] ;
  wire [3:0]\current_state_reg[2]_0 ;
  wire [2:0]\current_state_reg[3] ;
  wire \y[0]_i_3_n_1 ;
  wire \y[0]_i_4_n_1 ;
  wire \y[0]_i_5_n_1 ;
  wire \y[0]_i_6_n_1 ;
  wire \y[10]_i_2_n_1 ;
  wire \y[11]_i_2_n_1 ;
  wire \y[12]_i_2_n_1 ;
  wire \y[13]_i_2_n_1 ;
  wire \y[14]_i_2_n_1 ;
  wire \y[15]_i_2_n_1 ;
  wire \y[16]_i_2_n_1 ;
  wire \y[17]_i_4_n_1 ;
  wire \y[18]_i_4_n_1 ;
  wire \y[19]_i_4_n_1 ;
  wire \y[1]_i_4_n_1 ;
  wire \y[20]_i_4_n_1 ;
  wire \y[21]_i_4_n_1 ;
  wire \y[22]_i_4_n_1 ;
  wire \y[23]_i_4_n_1 ;
  wire \y[24]_i_4_n_1 ;
  wire \y[25]_i_4_n_1 ;
  wire \y[26]_i_4_n_1 ;
  wire \y[27]_i_4_n_1 ;
  wire \y[28]_i_4_n_1 ;
  wire \y[29]_i_4_n_1 ;
  wire \y[2]_i_2_n_1 ;
  wire \y[30]_i_4_n_1 ;
  wire \y[31]_i_3_n_1 ;
  wire \y[31]_i_4_n_1 ;
  wire \y[3]_i_2_n_1 ;
  wire \y[4]_i_2_n_1 ;
  wire \y[5]_i_2_n_1 ;
  wire \y[6]_i_2_n_1 ;
  wire \y[7]_i_3_n_1 ;
  wire \y[7]_i_4_n_1 ;
  wire \y[8]_i_2_n_1 ;
  wire \y[9]_i_2_n_1 ;
  wire [2:0]\y_reg[15] ;
  wire \y_reg[7] ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUoperation_reg[0] 
       (.CLR(1'b0),
        .D(\current_state_reg[3] [0]),
        .G(E),
        .GE(1'b1),
        .Q(\y_reg[15] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUoperation_reg[1] 
       (.CLR(1'b0),
        .D(\current_state_reg[3] [1]),
        .G(E),
        .GE(1'b1),
        .Q(\y_reg[15] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUoperation_reg[2] 
       (.CLR(1'b0),
        .D(\current_state_reg[3] [2]),
        .G(E),
        .GE(1'b1),
        .Q(\y_reg[15] [2]));
  LUT6 #(
    .INIT(64'h0000020007000300)) 
    \ALUoperation_reg[2]_i_5 
       (.I0(\current_state_reg[0] [1]),
        .I1(\current_state_reg[0] [0]),
        .I2(\current_state_reg[0] [4]),
        .I3(\current_state_reg[0] [5]),
        .I4(\current_state_reg[0] [2]),
        .I5(\current_state_reg[0] [3]),
        .O(\y_reg[7] ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFC0CFC0)) 
    \y[0]_i_1 
       (.I0(\B_reg[0] ),
        .I1(CO),
        .I2(\y[0]_i_3_n_1 ),
        .I3(\y[0]_i_4_n_1 ),
        .I4(Q[0]),
        .I5(\y[0]_i_5_n_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \y[0]_i_3 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .O(\y[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFAFAAAAFEAE)) 
    \y[0]_i_4 
       (.I0(\y[0]_i_6_n_1 ),
        .I1(\current_state_reg[1]_3 [0]),
        .I2(\y_reg[15] [0]),
        .I3(\current_state_reg[1]_4 [0]),
        .I4(\y_reg[15] [1]),
        .I5(\y_reg[15] [2]),
        .O(\y[0]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \y[0]_i_5 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\y_reg[15] [0]),
        .O(\y[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hC8CCC88880888000)) 
    \y[0]_i_6 
       (.I0(\y_reg[15] [0]),
        .I1(\y_reg[15] [1]),
        .I2(\ALUout_reg[31] [0]),
        .I3(\current_state_reg[1] ),
        .I4(\A_reg[31] [0]),
        .I5(ALU_b),
        .O(\y[0]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[10]_i_1 
       (.I0(Q[10]),
        .I1(\y[10]_i_2_n_1 ),
        .I2(\B_reg[10] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[10]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_5 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_6 [2]),
        .O(\y[10]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[11]_i_1 
       (.I0(Q[11]),
        .I1(\y[11]_i_2_n_1 ),
        .I2(\B_reg[11] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAAF3AAE2)) 
    \y[11]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [0]),
        .I2(\current_state_reg[1]_5 [3]),
        .I3(\y_reg[15] [1]),
        .I4(\current_state_reg[1]_6 [3]),
        .O(\y[11]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[12]_i_1 
       (.I0(Q[12]),
        .I1(\y[12]_i_2_n_1 ),
        .I2(\B_reg[12] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[12]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_7 [0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_8 [0]),
        .O(\y[12]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[13]_i_1 
       (.I0(Q[13]),
        .I1(\y[13]_i_2_n_1 ),
        .I2(\B_reg[13] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[13]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_7 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_8 [1]),
        .O(\y[13]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[14]_i_1 
       (.I0(Q[14]),
        .I1(\y[14]_i_2_n_1 ),
        .I2(\B_reg[14] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[14]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_7 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_8 [2]),
        .O(\y[14]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[15]_i_1 
       (.I0(Q[15]),
        .I1(\y[15]_i_2_n_1 ),
        .I2(\B_reg[15] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hBB88BABA)) 
    \y[15]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_8 [3]),
        .I3(\current_state_reg[1]_7 [3]),
        .I4(\y_reg[15] [0]),
        .O(\y[15]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[16]_i_1 
       (.I0(Q[16]),
        .I1(\y[16]_i_2_n_1 ),
        .I2(\B_reg[16] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[16]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_9 [0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_10 [0]),
        .O(\y[16]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[17]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[17]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[17] ),
        .I4(\B_reg[17]_0 ),
        .I5(\y[17]_i_4_n_1 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[17]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_9 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_10 [1]),
        .O(\y[17]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[18]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[18]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[18] ),
        .I4(\B_reg[18]_0 ),
        .I5(\y[18]_i_4_n_1 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[18]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_9 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_10 [2]),
        .O(\y[18]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[19]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[19]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[19] ),
        .I4(\B_reg[19]_0 ),
        .I5(\y[19]_i_4_n_1 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hBBBA88BA)) 
    \y[19]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_10 [3]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_9 [3]),
        .O(\y[19]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[1]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[1]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[1] ),
        .I4(\B_reg[1]_0 ),
        .I5(\y[1]_i_4_n_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[1]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_4 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_3 [1]),
        .O(\y[1]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[20]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[20]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[20] ),
        .I4(\B_reg[20]_0 ),
        .I5(\y[20]_i_4_n_1 ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[20]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_11 [0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_12 [0]),
        .O(\y[20]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[21]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[21]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[21] ),
        .I4(\B_reg[21]_0 ),
        .I5(\y[21]_i_4_n_1 ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[21]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_11 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_12 [1]),
        .O(\y[21]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[22]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[22]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[22] ),
        .I4(\B_reg[22]_0 ),
        .I5(\y[22]_i_4_n_1 ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[22]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_11 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_12 [2]),
        .O(\y[22]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[23]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[23]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[23] ),
        .I4(\B_reg[23]_0 ),
        .I5(\y[23]_i_4_n_1 ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hAAF3AAE2)) 
    \y[23]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [0]),
        .I2(\current_state_reg[1]_11 [3]),
        .I3(\y_reg[15] [1]),
        .I4(\current_state_reg[1]_12 [3]),
        .O(\y[23]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[24]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[24]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[24] ),
        .I4(\B_reg[24]_0 ),
        .I5(\y[24]_i_4_n_1 ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[24]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_13 [0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_14 [0]),
        .O(\y[24]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[25]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[25]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[25] ),
        .I4(\B_reg[25]_0 ),
        .I5(\y[25]_i_4_n_1 ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[25]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_13 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_14 [1]),
        .O(\y[25]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[26]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[26]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[26] ),
        .I4(\B_reg[26]_0 ),
        .I5(\y[26]_i_4_n_1 ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[26]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_13 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_14 [2]),
        .O(\y[26]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[27]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[27]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[27] ),
        .I4(\B_reg[27]_0 ),
        .I5(\y[27]_i_4_n_1 ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hBBBA88BA)) 
    \y[27]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_14 [3]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_13 [3]),
        .O(\y[27]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[28]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[28]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[28] ),
        .I4(\B_reg[28]_0 ),
        .I5(\y[28]_i_4_n_1 ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[28]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_1 [0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_0 [0]),
        .O(\y[28]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[29]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[29]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[29] ),
        .I4(\B_reg[29]_0 ),
        .I5(\y[29]_i_4_n_1 ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[29]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_1 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_0 [1]),
        .O(\y[29]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[2]_i_1 
       (.I0(Q[2]),
        .I1(\y[2]_i_2_n_1 ),
        .I2(\B_reg[2] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[2]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_4 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_3 [2]),
        .O(\y[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h8F8F8FDF008A0050)) 
    \y[30]_i_1 
       (.I0(\y_reg[15] [1]),
        .I1(Q[30]),
        .I2(\y_reg[15] [2]),
        .I3(\B_reg[30] ),
        .I4(\B_reg[30]_0 ),
        .I5(\y[30]_i_4_n_1 ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[30]_i_4 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_1 [2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_0 [2]),
        .O(\y[30]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hF404FFFF04040000)) 
    \y[31]_i_1 
       (.I0(\y_reg[15] [0]),
        .I1(\A_reg[31]_0 ),
        .I2(\y_reg[15] [1]),
        .I3(Q[31]),
        .I4(\y_reg[15] [2]),
        .I5(\y[31]_i_3_n_1 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFFAFFFFAFAAAEAE)) 
    \y[31]_i_3 
       (.I0(\y[31]_i_4_n_1 ),
        .I1(\current_state_reg[1]_0 [3]),
        .I2(\y_reg[15] [1]),
        .I3(\current_state_reg[1]_1 [3]),
        .I4(\y_reg[15] [0]),
        .I5(\y_reg[15] [2]),
        .O(\y[31]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hC8CCC88880888000)) 
    \y[31]_i_4 
       (.I0(\y_reg[15] [0]),
        .I1(\y_reg[15] [1]),
        .I2(\ALUout_reg[31] [2]),
        .I3(\current_state_reg[1] ),
        .I4(\A_reg[31] [2]),
        .I5(\current_state_reg[1]_2 ),
        .O(\y[31]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[3]_i_1 
       (.I0(Q[3]),
        .I1(\y[3]_i_2_n_1 ),
        .I2(\B_reg[3] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAAF3AAE2)) 
    \y[3]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [0]),
        .I2(\current_state_reg[1]_4 [3]),
        .I3(\y_reg[15] [1]),
        .I4(\current_state_reg[1]_3 [3]),
        .O(\y[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[4]_i_1 
       (.I0(Q[4]),
        .I1(\y[4]_i_2_n_1 ),
        .I2(\B_reg[4] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[4]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(O[0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[2]_0 [0]),
        .O(\y[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[5]_i_1 
       (.I0(Q[5]),
        .I1(\y[5]_i_2_n_1 ),
        .I2(\B_reg[5] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[5]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(O[1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[2]_0 [1]),
        .O(\y[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[6]_i_1 
       (.I0(Q[6]),
        .I1(\y[6]_i_2_n_1 ),
        .I2(\B_reg[6] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[6]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(O[2]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[2]_0 [2]),
        .O(\y[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hF404FFFF04040000)) 
    \y[7]_i_1 
       (.I0(\y_reg[15] [0]),
        .I1(\current_state_reg[2] ),
        .I2(\y_reg[15] [1]),
        .I3(Q[7]),
        .I4(\y_reg[15] [2]),
        .I5(\y[7]_i_3_n_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFBFBAAAAFBEA)) 
    \y[7]_i_3 
       (.I0(\y[7]_i_4_n_1 ),
        .I1(\y_reg[15] [0]),
        .I2(O[3]),
        .I3(\current_state_reg[2]_0 [3]),
        .I4(\y_reg[15] [1]),
        .I5(\y_reg[15] [2]),
        .O(\y[7]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h8C088C8C8C080808)) 
    \y[7]_i_4 
       (.I0(\y_reg[15] [0]),
        .I1(\y_reg[15] [1]),
        .I2(\B_reg[7] ),
        .I3(\ALUout_reg[31] [1]),
        .I4(\current_state_reg[1] ),
        .I5(\A_reg[31] [1]),
        .O(\y[7]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[8]_i_1 
       (.I0(Q[8]),
        .I1(\y[8]_i_2_n_1 ),
        .I2(\B_reg[8] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[8]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_5 [0]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_6 [0]),
        .O(\y[8]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h880FCCCC8A00CFCC)) 
    \y[9]_i_1 
       (.I0(Q[9]),
        .I1(\y[9]_i_2_n_1 ),
        .I2(\B_reg[9] ),
        .I3(\y_reg[15] [1]),
        .I4(\y_reg[15] [2]),
        .I5(\A_reg[9] ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8BBB8AA)) 
    \y[9]_i_2 
       (.I0(\y_reg[15] [2]),
        .I1(\y_reg[15] [1]),
        .I2(\current_state_reg[1]_5 [1]),
        .I3(\y_reg[15] [0]),
        .I4(\current_state_reg[1]_6 [1]),
        .O(\y[9]_i_2_n_1 ));
endmodule

(* NotValidForBitStream *)
module DDU
   (clk_100M,
    rst,
    cont,
    step,
    mem,
    inc,
    dec,
    led,
    an,
    seg);
  input clk_100M;
  input rst;
  input cont;
  input step;
  input mem;
  input inc;
  input dec;
  output [15:0]led;
  output [7:0]an;
  output [6:0]seg;

  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire clk;
  (* IBUF_LOW_PWR *) wire clk_100M;
  wire cont;
  wire cont_IBUF;
  wire cpu_dut_n_14;
  wire cpu_dut_n_15;
  wire cpu_dut_n_16;
  wire cpu_dut_n_17;
  wire cpu_dut_n_18;
  wire cpu_dut_n_19;
  wire cpu_dut_n_20;
  wire cpu_dut_n_21;
  wire cpu_dut_n_22;
  wire cpu_dut_n_23;
  wire cpu_dut_n_24;
  wire cpu_dut_n_25;
  wire cpu_dut_n_26;
  wire cpu_dut_n_27;
  wire cpu_dut_n_28;
  wire cpu_dut_n_29;
  wire dec;
  wire dec_IBUF;
  wire inc;
  wire inc_IBUF;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire \led_reg[0]_C_n_1 ;
  wire \led_reg[0]_LDC_n_1 ;
  wire \led_reg[0]_P_n_1 ;
  wire \led_reg[1]_C_n_1 ;
  wire \led_reg[1]_LDC_n_1 ;
  wire \led_reg[1]_P_n_1 ;
  wire \led_reg[2]_C_n_1 ;
  wire \led_reg[2]_LDC_n_1 ;
  wire \led_reg[2]_P_n_1 ;
  wire \led_reg[3]_C_n_1 ;
  wire \led_reg[3]_LDC_n_1 ;
  wire \led_reg[3]_P_n_1 ;
  wire \led_reg[4]_C_n_1 ;
  wire \led_reg[4]_LDC_n_1 ;
  wire \led_reg[4]_P_n_1 ;
  wire \led_reg[5]_C_n_1 ;
  wire \led_reg[5]_LDC_n_1 ;
  wire \led_reg[5]_P_n_1 ;
  wire \led_reg[6]_C_n_1 ;
  wire \led_reg[6]_LDC_n_1 ;
  wire \led_reg[6]_P_n_1 ;
  wire \led_reg[7]_C_n_1 ;
  wire \led_reg[7]_LDC_n_1 ;
  wire \led_reg[7]_P_n_1 ;
  wire mem;
  wire mem_IBUF;
  wire \mem_addr[0]_i_1_n_1 ;
  wire \mem_addr[4]_i_2_n_1 ;
  wire \mem_addr[4]_i_3_n_1 ;
  wire \mem_addr[4]_i_4_n_1 ;
  wire \mem_addr[4]_i_5_n_1 ;
  wire \mem_addr[4]_i_6_n_1 ;
  wire \mem_addr[7]_i_2_n_1 ;
  wire \mem_addr[7]_i_3_n_1 ;
  wire \mem_addr[7]_i_4_n_1 ;
  wire \mem_addr_reg[4]_i_1_n_1 ;
  wire \mem_addr_reg[4]_i_1_n_2 ;
  wire \mem_addr_reg[4]_i_1_n_3 ;
  wire \mem_addr_reg[4]_i_1_n_4 ;
  wire \mem_addr_reg[4]_i_1_n_5 ;
  wire \mem_addr_reg[4]_i_1_n_6 ;
  wire \mem_addr_reg[4]_i_1_n_7 ;
  wire \mem_addr_reg[4]_i_1_n_8 ;
  wire \mem_addr_reg[7]_i_1_n_3 ;
  wire \mem_addr_reg[7]_i_1_n_4 ;
  wire \mem_addr_reg[7]_i_1_n_6 ;
  wire \mem_addr_reg[7]_i_1_n_7 ;
  wire \mem_addr_reg[7]_i_1_n_8 ;
  wire [7:0]mem_addr_reg__0;
  wire n_0_203_BUFG;
  wire n_0_203_BUFG_inst_n_1;
  wire [15:8]p_1_out;
  wire [7:0]pc;
  wire \reg_addr[0]_i_1_n_1 ;
  wire \reg_addr[1]_i_1_n_1 ;
  wire \reg_addr[2]_i_1_n_1 ;
  wire \reg_addr[3]_i_1_n_1 ;
  wire \reg_addr[4]_i_1_n_1 ;
  wire \reg_addr[5]_i_2_n_1 ;
  wire \reg_addr[5]_i_3_n_1 ;
  wire reg_addr_next;
  wire [4:0]reg_addr_reg__0;
  wire [5:5]reg_addr_reg__1;
  wire rst;
  wire rst_IBUF;
  wire rst_IBUF_BUFG;
  wire run;
  wire run_BUFG;
  wire run_reg_i_1_n_1;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire seg_dut_n_1;
  wire seg_dut_n_2;
  wire seg_dut_n_3;
  wire [3:0]seg_temp;
  wire step;
  wire step_IBUF;
  wire NLW_clk_dut_locked_UNCONNECTED;
  wire [3:2]\NLW_mem_addr_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_addr_reg[7]_i_1_O_UNCONNECTED ;

  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF[4]),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(an_OBUF[5]),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(an_OBUF[6]),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(an_OBUF[7]),
        .O(an[7]));
  clk_wiz_0 clk_dut
       (.clk_in1(clk_100M),
        .clk_out1(clk),
        .locked(NLW_clk_dut_locked_UNCONNECTED),
        .reset(rst_IBUF_BUFG));
  IBUF cont_IBUF_inst
       (.I(cont),
        .O(cont_IBUF));
  cpu cpu_dut
       (.AR(rst_IBUF_BUFG),
        .CLK(run_BUFG),
        .D(seg_temp),
        .E(n_0_203_BUFG),
        .Q(mem_addr_reg__0),
        .\led_reg[0]_C (cpu_dut_n_29),
        .\led_reg[0]_P (cpu_dut_n_28),
        .\led_reg[1]_C (cpu_dut_n_27),
        .\led_reg[1]_P (cpu_dut_n_26),
        .\led_reg[2]_C (cpu_dut_n_25),
        .\led_reg[2]_P (cpu_dut_n_24),
        .\led_reg[3]_C (cpu_dut_n_23),
        .\led_reg[3]_P (cpu_dut_n_22),
        .\led_reg[4]_C (cpu_dut_n_21),
        .\led_reg[4]_P (cpu_dut_n_20),
        .\led_reg[5]_C (cpu_dut_n_19),
        .\led_reg[5]_P (cpu_dut_n_18),
        .\led_reg[6]_C (cpu_dut_n_17),
        .\led_reg[6]_P (cpu_dut_n_16),
        .\led_reg[7]_C (cpu_dut_n_15),
        .\led_reg[7]_P (pc),
        .\led_reg[7]_P_0 (cpu_dut_n_14),
        .mem_IBUF(mem_IBUF),
        .n_0_203_BUFG_inst_n_1(n_0_203_BUFG_inst_n_1),
        .out({seg_dut_n_1,seg_dut_n_2,seg_dut_n_3}),
        .\reg_addr_reg[2] (reg_addr_reg__0[2:0]),
        .rst_IBUF(rst_IBUF));
  IBUF dec_IBUF_inst
       (.I(dec),
        .O(dec_IBUF));
  IBUF inc_IBUF_inst
       (.I(inc),
        .O(inc_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[10]_i_1 
       (.I0(mem_addr_reg__0[2]),
        .I1(mem_IBUF),
        .I2(reg_addr_reg__0[0]),
        .O(p_1_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[11]_i_1 
       (.I0(mem_addr_reg__0[3]),
        .I1(mem_IBUF),
        .I2(reg_addr_reg__0[1]),
        .O(p_1_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[12]_i_1 
       (.I0(mem_addr_reg__0[4]),
        .I1(mem_IBUF),
        .I2(reg_addr_reg__0[2]),
        .O(p_1_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[13]_i_1 
       (.I0(mem_addr_reg__0[5]),
        .I1(mem_IBUF),
        .I2(reg_addr_reg__0[3]),
        .O(p_1_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[14]_i_1 
       (.I0(mem_addr_reg__0[6]),
        .I1(mem_IBUF),
        .I2(reg_addr_reg__0[4]),
        .O(p_1_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[15]_i_1 
       (.I0(mem_addr_reg__0[7]),
        .I1(mem_IBUF),
        .I2(reg_addr_reg__1),
        .O(p_1_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[8]_i_1 
       (.I0(mem_addr_reg__0[0]),
        .I1(mem_IBUF),
        .O(p_1_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[9]_i_1 
       (.I0(mem_addr_reg__0[1]),
        .I1(mem_IBUF),
        .O(p_1_out[9]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(\led_reg[0]_P_n_1 ),
        .I1(\led_reg[0]_LDC_n_1 ),
        .I2(\led_reg[0]_C_n_1 ),
        .O(led_OBUF[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(\led_reg[1]_P_n_1 ),
        .I1(\led_reg[1]_LDC_n_1 ),
        .I2(\led_reg[1]_C_n_1 ),
        .O(led_OBUF[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(\led_reg[2]_P_n_1 ),
        .I1(\led_reg[2]_LDC_n_1 ),
        .I2(\led_reg[2]_C_n_1 ),
        .O(led_OBUF[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(\led_reg[3]_P_n_1 ),
        .I1(\led_reg[3]_LDC_n_1 ),
        .I2(\led_reg[3]_C_n_1 ),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(\led_reg[4]_P_n_1 ),
        .I1(\led_reg[4]_LDC_n_1 ),
        .I2(\led_reg[4]_C_n_1 ),
        .O(led_OBUF[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(\led_reg[5]_P_n_1 ),
        .I1(\led_reg[5]_LDC_n_1 ),
        .I2(\led_reg[5]_C_n_1 ),
        .O(led_OBUF[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(\led_reg[6]_P_n_1 ),
        .I1(\led_reg[6]_LDC_n_1 ),
        .I2(\led_reg[6]_C_n_1 ),
        .O(led_OBUF[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(\led_reg[7]_P_n_1 ),
        .I1(\led_reg[7]_LDC_n_1 ),
        .I2(\led_reg[7]_C_n_1 ),
        .O(led_OBUF[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[0]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_29),
        .D(pc[0]),
        .Q(\led_reg[0]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[0]_LDC 
       (.CLR(cpu_dut_n_29),
        .D(1'b1),
        .G(cpu_dut_n_28),
        .GE(1'b1),
        .Q(\led_reg[0]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[0]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[0]),
        .PRE(cpu_dut_n_28),
        .Q(\led_reg[0]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[10]),
        .Q(led_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[11]),
        .Q(led_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[12]),
        .Q(led_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[13]),
        .Q(led_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[14]),
        .Q(led_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[15]),
        .Q(led_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[1]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_27),
        .D(pc[1]),
        .Q(\led_reg[1]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[1]_LDC 
       (.CLR(cpu_dut_n_27),
        .D(1'b1),
        .G(cpu_dut_n_26),
        .GE(1'b1),
        .Q(\led_reg[1]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[1]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[1]),
        .PRE(cpu_dut_n_26),
        .Q(\led_reg[1]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[2]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_25),
        .D(pc[2]),
        .Q(\led_reg[2]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[2]_LDC 
       (.CLR(cpu_dut_n_25),
        .D(1'b1),
        .G(cpu_dut_n_24),
        .GE(1'b1),
        .Q(\led_reg[2]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[2]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[2]),
        .PRE(cpu_dut_n_24),
        .Q(\led_reg[2]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[3]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_23),
        .D(pc[3]),
        .Q(\led_reg[3]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[3]_LDC 
       (.CLR(cpu_dut_n_23),
        .D(1'b1),
        .G(cpu_dut_n_22),
        .GE(1'b1),
        .Q(\led_reg[3]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[3]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[3]),
        .PRE(cpu_dut_n_22),
        .Q(\led_reg[3]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[4]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_21),
        .D(pc[4]),
        .Q(\led_reg[4]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[4]_LDC 
       (.CLR(cpu_dut_n_21),
        .D(1'b1),
        .G(cpu_dut_n_20),
        .GE(1'b1),
        .Q(\led_reg[4]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[4]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[4]),
        .PRE(cpu_dut_n_20),
        .Q(\led_reg[4]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[5]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_19),
        .D(pc[5]),
        .Q(\led_reg[5]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[5]_LDC 
       (.CLR(cpu_dut_n_19),
        .D(1'b1),
        .G(cpu_dut_n_18),
        .GE(1'b1),
        .Q(\led_reg[5]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[5]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[5]),
        .PRE(cpu_dut_n_18),
        .Q(\led_reg[5]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[6]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_17),
        .D(pc[6]),
        .Q(\led_reg[6]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[6]_LDC 
       (.CLR(cpu_dut_n_17),
        .D(1'b1),
        .G(cpu_dut_n_16),
        .GE(1'b1),
        .Q(\led_reg[6]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[6]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[6]),
        .PRE(cpu_dut_n_16),
        .Q(\led_reg[6]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[7]_C 
       (.C(clk),
        .CE(1'b1),
        .CLR(cpu_dut_n_15),
        .D(pc[7]),
        .Q(\led_reg[7]_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[7]_LDC 
       (.CLR(cpu_dut_n_15),
        .D(1'b1),
        .G(cpu_dut_n_14),
        .GE(1'b1),
        .Q(\led_reg[7]_LDC_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \led_reg[7]_P 
       (.C(clk),
        .CE(1'b1),
        .D(pc[7]),
        .PRE(cpu_dut_n_14),
        .Q(\led_reg[7]_P_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[8]),
        .Q(led_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(p_1_out[9]),
        .Q(led_OBUF[9]));
  IBUF mem_IBUF_inst
       (.I(mem),
        .O(mem_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_addr[0]_i_1 
       (.I0(mem_addr_reg__0[0]),
        .O(\mem_addr[0]_i_1_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_addr[4]_i_2 
       (.I0(mem_addr_reg__0[1]),
        .O(\mem_addr[4]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_addr[4]_i_3 
       (.I0(mem_addr_reg__0[3]),
        .I1(mem_addr_reg__0[4]),
        .O(\mem_addr[4]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_addr[4]_i_4 
       (.I0(mem_addr_reg__0[2]),
        .I1(mem_addr_reg__0[3]),
        .O(\mem_addr[4]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_addr[4]_i_5 
       (.I0(mem_addr_reg__0[1]),
        .I1(mem_addr_reg__0[2]),
        .O(\mem_addr[4]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[4]_i_6 
       (.I0(mem_addr_reg__0[1]),
        .I1(dec_IBUF),
        .O(\mem_addr[4]_i_6_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_addr[7]_i_2 
       (.I0(mem_addr_reg__0[6]),
        .I1(mem_addr_reg__0[7]),
        .O(\mem_addr[7]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_addr[7]_i_3 
       (.I0(mem_addr_reg__0[5]),
        .I1(mem_addr_reg__0[6]),
        .O(\mem_addr[7]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_addr[7]_i_4 
       (.I0(mem_addr_reg__0[4]),
        .I1(mem_addr_reg__0[5]),
        .O(\mem_addr[7]_i_4_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[0] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr[0]_i_1_n_1 ),
        .Q(mem_addr_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[1] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[4]_i_1_n_8 ),
        .Q(mem_addr_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[2] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[4]_i_1_n_7 ),
        .Q(mem_addr_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[3] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[4]_i_1_n_6 ),
        .Q(mem_addr_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[4] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[4]_i_1_n_5 ),
        .Q(mem_addr_reg__0[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\mem_addr_reg[4]_i_1_n_1 ,\mem_addr_reg[4]_i_1_n_2 ,\mem_addr_reg[4]_i_1_n_3 ,\mem_addr_reg[4]_i_1_n_4 }),
        .CYINIT(mem_addr_reg__0[0]),
        .DI({mem_addr_reg__0[3:1],\mem_addr[4]_i_2_n_1 }),
        .O({\mem_addr_reg[4]_i_1_n_5 ,\mem_addr_reg[4]_i_1_n_6 ,\mem_addr_reg[4]_i_1_n_7 ,\mem_addr_reg[4]_i_1_n_8 }),
        .S({\mem_addr[4]_i_3_n_1 ,\mem_addr[4]_i_4_n_1 ,\mem_addr[4]_i_5_n_1 ,\mem_addr[4]_i_6_n_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[5] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[7]_i_1_n_8 ),
        .Q(mem_addr_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[6] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[7]_i_1_n_7 ),
        .Q(mem_addr_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_addr_reg[7] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\mem_addr_reg[7]_i_1_n_6 ),
        .Q(mem_addr_reg__0[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[7]_i_1 
       (.CI(\mem_addr_reg[4]_i_1_n_1 ),
        .CO({\NLW_mem_addr_reg[7]_i_1_CO_UNCONNECTED [3:2],\mem_addr_reg[7]_i_1_n_3 ,\mem_addr_reg[7]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,mem_addr_reg__0[5:4]}),
        .O({\NLW_mem_addr_reg[7]_i_1_O_UNCONNECTED [3],\mem_addr_reg[7]_i_1_n_6 ,\mem_addr_reg[7]_i_1_n_7 ,\mem_addr_reg[7]_i_1_n_8 }),
        .S({1'b0,\mem_addr[7]_i_2_n_1 ,\mem_addr[7]_i_3_n_1 ,\mem_addr[7]_i_4_n_1 }));
  BUFG n_0_203_BUFG_inst
       (.I(n_0_203_BUFG_inst_n_1),
        .O(n_0_203_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reg_addr[0]_i_1 
       (.I0(reg_addr_reg__0[0]),
        .O(\reg_addr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \reg_addr[1]_i_1 
       (.I0(reg_addr_reg__0[0]),
        .I1(reg_addr_reg__0[1]),
        .I2(dec_IBUF),
        .O(\reg_addr[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \reg_addr[2]_i_1 
       (.I0(dec_IBUF),
        .I1(reg_addr_reg__0[0]),
        .I2(reg_addr_reg__0[2]),
        .I3(reg_addr_reg__0[1]),
        .O(\reg_addr[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \reg_addr[3]_i_1 
       (.I0(dec_IBUF),
        .I1(reg_addr_reg__0[1]),
        .I2(reg_addr_reg__0[0]),
        .I3(reg_addr_reg__0[2]),
        .I4(reg_addr_reg__0[3]),
        .O(\reg_addr[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFF7FFEFF00800100)) 
    \reg_addr[4]_i_1 
       (.I0(reg_addr_reg__0[1]),
        .I1(reg_addr_reg__0[2]),
        .I2(reg_addr_reg__0[0]),
        .I3(dec_IBUF),
        .I4(reg_addr_reg__0[3]),
        .I5(reg_addr_reg__0[4]),
        .O(\reg_addr[4]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_addr[5]_i_1 
       (.I0(inc_IBUF),
        .I1(dec_IBUF),
        .O(reg_addr_next));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_addr[5]_i_2 
       (.I0(reg_addr_reg__1),
        .I1(\reg_addr[5]_i_3_n_1 ),
        .O(\reg_addr[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000180000000)) 
    \reg_addr[5]_i_3 
       (.I0(reg_addr_reg__0[3]),
        .I1(reg_addr_reg__0[4]),
        .I2(reg_addr_reg__0[1]),
        .I3(reg_addr_reg__0[2]),
        .I4(reg_addr_reg__0[0]),
        .I5(dec_IBUF),
        .O(\reg_addr[5]_i_3_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_addr_reg[0] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\reg_addr[0]_i_1_n_1 ),
        .Q(reg_addr_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_addr_reg[1] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\reg_addr[1]_i_1_n_1 ),
        .Q(reg_addr_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_addr_reg[2] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\reg_addr[2]_i_1_n_1 ),
        .Q(reg_addr_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_addr_reg[3] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\reg_addr[3]_i_1_n_1 ),
        .Q(reg_addr_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_addr_reg[4] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\reg_addr[4]_i_1_n_1 ),
        .Q(reg_addr_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_addr_reg[5] 
       (.C(clk),
        .CE(reg_addr_next),
        .CLR(rst_IBUF_BUFG),
        .D(\reg_addr[5]_i_2_n_1 ),
        .Q(reg_addr_reg__1));
  BUFG rst_IBUF_BUFG_inst
       (.I(rst_IBUF),
        .O(rst_IBUF_BUFG));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  BUFG run_BUFG_inst
       (.I(run),
        .O(run_BUFG));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    run_reg
       (.CLR(rst_IBUF_BUFG),
        .D(run_reg_i_1_n_1),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(run));
  LUT3 #(
    .INIT(8'hB8)) 
    run_reg_i_1
       (.I0(clk),
        .I1(cont_IBUF),
        .I2(step_IBUF),
        .O(run_reg_i_1_n_1));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  seg seg_dut
       (.AR(rst_IBUF_BUFG),
        .CLK(clk),
        .D(seg_temp),
        .Q(seg_OBUF),
        .an_OBUF(an_OBUF),
        .out({seg_dut_n_1,seg_dut_n_2,seg_dut_n_3}));
  IBUF step_IBUF_inst
       (.I(step),
        .O(step_IBUF));
endmodule

module RF
   (D,
    \B_reg[31] ,
    \A_reg[31] ,
    out,
    dpo,
    mem_IBUF,
    \reg_addr_reg[2] ,
    Q,
    E,
    \Memery_data_register_reg[31] ,
    CLK,
    AR,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[2]_1 ,
    \current_state_reg[2]_2 ,
    \current_state_reg[0] );
  output [3:0]D;
  output [31:0]\B_reg[31] ;
  output [31:0]\A_reg[31] ;
  input [2:0]out;
  input [27:0]dpo;
  input mem_IBUF;
  input [2:0]\reg_addr_reg[2] ;
  input [5:0]Q;
  input [0:0]E;
  input [31:0]\Memery_data_register_reg[31] ;
  input CLK;
  input [0:0]AR;
  input [0:0]\current_state_reg[2] ;
  input [0:0]\current_state_reg[2]_0 ;
  input [0:0]\current_state_reg[2]_1 ;
  input [0:0]\current_state_reg[2]_2 ;
  input [0:0]\current_state_reg[0] ;

  wire [0:0]AR;
  wire \A[0]_i_2_n_1 ;
  wire \A[10]_i_2_n_1 ;
  wire \A[11]_i_2_n_1 ;
  wire \A[12]_i_2_n_1 ;
  wire \A[13]_i_2_n_1 ;
  wire \A[14]_i_2_n_1 ;
  wire \A[15]_i_2_n_1 ;
  wire \A[16]_i_2_n_1 ;
  wire \A[17]_i_2_n_1 ;
  wire \A[18]_i_2_n_1 ;
  wire \A[19]_i_2_n_1 ;
  wire \A[1]_i_2_n_1 ;
  wire \A[20]_i_2_n_1 ;
  wire \A[21]_i_2_n_1 ;
  wire \A[22]_i_2_n_1 ;
  wire \A[23]_i_2_n_1 ;
  wire \A[24]_i_2_n_1 ;
  wire \A[25]_i_2_n_1 ;
  wire \A[26]_i_2_n_1 ;
  wire \A[27]_i_2_n_1 ;
  wire \A[28]_i_2_n_1 ;
  wire \A[29]_i_2_n_1 ;
  wire \A[2]_i_2_n_1 ;
  wire \A[30]_i_2_n_1 ;
  wire \A[31]_i_2_n_1 ;
  wire \A[3]_i_2_n_1 ;
  wire \A[4]_i_2_n_1 ;
  wire \A[5]_i_2_n_1 ;
  wire \A[6]_i_2_n_1 ;
  wire \A[7]_i_2_n_1 ;
  wire \A[8]_i_2_n_1 ;
  wire \A[9]_i_2_n_1 ;
  wire [31:0]\A_reg[31] ;
  wire \B[0]_i_2_n_1 ;
  wire \B[10]_i_2_n_1 ;
  wire \B[11]_i_2_n_1 ;
  wire \B[12]_i_2_n_1 ;
  wire \B[13]_i_2_n_1 ;
  wire \B[14]_i_2_n_1 ;
  wire \B[15]_i_2_n_1 ;
  wire \B[16]_i_2_n_1 ;
  wire \B[17]_i_2_n_1 ;
  wire \B[18]_i_2_n_1 ;
  wire \B[19]_i_2_n_1 ;
  wire \B[1]_i_2_n_1 ;
  wire \B[20]_i_2_n_1 ;
  wire \B[21]_i_2_n_1 ;
  wire \B[22]_i_2_n_1 ;
  wire \B[23]_i_2_n_1 ;
  wire \B[24]_i_2_n_1 ;
  wire \B[25]_i_2_n_1 ;
  wire \B[26]_i_2_n_1 ;
  wire \B[27]_i_2_n_1 ;
  wire \B[28]_i_2_n_1 ;
  wire \B[29]_i_2_n_1 ;
  wire \B[2]_i_2_n_1 ;
  wire \B[30]_i_2_n_1 ;
  wire \B[31]_i_2_n_1 ;
  wire \B[3]_i_2_n_1 ;
  wire \B[4]_i_2_n_1 ;
  wire \B[5]_i_2_n_1 ;
  wire \B[6]_i_2_n_1 ;
  wire \B[7]_i_2_n_1 ;
  wire \B[8]_i_2_n_1 ;
  wire \B[9]_i_2_n_1 ;
  wire [31:0]\B_reg[31] ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [31:0]\Memery_data_register_reg[31] ;
  wire [5:0]Q;
  wire [31:0]\RF_reg[0]_5 ;
  wire [31:0]\RF_reg[1]_0 ;
  wire [31:0]\RF_reg[2]_1 ;
  wire [31:0]\RF_reg[3]_2 ;
  wire [31:0]\RF_reg[4]_3 ;
  wire [31:0]\RF_reg[5]_4 ;
  wire [0:0]\current_state_reg[0] ;
  wire [0:0]\current_state_reg[2] ;
  wire [0:0]\current_state_reg[2]_0 ;
  wire [0:0]\current_state_reg[2]_1 ;
  wire [0:0]\current_state_reg[2]_2 ;
  wire [27:0]dpo;
  wire mem_IBUF;
  wire [2:0]out;
  wire [2:0]\reg_addr_reg[2] ;
  wire \seg_temp[0]_i_10_n_1 ;
  wire \seg_temp[0]_i_11_n_1 ;
  wire \seg_temp[0]_i_12_n_1 ;
  wire \seg_temp[0]_i_13_n_1 ;
  wire \seg_temp[0]_i_14_n_1 ;
  wire \seg_temp[0]_i_15_n_1 ;
  wire \seg_temp[0]_i_16_n_1 ;
  wire \seg_temp[0]_i_17_n_1 ;
  wire \seg_temp[0]_i_18_n_1 ;
  wire \seg_temp[0]_i_19_n_1 ;
  wire \seg_temp[0]_i_2_n_1 ;
  wire \seg_temp[0]_i_3_n_1 ;
  wire \seg_temp[0]_i_4_n_1 ;
  wire \seg_temp[0]_i_5_n_1 ;
  wire \seg_temp[0]_i_6_n_1 ;
  wire \seg_temp[0]_i_7_n_1 ;
  wire \seg_temp[0]_i_8_n_1 ;
  wire \seg_temp[0]_i_9_n_1 ;
  wire \seg_temp[1]_i_10_n_1 ;
  wire \seg_temp[1]_i_11_n_1 ;
  wire \seg_temp[1]_i_12_n_1 ;
  wire \seg_temp[1]_i_13_n_1 ;
  wire \seg_temp[1]_i_14_n_1 ;
  wire \seg_temp[1]_i_15_n_1 ;
  wire \seg_temp[1]_i_16_n_1 ;
  wire \seg_temp[1]_i_17_n_1 ;
  wire \seg_temp[1]_i_18_n_1 ;
  wire \seg_temp[1]_i_19_n_1 ;
  wire \seg_temp[1]_i_4_n_1 ;
  wire \seg_temp[1]_i_5_n_1 ;
  wire \seg_temp[1]_i_6_n_1 ;
  wire \seg_temp[1]_i_7_n_1 ;
  wire \seg_temp[1]_i_8_n_1 ;
  wire \seg_temp[1]_i_9_n_1 ;
  wire \seg_temp[2]_i_10_n_1 ;
  wire \seg_temp[2]_i_11_n_1 ;
  wire \seg_temp[2]_i_12_n_1 ;
  wire \seg_temp[2]_i_13_n_1 ;
  wire \seg_temp[2]_i_14_n_1 ;
  wire \seg_temp[2]_i_15_n_1 ;
  wire \seg_temp[2]_i_16_n_1 ;
  wire \seg_temp[2]_i_17_n_1 ;
  wire \seg_temp[2]_i_18_n_1 ;
  wire \seg_temp[2]_i_19_n_1 ;
  wire \seg_temp[2]_i_20_n_1 ;
  wire \seg_temp[2]_i_21_n_1 ;
  wire \seg_temp[2]_i_22_n_1 ;
  wire \seg_temp[2]_i_23_n_1 ;
  wire \seg_temp[2]_i_2_n_1 ;
  wire \seg_temp[2]_i_3_n_1 ;
  wire \seg_temp[2]_i_4_n_1 ;
  wire \seg_temp[2]_i_5_n_1 ;
  wire \seg_temp[2]_i_6_n_1 ;
  wire \seg_temp[2]_i_7_n_1 ;
  wire \seg_temp[2]_i_8_n_1 ;
  wire \seg_temp[2]_i_9_n_1 ;
  wire \seg_temp[3]_i_10_n_1 ;
  wire \seg_temp[3]_i_11_n_1 ;
  wire \seg_temp[3]_i_12_n_1 ;
  wire \seg_temp[3]_i_13_n_1 ;
  wire \seg_temp[3]_i_14_n_1 ;
  wire \seg_temp[3]_i_15_n_1 ;
  wire \seg_temp[3]_i_16_n_1 ;
  wire \seg_temp[3]_i_17_n_1 ;
  wire \seg_temp[3]_i_18_n_1 ;
  wire \seg_temp[3]_i_19_n_1 ;
  wire \seg_temp[3]_i_20_n_1 ;
  wire \seg_temp[3]_i_21_n_1 ;
  wire \seg_temp[3]_i_22_n_1 ;
  wire \seg_temp[3]_i_23_n_1 ;
  wire \seg_temp[3]_i_24_n_1 ;
  wire \seg_temp[3]_i_25_n_1 ;
  wire \seg_temp[3]_i_4_n_1 ;
  wire \seg_temp[3]_i_5_n_1 ;
  wire \seg_temp[3]_i_6_n_1 ;
  wire \seg_temp[3]_i_7_n_1 ;
  wire \seg_temp[3]_i_8_n_1 ;
  wire \seg_temp[3]_i_9_n_1 ;
  wire \seg_temp_reg[1]_i_2_n_1 ;
  wire \seg_temp_reg[1]_i_3_n_1 ;
  wire \seg_temp_reg[3]_i_2_n_1 ;
  wire \seg_temp_reg[3]_i_3_n_1 ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[0]_i_1 
       (.I0(\RF_reg[5]_4 [0]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [0]),
        .I3(Q[5]),
        .I4(\A[0]_i_2_n_1 ),
        .O(\A_reg[31] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[0]_i_2 
       (.I0(\RF_reg[3]_2 [0]),
        .I1(\RF_reg[2]_1 [0]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [0]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [0]),
        .O(\A[0]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[10]_i_1 
       (.I0(\RF_reg[5]_4 [10]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [10]),
        .I3(Q[5]),
        .I4(\A[10]_i_2_n_1 ),
        .O(\A_reg[31] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[10]_i_2 
       (.I0(\RF_reg[3]_2 [10]),
        .I1(\RF_reg[2]_1 [10]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [10]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [10]),
        .O(\A[10]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[11]_i_1 
       (.I0(\RF_reg[5]_4 [11]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [11]),
        .I3(Q[5]),
        .I4(\A[11]_i_2_n_1 ),
        .O(\A_reg[31] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[11]_i_2 
       (.I0(\RF_reg[3]_2 [11]),
        .I1(\RF_reg[2]_1 [11]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [11]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [11]),
        .O(\A[11]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[12]_i_1 
       (.I0(\RF_reg[5]_4 [12]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [12]),
        .I3(Q[5]),
        .I4(\A[12]_i_2_n_1 ),
        .O(\A_reg[31] [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[12]_i_2 
       (.I0(\RF_reg[3]_2 [12]),
        .I1(\RF_reg[2]_1 [12]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [12]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [12]),
        .O(\A[12]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[13]_i_1 
       (.I0(\RF_reg[5]_4 [13]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [13]),
        .I3(Q[5]),
        .I4(\A[13]_i_2_n_1 ),
        .O(\A_reg[31] [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[13]_i_2 
       (.I0(\RF_reg[3]_2 [13]),
        .I1(\RF_reg[2]_1 [13]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [13]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [13]),
        .O(\A[13]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[14]_i_1 
       (.I0(\RF_reg[5]_4 [14]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [14]),
        .I3(Q[5]),
        .I4(\A[14]_i_2_n_1 ),
        .O(\A_reg[31] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[14]_i_2 
       (.I0(\RF_reg[3]_2 [14]),
        .I1(\RF_reg[2]_1 [14]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [14]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [14]),
        .O(\A[14]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[15]_i_1 
       (.I0(\RF_reg[5]_4 [15]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [15]),
        .I3(Q[5]),
        .I4(\A[15]_i_2_n_1 ),
        .O(\A_reg[31] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[15]_i_2 
       (.I0(\RF_reg[3]_2 [15]),
        .I1(\RF_reg[2]_1 [15]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [15]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [15]),
        .O(\A[15]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[16]_i_1 
       (.I0(\RF_reg[5]_4 [16]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [16]),
        .I3(Q[5]),
        .I4(\A[16]_i_2_n_1 ),
        .O(\A_reg[31] [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[16]_i_2 
       (.I0(\RF_reg[3]_2 [16]),
        .I1(\RF_reg[2]_1 [16]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [16]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [16]),
        .O(\A[16]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[17]_i_1 
       (.I0(\RF_reg[5]_4 [17]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [17]),
        .I3(Q[5]),
        .I4(\A[17]_i_2_n_1 ),
        .O(\A_reg[31] [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[17]_i_2 
       (.I0(\RF_reg[3]_2 [17]),
        .I1(\RF_reg[2]_1 [17]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [17]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [17]),
        .O(\A[17]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[18]_i_1 
       (.I0(\RF_reg[5]_4 [18]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [18]),
        .I3(Q[5]),
        .I4(\A[18]_i_2_n_1 ),
        .O(\A_reg[31] [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[18]_i_2 
       (.I0(\RF_reg[3]_2 [18]),
        .I1(\RF_reg[2]_1 [18]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [18]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [18]),
        .O(\A[18]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[19]_i_1 
       (.I0(\RF_reg[5]_4 [19]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [19]),
        .I3(Q[5]),
        .I4(\A[19]_i_2_n_1 ),
        .O(\A_reg[31] [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[19]_i_2 
       (.I0(\RF_reg[3]_2 [19]),
        .I1(\RF_reg[2]_1 [19]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [19]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [19]),
        .O(\A[19]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[1]_i_1 
       (.I0(\RF_reg[5]_4 [1]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [1]),
        .I3(Q[5]),
        .I4(\A[1]_i_2_n_1 ),
        .O(\A_reg[31] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[1]_i_2 
       (.I0(\RF_reg[3]_2 [1]),
        .I1(\RF_reg[2]_1 [1]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [1]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [1]),
        .O(\A[1]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[20]_i_1 
       (.I0(\RF_reg[5]_4 [20]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [20]),
        .I3(Q[5]),
        .I4(\A[20]_i_2_n_1 ),
        .O(\A_reg[31] [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[20]_i_2 
       (.I0(\RF_reg[3]_2 [20]),
        .I1(\RF_reg[2]_1 [20]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [20]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [20]),
        .O(\A[20]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[21]_i_1 
       (.I0(\RF_reg[5]_4 [21]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [21]),
        .I3(Q[5]),
        .I4(\A[21]_i_2_n_1 ),
        .O(\A_reg[31] [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[21]_i_2 
       (.I0(\RF_reg[3]_2 [21]),
        .I1(\RF_reg[2]_1 [21]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [21]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [21]),
        .O(\A[21]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[22]_i_1 
       (.I0(\RF_reg[5]_4 [22]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [22]),
        .I3(Q[5]),
        .I4(\A[22]_i_2_n_1 ),
        .O(\A_reg[31] [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[22]_i_2 
       (.I0(\RF_reg[3]_2 [22]),
        .I1(\RF_reg[2]_1 [22]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [22]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [22]),
        .O(\A[22]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[23]_i_1 
       (.I0(\RF_reg[5]_4 [23]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [23]),
        .I3(Q[5]),
        .I4(\A[23]_i_2_n_1 ),
        .O(\A_reg[31] [23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[23]_i_2 
       (.I0(\RF_reg[3]_2 [23]),
        .I1(\RF_reg[2]_1 [23]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [23]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [23]),
        .O(\A[23]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[24]_i_1 
       (.I0(\RF_reg[5]_4 [24]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [24]),
        .I3(Q[5]),
        .I4(\A[24]_i_2_n_1 ),
        .O(\A_reg[31] [24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[24]_i_2 
       (.I0(\RF_reg[3]_2 [24]),
        .I1(\RF_reg[2]_1 [24]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [24]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [24]),
        .O(\A[24]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[25]_i_1 
       (.I0(\RF_reg[5]_4 [25]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [25]),
        .I3(Q[5]),
        .I4(\A[25]_i_2_n_1 ),
        .O(\A_reg[31] [25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[25]_i_2 
       (.I0(\RF_reg[3]_2 [25]),
        .I1(\RF_reg[2]_1 [25]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [25]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [25]),
        .O(\A[25]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[26]_i_1 
       (.I0(\RF_reg[5]_4 [26]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [26]),
        .I3(Q[5]),
        .I4(\A[26]_i_2_n_1 ),
        .O(\A_reg[31] [26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[26]_i_2 
       (.I0(\RF_reg[3]_2 [26]),
        .I1(\RF_reg[2]_1 [26]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [26]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [26]),
        .O(\A[26]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[27]_i_1 
       (.I0(\RF_reg[5]_4 [27]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [27]),
        .I3(Q[5]),
        .I4(\A[27]_i_2_n_1 ),
        .O(\A_reg[31] [27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[27]_i_2 
       (.I0(\RF_reg[3]_2 [27]),
        .I1(\RF_reg[2]_1 [27]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [27]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [27]),
        .O(\A[27]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[28]_i_1 
       (.I0(\RF_reg[5]_4 [28]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [28]),
        .I3(Q[5]),
        .I4(\A[28]_i_2_n_1 ),
        .O(\A_reg[31] [28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[28]_i_2 
       (.I0(\RF_reg[3]_2 [28]),
        .I1(\RF_reg[2]_1 [28]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [28]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [28]),
        .O(\A[28]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[29]_i_1 
       (.I0(\RF_reg[5]_4 [29]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [29]),
        .I3(Q[5]),
        .I4(\A[29]_i_2_n_1 ),
        .O(\A_reg[31] [29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[29]_i_2 
       (.I0(\RF_reg[3]_2 [29]),
        .I1(\RF_reg[2]_1 [29]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [29]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [29]),
        .O(\A[29]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[2]_i_1 
       (.I0(\RF_reg[5]_4 [2]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [2]),
        .I3(Q[5]),
        .I4(\A[2]_i_2_n_1 ),
        .O(\A_reg[31] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[2]_i_2 
       (.I0(\RF_reg[3]_2 [2]),
        .I1(\RF_reg[2]_1 [2]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [2]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [2]),
        .O(\A[2]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[30]_i_1 
       (.I0(\RF_reg[5]_4 [30]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [30]),
        .I3(Q[5]),
        .I4(\A[30]_i_2_n_1 ),
        .O(\A_reg[31] [30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[30]_i_2 
       (.I0(\RF_reg[3]_2 [30]),
        .I1(\RF_reg[2]_1 [30]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [30]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [30]),
        .O(\A[30]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[31]_i_1 
       (.I0(\RF_reg[5]_4 [31]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [31]),
        .I3(Q[5]),
        .I4(\A[31]_i_2_n_1 ),
        .O(\A_reg[31] [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[31]_i_2 
       (.I0(\RF_reg[3]_2 [31]),
        .I1(\RF_reg[2]_1 [31]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [31]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [31]),
        .O(\A[31]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[3]_i_1 
       (.I0(\RF_reg[5]_4 [3]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [3]),
        .I3(Q[5]),
        .I4(\A[3]_i_2_n_1 ),
        .O(\A_reg[31] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[3]_i_2 
       (.I0(\RF_reg[3]_2 [3]),
        .I1(\RF_reg[2]_1 [3]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [3]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [3]),
        .O(\A[3]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[4]_i_1 
       (.I0(\RF_reg[5]_4 [4]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [4]),
        .I3(Q[5]),
        .I4(\A[4]_i_2_n_1 ),
        .O(\A_reg[31] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[4]_i_2 
       (.I0(\RF_reg[3]_2 [4]),
        .I1(\RF_reg[2]_1 [4]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [4]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [4]),
        .O(\A[4]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[5]_i_1 
       (.I0(\RF_reg[5]_4 [5]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [5]),
        .I3(Q[5]),
        .I4(\A[5]_i_2_n_1 ),
        .O(\A_reg[31] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[5]_i_2 
       (.I0(\RF_reg[3]_2 [5]),
        .I1(\RF_reg[2]_1 [5]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [5]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [5]),
        .O(\A[5]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[6]_i_1 
       (.I0(\RF_reg[5]_4 [6]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [6]),
        .I3(Q[5]),
        .I4(\A[6]_i_2_n_1 ),
        .O(\A_reg[31] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[6]_i_2 
       (.I0(\RF_reg[3]_2 [6]),
        .I1(\RF_reg[2]_1 [6]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [6]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [6]),
        .O(\A[6]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[7]_i_1 
       (.I0(\RF_reg[5]_4 [7]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [7]),
        .I3(Q[5]),
        .I4(\A[7]_i_2_n_1 ),
        .O(\A_reg[31] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[7]_i_2 
       (.I0(\RF_reg[3]_2 [7]),
        .I1(\RF_reg[2]_1 [7]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [7]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [7]),
        .O(\A[7]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[8]_i_1 
       (.I0(\RF_reg[5]_4 [8]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [8]),
        .I3(Q[5]),
        .I4(\A[8]_i_2_n_1 ),
        .O(\A_reg[31] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[8]_i_2 
       (.I0(\RF_reg[3]_2 [8]),
        .I1(\RF_reg[2]_1 [8]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [8]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [8]),
        .O(\A[8]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \A[9]_i_1 
       (.I0(\RF_reg[5]_4 [9]),
        .I1(Q[3]),
        .I2(\RF_reg[4]_3 [9]),
        .I3(Q[5]),
        .I4(\A[9]_i_2_n_1 ),
        .O(\A_reg[31] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A[9]_i_2 
       (.I0(\RF_reg[3]_2 [9]),
        .I1(\RF_reg[2]_1 [9]),
        .I2(Q[4]),
        .I3(\RF_reg[1]_0 [9]),
        .I4(Q[3]),
        .I5(\RF_reg[0]_5 [9]),
        .O(\A[9]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[0]_i_1 
       (.I0(\RF_reg[5]_4 [0]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [0]),
        .I3(Q[2]),
        .I4(\B[0]_i_2_n_1 ),
        .O(\B_reg[31] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[0]_i_2 
       (.I0(\RF_reg[3]_2 [0]),
        .I1(\RF_reg[2]_1 [0]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [0]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [0]),
        .O(\B[0]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[10]_i_1 
       (.I0(\RF_reg[5]_4 [10]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [10]),
        .I3(Q[2]),
        .I4(\B[10]_i_2_n_1 ),
        .O(\B_reg[31] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[10]_i_2 
       (.I0(\RF_reg[3]_2 [10]),
        .I1(\RF_reg[2]_1 [10]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [10]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [10]),
        .O(\B[10]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[11]_i_1 
       (.I0(\RF_reg[5]_4 [11]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [11]),
        .I3(Q[2]),
        .I4(\B[11]_i_2_n_1 ),
        .O(\B_reg[31] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[11]_i_2 
       (.I0(\RF_reg[3]_2 [11]),
        .I1(\RF_reg[2]_1 [11]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [11]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [11]),
        .O(\B[11]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[12]_i_1 
       (.I0(\RF_reg[5]_4 [12]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [12]),
        .I3(Q[2]),
        .I4(\B[12]_i_2_n_1 ),
        .O(\B_reg[31] [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[12]_i_2 
       (.I0(\RF_reg[3]_2 [12]),
        .I1(\RF_reg[2]_1 [12]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [12]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [12]),
        .O(\B[12]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[13]_i_1 
       (.I0(\RF_reg[5]_4 [13]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [13]),
        .I3(Q[2]),
        .I4(\B[13]_i_2_n_1 ),
        .O(\B_reg[31] [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[13]_i_2 
       (.I0(\RF_reg[3]_2 [13]),
        .I1(\RF_reg[2]_1 [13]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [13]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [13]),
        .O(\B[13]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[14]_i_1 
       (.I0(\RF_reg[5]_4 [14]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [14]),
        .I3(Q[2]),
        .I4(\B[14]_i_2_n_1 ),
        .O(\B_reg[31] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[14]_i_2 
       (.I0(\RF_reg[3]_2 [14]),
        .I1(\RF_reg[2]_1 [14]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [14]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [14]),
        .O(\B[14]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[15]_i_1 
       (.I0(\RF_reg[5]_4 [15]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [15]),
        .I3(Q[2]),
        .I4(\B[15]_i_2_n_1 ),
        .O(\B_reg[31] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[15]_i_2 
       (.I0(\RF_reg[3]_2 [15]),
        .I1(\RF_reg[2]_1 [15]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [15]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [15]),
        .O(\B[15]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[16]_i_1 
       (.I0(\RF_reg[5]_4 [16]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [16]),
        .I3(Q[2]),
        .I4(\B[16]_i_2_n_1 ),
        .O(\B_reg[31] [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[16]_i_2 
       (.I0(\RF_reg[3]_2 [16]),
        .I1(\RF_reg[2]_1 [16]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [16]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [16]),
        .O(\B[16]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[17]_i_1 
       (.I0(\RF_reg[5]_4 [17]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [17]),
        .I3(Q[2]),
        .I4(\B[17]_i_2_n_1 ),
        .O(\B_reg[31] [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[17]_i_2 
       (.I0(\RF_reg[3]_2 [17]),
        .I1(\RF_reg[2]_1 [17]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [17]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [17]),
        .O(\B[17]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[18]_i_1 
       (.I0(\RF_reg[5]_4 [18]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [18]),
        .I3(Q[2]),
        .I4(\B[18]_i_2_n_1 ),
        .O(\B_reg[31] [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[18]_i_2 
       (.I0(\RF_reg[3]_2 [18]),
        .I1(\RF_reg[2]_1 [18]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [18]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [18]),
        .O(\B[18]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[19]_i_1 
       (.I0(\RF_reg[5]_4 [19]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [19]),
        .I3(Q[2]),
        .I4(\B[19]_i_2_n_1 ),
        .O(\B_reg[31] [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[19]_i_2 
       (.I0(\RF_reg[3]_2 [19]),
        .I1(\RF_reg[2]_1 [19]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [19]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [19]),
        .O(\B[19]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[1]_i_1 
       (.I0(\RF_reg[5]_4 [1]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [1]),
        .I3(Q[2]),
        .I4(\B[1]_i_2_n_1 ),
        .O(\B_reg[31] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[1]_i_2 
       (.I0(\RF_reg[3]_2 [1]),
        .I1(\RF_reg[2]_1 [1]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [1]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [1]),
        .O(\B[1]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[20]_i_1 
       (.I0(\RF_reg[5]_4 [20]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [20]),
        .I3(Q[2]),
        .I4(\B[20]_i_2_n_1 ),
        .O(\B_reg[31] [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[20]_i_2 
       (.I0(\RF_reg[3]_2 [20]),
        .I1(\RF_reg[2]_1 [20]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [20]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [20]),
        .O(\B[20]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[21]_i_1 
       (.I0(\RF_reg[5]_4 [21]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [21]),
        .I3(Q[2]),
        .I4(\B[21]_i_2_n_1 ),
        .O(\B_reg[31] [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[21]_i_2 
       (.I0(\RF_reg[3]_2 [21]),
        .I1(\RF_reg[2]_1 [21]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [21]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [21]),
        .O(\B[21]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[22]_i_1 
       (.I0(\RF_reg[5]_4 [22]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [22]),
        .I3(Q[2]),
        .I4(\B[22]_i_2_n_1 ),
        .O(\B_reg[31] [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[22]_i_2 
       (.I0(\RF_reg[3]_2 [22]),
        .I1(\RF_reg[2]_1 [22]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [22]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [22]),
        .O(\B[22]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[23]_i_1 
       (.I0(\RF_reg[5]_4 [23]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [23]),
        .I3(Q[2]),
        .I4(\B[23]_i_2_n_1 ),
        .O(\B_reg[31] [23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[23]_i_2 
       (.I0(\RF_reg[3]_2 [23]),
        .I1(\RF_reg[2]_1 [23]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [23]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [23]),
        .O(\B[23]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[24]_i_1 
       (.I0(\RF_reg[5]_4 [24]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [24]),
        .I3(Q[2]),
        .I4(\B[24]_i_2_n_1 ),
        .O(\B_reg[31] [24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[24]_i_2 
       (.I0(\RF_reg[3]_2 [24]),
        .I1(\RF_reg[2]_1 [24]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [24]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [24]),
        .O(\B[24]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[25]_i_1 
       (.I0(\RF_reg[5]_4 [25]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [25]),
        .I3(Q[2]),
        .I4(\B[25]_i_2_n_1 ),
        .O(\B_reg[31] [25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[25]_i_2 
       (.I0(\RF_reg[3]_2 [25]),
        .I1(\RF_reg[2]_1 [25]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [25]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [25]),
        .O(\B[25]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[26]_i_1 
       (.I0(\RF_reg[5]_4 [26]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [26]),
        .I3(Q[2]),
        .I4(\B[26]_i_2_n_1 ),
        .O(\B_reg[31] [26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[26]_i_2 
       (.I0(\RF_reg[3]_2 [26]),
        .I1(\RF_reg[2]_1 [26]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [26]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [26]),
        .O(\B[26]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[27]_i_1 
       (.I0(\RF_reg[5]_4 [27]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [27]),
        .I3(Q[2]),
        .I4(\B[27]_i_2_n_1 ),
        .O(\B_reg[31] [27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[27]_i_2 
       (.I0(\RF_reg[3]_2 [27]),
        .I1(\RF_reg[2]_1 [27]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [27]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [27]),
        .O(\B[27]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[28]_i_1 
       (.I0(\RF_reg[5]_4 [28]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [28]),
        .I3(Q[2]),
        .I4(\B[28]_i_2_n_1 ),
        .O(\B_reg[31] [28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[28]_i_2 
       (.I0(\RF_reg[3]_2 [28]),
        .I1(\RF_reg[2]_1 [28]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [28]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [28]),
        .O(\B[28]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[29]_i_1 
       (.I0(\RF_reg[5]_4 [29]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [29]),
        .I3(Q[2]),
        .I4(\B[29]_i_2_n_1 ),
        .O(\B_reg[31] [29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[29]_i_2 
       (.I0(\RF_reg[3]_2 [29]),
        .I1(\RF_reg[2]_1 [29]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [29]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [29]),
        .O(\B[29]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[2]_i_1 
       (.I0(\RF_reg[5]_4 [2]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [2]),
        .I3(Q[2]),
        .I4(\B[2]_i_2_n_1 ),
        .O(\B_reg[31] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[2]_i_2 
       (.I0(\RF_reg[3]_2 [2]),
        .I1(\RF_reg[2]_1 [2]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [2]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [2]),
        .O(\B[2]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[30]_i_1 
       (.I0(\RF_reg[5]_4 [30]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [30]),
        .I3(Q[2]),
        .I4(\B[30]_i_2_n_1 ),
        .O(\B_reg[31] [30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[30]_i_2 
       (.I0(\RF_reg[3]_2 [30]),
        .I1(\RF_reg[2]_1 [30]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [30]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [30]),
        .O(\B[30]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[31]_i_1 
       (.I0(\RF_reg[5]_4 [31]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [31]),
        .I3(Q[2]),
        .I4(\B[31]_i_2_n_1 ),
        .O(\B_reg[31] [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[31]_i_2 
       (.I0(\RF_reg[3]_2 [31]),
        .I1(\RF_reg[2]_1 [31]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [31]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [31]),
        .O(\B[31]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[3]_i_1 
       (.I0(\RF_reg[5]_4 [3]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [3]),
        .I3(Q[2]),
        .I4(\B[3]_i_2_n_1 ),
        .O(\B_reg[31] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[3]_i_2 
       (.I0(\RF_reg[3]_2 [3]),
        .I1(\RF_reg[2]_1 [3]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [3]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [3]),
        .O(\B[3]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[4]_i_1 
       (.I0(\RF_reg[5]_4 [4]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [4]),
        .I3(Q[2]),
        .I4(\B[4]_i_2_n_1 ),
        .O(\B_reg[31] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[4]_i_2 
       (.I0(\RF_reg[3]_2 [4]),
        .I1(\RF_reg[2]_1 [4]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [4]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [4]),
        .O(\B[4]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[5]_i_1 
       (.I0(\RF_reg[5]_4 [5]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [5]),
        .I3(Q[2]),
        .I4(\B[5]_i_2_n_1 ),
        .O(\B_reg[31] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[5]_i_2 
       (.I0(\RF_reg[3]_2 [5]),
        .I1(\RF_reg[2]_1 [5]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [5]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [5]),
        .O(\B[5]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[6]_i_1 
       (.I0(\RF_reg[5]_4 [6]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [6]),
        .I3(Q[2]),
        .I4(\B[6]_i_2_n_1 ),
        .O(\B_reg[31] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[6]_i_2 
       (.I0(\RF_reg[3]_2 [6]),
        .I1(\RF_reg[2]_1 [6]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [6]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [6]),
        .O(\B[6]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[7]_i_1 
       (.I0(\RF_reg[5]_4 [7]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [7]),
        .I3(Q[2]),
        .I4(\B[7]_i_2_n_1 ),
        .O(\B_reg[31] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[7]_i_2 
       (.I0(\RF_reg[3]_2 [7]),
        .I1(\RF_reg[2]_1 [7]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [7]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [7]),
        .O(\B[7]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[8]_i_1 
       (.I0(\RF_reg[5]_4 [8]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [8]),
        .I3(Q[2]),
        .I4(\B[8]_i_2_n_1 ),
        .O(\B_reg[31] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[8]_i_2 
       (.I0(\RF_reg[3]_2 [8]),
        .I1(\RF_reg[2]_1 [8]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [8]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [8]),
        .O(\B[8]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \B[9]_i_1 
       (.I0(\RF_reg[5]_4 [9]),
        .I1(Q[0]),
        .I2(\RF_reg[4]_3 [9]),
        .I3(Q[2]),
        .I4(\B[9]_i_2_n_1 ),
        .O(\B_reg[31] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B[9]_i_2 
       (.I0(\RF_reg[3]_2 [9]),
        .I1(\RF_reg[2]_1 [9]),
        .I2(Q[1]),
        .I3(\RF_reg[1]_0 [9]),
        .I4(Q[0]),
        .I5(\RF_reg[0]_5 [9]),
        .O(\B[9]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][0] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [0]),
        .Q(\RF_reg[0]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][10] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [10]),
        .Q(\RF_reg[0]_5 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][11] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [11]),
        .Q(\RF_reg[0]_5 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][12] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [12]),
        .Q(\RF_reg[0]_5 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][13] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [13]),
        .Q(\RF_reg[0]_5 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][14] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [14]),
        .Q(\RF_reg[0]_5 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][15] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [15]),
        .Q(\RF_reg[0]_5 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][16] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [16]),
        .Q(\RF_reg[0]_5 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][17] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [17]),
        .Q(\RF_reg[0]_5 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][18] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [18]),
        .Q(\RF_reg[0]_5 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][19] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [19]),
        .Q(\RF_reg[0]_5 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][1] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [1]),
        .Q(\RF_reg[0]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][20] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [20]),
        .Q(\RF_reg[0]_5 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][21] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [21]),
        .Q(\RF_reg[0]_5 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][22] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [22]),
        .Q(\RF_reg[0]_5 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][23] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [23]),
        .Q(\RF_reg[0]_5 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][24] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [24]),
        .Q(\RF_reg[0]_5 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][25] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [25]),
        .Q(\RF_reg[0]_5 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][26] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [26]),
        .Q(\RF_reg[0]_5 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][27] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [27]),
        .Q(\RF_reg[0]_5 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][28] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [28]),
        .Q(\RF_reg[0]_5 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][29] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [29]),
        .Q(\RF_reg[0]_5 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][2] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [2]),
        .Q(\RF_reg[0]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][30] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [30]),
        .Q(\RF_reg[0]_5 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][31] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [31]),
        .Q(\RF_reg[0]_5 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][3] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [3]),
        .Q(\RF_reg[0]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][4] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [4]),
        .Q(\RF_reg[0]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][5] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [5]),
        .Q(\RF_reg[0]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][6] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [6]),
        .Q(\RF_reg[0]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][7] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [7]),
        .Q(\RF_reg[0]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][8] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [8]),
        .Q(\RF_reg[0]_5 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][9] 
       (.C(CLK),
        .CE(\current_state_reg[0] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [9]),
        .Q(\RF_reg[0]_5 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [0]),
        .Q(\RF_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [10]),
        .Q(\RF_reg[1]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [11]),
        .Q(\RF_reg[1]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [12]),
        .Q(\RF_reg[1]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [13]),
        .Q(\RF_reg[1]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [14]),
        .Q(\RF_reg[1]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [15]),
        .Q(\RF_reg[1]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [16]),
        .Q(\RF_reg[1]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [17]),
        .Q(\RF_reg[1]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [18]),
        .Q(\RF_reg[1]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [19]),
        .Q(\RF_reg[1]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [1]),
        .Q(\RF_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [20]),
        .Q(\RF_reg[1]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [21]),
        .Q(\RF_reg[1]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [22]),
        .Q(\RF_reg[1]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [23]),
        .Q(\RF_reg[1]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [24]),
        .Q(\RF_reg[1]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [25]),
        .Q(\RF_reg[1]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][26] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [26]),
        .Q(\RF_reg[1]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][27] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [27]),
        .Q(\RF_reg[1]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][28] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [28]),
        .Q(\RF_reg[1]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][29] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [29]),
        .Q(\RF_reg[1]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [2]),
        .Q(\RF_reg[1]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][30] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [30]),
        .Q(\RF_reg[1]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][31] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [31]),
        .Q(\RF_reg[1]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [3]),
        .Q(\RF_reg[1]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [4]),
        .Q(\RF_reg[1]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [5]),
        .Q(\RF_reg[1]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [6]),
        .Q(\RF_reg[1]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [7]),
        .Q(\RF_reg[1]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [8]),
        .Q(\RF_reg[1]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [9]),
        .Q(\RF_reg[1]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][0] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [0]),
        .Q(\RF_reg[2]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][10] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [10]),
        .Q(\RF_reg[2]_1 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][11] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [11]),
        .Q(\RF_reg[2]_1 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][12] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [12]),
        .Q(\RF_reg[2]_1 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][13] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [13]),
        .Q(\RF_reg[2]_1 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][14] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [14]),
        .Q(\RF_reg[2]_1 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][15] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [15]),
        .Q(\RF_reg[2]_1 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][16] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [16]),
        .Q(\RF_reg[2]_1 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][17] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [17]),
        .Q(\RF_reg[2]_1 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][18] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [18]),
        .Q(\RF_reg[2]_1 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][19] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [19]),
        .Q(\RF_reg[2]_1 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][1] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [1]),
        .Q(\RF_reg[2]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][20] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [20]),
        .Q(\RF_reg[2]_1 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][21] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [21]),
        .Q(\RF_reg[2]_1 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][22] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [22]),
        .Q(\RF_reg[2]_1 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][23] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [23]),
        .Q(\RF_reg[2]_1 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][24] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [24]),
        .Q(\RF_reg[2]_1 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][25] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [25]),
        .Q(\RF_reg[2]_1 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][26] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [26]),
        .Q(\RF_reg[2]_1 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][27] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [27]),
        .Q(\RF_reg[2]_1 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][28] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [28]),
        .Q(\RF_reg[2]_1 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][29] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [29]),
        .Q(\RF_reg[2]_1 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][2] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [2]),
        .Q(\RF_reg[2]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][30] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [30]),
        .Q(\RF_reg[2]_1 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][31] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [31]),
        .Q(\RF_reg[2]_1 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][3] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [3]),
        .Q(\RF_reg[2]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][4] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [4]),
        .Q(\RF_reg[2]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][5] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [5]),
        .Q(\RF_reg[2]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][6] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [6]),
        .Q(\RF_reg[2]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][7] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [7]),
        .Q(\RF_reg[2]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][8] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [8]),
        .Q(\RF_reg[2]_1 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][9] 
       (.C(CLK),
        .CE(\current_state_reg[2] ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [9]),
        .Q(\RF_reg[2]_1 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][0] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [0]),
        .Q(\RF_reg[3]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][10] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [10]),
        .Q(\RF_reg[3]_2 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][11] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [11]),
        .Q(\RF_reg[3]_2 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][12] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [12]),
        .Q(\RF_reg[3]_2 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][13] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [13]),
        .Q(\RF_reg[3]_2 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][14] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [14]),
        .Q(\RF_reg[3]_2 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][15] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [15]),
        .Q(\RF_reg[3]_2 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][16] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [16]),
        .Q(\RF_reg[3]_2 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][17] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [17]),
        .Q(\RF_reg[3]_2 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][18] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [18]),
        .Q(\RF_reg[3]_2 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][19] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [19]),
        .Q(\RF_reg[3]_2 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][1] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [1]),
        .Q(\RF_reg[3]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][20] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [20]),
        .Q(\RF_reg[3]_2 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][21] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [21]),
        .Q(\RF_reg[3]_2 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][22] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [22]),
        .Q(\RF_reg[3]_2 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][23] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [23]),
        .Q(\RF_reg[3]_2 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][24] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [24]),
        .Q(\RF_reg[3]_2 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][25] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [25]),
        .Q(\RF_reg[3]_2 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][26] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [26]),
        .Q(\RF_reg[3]_2 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][27] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [27]),
        .Q(\RF_reg[3]_2 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][28] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [28]),
        .Q(\RF_reg[3]_2 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][29] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [29]),
        .Q(\RF_reg[3]_2 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][2] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [2]),
        .Q(\RF_reg[3]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][30] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [30]),
        .Q(\RF_reg[3]_2 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][31] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [31]),
        .Q(\RF_reg[3]_2 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][3] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [3]),
        .Q(\RF_reg[3]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][4] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [4]),
        .Q(\RF_reg[3]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][5] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [5]),
        .Q(\RF_reg[3]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][6] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [6]),
        .Q(\RF_reg[3]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][7] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [7]),
        .Q(\RF_reg[3]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][8] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [8]),
        .Q(\RF_reg[3]_2 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][9] 
       (.C(CLK),
        .CE(\current_state_reg[2]_0 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [9]),
        .Q(\RF_reg[3]_2 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][0] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [0]),
        .Q(\RF_reg[4]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][10] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [10]),
        .Q(\RF_reg[4]_3 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][11] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [11]),
        .Q(\RF_reg[4]_3 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][12] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [12]),
        .Q(\RF_reg[4]_3 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][13] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [13]),
        .Q(\RF_reg[4]_3 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][14] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [14]),
        .Q(\RF_reg[4]_3 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][15] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [15]),
        .Q(\RF_reg[4]_3 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][16] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [16]),
        .Q(\RF_reg[4]_3 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][17] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [17]),
        .Q(\RF_reg[4]_3 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][18] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [18]),
        .Q(\RF_reg[4]_3 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][19] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [19]),
        .Q(\RF_reg[4]_3 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][1] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [1]),
        .Q(\RF_reg[4]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][20] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [20]),
        .Q(\RF_reg[4]_3 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][21] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [21]),
        .Q(\RF_reg[4]_3 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][22] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [22]),
        .Q(\RF_reg[4]_3 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][23] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [23]),
        .Q(\RF_reg[4]_3 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][24] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [24]),
        .Q(\RF_reg[4]_3 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][25] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [25]),
        .Q(\RF_reg[4]_3 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][26] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [26]),
        .Q(\RF_reg[4]_3 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][27] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [27]),
        .Q(\RF_reg[4]_3 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][28] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [28]),
        .Q(\RF_reg[4]_3 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][29] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [29]),
        .Q(\RF_reg[4]_3 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][2] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [2]),
        .Q(\RF_reg[4]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][30] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [30]),
        .Q(\RF_reg[4]_3 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][31] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [31]),
        .Q(\RF_reg[4]_3 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][3] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [3]),
        .Q(\RF_reg[4]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][4] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [4]),
        .Q(\RF_reg[4]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][5] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [5]),
        .Q(\RF_reg[4]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][6] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [6]),
        .Q(\RF_reg[4]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][7] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [7]),
        .Q(\RF_reg[4]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][8] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [8]),
        .Q(\RF_reg[4]_3 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][9] 
       (.C(CLK),
        .CE(\current_state_reg[2]_1 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [9]),
        .Q(\RF_reg[4]_3 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][0] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [0]),
        .Q(\RF_reg[5]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][10] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [10]),
        .Q(\RF_reg[5]_4 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][11] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [11]),
        .Q(\RF_reg[5]_4 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][12] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [12]),
        .Q(\RF_reg[5]_4 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][13] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [13]),
        .Q(\RF_reg[5]_4 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][14] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [14]),
        .Q(\RF_reg[5]_4 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][15] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [15]),
        .Q(\RF_reg[5]_4 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][16] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [16]),
        .Q(\RF_reg[5]_4 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][17] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [17]),
        .Q(\RF_reg[5]_4 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][18] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [18]),
        .Q(\RF_reg[5]_4 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][19] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [19]),
        .Q(\RF_reg[5]_4 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][1] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [1]),
        .Q(\RF_reg[5]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][20] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [20]),
        .Q(\RF_reg[5]_4 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][21] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [21]),
        .Q(\RF_reg[5]_4 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][22] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [22]),
        .Q(\RF_reg[5]_4 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][23] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [23]),
        .Q(\RF_reg[5]_4 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][24] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [24]),
        .Q(\RF_reg[5]_4 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][25] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [25]),
        .Q(\RF_reg[5]_4 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][26] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [26]),
        .Q(\RF_reg[5]_4 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][27] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [27]),
        .Q(\RF_reg[5]_4 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][28] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [28]),
        .Q(\RF_reg[5]_4 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][29] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [29]),
        .Q(\RF_reg[5]_4 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][2] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [2]),
        .Q(\RF_reg[5]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][30] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [30]),
        .Q(\RF_reg[5]_4 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][31] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [31]),
        .Q(\RF_reg[5]_4 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][3] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [3]),
        .Q(\RF_reg[5]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][4] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [4]),
        .Q(\RF_reg[5]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][5] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [5]),
        .Q(\RF_reg[5]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][6] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [6]),
        .Q(\RF_reg[5]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][7] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [7]),
        .Q(\RF_reg[5]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][8] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [8]),
        .Q(\RF_reg[5]_4 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][9] 
       (.C(CLK),
        .CE(\current_state_reg[2]_2 ),
        .CLR(AR),
        .D(\Memery_data_register_reg[31] [9]),
        .Q(\RF_reg[5]_4 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[0]_i_1 
       (.I0(\seg_temp[0]_i_2_n_1 ),
        .I1(\seg_temp[0]_i_3_n_1 ),
        .I2(out[2]),
        .I3(\seg_temp[0]_i_4_n_1 ),
        .I4(out[1]),
        .I5(\seg_temp[0]_i_5_n_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[0]_i_10 
       (.I0(\RF_reg[5]_4 [4]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [4]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[0]_i_17_n_1 ),
        .O(\seg_temp[0]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h8A80FFFF8A808A80)) 
    \seg_temp[0]_i_11 
       (.I0(\reg_addr_reg[2] [2]),
        .I1(\RF_reg[5]_4 [0]),
        .I2(\reg_addr_reg[2] [0]),
        .I3(\RF_reg[4]_3 [0]),
        .I4(\seg_temp[0]_i_18_n_1 ),
        .I5(\seg_temp[0]_i_19_n_1 ),
        .O(\seg_temp[0]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[0]_i_12 
       (.I0(\RF_reg[3]_2 [24]),
        .I1(\RF_reg[2]_1 [24]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [24]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [24]),
        .O(\seg_temp[0]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h0000FF3500000000)) 
    \seg_temp[0]_i_13 
       (.I0(\RF_reg[1]_0 [16]),
        .I1(\RF_reg[3]_2 [16]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(mem_IBUF),
        .I5(\reg_addr_reg[2] [0]),
        .O(\seg_temp[0]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CA)) 
    \seg_temp[0]_i_14 
       (.I0(\RF_reg[0]_5 [16]),
        .I1(\RF_reg[2]_1 [16]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(mem_IBUF),
        .O(\seg_temp[0]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[0]_i_15 
       (.I0(\RF_reg[3]_2 [12]),
        .I1(\RF_reg[2]_1 [12]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [12]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [12]),
        .O(\seg_temp[0]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[0]_i_16 
       (.I0(\RF_reg[3]_2 [8]),
        .I1(\RF_reg[2]_1 [8]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [8]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [8]),
        .O(\seg_temp[0]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[0]_i_17 
       (.I0(\RF_reg[3]_2 [4]),
        .I1(\RF_reg[2]_1 [4]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [4]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [4]),
        .O(\seg_temp[0]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'h0000FF3500000000)) 
    \seg_temp[0]_i_18 
       (.I0(\RF_reg[1]_0 [0]),
        .I1(\RF_reg[3]_2 [0]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(mem_IBUF),
        .I5(\reg_addr_reg[2] [0]),
        .O(\seg_temp[0]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CA)) 
    \seg_temp[0]_i_19 
       (.I0(\RF_reg[0]_5 [0]),
        .I1(\RF_reg[2]_1 [0]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(mem_IBUF),
        .O(\seg_temp[0]_i_19_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[0]_i_2 
       (.I0(\seg_temp[2]_i_9_n_1 ),
        .I1(out[0]),
        .I2(dpo[24]),
        .I3(mem_IBUF),
        .I4(\seg_temp[0]_i_6_n_1 ),
        .O(\seg_temp[0]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFF00B0B0)) 
    \seg_temp[0]_i_3 
       (.I0(dpo[16]),
        .I1(mem_IBUF),
        .I2(\seg_temp[0]_i_7_n_1 ),
        .I3(\seg_temp[2]_i_6_n_1 ),
        .I4(out[0]),
        .O(\seg_temp[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[0]_i_4 
       (.I0(dpo[12]),
        .I1(\seg_temp[0]_i_8_n_1 ),
        .I2(out[0]),
        .I3(dpo[8]),
        .I4(mem_IBUF),
        .I5(\seg_temp[0]_i_9_n_1 ),
        .O(\seg_temp[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFC0CFC0)) 
    \seg_temp[0]_i_5 
       (.I0(dpo[4]),
        .I1(\seg_temp[0]_i_10_n_1 ),
        .I2(out[0]),
        .I3(\seg_temp[0]_i_11_n_1 ),
        .I4(dpo[0]),
        .I5(mem_IBUF),
        .O(\seg_temp[0]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[0]_i_6 
       (.I0(\RF_reg[5]_4 [24]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [24]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[0]_i_12_n_1 ),
        .O(\seg_temp[0]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h8A80FFFF8A808A80)) 
    \seg_temp[0]_i_7 
       (.I0(\reg_addr_reg[2] [2]),
        .I1(\RF_reg[5]_4 [16]),
        .I2(\reg_addr_reg[2] [0]),
        .I3(\RF_reg[4]_3 [16]),
        .I4(\seg_temp[0]_i_13_n_1 ),
        .I5(\seg_temp[0]_i_14_n_1 ),
        .O(\seg_temp[0]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[0]_i_8 
       (.I0(\RF_reg[5]_4 [12]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [12]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[0]_i_15_n_1 ),
        .O(\seg_temp[0]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[0]_i_9 
       (.I0(\RF_reg[5]_4 [8]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [8]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[0]_i_16_n_1 ),
        .O(\seg_temp[0]_i_9_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[1]_i_10 
       (.I0(\RF_reg[5]_4 [13]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [13]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[1]_i_16_n_1 ),
        .O(\seg_temp[1]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[1]_i_11 
       (.I0(\RF_reg[5]_4 [9]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [9]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[1]_i_17_n_1 ),
        .O(\seg_temp[1]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h001D0000001D00FF)) 
    \seg_temp[1]_i_12 
       (.I0(\RF_reg[4]_3 [17]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[5]_4 [17]),
        .I3(mem_IBUF),
        .I4(\reg_addr_reg[2] [2]),
        .I5(\seg_temp[1]_i_18_n_1 ),
        .O(\seg_temp[1]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[1]_i_13 
       (.I0(\RF_reg[5]_4 [25]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [25]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[1]_i_19_n_1 ),
        .O(\seg_temp[1]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_14 
       (.I0(\RF_reg[3]_2 [5]),
        .I1(\RF_reg[2]_1 [5]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [5]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [5]),
        .O(\seg_temp[1]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_15 
       (.I0(\RF_reg[3]_2 [1]),
        .I1(\RF_reg[2]_1 [1]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [1]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [1]),
        .O(\seg_temp[1]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_16 
       (.I0(\RF_reg[3]_2 [13]),
        .I1(\RF_reg[2]_1 [13]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [13]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [13]),
        .O(\seg_temp[1]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_17 
       (.I0(\RF_reg[3]_2 [9]),
        .I1(\RF_reg[2]_1 [9]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [9]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [9]),
        .O(\seg_temp[1]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_18 
       (.I0(\RF_reg[3]_2 [17]),
        .I1(\RF_reg[2]_1 [17]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [17]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [17]),
        .O(\seg_temp[1]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_19 
       (.I0(\RF_reg[3]_2 [25]),
        .I1(\RF_reg[2]_1 [25]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [25]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [25]),
        .O(\seg_temp[1]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'hA0AFA0A0C0CFC0CF)) 
    \seg_temp[1]_i_4 
       (.I0(dpo[5]),
        .I1(\seg_temp[1]_i_8_n_1 ),
        .I2(out[0]),
        .I3(\seg_temp[1]_i_9_n_1 ),
        .I4(dpo[1]),
        .I5(mem_IBUF),
        .O(\seg_temp[1]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[1]_i_5 
       (.I0(dpo[13]),
        .I1(\seg_temp[1]_i_10_n_1 ),
        .I2(out[0]),
        .I3(dpo[9]),
        .I4(mem_IBUF),
        .I5(\seg_temp[1]_i_11_n_1 ),
        .O(\seg_temp[1]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'hFF000B0B)) 
    \seg_temp[1]_i_6 
       (.I0(dpo[17]),
        .I1(mem_IBUF),
        .I2(\seg_temp[1]_i_12_n_1 ),
        .I3(\seg_temp[3]_i_14_n_1 ),
        .I4(out[0]),
        .O(\seg_temp[1]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[1]_i_7 
       (.I0(\seg_temp[3]_i_13_n_1 ),
        .I1(out[0]),
        .I2(dpo[25]),
        .I3(mem_IBUF),
        .I4(\seg_temp[1]_i_13_n_1 ),
        .O(\seg_temp[1]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[1]_i_8 
       (.I0(\RF_reg[5]_4 [5]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [5]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[1]_i_14_n_1 ),
        .O(\seg_temp[1]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \seg_temp[1]_i_9 
       (.I0(mem_IBUF),
        .I1(\seg_temp[1]_i_15_n_1 ),
        .I2(\reg_addr_reg[2] [2]),
        .I3(\RF_reg[4]_3 [1]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[5]_4 [1]),
        .O(\seg_temp[1]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFAFC0CFA0A0C0CF)) 
    \seg_temp[2]_i_1 
       (.I0(\seg_temp[2]_i_2_n_1 ),
        .I1(\seg_temp[2]_i_3_n_1 ),
        .I2(out[2]),
        .I3(\seg_temp[2]_i_4_n_1 ),
        .I4(out[1]),
        .I5(\seg_temp[2]_i_5_n_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \seg_temp[2]_i_10 
       (.I0(mem_IBUF),
        .I1(\seg_temp[2]_i_20_n_1 ),
        .I2(\reg_addr_reg[2] [2]),
        .I3(\RF_reg[4]_3 [6]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[5]_4 [6]),
        .O(\seg_temp[2]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \seg_temp[2]_i_11 
       (.I0(mem_IBUF),
        .I1(\seg_temp[2]_i_21_n_1 ),
        .I2(\reg_addr_reg[2] [2]),
        .I3(\RF_reg[4]_3 [2]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[5]_4 [2]),
        .O(\seg_temp[2]_i_11_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[2]_i_12 
       (.I0(\RF_reg[5]_4 [14]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [14]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[2]_i_22_n_1 ),
        .O(\seg_temp[2]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[2]_i_13 
       (.I0(\RF_reg[5]_4 [10]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [10]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[2]_i_23_n_1 ),
        .O(\seg_temp[2]_i_13_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \seg_temp[2]_i_14 
       (.I0(\RF_reg[5]_4 [20]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [20]),
        .O(\seg_temp[2]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_15 
       (.I0(\RF_reg[3]_2 [20]),
        .I1(\RF_reg[2]_1 [20]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [20]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [20]),
        .O(\seg_temp[2]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_16 
       (.I0(\RF_reg[3]_2 [26]),
        .I1(\RF_reg[2]_1 [26]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [26]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [26]),
        .O(\seg_temp[2]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_17 
       (.I0(\RF_reg[3]_2 [22]),
        .I1(\RF_reg[2]_1 [22]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [22]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [22]),
        .O(\seg_temp[2]_i_17_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \seg_temp[2]_i_18 
       (.I0(\RF_reg[5]_4 [18]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [18]),
        .O(\seg_temp[2]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_19 
       (.I0(\RF_reg[3]_2 [18]),
        .I1(\RF_reg[2]_1 [18]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [18]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [18]),
        .O(\seg_temp[2]_i_19_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[2]_i_2 
       (.I0(\seg_temp[2]_i_6_n_1 ),
        .I1(out[0]),
        .I2(dpo[26]),
        .I3(mem_IBUF),
        .I4(\seg_temp[2]_i_7_n_1 ),
        .O(\seg_temp[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_20 
       (.I0(\RF_reg[3]_2 [6]),
        .I1(\RF_reg[2]_1 [6]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [6]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [6]),
        .O(\seg_temp[2]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_21 
       (.I0(\RF_reg[3]_2 [2]),
        .I1(\RF_reg[2]_1 [2]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [2]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [2]),
        .O(\seg_temp[2]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_22 
       (.I0(\RF_reg[3]_2 [14]),
        .I1(\RF_reg[2]_1 [14]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [14]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [14]),
        .O(\seg_temp[2]_i_22_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_23 
       (.I0(\RF_reg[3]_2 [10]),
        .I1(\RF_reg[2]_1 [10]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [10]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [10]),
        .O(\seg_temp[2]_i_23_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[2]_i_3 
       (.I0(dpo[22]),
        .I1(mem_IBUF),
        .I2(\seg_temp[2]_i_8_n_1 ),
        .I3(out[0]),
        .I4(\seg_temp[2]_i_9_n_1 ),
        .O(\seg_temp[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h20202F20AFA0AFA0)) 
    \seg_temp[2]_i_4 
       (.I0(\seg_temp[2]_i_10_n_1 ),
        .I1(dpo[6]),
        .I2(out[0]),
        .I3(\seg_temp[2]_i_11_n_1 ),
        .I4(dpo[2]),
        .I5(mem_IBUF),
        .O(\seg_temp[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[2]_i_5 
       (.I0(dpo[14]),
        .I1(\seg_temp[2]_i_12_n_1 ),
        .I2(out[0]),
        .I3(dpo[10]),
        .I4(mem_IBUF),
        .I5(\seg_temp[2]_i_13_n_1 ),
        .O(\seg_temp[2]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[2]_i_6 
       (.I0(dpo[20]),
        .I1(mem_IBUF),
        .I2(\seg_temp[2]_i_14_n_1 ),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[2]_i_15_n_1 ),
        .O(\seg_temp[2]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[2]_i_7 
       (.I0(\RF_reg[5]_4 [26]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [26]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[2]_i_16_n_1 ),
        .O(\seg_temp[2]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[2]_i_8 
       (.I0(\RF_reg[5]_4 [22]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [22]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[2]_i_17_n_1 ),
        .O(\seg_temp[2]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[2]_i_9 
       (.I0(dpo[18]),
        .I1(mem_IBUF),
        .I2(\seg_temp[2]_i_18_n_1 ),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[2]_i_19_n_1 ),
        .O(\seg_temp[2]_i_9_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[3]_i_10 
       (.I0(\RF_reg[5]_4 [15]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [15]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[3]_i_18_n_1 ),
        .O(\seg_temp[3]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[3]_i_11 
       (.I0(\RF_reg[5]_4 [11]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [11]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[3]_i_19_n_1 ),
        .O(\seg_temp[3]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \seg_temp[3]_i_12 
       (.I0(mem_IBUF),
        .I1(\seg_temp[3]_i_20_n_1 ),
        .I2(\reg_addr_reg[2] [2]),
        .I3(\RF_reg[4]_3 [23]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[5]_4 [23]),
        .O(\seg_temp[3]_i_12_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[3]_i_13 
       (.I0(dpo[19]),
        .I1(mem_IBUF),
        .I2(\seg_temp[3]_i_21_n_1 ),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[3]_i_22_n_1 ),
        .O(\seg_temp[3]_i_13_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_temp[3]_i_14 
       (.I0(dpo[21]),
        .I1(mem_IBUF),
        .I2(\seg_temp[3]_i_23_n_1 ),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[3]_i_24_n_1 ),
        .O(\seg_temp[3]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h001D0000001D00FF)) 
    \seg_temp[3]_i_15 
       (.I0(\RF_reg[4]_3 [27]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[5]_4 [27]),
        .I3(mem_IBUF),
        .I4(\reg_addr_reg[2] [2]),
        .I5(\seg_temp[3]_i_25_n_1 ),
        .O(\seg_temp[3]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_16 
       (.I0(\RF_reg[3]_2 [3]),
        .I1(\RF_reg[2]_1 [3]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [3]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [3]),
        .O(\seg_temp[3]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_17 
       (.I0(\RF_reg[3]_2 [7]),
        .I1(\RF_reg[2]_1 [7]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [7]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [7]),
        .O(\seg_temp[3]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_18 
       (.I0(\RF_reg[3]_2 [15]),
        .I1(\RF_reg[2]_1 [15]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [15]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [15]),
        .O(\seg_temp[3]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_19 
       (.I0(\RF_reg[3]_2 [11]),
        .I1(\RF_reg[2]_1 [11]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [11]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [11]),
        .O(\seg_temp[3]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_20 
       (.I0(\RF_reg[3]_2 [23]),
        .I1(\RF_reg[2]_1 [23]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [23]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [23]),
        .O(\seg_temp[3]_i_20_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \seg_temp[3]_i_21 
       (.I0(\RF_reg[5]_4 [19]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [19]),
        .O(\seg_temp[3]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_22 
       (.I0(\RF_reg[3]_2 [19]),
        .I1(\RF_reg[2]_1 [19]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [19]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [19]),
        .O(\seg_temp[3]_i_22_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \seg_temp[3]_i_23 
       (.I0(\RF_reg[5]_4 [21]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [21]),
        .O(\seg_temp[3]_i_23_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_24 
       (.I0(\RF_reg[3]_2 [21]),
        .I1(\RF_reg[2]_1 [21]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [21]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [21]),
        .O(\seg_temp[3]_i_24_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_25 
       (.I0(\RF_reg[3]_2 [27]),
        .I1(\RF_reg[2]_1 [27]),
        .I2(\reg_addr_reg[2] [1]),
        .I3(\RF_reg[1]_0 [27]),
        .I4(\reg_addr_reg[2] [0]),
        .I5(\RF_reg[0]_5 [27]),
        .O(\seg_temp[3]_i_25_n_1 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \seg_temp[3]_i_4 
       (.I0(dpo[3]),
        .I1(\seg_temp[3]_i_8_n_1 ),
        .I2(out[0]),
        .I3(dpo[7]),
        .I4(mem_IBUF),
        .I5(\seg_temp[3]_i_9_n_1 ),
        .O(\seg_temp[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_temp[3]_i_5 
       (.I0(dpo[15]),
        .I1(\seg_temp[3]_i_10_n_1 ),
        .I2(out[0]),
        .I3(dpo[11]),
        .I4(mem_IBUF),
        .I5(\seg_temp[3]_i_11_n_1 ),
        .O(\seg_temp[3]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'h8FFF8F00)) 
    \seg_temp[3]_i_6 
       (.I0(dpo[23]),
        .I1(mem_IBUF),
        .I2(\seg_temp[3]_i_12_n_1 ),
        .I3(out[0]),
        .I4(\seg_temp[3]_i_13_n_1 ),
        .O(\seg_temp[3]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'h8888BB8B)) 
    \seg_temp[3]_i_7 
       (.I0(\seg_temp[3]_i_14_n_1 ),
        .I1(out[0]),
        .I2(mem_IBUF),
        .I3(dpo[27]),
        .I4(\seg_temp[3]_i_15_n_1 ),
        .O(\seg_temp[3]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[3]_i_8 
       (.I0(\RF_reg[5]_4 [3]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [3]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[3]_i_16_n_1 ),
        .O(\seg_temp[3]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \seg_temp[3]_i_9 
       (.I0(\RF_reg[5]_4 [7]),
        .I1(\reg_addr_reg[2] [0]),
        .I2(\RF_reg[4]_3 [7]),
        .I3(\reg_addr_reg[2] [2]),
        .I4(\seg_temp[3]_i_17_n_1 ),
        .O(\seg_temp[3]_i_9_n_1 ));
  MUXF8 \seg_temp_reg[1]_i_1 
       (.I0(\seg_temp_reg[1]_i_2_n_1 ),
        .I1(\seg_temp_reg[1]_i_3_n_1 ),
        .O(D[1]),
        .S(out[2]));
  MUXF7 \seg_temp_reg[1]_i_2 
       (.I0(\seg_temp[1]_i_4_n_1 ),
        .I1(\seg_temp[1]_i_5_n_1 ),
        .O(\seg_temp_reg[1]_i_2_n_1 ),
        .S(out[1]));
  MUXF7 \seg_temp_reg[1]_i_3 
       (.I0(\seg_temp[1]_i_6_n_1 ),
        .I1(\seg_temp[1]_i_7_n_1 ),
        .O(\seg_temp_reg[1]_i_3_n_1 ),
        .S(out[1]));
  MUXF8 \seg_temp_reg[3]_i_1 
       (.I0(\seg_temp_reg[3]_i_2_n_1 ),
        .I1(\seg_temp_reg[3]_i_3_n_1 ),
        .O(D[3]),
        .S(out[2]));
  MUXF7 \seg_temp_reg[3]_i_2 
       (.I0(\seg_temp[3]_i_4_n_1 ),
        .I1(\seg_temp[3]_i_5_n_1 ),
        .O(\seg_temp_reg[3]_i_2_n_1 ),
        .S(out[1]));
  MUXF7 \seg_temp_reg[3]_i_3 
       (.I0(\seg_temp[3]_i_6_n_1 ),
        .I1(\seg_temp[3]_i_7_n_1 ),
        .O(\seg_temp_reg[3]_i_3_n_1 ),
        .S(out[1]));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(32.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(128.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module control_unit
   (S,
    \y_reg[0] ,
    \y_reg[15] ,
    \y_reg[0]_0 ,
    DI,
    ALU_a,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    \y_reg[0]_3 ,
    \y_reg[7] ,
    \y_reg[31] ,
    \y_reg[15]_0 ,
    \y_reg[14] ,
    \y_reg[13] ,
    \y_reg[12] ,
    \y_reg[11] ,
    \y_reg[10] ,
    \y_reg[9] ,
    \y_reg[8] ,
    \y_reg[7]_0 ,
    \y_reg[6] ,
    \y_reg[5] ,
    \y_reg[4] ,
    \y_reg[3] ,
    \y_reg[1] ,
    \y_reg[1]_0 ,
    \y_reg[0]_4 ,
    \y_reg[31]_0 ,
    \y_reg[30] ,
    \y_reg[30]_0 ,
    \y_reg[29] ,
    \y_reg[29]_0 ,
    \y_reg[28] ,
    \y_reg[28]_0 ,
    \y_reg[27] ,
    \y_reg[27]_0 ,
    \y_reg[26] ,
    \y_reg[26]_0 ,
    \y_reg[25] ,
    \y_reg[25]_0 ,
    \y_reg[24] ,
    \y_reg[24]_0 ,
    \y_reg[0]_5 ,
    \y_reg[0]_6 ,
    \y_reg[23] ,
    \y_reg[23]_0 ,
    \y_reg[22] ,
    \y_reg[22]_0 ,
    \y_reg[21] ,
    \y_reg[21]_0 ,
    \y_reg[20] ,
    \y_reg[20]_0 ,
    \y_reg[19] ,
    \y_reg[19]_0 ,
    \y_reg[18] ,
    \y_reg[18]_0 ,
    \y_reg[17] ,
    \y_reg[17]_0 ,
    \y_reg[16] ,
    \y_reg[2] ,
    \y_reg[0]_7 ,
    \RF_reg[5][31] ,
    \RF_reg[4][31] ,
    \RF_reg[3][31] ,
    \RF_reg[2][31] ,
    E,
    \RF_reg[0][31] ,
    \y_reg[15]_1 ,
    \y_reg[7]_1 ,
    D,
    we,
    n_0_203_BUFG_inst_n_1,
    \Memery_data_register_reg[31] ,
    \A_reg[31] ,
    \RF_reg[1][31] ,
    \y_reg[31]_1 ,
    \y_reg[31]_2 ,
    \y_reg[3]_0 ,
    \y_reg[27]_1 ,
    \y_reg[7]_2 ,
    \y_reg[11]_0 ,
    \y_reg[15]_2 ,
    \y_reg[3]_1 ,
    \f_reg[0] ,
    \y_reg[27]_2 ,
    \y_reg[7]_3 ,
    \f_reg[0]_0 ,
    \y_reg[15]_3 ,
    \y_reg[14]_0 ,
    \y_reg[13]_0 ,
    \y_reg[12]_0 ,
    \y_reg[11]_1 ,
    \y_reg[10]_0 ,
    \y_reg[9]_0 ,
    \y_reg[8]_0 ,
    \y_reg[6]_0 ,
    \y_reg[5]_0 ,
    \y_reg[4]_0 ,
    \y_reg[3]_2 ,
    \y_reg[23]_1 ,
    \y_reg[23]_2 ,
    \y_reg[19]_1 ,
    \y_reg[19]_2 ,
    \y_reg[16]_0 ,
    \y_reg[2]_0 ,
    Q,
    \A_reg[31]_0 ,
    \current_state_reg[0]_0 ,
    \B_reg[31] ,
    \current_state_reg[2]_0 ,
    \current_state_reg[0]_1 ,
    \ALUout_reg[31] ,
    flag,
    \Memery_data_register_reg[31]_0 ,
    \y_reg[31]_3 ,
    rst_IBUF,
    CLK,
    AR);
  output [3:0]S;
  output [0:0]\y_reg[0] ;
  output \y_reg[15] ;
  output [3:0]\y_reg[0]_0 ;
  output [3:0]DI;
  output [30:0]ALU_a;
  output [3:0]\y_reg[0]_1 ;
  output [3:0]\y_reg[0]_2 ;
  output [3:0]\y_reg[0]_3 ;
  output \y_reg[7] ;
  output \y_reg[31] ;
  output \y_reg[15]_0 ;
  output \y_reg[14] ;
  output \y_reg[13] ;
  output \y_reg[12] ;
  output \y_reg[11] ;
  output \y_reg[10] ;
  output \y_reg[9] ;
  output \y_reg[8] ;
  output \y_reg[7]_0 ;
  output \y_reg[6] ;
  output \y_reg[5] ;
  output \y_reg[4] ;
  output \y_reg[3] ;
  output \y_reg[1] ;
  output \y_reg[1]_0 ;
  output \y_reg[0]_4 ;
  output [3:0]\y_reg[31]_0 ;
  output \y_reg[30] ;
  output \y_reg[30]_0 ;
  output \y_reg[29] ;
  output \y_reg[29]_0 ;
  output \y_reg[28] ;
  output \y_reg[28]_0 ;
  output \y_reg[27] ;
  output \y_reg[27]_0 ;
  output \y_reg[26] ;
  output \y_reg[26]_0 ;
  output \y_reg[25] ;
  output \y_reg[25]_0 ;
  output \y_reg[24] ;
  output \y_reg[24]_0 ;
  output [3:0]\y_reg[0]_5 ;
  output [3:0]\y_reg[0]_6 ;
  output \y_reg[23] ;
  output \y_reg[23]_0 ;
  output \y_reg[22] ;
  output \y_reg[22]_0 ;
  output \y_reg[21] ;
  output \y_reg[21]_0 ;
  output \y_reg[20] ;
  output \y_reg[20]_0 ;
  output \y_reg[19] ;
  output \y_reg[19]_0 ;
  output \y_reg[18] ;
  output \y_reg[18]_0 ;
  output \y_reg[17] ;
  output \y_reg[17]_0 ;
  output \y_reg[16] ;
  output \y_reg[2] ;
  output \y_reg[0]_7 ;
  output [0:0]\RF_reg[5][31] ;
  output [0:0]\RF_reg[4][31] ;
  output [0:0]\RF_reg[3][31] ;
  output [0:0]\RF_reg[2][31] ;
  output [0:0]E;
  output [0:0]\RF_reg[0][31] ;
  output [2:0]\y_reg[15]_1 ;
  output [0:0]\y_reg[7]_1 ;
  output [7:0]D;
  output we;
  output n_0_203_BUFG_inst_n_1;
  output [0:0]\Memery_data_register_reg[31] ;
  output [0:0]\A_reg[31] ;
  output [31:0]\RF_reg[1][31] ;
  output [31:0]\y_reg[31]_1 ;
  output [3:0]\y_reg[31]_2 ;
  output [3:0]\y_reg[3]_0 ;
  output [3:0]\y_reg[27]_1 ;
  output [3:0]\y_reg[7]_2 ;
  output [3:0]\y_reg[11]_0 ;
  output [3:0]\y_reg[15]_2 ;
  output [3:0]\y_reg[3]_1 ;
  output [3:0]\f_reg[0] ;
  output [3:0]\y_reg[27]_2 ;
  output [3:0]\y_reg[7]_3 ;
  output [3:0]\f_reg[0]_0 ;
  output \y_reg[15]_3 ;
  output \y_reg[14]_0 ;
  output \y_reg[13]_0 ;
  output \y_reg[12]_0 ;
  output \y_reg[11]_1 ;
  output \y_reg[10]_0 ;
  output \y_reg[9]_0 ;
  output \y_reg[8]_0 ;
  output \y_reg[6]_0 ;
  output \y_reg[5]_0 ;
  output \y_reg[4]_0 ;
  output \y_reg[3]_2 ;
  output [3:0]\y_reg[23]_1 ;
  output [3:0]\y_reg[23]_2 ;
  output [3:0]\y_reg[19]_1 ;
  output [3:0]\y_reg[19]_2 ;
  output \y_reg[16]_0 ;
  output \y_reg[2]_0 ;
  input [31:0]Q;
  input [31:0]\A_reg[31]_0 ;
  input [26:0]\current_state_reg[0]_0 ;
  input [31:0]\B_reg[31] ;
  input [0:0]\current_state_reg[2]_0 ;
  input \current_state_reg[0]_1 ;
  input [31:0]\ALUout_reg[31] ;
  input flag;
  input [31:0]\Memery_data_register_reg[31]_0 ;
  input [31:0]\y_reg[31]_3 ;
  input rst_IBUF;
  input CLK;
  input [0:0]AR;

  wire [30:0]ALU_a;
  wire [29:2]ALU_b;
  wire \ALUoperation_reg[0]_i_2_n_1 ;
  wire \ALUoperation_reg[0]_i_3_n_1 ;
  wire \ALUoperation_reg[2]_i_3_n_1 ;
  wire \ALUoperation_reg[2]_i_4_n_1 ;
  wire [31:0]\ALUout_reg[31] ;
  wire [0:0]AR;
  wire [0:0]\A_reg[31] ;
  wire [31:0]\A_reg[31]_0 ;
  wire [31:0]\B_reg[31] ;
  wire CLK;
  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]\Memery_data_register_reg[31] ;
  wire [31:0]\Memery_data_register_reg[31]_0 ;
  wire [31:0]Q;
  wire \RF[1][31]_i_3_n_1 ;
  wire \RF[1][31]_i_4_n_1 ;
  wire \RF[1][31]_i_5_n_1 ;
  wire \RF[1][31]_i_6_n_1 ;
  wire \RF[1][31]_i_7_n_1 ;
  wire \RF[4][31]_i_2_n_1 ;
  wire [0:0]\RF_reg[0][31] ;
  wire [31:0]\RF_reg[1][31] ;
  wire [0:0]\RF_reg[2][31] ;
  wire [0:0]\RF_reg[3][31] ;
  wire [0:0]\RF_reg[4][31] ;
  wire [0:0]\RF_reg[5][31] ;
  wire [3:0]S;
  wire [26:0]\current_state_reg[0]_0 ;
  wire \current_state_reg[0]_1 ;
  wire [0:0]\current_state_reg[2]_0 ;
  wire \current_state_reg_n_1_[0] ;
  wire \current_state_reg_n_1_[1] ;
  wire \current_state_reg_n_1_[2] ;
  wire \current_state_reg_n_1_[3] ;
  wire [3:0]\f_reg[0] ;
  wire [3:0]\f_reg[0]_0 ;
  wire flag;
  wire i__carry__0_i_11_n_1;
  wire i__carry__0_i_12_n_1;
  wire i__carry__0_i_13_n_1;
  wire i__carry__0_i_14_n_1;
  wire i__carry__0_i_15_n_1;
  wire i__carry__0_i_16_n_1;
  wire i__carry__0_i_17_n_1;
  wire i__carry__0_i_18_n_1;
  wire i__carry__0_i_19_n_1;
  wire i__carry__0_i_20_n_1;
  wire i__carry__0_i_9_n_1;
  wire i__carry__1_i_17_n_1;
  wire i__carry__1_i_18_n_1;
  wire i__carry__1_i_19_n_1;
  wire i__carry__1_i_20_n_1;
  wire i__carry__2_i_10_n_1;
  wire i__carry__2_i_17_n_1;
  wire i__carry__2_i_18_n_1;
  wire i__carry__2_i_19_n_1;
  wire i__carry_i_10_n_1;
  wire i__carry_i_11_n_1;
  wire i__carry_i_12_n_1;
  wire i__carry_i_13_n_1;
  wire i__carry_i_15_n_1;
  wire i__carry_i_16_n_1;
  wire i__carry_i_18_n_1;
  wire i__carry_i_19_n_1;
  wire i__carry_i_20_n_1;
  wire i__carry_i_9_n_1;
  wire n_0_203_BUFG_inst_n_1;
  wire [3:0]next_state;
  wire \next_state_reg[0]_i_1_n_1 ;
  wire \next_state_reg[0]_i_2_n_1 ;
  wire \next_state_reg[1]_i_1_n_1 ;
  wire \next_state_reg[1]_i_2_n_1 ;
  wire \next_state_reg[1]_i_3_n_1 ;
  wire \next_state_reg[2]_i_1_n_1 ;
  wire \next_state_reg[2]_i_2_n_1 ;
  wire \next_state_reg[2]_i_3_n_1 ;
  wire \next_state_reg[3]_i_1_n_1 ;
  wire \next_state_reg[3]_i_2_n_1 ;
  wire \next_state_reg[3]_i_3_n_1 ;
  wire \next_state_reg[3]_i_4_n_1 ;
  wire rst_IBUF;
  wire we;
  wire y0_carry_i_10_n_1;
  wire y0_carry_i_11_n_1;
  wire [0:0]\y_reg[0] ;
  wire [3:0]\y_reg[0]_0 ;
  wire [3:0]\y_reg[0]_1 ;
  wire [3:0]\y_reg[0]_2 ;
  wire [3:0]\y_reg[0]_3 ;
  wire \y_reg[0]_4 ;
  wire [3:0]\y_reg[0]_5 ;
  wire [3:0]\y_reg[0]_6 ;
  wire \y_reg[0]_7 ;
  wire \y_reg[10] ;
  wire \y_reg[10]_0 ;
  wire \y_reg[11] ;
  wire [3:0]\y_reg[11]_0 ;
  wire \y_reg[11]_1 ;
  wire \y_reg[12] ;
  wire \y_reg[12]_0 ;
  wire \y_reg[13] ;
  wire \y_reg[13]_0 ;
  wire \y_reg[14] ;
  wire \y_reg[14]_0 ;
  wire \y_reg[15] ;
  wire \y_reg[15]_0 ;
  wire [2:0]\y_reg[15]_1 ;
  wire [3:0]\y_reg[15]_2 ;
  wire \y_reg[15]_3 ;
  wire \y_reg[16] ;
  wire \y_reg[16]_0 ;
  wire \y_reg[17] ;
  wire \y_reg[17]_0 ;
  wire \y_reg[18] ;
  wire \y_reg[18]_0 ;
  wire \y_reg[19] ;
  wire \y_reg[19]_0 ;
  wire [3:0]\y_reg[19]_1 ;
  wire [3:0]\y_reg[19]_2 ;
  wire \y_reg[1] ;
  wire \y_reg[1]_0 ;
  wire \y_reg[20] ;
  wire \y_reg[20]_0 ;
  wire \y_reg[21] ;
  wire \y_reg[21]_0 ;
  wire \y_reg[22] ;
  wire \y_reg[22]_0 ;
  wire \y_reg[23] ;
  wire \y_reg[23]_0 ;
  wire [3:0]\y_reg[23]_1 ;
  wire [3:0]\y_reg[23]_2 ;
  wire \y_reg[24] ;
  wire \y_reg[24]_0 ;
  wire \y_reg[25] ;
  wire \y_reg[25]_0 ;
  wire \y_reg[26] ;
  wire \y_reg[26]_0 ;
  wire \y_reg[27] ;
  wire \y_reg[27]_0 ;
  wire [3:0]\y_reg[27]_1 ;
  wire [3:0]\y_reg[27]_2 ;
  wire \y_reg[28] ;
  wire \y_reg[28]_0 ;
  wire \y_reg[29] ;
  wire \y_reg[29]_0 ;
  wire \y_reg[2] ;
  wire \y_reg[2]_0 ;
  wire \y_reg[30] ;
  wire \y_reg[30]_0 ;
  wire \y_reg[31] ;
  wire [3:0]\y_reg[31]_0 ;
  wire [31:0]\y_reg[31]_1 ;
  wire [3:0]\y_reg[31]_2 ;
  wire [31:0]\y_reg[31]_3 ;
  wire \y_reg[3] ;
  wire [3:0]\y_reg[3]_0 ;
  wire [3:0]\y_reg[3]_1 ;
  wire \y_reg[3]_2 ;
  wire \y_reg[4] ;
  wire \y_reg[4]_0 ;
  wire \y_reg[5] ;
  wire \y_reg[5]_0 ;
  wire \y_reg[6] ;
  wire \y_reg[6]_0 ;
  wire \y_reg[7] ;
  wire \y_reg[7]_0 ;
  wire [0:0]\y_reg[7]_1 ;
  wire [3:0]\y_reg[7]_2 ;
  wire [3:0]\y_reg[7]_3 ;
  wire \y_reg[8] ;
  wire \y_reg[8]_0 ;
  wire \y_reg[9] ;
  wire \y_reg[9]_0 ;

  LUT5 #(
    .INIT(32'hB8BBB8B8)) 
    \ALUoperation_reg[0]_i_1 
       (.I0(\ALUoperation_reg[0]_i_2_n_1 ),
        .I1(\ALUoperation_reg[0]_i_3_n_1 ),
        .I2(\current_state_reg[0]_0 [0]),
        .I3(\current_state_reg[0]_0 [2]),
        .I4(\current_state_reg[0]_0 [1]),
        .O(\y_reg[15]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEEC8)) 
    \ALUoperation_reg[0]_i_2 
       (.I0(\current_state_reg_n_1_[2] ),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .O(\ALUoperation_reg[0]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0F2F)) 
    \ALUoperation_reg[0]_i_3 
       (.I0(\current_state_reg_n_1_[0] ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .O(\ALUoperation_reg[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h220020F0220022F0)) 
    \ALUoperation_reg[1]_i_1 
       (.I0(\current_state_reg[0]_0 [2]),
        .I1(\current_state_reg[0]_0 [1]),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\current_state_reg_n_1_[0] ),
        .O(\y_reg[15]_1 [1]));
  LUT5 #(
    .INIT(32'hA8A8A888)) 
    \ALUoperation_reg[2]_i_1 
       (.I0(\ALUoperation_reg[2]_i_3_n_1 ),
        .I1(\ALUoperation_reg[2]_i_4_n_1 ),
        .I2(\current_state_reg[0]_0 [1]),
        .I3(\current_state_reg[0]_0 [3]),
        .I4(\current_state_reg[0]_0 [2]),
        .O(\y_reg[15]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h37373733)) 
    \ALUoperation_reg[2]_i_2 
       (.I0(\current_state_reg_n_1_[2] ),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg[0]_1 ),
        .O(\y_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEE8A)) 
    \ALUoperation_reg[2]_i_3 
       (.I0(\current_state_reg_n_1_[3] ),
        .I1(\current_state_reg_n_1_[2] ),
        .I2(\current_state_reg_n_1_[0] ),
        .I3(\current_state_reg_n_1_[1] ),
        .O(\ALUoperation_reg[2]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0C2F)) 
    \ALUoperation_reg[2]_i_4 
       (.I0(\current_state_reg_n_1_[0] ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .O(\ALUoperation_reg[2]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Instruction_reg[31]_i_1 
       (.I0(\current_state_reg_n_1_[0] ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .O(\A_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    MEM_dut_i_1
       (.I0(\current_state_reg_n_1_[0] ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .O(we));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[0]_i_1 
       (.I0(\ALUout_reg[31] [0]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [0]),
        .O(\y_reg[31]_1 [0]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[10]_i_1 
       (.I0(\ALUout_reg[31] [10]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [10]),
        .O(\y_reg[31]_1 [10]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[11]_i_1 
       (.I0(\ALUout_reg[31] [11]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [11]),
        .O(\y_reg[31]_1 [11]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[12]_i_1 
       (.I0(\ALUout_reg[31] [12]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [12]),
        .O(\y_reg[31]_1 [12]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[13]_i_1 
       (.I0(\ALUout_reg[31] [13]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [13]),
        .O(\y_reg[31]_1 [13]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[14]_i_1 
       (.I0(\ALUout_reg[31] [14]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [14]),
        .O(\y_reg[31]_1 [14]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[15]_i_1 
       (.I0(\ALUout_reg[31] [15]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [15]),
        .O(\y_reg[31]_1 [15]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[16]_i_1 
       (.I0(\ALUout_reg[31] [16]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [16]),
        .O(\y_reg[31]_1 [16]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[17]_i_1 
       (.I0(\ALUout_reg[31] [17]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [17]),
        .O(\y_reg[31]_1 [17]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[18]_i_1 
       (.I0(\ALUout_reg[31] [18]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [18]),
        .O(\y_reg[31]_1 [18]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[19]_i_1 
       (.I0(\ALUout_reg[31] [19]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [19]),
        .O(\y_reg[31]_1 [19]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[1]_i_1 
       (.I0(\ALUout_reg[31] [1]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [1]),
        .O(\y_reg[31]_1 [1]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[20]_i_1 
       (.I0(\ALUout_reg[31] [20]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [20]),
        .O(\y_reg[31]_1 [20]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[21]_i_1 
       (.I0(\ALUout_reg[31] [21]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [21]),
        .O(\y_reg[31]_1 [21]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[22]_i_1 
       (.I0(\ALUout_reg[31] [22]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [22]),
        .O(\y_reg[31]_1 [22]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[23]_i_1 
       (.I0(\ALUout_reg[31] [23]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [23]),
        .O(\y_reg[31]_1 [23]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[24]_i_1 
       (.I0(\ALUout_reg[31] [24]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [24]),
        .O(\y_reg[31]_1 [24]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[25]_i_1 
       (.I0(\ALUout_reg[31] [25]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [25]),
        .O(\y_reg[31]_1 [25]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[26]_i_1 
       (.I0(\ALUout_reg[31] [26]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [26]),
        .O(\y_reg[31]_1 [26]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[27]_i_1 
       (.I0(\ALUout_reg[31] [27]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [27]),
        .O(\y_reg[31]_1 [27]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[28]_i_1 
       (.I0(\ALUout_reg[31] [28]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [28]),
        .O(\y_reg[31]_1 [28]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[29]_i_1 
       (.I0(\ALUout_reg[31] [29]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [29]),
        .O(\y_reg[31]_1 [29]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[2]_i_1 
       (.I0(\ALUout_reg[31] [2]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [2]),
        .O(\y_reg[31]_1 [2]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[30]_i_1 
       (.I0(\ALUout_reg[31] [30]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [30]),
        .O(\y_reg[31]_1 [30]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[31]_i_1 
       (.I0(\ALUout_reg[31] [31]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [31]),
        .O(\y_reg[31]_1 [31]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[3]_i_1 
       (.I0(\ALUout_reg[31] [3]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [3]),
        .O(\y_reg[31]_1 [3]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[4]_i_1 
       (.I0(\ALUout_reg[31] [4]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [4]),
        .O(\y_reg[31]_1 [4]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[5]_i_1 
       (.I0(\ALUout_reg[31] [5]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [5]),
        .O(\y_reg[31]_1 [5]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[6]_i_1 
       (.I0(\ALUout_reg[31] [6]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [6]),
        .O(\y_reg[31]_1 [6]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[7]_i_1 
       (.I0(\ALUout_reg[31] [7]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [7]),
        .O(\y_reg[31]_1 [7]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[8]_i_1 
       (.I0(\ALUout_reg[31] [8]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [8]),
        .O(\y_reg[31]_1 [8]));
  LUT6 #(
    .INIT(64'hFCFFFBFF00000800)) 
    \PC_reg[9]_i_1 
       (.I0(\ALUout_reg[31] [9]),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\y_reg[31]_3 [9]),
        .O(\y_reg[31]_1 [9]));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \RF[0][31]_i_1 
       (.I0(\RF[1][31]_i_3_n_1 ),
        .I1(\current_state_reg[0]_0 [17]),
        .I2(\RF[1][31]_i_4_n_1 ),
        .I3(\current_state_reg[0]_0 [12]),
        .I4(\current_state_reg[0]_0 [16]),
        .I5(\current_state_reg[0]_0 [11]),
        .O(\RF_reg[0][31] ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][0]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [0]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [0]),
        .O(\RF_reg[1][31] [0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][10]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [10]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [10]),
        .O(\RF_reg[1][31] [10]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][11]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [11]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [11]),
        .O(\RF_reg[1][31] [11]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][12]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [12]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [12]),
        .O(\RF_reg[1][31] [12]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][13]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [13]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [13]),
        .O(\RF_reg[1][31] [13]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][14]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [14]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [14]),
        .O(\RF_reg[1][31] [14]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][15]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [15]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [15]),
        .O(\RF_reg[1][31] [15]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][16]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [16]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [16]),
        .O(\RF_reg[1][31] [16]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][17]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [17]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [17]),
        .O(\RF_reg[1][31] [17]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][18]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [18]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [18]),
        .O(\RF_reg[1][31] [18]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][19]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [19]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [19]),
        .O(\RF_reg[1][31] [19]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][1]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [1]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [1]),
        .O(\RF_reg[1][31] [1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][20]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [20]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [20]),
        .O(\RF_reg[1][31] [20]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][21]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [21]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [21]),
        .O(\RF_reg[1][31] [21]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][22]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [22]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [22]),
        .O(\RF_reg[1][31] [22]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][23]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [23]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [23]),
        .O(\RF_reg[1][31] [23]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][24]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [24]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [24]),
        .O(\RF_reg[1][31] [24]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][25]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [25]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [25]),
        .O(\RF_reg[1][31] [25]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][26]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [26]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [26]),
        .O(\RF_reg[1][31] [26]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][27]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [27]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [27]),
        .O(\RF_reg[1][31] [27]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][28]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [28]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [28]),
        .O(\RF_reg[1][31] [28]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][29]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [29]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [29]),
        .O(\RF_reg[1][31] [29]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][2]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [2]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [2]),
        .O(\RF_reg[1][31] [2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][30]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [30]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [30]),
        .O(\RF_reg[1][31] [30]));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \RF[1][31]_i_1 
       (.I0(\RF[1][31]_i_3_n_1 ),
        .I1(\current_state_reg[0]_0 [17]),
        .I2(\RF[1][31]_i_4_n_1 ),
        .I3(\current_state_reg[0]_0 [12]),
        .I4(\current_state_reg[0]_0 [16]),
        .I5(\current_state_reg[0]_0 [11]),
        .O(E));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][31]_i_2 
       (.I0(\Memery_data_register_reg[31]_0 [31]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [31]),
        .O(\RF_reg[1][31] [31]));
  LUT6 #(
    .INIT(64'h1011111115111111)) 
    \RF[1][31]_i_3 
       (.I0(\RF[1][31]_i_5_n_1 ),
        .I1(\current_state_reg[0]_0 [13]),
        .I2(\current_state_reg_n_1_[0] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\RF[1][31]_i_6_n_1 ),
        .I5(\current_state_reg[0]_0 [18]),
        .O(\RF[1][31]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \RF[1][31]_i_4 
       (.I0(\current_state_reg_n_1_[2] ),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .O(\RF[1][31]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAAFE)) 
    \RF[1][31]_i_5 
       (.I0(\RF[1][31]_i_7_n_1 ),
        .I1(\current_state_reg[0]_0 [14]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\RF[1][31]_i_4_n_1 ),
        .I4(\current_state_reg[0]_0 [19]),
        .I5(\current_state_reg[0]_0 [20]),
        .O(\RF[1][31]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RF[1][31]_i_6 
       (.I0(\current_state_reg_n_1_[3] ),
        .I1(\current_state_reg_n_1_[2] ),
        .O(\RF[1][31]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF1FFFFFF)) 
    \RF[1][31]_i_7 
       (.I0(\current_state_reg_n_1_[1] ),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(rst_IBUF),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\current_state_reg_n_1_[3] ),
        .O(\RF[1][31]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][3]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [3]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [3]),
        .O(\RF_reg[1][31] [3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][4]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [4]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [4]),
        .O(\RF_reg[1][31] [4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][5]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [5]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [5]),
        .O(\RF_reg[1][31] [5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][6]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [6]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [6]),
        .O(\RF_reg[1][31] [6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][7]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [7]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [7]),
        .O(\RF_reg[1][31] [7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][8]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [8]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [8]),
        .O(\RF_reg[1][31] [8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RF[1][9]_i_1 
       (.I0(\Memery_data_register_reg[31]_0 [9]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\ALUout_reg[31] [9]),
        .O(\RF_reg[1][31] [9]));
  LUT6 #(
    .INIT(64'h3055300000000000)) 
    \RF[2][31]_i_1 
       (.I0(\current_state_reg[0]_0 [11]),
        .I1(\current_state_reg[0]_0 [16]),
        .I2(\current_state_reg[0]_0 [17]),
        .I3(\RF[1][31]_i_4_n_1 ),
        .I4(\current_state_reg[0]_0 [12]),
        .I5(\RF[1][31]_i_3_n_1 ),
        .O(\RF_reg[2][31] ));
  LUT6 #(
    .INIT(64'hC0AAC00000000000)) 
    \RF[3][31]_i_1 
       (.I0(\current_state_reg[0]_0 [11]),
        .I1(\current_state_reg[0]_0 [16]),
        .I2(\current_state_reg[0]_0 [17]),
        .I3(\RF[1][31]_i_4_n_1 ),
        .I4(\current_state_reg[0]_0 [12]),
        .I5(\RF[1][31]_i_3_n_1 ),
        .O(\RF_reg[3][31] ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \RF[4][31]_i_1 
       (.I0(\current_state_reg[0]_0 [17]),
        .I1(\RF[1][31]_i_4_n_1 ),
        .I2(\current_state_reg[0]_0 [12]),
        .I3(\current_state_reg[0]_0 [16]),
        .I4(\current_state_reg[0]_0 [11]),
        .I5(\RF[4][31]_i_2_n_1 ),
        .O(\RF_reg[4][31] ));
  LUT6 #(
    .INIT(64'hBABBBBBBBFBBBBBB)) 
    \RF[4][31]_i_2 
       (.I0(\RF[1][31]_i_5_n_1 ),
        .I1(\current_state_reg[0]_0 [13]),
        .I2(\current_state_reg_n_1_[0] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\RF[1][31]_i_6_n_1 ),
        .I5(\current_state_reg[0]_0 [18]),
        .O(\RF[4][31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    \RF[5][31]_i_1 
       (.I0(\current_state_reg[0]_0 [17]),
        .I1(\RF[1][31]_i_4_n_1 ),
        .I2(\current_state_reg[0]_0 [12]),
        .I3(\current_state_reg[0]_0 [16]),
        .I4(\current_state_reg[0]_0 [11]),
        .I5(\RF[4][31]_i_2_n_1 ),
        .O(\RF_reg[5][31] ));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S13:1101,S2:0010,S11:1011,S12:1100,S10:1010,S1:0001,S0:0000,S7:0111,S9:1001,S6:0110,S8:1000,S15:1111,S14:1110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[0]),
        .Q(\current_state_reg_n_1_[0] ));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S13:1101,S2:0010,S11:1011,S12:1100,S10:1010,S1:0001,S0:0000,S7:0111,S9:1001,S6:0110,S8:1000,S15:1111,S14:1110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[1]),
        .Q(\current_state_reg_n_1_[1] ));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S13:1101,S2:0010,S11:1011,S12:1100,S10:1010,S1:0001,S0:0000,S7:0111,S9:1001,S6:0110,S8:1000,S15:1111,S14:1110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[2]),
        .Q(\current_state_reg_n_1_[2] ));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S13:1101,S2:0010,S11:1011,S12:1100,S10:1010,S1:0001,S0:0000,S7:0111,S9:1001,S6:0110,S8:1000,S15:1111,S14:1110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[3]),
        .Q(\current_state_reg_n_1_[3] ));
  LUT6 #(
    .INIT(64'h0C0C0C4D4D4D0C4D)) 
    i__carry__0_i_1
       (.I0(i__carry__0_i_9_n_1),
        .I1(ALU_b[15]),
        .I2(ALU_a[15]),
        .I3(\A_reg[31]_0 [14]),
        .I4(\y_reg[15] ),
        .I5(Q[14]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'h33B800B8)) 
    i__carry__0_i_10
       (.I0(\current_state_reg[0]_0 [13]),
        .I1(\y_reg[15] ),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(y0_carry_i_10_n_1),
        .I4(\B_reg[31] [15]),
        .O(ALU_b[15]));
  LUT5 #(
    .INIT(32'hFF0F5533)) 
    i__carry__0_i_11
       (.I0(\B_reg[31] [12]),
        .I1(\current_state_reg[0]_0 [12]),
        .I2(\current_state_reg[0]_0 [10]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_11_n_1));
  LUT5 #(
    .INIT(32'hFF0F5533)) 
    i__carry__0_i_12
       (.I0(\B_reg[31] [13]),
        .I1(\current_state_reg[0]_0 [13]),
        .I2(\current_state_reg[0]_0 [11]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_12_n_1));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry__0_i_13
       (.I0(\current_state_reg[0]_0 [10]),
        .I1(\B_reg[31] [10]),
        .I2(\current_state_reg[0]_0 [8]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_13_n_1));
  LUT5 #(
    .INIT(32'hFF0F5533)) 
    i__carry__0_i_14
       (.I0(\B_reg[31] [11]),
        .I1(\current_state_reg[0]_0 [11]),
        .I2(\current_state_reg[0]_0 [9]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_14_n_1));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry__0_i_15
       (.I0(\current_state_reg[0]_0 [8]),
        .I1(\B_reg[31] [8]),
        .I2(\current_state_reg[0]_0 [6]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_15_n_1));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry__0_i_16
       (.I0(\current_state_reg[0]_0 [9]),
        .I1(\B_reg[31] [9]),
        .I2(\current_state_reg[0]_0 [7]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_16_n_1));
  LUT6 #(
    .INIT(64'hA5A5656AAAAA656A)) 
    i__carry__0_i_17
       (.I0(ALU_a[15]),
        .I1(\B_reg[31] [15]),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [15]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [13]),
        .O(i__carry__0_i_17_n_1));
  LUT6 #(
    .INIT(64'h9599969AA5A9A6AA)) 
    i__carry__0_i_18
       (.I0(ALU_a[13]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [11]),
        .I4(\current_state_reg[0]_0 [13]),
        .I5(\B_reg[31] [13]),
        .O(i__carry__0_i_18_n_1));
  LUT6 #(
    .INIT(64'hFF0F553300F0AACC)) 
    i__carry__0_i_19
       (.I0(\B_reg[31] [11]),
        .I1(\current_state_reg[0]_0 [11]),
        .I2(\current_state_reg[0]_0 [9]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[11]),
        .O(i__carry__0_i_19_n_1));
  LUT6 #(
    .INIT(64'h0514F5D7FAEB0A28)) 
    i__carry__0_i_1__0
       (.I0(\A_reg[31]_0 [7]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(Q[7]),
        .I5(\y_reg[7]_0 ),
        .O(\y_reg[7]_2 [3]));
  LUT6 #(
    .INIT(64'h0303031717170317)) 
    i__carry__0_i_2
       (.I0(i__carry__0_i_11_n_1),
        .I1(i__carry__0_i_12_n_1),
        .I2(ALU_a[13]),
        .I3(\A_reg[31]_0 [12]),
        .I4(\y_reg[15] ),
        .I5(Q[12]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    i__carry__0_i_20
       (.I0(\current_state_reg[0]_0 [9]),
        .I1(\B_reg[31] [9]),
        .I2(\current_state_reg[0]_0 [7]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[9]),
        .O(i__carry__0_i_20_n_1));
  LUT6 #(
    .INIT(64'h6A665A5669655955)) 
    i__carry__0_i_2__0
       (.I0(ALU_a[6]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [4]),
        .I4(\B_reg[31] [6]),
        .I5(\current_state_reg[0]_0 [6]),
        .O(\y_reg[7]_2 [2]));
  LUT6 #(
    .INIT(64'h0303031717170317)) 
    i__carry__0_i_3
       (.I0(i__carry__0_i_13_n_1),
        .I1(ALU_a[11]),
        .I2(i__carry__0_i_14_n_1),
        .I3(\A_reg[31]_0 [10]),
        .I4(\y_reg[15] ),
        .I5(Q[10]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h6A665A5669655955)) 
    i__carry__0_i_3__0
       (.I0(ALU_a[5]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [3]),
        .I4(\B_reg[31] [5]),
        .I5(\current_state_reg[0]_0 [5]),
        .O(\y_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'h0303031717170317)) 
    i__carry__0_i_4
       (.I0(i__carry__0_i_15_n_1),
        .I1(ALU_a[9]),
        .I2(i__carry__0_i_16_n_1),
        .I3(\A_reg[31]_0 [8]),
        .I4(\y_reg[15] ),
        .I5(Q[8]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6A665A5669655955)) 
    i__carry__0_i_4__0
       (.I0(ALU_a[4]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [2]),
        .I4(\B_reg[31] [4]),
        .I5(\current_state_reg[0]_0 [4]),
        .O(\y_reg[7]_2 [0]));
  LUT5 #(
    .INIT(32'h14111444)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_17_n_1),
        .I1(i__carry__0_i_9_n_1),
        .I2(Q[14]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [14]),
        .O(\y_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'h14111444)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_18_n_1),
        .I1(i__carry__0_i_11_n_1),
        .I2(Q[12]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [12]),
        .O(\y_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h01515404)) 
    i__carry__0_i_7
       (.I0(i__carry__0_i_19_n_1),
        .I1(\A_reg[31]_0 [10]),
        .I2(\y_reg[15] ),
        .I3(Q[10]),
        .I4(i__carry__0_i_13_n_1),
        .O(\y_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'h01515404)) 
    i__carry__0_i_8
       (.I0(i__carry__0_i_20_n_1),
        .I1(\A_reg[31]_0 [8]),
        .I2(\y_reg[15] ),
        .I3(Q[8]),
        .I4(i__carry__0_i_15_n_1),
        .O(\y_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'hFF0F5533)) 
    i__carry__0_i_9
       (.I0(\B_reg[31] [14]),
        .I1(\current_state_reg[0]_0 [14]),
        .I2(\current_state_reg[0]_0 [12]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry__0_i_9_n_1));
  LUT6 #(
    .INIT(64'h444DDD4D44444444)) 
    i__carry__1_i_1
       (.I0(ALU_a[23]),
        .I1(ALU_b[23]),
        .I2(\A_reg[31]_0 [22]),
        .I3(\y_reg[15] ),
        .I4(Q[22]),
        .I5(ALU_b[22]),
        .O(\y_reg[0]_5 [3]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_10
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [22]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[22]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_11
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [21]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[21]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_12
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [20]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[20]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_13
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [19]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[19]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_14
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [18]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[18]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_15
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [17]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[17]));
  LUT5 #(
    .INIT(32'h33B800B8)) 
    i__carry__1_i_16
       (.I0(\current_state_reg[0]_0 [14]),
        .I1(\y_reg[15] ),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(y0_carry_i_10_n_1),
        .I4(\B_reg[31] [16]),
        .O(ALU_b[16]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    i__carry__1_i_17
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [23]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[23]),
        .I5(\A_reg[31]_0 [23]),
        .O(i__carry__1_i_17_n_1));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    i__carry__1_i_18
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [21]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[21]),
        .I5(\A_reg[31]_0 [21]),
        .O(i__carry__1_i_18_n_1));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    i__carry__1_i_19
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [19]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[19]),
        .I5(\A_reg[31]_0 [19]),
        .O(i__carry__1_i_19_n_1));
  LUT6 #(
    .INIT(64'h6A6669655A565955)) 
    i__carry__1_i_1__0
       (.I0(ALU_a[11]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [9]),
        .I4(\current_state_reg[0]_0 [11]),
        .I5(\B_reg[31] [11]),
        .O(\y_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'h444DDD4D44444444)) 
    i__carry__1_i_2
       (.I0(ALU_a[21]),
        .I1(ALU_b[21]),
        .I2(\A_reg[31]_0 [20]),
        .I3(\y_reg[15] ),
        .I4(Q[20]),
        .I5(ALU_b[20]),
        .O(\y_reg[0]_5 [2]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    i__carry__1_i_20
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [17]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[17]),
        .I5(\A_reg[31]_0 [17]),
        .O(i__carry__1_i_20_n_1));
  LUT6 #(
    .INIT(64'h6A665A5669655955)) 
    i__carry__1_i_2__0
       (.I0(ALU_a[10]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [8]),
        .I4(\B_reg[31] [10]),
        .I5(\current_state_reg[0]_0 [10]),
        .O(\y_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'h444DDD4D44444444)) 
    i__carry__1_i_3
       (.I0(ALU_a[19]),
        .I1(ALU_b[19]),
        .I2(\A_reg[31]_0 [18]),
        .I3(\y_reg[15] ),
        .I4(Q[18]),
        .I5(ALU_b[18]),
        .O(\y_reg[0]_5 [1]));
  LUT6 #(
    .INIT(64'h6A665A5669655955)) 
    i__carry__1_i_3__0
       (.I0(ALU_a[9]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [7]),
        .I4(\B_reg[31] [9]),
        .I5(\current_state_reg[0]_0 [9]),
        .O(\y_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'h444DDD4D44444444)) 
    i__carry__1_i_4
       (.I0(ALU_a[17]),
        .I1(ALU_b[17]),
        .I2(\A_reg[31]_0 [16]),
        .I3(\y_reg[15] ),
        .I4(Q[16]),
        .I5(ALU_b[16]),
        .O(\y_reg[0]_5 [0]));
  LUT6 #(
    .INIT(64'h6A665A5669655955)) 
    i__carry__1_i_4__0
       (.I0(ALU_a[8]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [6]),
        .I4(\B_reg[31] [8]),
        .I5(\current_state_reg[0]_0 [8]),
        .O(\y_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'h1414441411114111)) 
    i__carry__1_i_5
       (.I0(i__carry__1_i_17_n_1),
        .I1(ALU_a[22]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [22]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[0]_6 [3]));
  LUT6 #(
    .INIT(64'h1414441411114111)) 
    i__carry__1_i_6
       (.I0(i__carry__1_i_18_n_1),
        .I1(ALU_a[20]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [20]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[0]_6 [2]));
  LUT6 #(
    .INIT(64'h1414441411114111)) 
    i__carry__1_i_7
       (.I0(i__carry__1_i_19_n_1),
        .I1(ALU_a[18]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [18]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[0]_6 [1]));
  LUT5 #(
    .INIT(32'h54040151)) 
    i__carry__1_i_8
       (.I0(i__carry__1_i_20_n_1),
        .I1(\A_reg[31]_0 [16]),
        .I2(\y_reg[15] ),
        .I3(Q[16]),
        .I4(ALU_b[16]),
        .O(\y_reg[0]_6 [0]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__1_i_9
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [23]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[23]));
  LUT6 #(
    .INIT(64'h1D001D001D00FF1D)) 
    i__carry__2_i_1
       (.I0(\A_reg[31]_0 [31]),
        .I1(\y_reg[15] ),
        .I2(Q[31]),
        .I3(\y_reg[0]_4 ),
        .I4(i__carry__2_i_10_n_1),
        .I5(ALU_a[30]),
        .O(\y_reg[0]_2 [3]));
  LUT6 #(
    .INIT(64'hF5C5F5F5F5C7F5F7)) 
    i__carry__2_i_10
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [30]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(i__carry__2_i_10_n_1));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_11
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [29]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[29]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_12
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [28]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[28]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_13
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [27]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[27]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_14
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [26]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[26]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_15
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [25]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[25]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_16
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [24]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(ALU_b[24]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    i__carry__2_i_17
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [29]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[29]),
        .I5(\A_reg[31]_0 [29]),
        .O(i__carry__2_i_17_n_1));
  LUT6 #(
    .INIT(64'hC3C355A5CCCC5AAA)) 
    i__carry__2_i_18
       (.I0(\A_reg[31]_0 [27]),
        .I1(Q[27]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [27]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(i__carry__2_i_18_n_1));
  LUT6 #(
    .INIT(64'hC3C355A5CCCC5AAA)) 
    i__carry__2_i_19
       (.I0(\A_reg[31]_0 [25]),
        .I1(Q[25]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [25]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(i__carry__2_i_19_n_1));
  LUT6 #(
    .INIT(64'h33B800B8CC47FF47)) 
    i__carry__2_i_1__0
       (.I0(\current_state_reg[0]_0 [13]),
        .I1(\y_reg[15] ),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(y0_carry_i_10_n_1),
        .I4(\B_reg[31] [15]),
        .I5(ALU_a[15]),
        .O(\f_reg[0] [3]));
  LUT6 #(
    .INIT(64'h444DDD4D44444444)) 
    i__carry__2_i_2
       (.I0(ALU_a[29]),
        .I1(ALU_b[29]),
        .I2(\A_reg[31]_0 [28]),
        .I3(\y_reg[15] ),
        .I4(Q[28]),
        .I5(ALU_b[28]),
        .O(\y_reg[0]_2 [2]));
  LUT6 #(
    .INIT(64'h00F0AACCFF0F5533)) 
    i__carry__2_i_2__0
       (.I0(\B_reg[31] [14]),
        .I1(\current_state_reg[0]_0 [14]),
        .I2(\current_state_reg[0]_0 [12]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[14]),
        .O(\f_reg[0] [2]));
  LUT6 #(
    .INIT(64'h222BBB2B22222222)) 
    i__carry__2_i_3
       (.I0(ALU_b[27]),
        .I1(ALU_a[27]),
        .I2(\A_reg[31]_0 [26]),
        .I3(\y_reg[15] ),
        .I4(Q[26]),
        .I5(ALU_b[26]),
        .O(\y_reg[0]_2 [1]));
  LUT6 #(
    .INIT(64'h00F0AACCFF0F5533)) 
    i__carry__2_i_3__0
       (.I0(\B_reg[31] [13]),
        .I1(\current_state_reg[0]_0 [13]),
        .I2(\current_state_reg[0]_0 [11]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[13]),
        .O(\f_reg[0] [1]));
  LUT6 #(
    .INIT(64'h222BBB2B22222222)) 
    i__carry__2_i_4
       (.I0(ALU_b[25]),
        .I1(ALU_a[25]),
        .I2(\A_reg[31]_0 [24]),
        .I3(\y_reg[15] ),
        .I4(Q[24]),
        .I5(ALU_b[24]),
        .O(\y_reg[0]_2 [0]));
  LUT6 #(
    .INIT(64'h00F0AACCFF0F5533)) 
    i__carry__2_i_4__0
       (.I0(\B_reg[31] [12]),
        .I1(\current_state_reg[0]_0 [12]),
        .I2(\current_state_reg[0]_0 [10]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[12]),
        .O(\f_reg[0] [0]));
  LUT6 #(
    .INIT(64'h0000000066A65595)) 
    i__carry__2_i_5
       (.I0(ALU_a[30]),
        .I1(y0_carry_i_10_n_1),
        .I2(\B_reg[31] [30]),
        .I3(\y_reg[15] ),
        .I4(\current_state_reg[0]_0 [15]),
        .I5(\y_reg[31] ),
        .O(\y_reg[0]_1 [3]));
  LUT6 #(
    .INIT(64'h1414441411114111)) 
    i__carry__2_i_6
       (.I0(i__carry__2_i_17_n_1),
        .I1(ALU_a[28]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [28]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'h0500444450551111)) 
    i__carry__2_i_7
       (.I0(i__carry__2_i_18_n_1),
        .I1(\current_state_reg[0]_0 [15]),
        .I2(\y_reg[15] ),
        .I3(\B_reg[31] [26]),
        .I4(y0_carry_i_10_n_1),
        .I5(ALU_a[26]),
        .O(\y_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'h0500444450551111)) 
    i__carry__2_i_8
       (.I0(i__carry__2_i_19_n_1),
        .I1(\current_state_reg[0]_0 [15]),
        .I2(\y_reg[15] ),
        .I3(\B_reg[31] [24]),
        .I4(y0_carry_i_10_n_1),
        .I5(ALU_a[24]),
        .O(\y_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'h0A3A0A0A0A380A08)) 
    i__carry__2_i_9
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\B_reg[31] [31]),
        .I5(\current_state_reg_n_1_[0] ),
        .O(\y_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__3_i_1
       (.I0(\A_reg[31]_0 [19]),
        .I1(Q[19]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [19]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[19]_1 [3]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__3_i_2
       (.I0(\A_reg[31]_0 [18]),
        .I1(Q[18]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [18]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[19]_1 [2]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__3_i_3
       (.I0(\A_reg[31]_0 [17]),
        .I1(Q[17]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [17]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[19]_1 [1]));
  LUT6 #(
    .INIT(64'h5A5A9A9555559A95)) 
    i__carry__3_i_4
       (.I0(ALU_a[16]),
        .I1(\B_reg[31] [16]),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [15]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [14]),
        .O(\y_reg[19]_1 [0]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__4_i_1
       (.I0(\A_reg[31]_0 [23]),
        .I1(Q[23]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [23]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[23]_1 [3]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__4_i_2
       (.I0(\A_reg[31]_0 [22]),
        .I1(Q[22]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [22]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[23]_1 [2]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__4_i_3
       (.I0(\A_reg[31]_0 [21]),
        .I1(Q[21]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [21]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[23]_1 [1]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__4_i_4
       (.I0(\A_reg[31]_0 [20]),
        .I1(Q[20]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [20]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[23]_1 [0]));
  LUT6 #(
    .INIT(64'h30AAFC660399CF55)) 
    i__carry__5_i_1
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [27]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[27]),
        .I5(\A_reg[31]_0 [27]),
        .O(\y_reg[27]_2 [3]));
  LUT6 #(
    .INIT(64'h30AAFC660399CF55)) 
    i__carry__5_i_2
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [26]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[26]),
        .I5(\A_reg[31]_0 [26]),
        .O(\y_reg[27]_2 [2]));
  LUT6 #(
    .INIT(64'h30AAFC660399CF55)) 
    i__carry__5_i_3
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [25]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[25]),
        .I5(\A_reg[31]_0 [25]),
        .O(\y_reg[27]_2 [1]));
  LUT6 #(
    .INIT(64'h30AAFC660399CF55)) 
    i__carry__5_i_4
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [24]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[24]),
        .I5(\A_reg[31]_0 [24]),
        .O(\y_reg[27]_2 [0]));
  LUT6 #(
    .INIT(64'h50AFD8D850AF2727)) 
    i__carry__6_i_1
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [31]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(Q[31]),
        .I4(\y_reg[15] ),
        .I5(\A_reg[31]_0 [31]),
        .O(\y_reg[31]_0 [3]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__6_i_2
       (.I0(\A_reg[31]_0 [30]),
        .I1(Q[30]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [30]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__6_i_3
       (.I0(\A_reg[31]_0 [29]),
        .I1(Q[29]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [29]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'h3C3CAA5A3333A555)) 
    i__carry__6_i_4
       (.I0(\A_reg[31]_0 [28]),
        .I1(Q[28]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [28]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h4444444D4D4D444D)) 
    i__carry_i_1
       (.I0(\y_reg[7]_0 ),
        .I1(i__carry_i_9_n_1),
        .I2(i__carry_i_10_n_1),
        .I3(\A_reg[31]_0 [6]),
        .I4(\y_reg[15] ),
        .I5(Q[6]),
        .O(\y_reg[0]_3 [3]));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry_i_10
       (.I0(\current_state_reg[0]_0 [6]),
        .I1(\B_reg[31] [6]),
        .I2(\current_state_reg[0]_0 [4]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry_i_10_n_1));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry_i_11
       (.I0(\current_state_reg[0]_0 [4]),
        .I1(\B_reg[31] [4]),
        .I2(\current_state_reg[0]_0 [2]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry_i_11_n_1));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry_i_12
       (.I0(\current_state_reg[0]_0 [5]),
        .I1(\B_reg[31] [5]),
        .I2(\current_state_reg[0]_0 [3]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry_i_12_n_1));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    i__carry_i_13
       (.I0(\current_state_reg[0]_0 [3]),
        .I1(\B_reg[31] [3]),
        .I2(\current_state_reg[0]_0 [1]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(i__carry_i_13_n_1));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    i__carry_i_14
       (.I0(\B_reg[31] [2]),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [2]),
        .I3(\y_reg[15] ),
        .I4(\current_state_reg[0]_0 [0]),
        .O(ALU_b[2]));
  LUT5 #(
    .INIT(32'hCCC7FFF7)) 
    i__carry_i_15
       (.I0(\B_reg[31] [1]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\current_state_reg[0]_0 [1]),
        .O(i__carry_i_15_n_1));
  LUT5 #(
    .INIT(32'h0514F5D7)) 
    i__carry_i_16
       (.I0(\A_reg[31]_0 [0]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(Q[0]),
        .O(i__carry_i_16_n_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00CC0AC0)) 
    i__carry_i_17
       (.I0(\B_reg[31] [0]),
        .I1(\current_state_reg[0]_0 [0]),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .O(\y_reg[0] ));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    i__carry_i_18
       (.I0(\current_state_reg[0]_0 [5]),
        .I1(\B_reg[31] [5]),
        .I2(\current_state_reg[0]_0 [3]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[5]),
        .O(i__carry_i_18_n_1));
  LUT6 #(
    .INIT(64'h9599A5A9969AA6AA)) 
    i__carry_i_19
       (.I0(ALU_a[3]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [1]),
        .I4(\B_reg[31] [3]),
        .I5(\current_state_reg[0]_0 [3]),
        .O(i__carry_i_19_n_1));
  LUT6 #(
    .INIT(64'h00F0CCAAFF0F3355)) 
    i__carry_i_1__0
       (.I0(\current_state_reg[0]_0 [3]),
        .I1(\B_reg[31] [3]),
        .I2(\current_state_reg[0]_0 [1]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[3]),
        .O(\y_reg[3]_1 [3]));
  LUT6 #(
    .INIT(64'h0303031717170317)) 
    i__carry_i_2
       (.I0(i__carry_i_11_n_1),
        .I1(ALU_a[5]),
        .I2(i__carry_i_12_n_1),
        .I3(\A_reg[31]_0 [4]),
        .I4(\y_reg[15] ),
        .I5(Q[4]),
        .O(\y_reg[0]_3 [2]));
  LUT6 #(
    .INIT(64'hCCCCCCCC5A555AAA)) 
    i__carry_i_20
       (.I0(\A_reg[31]_0 [1]),
        .I1(Q[1]),
        .I2(\current_state_reg[0]_0 [1]),
        .I3(y0_carry_i_11_n_1),
        .I4(\B_reg[31] [1]),
        .I5(\y_reg[15] ),
        .O(i__carry_i_20_n_1));
  LUT6 #(
    .INIT(64'hFFB8CCB800473347)) 
    i__carry_i_2__0
       (.I0(\B_reg[31] [2]),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [2]),
        .I3(\y_reg[15] ),
        .I4(\current_state_reg[0]_0 [0]),
        .I5(ALU_a[2]),
        .O(\y_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h1117771711111111)) 
    i__carry_i_3
       (.I0(i__carry_i_13_n_1),
        .I1(ALU_a[3]),
        .I2(\A_reg[31]_0 [2]),
        .I3(\y_reg[15] ),
        .I4(Q[2]),
        .I5(ALU_b[2]),
        .O(\y_reg[0]_3 [1]));
  LUT6 #(
    .INIT(64'h5404FEAE0151ABFB)) 
    i__carry_i_3__0
       (.I0(\y_reg[15] ),
        .I1(\B_reg[31] [1]),
        .I2(y0_carry_i_11_n_1),
        .I3(\current_state_reg[0]_0 [1]),
        .I4(Q[1]),
        .I5(\A_reg[31]_0 [1]),
        .O(\y_reg[3]_1 [1]));
  LUT6 #(
    .INIT(64'h657F005500550055)) 
    i__carry_i_4
       (.I0(i__carry_i_15_n_1),
        .I1(Q[1]),
        .I2(\y_reg[15] ),
        .I3(\A_reg[31]_0 [1]),
        .I4(i__carry_i_16_n_1),
        .I5(\y_reg[0] ),
        .O(\y_reg[0]_3 [0]));
  LUT6 #(
    .INIT(64'h2E1D2E2E2E1D1D1D)) 
    i__carry_i_4__0
       (.I0(\A_reg[31]_0 [0]),
        .I1(\y_reg[15] ),
        .I2(Q[0]),
        .I3(\current_state_reg[0]_0 [0]),
        .I4(y0_carry_i_11_n_1),
        .I5(\B_reg[31] [0]),
        .O(\y_reg[3]_1 [0]));
  LUT5 #(
    .INIT(32'h00001DE2)) 
    i__carry_i_5
       (.I0(\A_reg[31]_0 [6]),
        .I1(\y_reg[15] ),
        .I2(Q[6]),
        .I3(i__carry_i_10_n_1),
        .I4(\y_reg[7] ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h01515404)) 
    i__carry_i_6
       (.I0(i__carry_i_18_n_1),
        .I1(\A_reg[31]_0 [4]),
        .I2(\y_reg[15] ),
        .I3(Q[4]),
        .I4(i__carry_i_11_n_1),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h41444111)) 
    i__carry_i_7
       (.I0(i__carry_i_19_n_1),
        .I1(ALU_b[2]),
        .I2(Q[2]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h44411141)) 
    i__carry_i_8
       (.I0(i__carry_i_20_n_1),
        .I1(\y_reg[0] ),
        .I2(\A_reg[31]_0 [0]),
        .I3(\y_reg[15] ),
        .I4(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0514F5D7)) 
    i__carry_i_9
       (.I0(\A_reg[31]_0 [7]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(Q[7]),
        .O(i__carry_i_9_n_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04090009)) 
    n_0_203_BUFG_inst_i_1
       (.I0(\current_state_reg_n_1_[1] ),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(flag),
        .O(n_0_203_BUFG_inst_n_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.CLR(1'b0),
        .D(\next_state_reg[0]_i_1_n_1 ),
        .G(\next_state_reg[3]_i_2_n_1 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'hAEFEAAFFAEFEAAFB)) 
    \next_state_reg[0]_i_1 
       (.I0(\next_state_reg[0]_i_2_n_1 ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\next_state_reg[2]_i_2_n_1 ),
        .O(\next_state_reg[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000004140)) 
    \next_state_reg[0]_i_2 
       (.I0(\current_state_reg[0]_0 [21]),
        .I1(\current_state_reg[0]_0 [23]),
        .I2(\current_state_reg[0]_0 [24]),
        .I3(\current_state_reg[0]_0 [22]),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\current_state_reg_n_1_[3] ),
        .O(\next_state_reg[0]_i_2_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.CLR(1'b0),
        .D(\next_state_reg[1]_i_1_n_1 ),
        .G(\next_state_reg[3]_i_2_n_1 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT6 #(
    .INIT(64'h4110401055555555)) 
    \next_state_reg[1]_i_1 
       (.I0(\current_state_reg_n_1_[2] ),
        .I1(\current_state_reg_n_1_[0] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\next_state_reg[2]_i_2_n_1 ),
        .I5(\next_state_reg[1]_i_2_n_1 ),
        .O(\next_state_reg[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hF80DFFFFFFFFFFFF)) 
    \next_state_reg[1]_i_2 
       (.I0(\current_state_reg[0]_0 [24]),
        .I1(\current_state_reg[0]_0 [21]),
        .I2(\current_state_reg[0]_0 [22]),
        .I3(\current_state_reg[0]_0 [23]),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\next_state_reg[1]_i_3_n_1 ),
        .O(\next_state_reg[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \next_state_reg[1]_i_3 
       (.I0(\current_state_reg_n_1_[1] ),
        .I1(\current_state_reg_n_1_[3] ),
        .O(\next_state_reg[1]_i_3_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.CLR(1'b0),
        .D(\next_state_reg[2]_i_1_n_1 ),
        .G(\next_state_reg[3]_i_2_n_1 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT6 #(
    .INIT(64'h00AA0050F2FAF2F2)) 
    \next_state_reg[2]_i_1 
       (.I0(\current_state_reg_n_1_[1] ),
        .I1(\next_state_reg[2]_i_2_n_1 ),
        .I2(\next_state_reg[2]_i_3_n_1 ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\current_state_reg_n_1_[3] ),
        .O(\next_state_reg[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \next_state_reg[2]_i_2 
       (.I0(\current_state_reg[0]_0 [21]),
        .I1(\current_state_reg[0]_0 [26]),
        .I2(\current_state_reg[0]_0 [22]),
        .I3(\current_state_reg[0]_0 [24]),
        .I4(\current_state_reg[0]_0 [25]),
        .I5(\current_state_reg[0]_0 [23]),
        .O(\next_state_reg[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1070)) 
    \next_state_reg[2]_i_3 
       (.I0(\current_state_reg[0]_0 [22]),
        .I1(\current_state_reg[0]_0 [21]),
        .I2(\current_state_reg_n_1_[0] ),
        .I3(\current_state_reg[0]_0 [24]),
        .I4(\current_state_reg_n_1_[2] ),
        .I5(\current_state_reg_n_1_[3] ),
        .O(\next_state_reg[2]_i_3_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.CLR(1'b0),
        .D(\next_state_reg[3]_i_1_n_1 ),
        .G(\next_state_reg[3]_i_2_n_1 ),
        .GE(1'b1),
        .Q(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0EFE03FE)) 
    \next_state_reg[3]_i_1 
       (.I0(\next_state_reg[3]_i_3_n_1 ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[0] ),
        .O(\next_state_reg[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \next_state_reg[3]_i_2 
       (.I0(\next_state_reg[3]_i_4_n_1 ),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[0] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[2] ),
        .O(\next_state_reg[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00000F000B000B00)) 
    \next_state_reg[3]_i_3 
       (.I0(\current_state_reg[0]_0 [22]),
        .I1(\current_state_reg[0]_0 [24]),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[0] ),
        .I4(\current_state_reg[0]_0 [26]),
        .I5(\current_state_reg[0]_0 [21]),
        .O(\next_state_reg[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h000000000C233033)) 
    \next_state_reg[3]_i_4 
       (.I0(\current_state_reg[0]_0 [24]),
        .I1(\current_state_reg[0]_0 [26]),
        .I2(\current_state_reg[0]_0 [23]),
        .I3(\current_state_reg[0]_0 [21]),
        .I4(\current_state_reg[0]_0 [22]),
        .I5(\current_state_reg[0]_0 [25]),
        .O(\next_state_reg[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAEAAAAEAA2AAAA2A)) 
    \rd_addr_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\current_state_reg_n_1_[0] ),
        .I5(\ALUout_reg[31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2001)) 
    \rd_addr_reg[7]_i_2 
       (.I0(\current_state_reg_n_1_[3] ),
        .I1(\current_state_reg_n_1_[2] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[0] ),
        .O(\Memery_data_register_reg[31] ));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\current_state_reg_n_1_[2] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\A_reg[31]_0 [7]),
        .O(ALU_a[7]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [6]),
        .O(ALU_a[6]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [5]),
        .O(ALU_a[5]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__0_i_4
       (.I0(Q[4]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [4]),
        .O(ALU_a[4]));
  LUT6 #(
    .INIT(64'hAFBEA08250415F7D)) 
    y0_carry__0_i_5
       (.I0(Q[7]),
        .I1(\current_state_reg_n_1_[2] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\A_reg[31]_0 [7]),
        .I5(\y_reg[7]_0 ),
        .O(\y_reg[7]_3 [3]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    y0_carry__0_i_6
       (.I0(\current_state_reg[0]_0 [6]),
        .I1(\B_reg[31] [6]),
        .I2(\current_state_reg[0]_0 [4]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[6]),
        .O(\y_reg[7]_3 [2]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    y0_carry__0_i_7
       (.I0(\current_state_reg[0]_0 [5]),
        .I1(\B_reg[31] [5]),
        .I2(\current_state_reg[0]_0 [3]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[5]),
        .O(\y_reg[7]_3 [1]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    y0_carry__0_i_8
       (.I0(\current_state_reg[0]_0 [4]),
        .I1(\B_reg[31] [4]),
        .I2(\current_state_reg[0]_0 [2]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[4]),
        .O(\y_reg[7]_3 [0]));
  LUT5 #(
    .INIT(32'hFF0F3355)) 
    y0_carry__0_i_9
       (.I0(\current_state_reg[0]_0 [7]),
        .I1(\B_reg[31] [7]),
        .I2(\current_state_reg[0]_0 [5]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .O(\y_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__1_i_1
       (.I0(Q[11]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [11]),
        .O(ALU_a[11]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__1_i_2
       (.I0(Q[10]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [10]),
        .O(ALU_a[10]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__1_i_3
       (.I0(Q[9]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [9]),
        .O(ALU_a[9]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__1_i_4
       (.I0(Q[8]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [8]),
        .O(ALU_a[8]));
  LUT6 #(
    .INIT(64'hFF0F553300F0AACC)) 
    y0_carry__1_i_5
       (.I0(\B_reg[31] [11]),
        .I1(\current_state_reg[0]_0 [11]),
        .I2(\current_state_reg[0]_0 [9]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[11]),
        .O(\f_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    y0_carry__1_i_6
       (.I0(\current_state_reg[0]_0 [10]),
        .I1(\B_reg[31] [10]),
        .I2(\current_state_reg[0]_0 [8]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[10]),
        .O(\f_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    y0_carry__1_i_7
       (.I0(\current_state_reg[0]_0 [9]),
        .I1(\B_reg[31] [9]),
        .I2(\current_state_reg[0]_0 [7]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[9]),
        .O(\f_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hFF0F335500F0CCAA)) 
    y0_carry__1_i_8
       (.I0(\current_state_reg[0]_0 [8]),
        .I1(\B_reg[31] [8]),
        .I2(\current_state_reg[0]_0 [6]),
        .I3(y0_carry_i_10_n_1),
        .I4(\y_reg[15] ),
        .I5(ALU_a[8]),
        .O(\f_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__2_i_1
       (.I0(Q[15]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [15]),
        .O(ALU_a[15]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__2_i_2
       (.I0(Q[14]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [14]),
        .O(ALU_a[14]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__2_i_3
       (.I0(Q[13]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [13]),
        .O(ALU_a[13]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__2_i_4
       (.I0(Q[12]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [12]),
        .O(ALU_a[12]));
  LUT6 #(
    .INIT(64'hA5A5656AAAAA656A)) 
    y0_carry__2_i_5
       (.I0(ALU_a[15]),
        .I1(\B_reg[31] [15]),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [15]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [13]),
        .O(\y_reg[15]_2 [3]));
  LUT6 #(
    .INIT(64'h9599969AA5A9A6AA)) 
    y0_carry__2_i_6
       (.I0(ALU_a[14]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [12]),
        .I4(\current_state_reg[0]_0 [14]),
        .I5(\B_reg[31] [14]),
        .O(\y_reg[15]_2 [2]));
  LUT6 #(
    .INIT(64'h9599969AA5A9A6AA)) 
    y0_carry__2_i_7
       (.I0(ALU_a[13]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [11]),
        .I4(\current_state_reg[0]_0 [13]),
        .I5(\B_reg[31] [13]),
        .O(\y_reg[15]_2 [1]));
  LUT6 #(
    .INIT(64'h9599969AA5A9A6AA)) 
    y0_carry__2_i_8
       (.I0(ALU_a[12]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [10]),
        .I4(\current_state_reg[0]_0 [12]),
        .I5(\B_reg[31] [12]),
        .O(\y_reg[15]_2 [0]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__3_i_1
       (.I0(Q[19]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [19]),
        .O(ALU_a[19]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__3_i_2
       (.I0(Q[18]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [18]),
        .O(ALU_a[18]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__3_i_3
       (.I0(Q[17]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [17]),
        .O(ALU_a[17]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__3_i_4
       (.I0(Q[16]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [16]),
        .O(ALU_a[16]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__3_i_5
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [19]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[19]),
        .I5(\A_reg[31]_0 [19]),
        .O(\y_reg[19]_2 [3]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__3_i_6
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [18]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[18]),
        .I5(\A_reg[31]_0 [18]),
        .O(\y_reg[19]_2 [2]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__3_i_7
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [17]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[17]),
        .I5(\A_reg[31]_0 [17]),
        .O(\y_reg[19]_2 [1]));
  LUT6 #(
    .INIT(64'hCC47FF4733B800B8)) 
    y0_carry__3_i_8
       (.I0(\current_state_reg[0]_0 [14]),
        .I1(\y_reg[15] ),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(y0_carry_i_10_n_1),
        .I4(\B_reg[31] [16]),
        .I5(ALU_a[16]),
        .O(\y_reg[19]_2 [0]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__4_i_1
       (.I0(Q[23]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [23]),
        .O(ALU_a[23]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__4_i_2
       (.I0(Q[22]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [22]),
        .O(ALU_a[22]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__4_i_3
       (.I0(Q[21]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [21]),
        .O(ALU_a[21]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__4_i_4
       (.I0(Q[20]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [20]),
        .O(ALU_a[20]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__4_i_5
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [23]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[23]),
        .I5(\A_reg[31]_0 [23]),
        .O(\y_reg[23]_2 [3]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__4_i_6
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [22]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[22]),
        .I5(\A_reg[31]_0 [22]),
        .O(\y_reg[23]_2 [2]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__4_i_7
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [21]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[21]),
        .I5(\A_reg[31]_0 [21]),
        .O(\y_reg[23]_2 [1]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__4_i_8
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [20]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[20]),
        .I5(\A_reg[31]_0 [20]),
        .O(\y_reg[23]_2 [0]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__5_i_1
       (.I0(Q[27]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [27]),
        .O(ALU_a[27]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__5_i_2
       (.I0(Q[26]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [26]),
        .O(ALU_a[26]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__5_i_3
       (.I0(Q[25]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [25]),
        .O(ALU_a[25]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__5_i_4
       (.I0(Q[24]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [24]),
        .O(ALU_a[24]));
  LUT6 #(
    .INIT(64'hC3C355A5CCCC5AAA)) 
    y0_carry__5_i_5
       (.I0(\A_reg[31]_0 [27]),
        .I1(Q[27]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [27]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[27]_1 [3]));
  LUT6 #(
    .INIT(64'hC3C355A5CCCC5AAA)) 
    y0_carry__5_i_6
       (.I0(\A_reg[31]_0 [26]),
        .I1(Q[26]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [26]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[27]_1 [2]));
  LUT6 #(
    .INIT(64'hC3C355A5CCCC5AAA)) 
    y0_carry__5_i_7
       (.I0(\A_reg[31]_0 [25]),
        .I1(Q[25]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [25]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[27]_1 [1]));
  LUT6 #(
    .INIT(64'hC3C355A5CCCC5AAA)) 
    y0_carry__5_i_8
       (.I0(\A_reg[31]_0 [24]),
        .I1(Q[24]),
        .I2(y0_carry_i_10_n_1),
        .I3(\B_reg[31] [24]),
        .I4(\y_reg[15] ),
        .I5(\current_state_reg[0]_0 [15]),
        .O(\y_reg[27]_1 [0]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__6_i_1
       (.I0(Q[30]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [30]),
        .O(ALU_a[30]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__6_i_2
       (.I0(Q[29]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [29]),
        .O(ALU_a[29]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry__6_i_3
       (.I0(Q[28]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [28]),
        .O(ALU_a[28]));
  LUT6 #(
    .INIT(64'hD1D1E2E21DE21DE2)) 
    y0_carry__6_i_4
       (.I0(\A_reg[31]_0 [31]),
        .I1(\y_reg[15] ),
        .I2(Q[31]),
        .I3(\current_state_reg[0]_0 [15]),
        .I4(\B_reg[31] [31]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[31]_2 [3]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__6_i_5
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [30]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[30]),
        .I5(\A_reg[31]_0 [30]),
        .O(\y_reg[31]_2 [2]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__6_i_6
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [29]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[29]),
        .I5(\A_reg[31]_0 [29]),
        .O(\y_reg[31]_2 [1]));
  LUT6 #(
    .INIT(64'hCF550399FC6630AA)) 
    y0_carry__6_i_7
       (.I0(\current_state_reg[0]_0 [15]),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [28]),
        .I3(y0_carry_i_10_n_1),
        .I4(Q[28]),
        .I5(\A_reg[31]_0 [28]),
        .O(\y_reg[31]_2 [0]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry_i_1
       (.I0(Q[3]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [3]),
        .O(ALU_a[3]));
  LUT4 #(
    .INIT(16'hAAAB)) 
    y0_carry_i_10
       (.I0(\current_state_reg_n_1_[3] ),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[0] ),
        .O(y0_carry_i_10_n_1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    y0_carry_i_11
       (.I0(\current_state_reg_n_1_[0] ),
        .I1(\current_state_reg_n_1_[2] ),
        .I2(\current_state_reg_n_1_[1] ),
        .I3(\current_state_reg_n_1_[3] ),
        .O(y0_carry_i_11_n_1));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry_i_2
       (.I0(Q[2]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [2]),
        .O(ALU_a[2]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry_i_3
       (.I0(Q[1]),
        .I1(\current_state_reg_n_1_[1] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[2] ),
        .I4(\A_reg[31]_0 [1]),
        .O(ALU_a[1]));
  LUT5 #(
    .INIT(32'hAFBEA082)) 
    y0_carry_i_4
       (.I0(Q[0]),
        .I1(\current_state_reg_n_1_[2] ),
        .I2(\current_state_reg_n_1_[3] ),
        .I3(\current_state_reg_n_1_[1] ),
        .I4(\A_reg[31]_0 [0]),
        .O(ALU_a[0]));
  LUT6 #(
    .INIT(64'h9599A5A9969AA6AA)) 
    y0_carry_i_5
       (.I0(ALU_a[3]),
        .I1(\y_reg[15] ),
        .I2(y0_carry_i_10_n_1),
        .I3(\current_state_reg[0]_0 [1]),
        .I4(\B_reg[31] [3]),
        .I5(\current_state_reg[0]_0 [3]),
        .O(\y_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'h5555656A5A5A656A)) 
    y0_carry_i_6
       (.I0(ALU_a[2]),
        .I1(\current_state_reg[0]_0 [0]),
        .I2(\y_reg[15] ),
        .I3(\current_state_reg[0]_0 [2]),
        .I4(y0_carry_i_10_n_1),
        .I5(\B_reg[31] [2]),
        .O(\y_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hCCCCCCCC5A555AAA)) 
    y0_carry_i_7
       (.I0(\A_reg[31]_0 [1]),
        .I1(Q[1]),
        .I2(\current_state_reg[0]_0 [1]),
        .I3(y0_carry_i_11_n_1),
        .I4(\B_reg[31] [1]),
        .I5(\y_reg[15] ),
        .O(\y_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hA3ACA3A3A3ACACAC)) 
    y0_carry_i_8
       (.I0(Q[0]),
        .I1(\A_reg[31]_0 [0]),
        .I2(\y_reg[15] ),
        .I3(\current_state_reg[0]_0 [0]),
        .I4(y0_carry_i_11_n_1),
        .I5(\B_reg[31] [0]),
        .O(\y_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'hC9)) 
    y0_carry_i_9
       (.I0(\current_state_reg_n_1_[1] ),
        .I1(\current_state_reg_n_1_[3] ),
        .I2(\current_state_reg_n_1_[2] ),
        .O(\y_reg[15] ));
  LUT6 #(
    .INIT(64'hFF001D1DFF00E2E2)) 
    \y[0]_i_2 
       (.I0(\B_reg[31] [0]),
        .I1(y0_carry_i_11_n_1),
        .I2(\current_state_reg[0]_0 [0]),
        .I3(Q[0]),
        .I4(\y_reg[15] ),
        .I5(\A_reg[31]_0 [0]),
        .O(\y_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[10]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [8]),
        .I3(\B_reg[31] [10]),
        .I4(\current_state_reg[0]_0 [10]),
        .I5(ALU_a[10]),
        .O(\y_reg[10] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[10]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_13_n_1),
        .I2(Q[10]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [10]),
        .O(\y_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h000000008A9BCEDF)) 
    \y[11]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [9]),
        .I3(\current_state_reg[0]_0 [11]),
        .I4(\B_reg[31] [11]),
        .I5(ALU_a[11]),
        .O(\y_reg[11] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[11]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_14_n_1),
        .I2(Q[11]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [11]),
        .O(\y_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h000000008A9BCEDF)) 
    \y[12]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [10]),
        .I3(\current_state_reg[0]_0 [12]),
        .I4(\B_reg[31] [12]),
        .I5(ALU_a[12]),
        .O(\y_reg[12] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[12]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_11_n_1),
        .I2(Q[12]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [12]),
        .O(\y_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h000000008A9BCEDF)) 
    \y[13]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [11]),
        .I3(\current_state_reg[0]_0 [13]),
        .I4(\B_reg[31] [13]),
        .I5(ALU_a[13]),
        .O(\y_reg[13] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[13]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_12_n_1),
        .I2(Q[13]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [13]),
        .O(\y_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h000000008A9BCEDF)) 
    \y[14]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [12]),
        .I3(\current_state_reg[0]_0 [14]),
        .I4(\B_reg[31] [14]),
        .I5(ALU_a[14]),
        .O(\y_reg[14] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[14]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_9_n_1),
        .I2(Q[14]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [14]),
        .O(\y_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h00000000CC47FF47)) 
    \y[15]_i_3 
       (.I0(\B_reg[31] [15]),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\current_state_reg[0]_0 [13]),
        .I5(ALU_a[15]),
        .O(\y_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h10155555)) 
    \y[15]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(Q[15]),
        .I2(\y_reg[15] ),
        .I3(\A_reg[31]_0 [15]),
        .I4(ALU_b[15]),
        .O(\y_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h00000000CC47FF47)) 
    \y[16]_i_3 
       (.I0(\B_reg[31] [16]),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\current_state_reg[0]_0 [14]),
        .I5(ALU_a[16]),
        .O(\y_reg[16] ));
  LUT5 #(
    .INIT(32'h10155555)) 
    \y[16]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(Q[16]),
        .I2(\y_reg[15] ),
        .I3(\A_reg[31]_0 [16]),
        .I4(ALU_b[16]),
        .O(\y_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[17]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [17]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [17]),
        .I4(\y_reg[15] ),
        .I5(Q[17]),
        .O(\y_reg[17] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[17]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[17]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [17]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[18]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [18]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [18]),
        .I4(\y_reg[15] ),
        .I5(Q[18]),
        .O(\y_reg[18] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[18]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[18]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [18]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[19]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [19]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [19]),
        .I4(\y_reg[15] ),
        .I5(Q[19]),
        .O(\y_reg[19] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[19]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[19]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [19]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h00000047FFFF0047)) 
    \y[1]_i_2 
       (.I0(\current_state_reg[0]_0 [1]),
        .I1(y0_carry_i_11_n_1),
        .I2(\B_reg[31] [1]),
        .I3(\A_reg[31]_0 [1]),
        .I4(\y_reg[15] ),
        .I5(Q[1]),
        .O(\y_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \y[1]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\y_reg[15] ),
        .I2(\B_reg[31] [1]),
        .I3(y0_carry_i_11_n_1),
        .I4(\current_state_reg[0]_0 [1]),
        .I5(ALU_a[1]),
        .O(\y_reg[1] ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[20]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [20]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [20]),
        .I4(\y_reg[15] ),
        .I5(Q[20]),
        .O(\y_reg[20] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[20]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[20]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [20]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[21]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [21]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [21]),
        .I4(\y_reg[15] ),
        .I5(Q[21]),
        .O(\y_reg[21] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[21]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[21]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [21]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[22]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [22]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [22]),
        .I4(\y_reg[15] ),
        .I5(Q[22]),
        .O(\y_reg[22] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[22]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[22]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [22]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[23]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [23]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [23]),
        .I4(\y_reg[15] ),
        .I5(Q[23]),
        .O(\y_reg[23] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[23]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[23]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [23]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[24]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [24]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [24]),
        .I4(\y_reg[15] ),
        .I5(Q[24]),
        .O(\y_reg[24] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[24]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[24]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [24]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[25]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [25]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [25]),
        .I4(\y_reg[15] ),
        .I5(Q[25]),
        .O(\y_reg[25] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[25]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[25]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [25]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[26]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [26]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [26]),
        .I4(\y_reg[15] ),
        .I5(Q[26]),
        .O(\y_reg[26] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[26]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[26]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [26]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[26]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[27]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [27]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [27]),
        .I4(\y_reg[15] ),
        .I5(Q[27]),
        .O(\y_reg[27] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[27]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[27]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [27]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[28]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [28]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [28]),
        .I4(\y_reg[15] ),
        .I5(Q[28]),
        .O(\y_reg[28] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[28]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[28]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [28]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[29]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [29]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [29]),
        .I4(\y_reg[15] ),
        .I5(Q[29]),
        .O(\y_reg[29] ));
  LUT6 #(
    .INIT(64'hAAEEAAAAEAEAEAEA)) 
    \y[29]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALU_a[29]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\y_reg[15] ),
        .I4(\B_reg[31] [29]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h0000000000473347)) 
    \y[2]_i_3 
       (.I0(\current_state_reg[0]_0 [0]),
        .I1(\y_reg[15] ),
        .I2(\current_state_reg[0]_0 [2]),
        .I3(y0_carry_i_10_n_1),
        .I4(\B_reg[31] [2]),
        .I5(ALU_a[2]),
        .O(\y_reg[2] ));
  LUT5 #(
    .INIT(32'h10155555)) 
    \y[2]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(Q[2]),
        .I2(\y_reg[15] ),
        .I3(\A_reg[31]_0 [2]),
        .I4(ALU_b[2]),
        .O(\y_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000027AFAF0027)) 
    \y[30]_i_2 
       (.I0(y0_carry_i_10_n_1),
        .I1(\B_reg[31] [30]),
        .I2(\current_state_reg[0]_0 [15]),
        .I3(\A_reg[31]_0 [30]),
        .I4(\y_reg[15] ),
        .I5(Q[30]),
        .O(\y_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFAAEEEEAAAAAAAA)) 
    \y[30]_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\current_state_reg[0]_0 [15]),
        .I2(\y_reg[15] ),
        .I3(\B_reg[31] [30]),
        .I4(y0_carry_i_10_n_1),
        .I5(ALU_a[30]),
        .O(\y_reg[30] ));
  LUT6 #(
    .INIT(64'hD1D1E2E21DE21DE2)) 
    \y[31]_i_2 
       (.I0(\A_reg[31]_0 [31]),
        .I1(\y_reg[15] ),
        .I2(Q[31]),
        .I3(\current_state_reg[0]_0 [15]),
        .I4(\B_reg[31] [31]),
        .I5(y0_carry_i_10_n_1),
        .O(\y_reg[31] ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[3]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [1]),
        .I3(\B_reg[31] [3]),
        .I4(\current_state_reg[0]_0 [3]),
        .I5(ALU_a[3]),
        .O(\y_reg[3] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[3]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry_i_13_n_1),
        .I2(Q[3]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [3]),
        .O(\y_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[4]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [2]),
        .I3(\B_reg[31] [4]),
        .I4(\current_state_reg[0]_0 [4]),
        .I5(ALU_a[4]),
        .O(\y_reg[4] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[4]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry_i_11_n_1),
        .I2(Q[4]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [4]),
        .O(\y_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[5]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [3]),
        .I3(\B_reg[31] [5]),
        .I4(\current_state_reg[0]_0 [5]),
        .I5(ALU_a[5]),
        .O(\y_reg[5] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[5]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry_i_12_n_1),
        .I2(Q[5]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [5]),
        .O(\y_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[6]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [4]),
        .I3(\B_reg[31] [6]),
        .I4(\current_state_reg[0]_0 [6]),
        .I5(ALU_a[6]),
        .O(\y_reg[6] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[6]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry_i_10_n_1),
        .I2(Q[6]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [6]),
        .O(\y_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h99AA9AA999559559)) 
    \y[7]_i_2 
       (.I0(\y_reg[7]_0 ),
        .I1(Q[7]),
        .I2(\current_state_reg_n_1_[2] ),
        .I3(\current_state_reg_n_1_[3] ),
        .I4(\current_state_reg_n_1_[1] ),
        .I5(\A_reg[31]_0 [7]),
        .O(\y_reg[7] ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[8]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [6]),
        .I3(\B_reg[31] [8]),
        .I4(\current_state_reg[0]_0 [8]),
        .I5(ALU_a[8]),
        .O(\y_reg[8] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[8]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_15_n_1),
        .I2(Q[8]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [8]),
        .O(\y_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h000000008ACE9BDF)) 
    \y[9]_i_3 
       (.I0(\y_reg[15] ),
        .I1(y0_carry_i_10_n_1),
        .I2(\current_state_reg[0]_0 [7]),
        .I3(\B_reg[31] [9]),
        .I4(\current_state_reg[0]_0 [9]),
        .I5(ALU_a[9]),
        .O(\y_reg[9] ));
  LUT5 #(
    .INIT(32'h45444555)) 
    \y[9]_i_4 
       (.I0(\current_state_reg[2]_0 ),
        .I1(i__carry__0_i_16_n_1),
        .I2(Q[9]),
        .I3(\y_reg[15] ),
        .I4(\A_reg[31]_0 [9]),
        .O(\y_reg[9]_0 ));
endmodule

module cpu
   (\led_reg[7]_P ,
    n_0_203_BUFG_inst_n_1,
    D,
    \led_reg[7]_P_0 ,
    \led_reg[7]_C ,
    \led_reg[6]_P ,
    \led_reg[6]_C ,
    \led_reg[5]_P ,
    \led_reg[5]_C ,
    \led_reg[4]_P ,
    \led_reg[4]_C ,
    \led_reg[3]_P ,
    \led_reg[3]_C ,
    \led_reg[2]_P ,
    \led_reg[2]_C ,
    \led_reg[1]_P ,
    \led_reg[1]_C ,
    \led_reg[0]_P ,
    \led_reg[0]_C ,
    Q,
    CLK,
    out,
    mem_IBUF,
    \reg_addr_reg[2] ,
    rst_IBUF,
    AR,
    E);
  output [7:0]\led_reg[7]_P ;
  output n_0_203_BUFG_inst_n_1;
  output [3:0]D;
  output \led_reg[7]_P_0 ;
  output \led_reg[7]_C ;
  output \led_reg[6]_P ;
  output \led_reg[6]_C ;
  output \led_reg[5]_P ;
  output \led_reg[5]_C ;
  output \led_reg[4]_P ;
  output \led_reg[4]_C ;
  output \led_reg[3]_P ;
  output \led_reg[3]_C ;
  output \led_reg[2]_P ;
  output \led_reg[2]_C ;
  output \led_reg[1]_P ;
  output \led_reg[1]_C ;
  output \led_reg[0]_P ;
  output \led_reg[0]_C ;
  input [7:0]Q;
  input CLK;
  input [2:0]out;
  input mem_IBUF;
  input [2:0]\reg_addr_reg[2] ;
  input rst_IBUF;
  input [0:0]AR;
  input [0:0]E;

  wire [31:0]A;
  wire [30:0]ALU_a;
  wire [0:0]ALU_b;
  wire ALU_control_dut_n_36;
  wire [2:0]ALUoperation;
  wire \ALUout_reg_n_1_[0] ;
  wire \ALUout_reg_n_1_[10] ;
  wire \ALUout_reg_n_1_[11] ;
  wire \ALUout_reg_n_1_[12] ;
  wire \ALUout_reg_n_1_[13] ;
  wire \ALUout_reg_n_1_[14] ;
  wire \ALUout_reg_n_1_[15] ;
  wire \ALUout_reg_n_1_[16] ;
  wire \ALUout_reg_n_1_[17] ;
  wire \ALUout_reg_n_1_[18] ;
  wire \ALUout_reg_n_1_[19] ;
  wire \ALUout_reg_n_1_[1] ;
  wire \ALUout_reg_n_1_[20] ;
  wire \ALUout_reg_n_1_[21] ;
  wire \ALUout_reg_n_1_[22] ;
  wire \ALUout_reg_n_1_[23] ;
  wire \ALUout_reg_n_1_[24] ;
  wire \ALUout_reg_n_1_[25] ;
  wire \ALUout_reg_n_1_[26] ;
  wire \ALUout_reg_n_1_[27] ;
  wire \ALUout_reg_n_1_[28] ;
  wire \ALUout_reg_n_1_[29] ;
  wire \ALUout_reg_n_1_[2] ;
  wire \ALUout_reg_n_1_[30] ;
  wire \ALUout_reg_n_1_[31] ;
  wire \ALUout_reg_n_1_[3] ;
  wire \ALUout_reg_n_1_[4] ;
  wire \ALUout_reg_n_1_[5] ;
  wire \ALUout_reg_n_1_[6] ;
  wire \ALUout_reg_n_1_[7] ;
  wire \ALUout_reg_n_1_[8] ;
  wire \ALUout_reg_n_1_[9] ;
  wire [0:0]AR;
  wire [31:0]B;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire IRWrite;
  wire \Instruction_reg_n_1_[0] ;
  wire \Instruction_reg_n_1_[10] ;
  wire \Instruction_reg_n_1_[1] ;
  wire \Instruction_reg_n_1_[2] ;
  wire \Instruction_reg_n_1_[3] ;
  wire \Instruction_reg_n_1_[4] ;
  wire \Instruction_reg_n_1_[5] ;
  wire \Instruction_reg_n_1_[6] ;
  wire \Instruction_reg_n_1_[7] ;
  wire \Instruction_reg_n_1_[8] ;
  wire \Instruction_reg_n_1_[9] ;
  wire [31:0]MemData;
  wire MemRead;
  wire MemWrite;
  wire [31:0]Memery_data_register;
  wire \PC_reg_n_1_[10] ;
  wire \PC_reg_n_1_[11] ;
  wire \PC_reg_n_1_[12] ;
  wire \PC_reg_n_1_[13] ;
  wire \PC_reg_n_1_[14] ;
  wire \PC_reg_n_1_[15] ;
  wire \PC_reg_n_1_[16] ;
  wire \PC_reg_n_1_[17] ;
  wire \PC_reg_n_1_[18] ;
  wire \PC_reg_n_1_[19] ;
  wire \PC_reg_n_1_[20] ;
  wire \PC_reg_n_1_[21] ;
  wire \PC_reg_n_1_[22] ;
  wire \PC_reg_n_1_[23] ;
  wire \PC_reg_n_1_[24] ;
  wire \PC_reg_n_1_[25] ;
  wire \PC_reg_n_1_[26] ;
  wire \PC_reg_n_1_[27] ;
  wire \PC_reg_n_1_[28] ;
  wire \PC_reg_n_1_[29] ;
  wire \PC_reg_n_1_[30] ;
  wire \PC_reg_n_1_[31] ;
  wire \PC_reg_n_1_[8] ;
  wire \PC_reg_n_1_[9] ;
  wire [7:0]Q;
  wire RF;
  wire RF_dut_n_10;
  wire RF_dut_n_11;
  wire RF_dut_n_12;
  wire RF_dut_n_13;
  wire RF_dut_n_14;
  wire RF_dut_n_15;
  wire RF_dut_n_16;
  wire RF_dut_n_17;
  wire RF_dut_n_18;
  wire RF_dut_n_19;
  wire RF_dut_n_20;
  wire RF_dut_n_21;
  wire RF_dut_n_22;
  wire RF_dut_n_23;
  wire RF_dut_n_24;
  wire RF_dut_n_25;
  wire RF_dut_n_26;
  wire RF_dut_n_27;
  wire RF_dut_n_28;
  wire RF_dut_n_29;
  wire RF_dut_n_30;
  wire RF_dut_n_31;
  wire RF_dut_n_32;
  wire RF_dut_n_33;
  wire RF_dut_n_34;
  wire RF_dut_n_35;
  wire RF_dut_n_36;
  wire RF_dut_n_37;
  wire RF_dut_n_38;
  wire RF_dut_n_39;
  wire RF_dut_n_40;
  wire RF_dut_n_41;
  wire RF_dut_n_42;
  wire RF_dut_n_43;
  wire RF_dut_n_44;
  wire RF_dut_n_45;
  wire RF_dut_n_46;
  wire RF_dut_n_47;
  wire RF_dut_n_48;
  wire RF_dut_n_49;
  wire RF_dut_n_5;
  wire RF_dut_n_50;
  wire RF_dut_n_51;
  wire RF_dut_n_52;
  wire RF_dut_n_53;
  wire RF_dut_n_54;
  wire RF_dut_n_55;
  wire RF_dut_n_56;
  wire RF_dut_n_57;
  wire RF_dut_n_58;
  wire RF_dut_n_59;
  wire RF_dut_n_6;
  wire RF_dut_n_60;
  wire RF_dut_n_61;
  wire RF_dut_n_62;
  wire RF_dut_n_63;
  wire RF_dut_n_64;
  wire RF_dut_n_65;
  wire RF_dut_n_66;
  wire RF_dut_n_67;
  wire RF_dut_n_68;
  wire RF_dut_n_7;
  wire RF_dut_n_8;
  wire RF_dut_n_9;
  wire [2:0]ReadRegAddr_1;
  wire [4:0]ReadRegAddr_2;
  wire [31:0]WriteData_reg;
  wire cu_n_1;
  wire cu_n_10;
  wire cu_n_100;
  wire cu_n_101;
  wire cu_n_102;
  wire cu_n_103;
  wire cu_n_104;
  wire cu_n_105;
  wire cu_n_106;
  wire cu_n_107;
  wire cu_n_108;
  wire cu_n_109;
  wire cu_n_11;
  wire cu_n_110;
  wire cu_n_111;
  wire cu_n_112;
  wire cu_n_113;
  wire cu_n_114;
  wire cu_n_115;
  wire cu_n_116;
  wire cu_n_117;
  wire cu_n_118;
  wire cu_n_119;
  wire cu_n_12;
  wire cu_n_120;
  wire cu_n_121;
  wire cu_n_122;
  wire cu_n_123;
  wire cu_n_125;
  wire cu_n_126;
  wire cu_n_127;
  wire cu_n_128;
  wire cu_n_129;
  wire cu_n_13;
  wire cu_n_130;
  wire cu_n_131;
  wire cu_n_132;
  wire cu_n_133;
  wire cu_n_134;
  wire cu_n_135;
  wire cu_n_136;
  wire cu_n_14;
  wire cu_n_173;
  wire cu_n_174;
  wire cu_n_175;
  wire cu_n_176;
  wire cu_n_177;
  wire cu_n_178;
  wire cu_n_179;
  wire cu_n_180;
  wire cu_n_181;
  wire cu_n_182;
  wire cu_n_183;
  wire cu_n_184;
  wire cu_n_185;
  wire cu_n_186;
  wire cu_n_187;
  wire cu_n_188;
  wire cu_n_189;
  wire cu_n_190;
  wire cu_n_191;
  wire cu_n_192;
  wire cu_n_193;
  wire cu_n_194;
  wire cu_n_195;
  wire cu_n_196;
  wire cu_n_197;
  wire cu_n_198;
  wire cu_n_199;
  wire cu_n_2;
  wire cu_n_200;
  wire cu_n_201;
  wire cu_n_202;
  wire cu_n_203;
  wire cu_n_204;
  wire cu_n_205;
  wire cu_n_206;
  wire cu_n_207;
  wire cu_n_208;
  wire cu_n_209;
  wire cu_n_210;
  wire cu_n_211;
  wire cu_n_212;
  wire cu_n_213;
  wire cu_n_214;
  wire cu_n_215;
  wire cu_n_216;
  wire cu_n_217;
  wire cu_n_218;
  wire cu_n_219;
  wire cu_n_220;
  wire cu_n_221;
  wire cu_n_222;
  wire cu_n_223;
  wire cu_n_224;
  wire cu_n_225;
  wire cu_n_226;
  wire cu_n_227;
  wire cu_n_228;
  wire cu_n_229;
  wire cu_n_230;
  wire cu_n_231;
  wire cu_n_232;
  wire cu_n_233;
  wire cu_n_234;
  wire cu_n_235;
  wire cu_n_236;
  wire cu_n_237;
  wire cu_n_238;
  wire cu_n_239;
  wire cu_n_240;
  wire cu_n_241;
  wire cu_n_242;
  wire cu_n_243;
  wire cu_n_244;
  wire cu_n_245;
  wire cu_n_246;
  wire cu_n_247;
  wire cu_n_248;
  wire cu_n_249;
  wire cu_n_250;
  wire cu_n_251;
  wire cu_n_252;
  wire cu_n_253;
  wire cu_n_254;
  wire cu_n_255;
  wire cu_n_256;
  wire cu_n_257;
  wire cu_n_258;
  wire cu_n_259;
  wire cu_n_260;
  wire cu_n_261;
  wire cu_n_262;
  wire cu_n_263;
  wire cu_n_264;
  wire cu_n_265;
  wire cu_n_266;
  wire cu_n_267;
  wire cu_n_268;
  wire cu_n_269;
  wire cu_n_270;
  wire cu_n_271;
  wire cu_n_272;
  wire cu_n_273;
  wire cu_n_274;
  wire cu_n_275;
  wire cu_n_276;
  wire cu_n_277;
  wire cu_n_278;
  wire cu_n_3;
  wire cu_n_4;
  wire cu_n_46;
  wire cu_n_47;
  wire cu_n_48;
  wire cu_n_49;
  wire cu_n_50;
  wire cu_n_51;
  wire cu_n_52;
  wire cu_n_53;
  wire cu_n_54;
  wire cu_n_55;
  wire cu_n_56;
  wire cu_n_57;
  wire cu_n_58;
  wire cu_n_59;
  wire cu_n_6;
  wire cu_n_60;
  wire cu_n_61;
  wire cu_n_62;
  wire cu_n_63;
  wire cu_n_64;
  wire cu_n_65;
  wire cu_n_66;
  wire cu_n_67;
  wire cu_n_68;
  wire cu_n_69;
  wire cu_n_7;
  wire cu_n_70;
  wire cu_n_71;
  wire cu_n_72;
  wire cu_n_73;
  wire cu_n_74;
  wire cu_n_75;
  wire cu_n_76;
  wire cu_n_77;
  wire cu_n_78;
  wire cu_n_79;
  wire cu_n_8;
  wire cu_n_80;
  wire cu_n_81;
  wire cu_n_82;
  wire cu_n_83;
  wire cu_n_84;
  wire cu_n_85;
  wire cu_n_86;
  wire cu_n_87;
  wire cu_n_88;
  wire cu_n_89;
  wire cu_n_9;
  wire cu_n_90;
  wire cu_n_91;
  wire cu_n_92;
  wire cu_n_93;
  wire cu_n_94;
  wire cu_n_95;
  wire cu_n_96;
  wire cu_n_97;
  wire cu_n_98;
  wire cu_n_99;
  wire data5;
  wire flag;
  wire \led_reg[0]_C ;
  wire \led_reg[0]_P ;
  wire \led_reg[1]_C ;
  wire \led_reg[1]_P ;
  wire \led_reg[2]_C ;
  wire \led_reg[2]_P ;
  wire \led_reg[3]_C ;
  wire \led_reg[3]_P ;
  wire \led_reg[4]_C ;
  wire \led_reg[4]_P ;
  wire \led_reg[5]_C ;
  wire \led_reg[5]_P ;
  wire \led_reg[6]_C ;
  wire \led_reg[6]_P ;
  wire \led_reg[7]_C ;
  wire [7:0]\led_reg[7]_P ;
  wire \led_reg[7]_P_0 ;
  wire mem_IBUF;
  wire [31:0]mem_data;
  wire n_0_203_BUFG_inst_n_1;
  wire nolabel_line158_n_10;
  wire nolabel_line158_n_11;
  wire nolabel_line158_n_12;
  wire nolabel_line158_n_13;
  wire nolabel_line158_n_14;
  wire nolabel_line158_n_15;
  wire nolabel_line158_n_16;
  wire nolabel_line158_n_17;
  wire nolabel_line158_n_18;
  wire nolabel_line158_n_19;
  wire nolabel_line158_n_2;
  wire nolabel_line158_n_20;
  wire nolabel_line158_n_21;
  wire nolabel_line158_n_22;
  wire nolabel_line158_n_23;
  wire nolabel_line158_n_24;
  wire nolabel_line158_n_25;
  wire nolabel_line158_n_26;
  wire nolabel_line158_n_27;
  wire nolabel_line158_n_28;
  wire nolabel_line158_n_29;
  wire nolabel_line158_n_3;
  wire nolabel_line158_n_31;
  wire nolabel_line158_n_32;
  wire nolabel_line158_n_33;
  wire nolabel_line158_n_34;
  wire nolabel_line158_n_35;
  wire nolabel_line158_n_36;
  wire nolabel_line158_n_37;
  wire nolabel_line158_n_38;
  wire nolabel_line158_n_39;
  wire nolabel_line158_n_4;
  wire nolabel_line158_n_40;
  wire nolabel_line158_n_41;
  wire nolabel_line158_n_42;
  wire nolabel_line158_n_43;
  wire nolabel_line158_n_44;
  wire nolabel_line158_n_45;
  wire nolabel_line158_n_46;
  wire nolabel_line158_n_47;
  wire nolabel_line158_n_48;
  wire nolabel_line158_n_49;
  wire nolabel_line158_n_5;
  wire nolabel_line158_n_50;
  wire nolabel_line158_n_51;
  wire nolabel_line158_n_52;
  wire nolabel_line158_n_53;
  wire nolabel_line158_n_54;
  wire nolabel_line158_n_55;
  wire nolabel_line158_n_56;
  wire nolabel_line158_n_57;
  wire nolabel_line158_n_58;
  wire nolabel_line158_n_59;
  wire nolabel_line158_n_6;
  wire nolabel_line158_n_60;
  wire nolabel_line158_n_61;
  wire nolabel_line158_n_63;
  wire nolabel_line158_n_64;
  wire nolabel_line158_n_65;
  wire nolabel_line158_n_67;
  wire nolabel_line158_n_68;
  wire nolabel_line158_n_69;
  wire nolabel_line158_n_7;
  wire nolabel_line158_n_70;
  wire nolabel_line158_n_71;
  wire nolabel_line158_n_72;
  wire nolabel_line158_n_73;
  wire nolabel_line158_n_74;
  wire nolabel_line158_n_75;
  wire nolabel_line158_n_76;
  wire nolabel_line158_n_77;
  wire nolabel_line158_n_78;
  wire nolabel_line158_n_79;
  wire nolabel_line158_n_8;
  wire nolabel_line158_n_80;
  wire nolabel_line158_n_81;
  wire nolabel_line158_n_82;
  wire nolabel_line158_n_83;
  wire nolabel_line158_n_84;
  wire nolabel_line158_n_85;
  wire nolabel_line158_n_86;
  wire nolabel_line158_n_87;
  wire nolabel_line158_n_88;
  wire nolabel_line158_n_89;
  wire nolabel_line158_n_9;
  wire nolabel_line158_n_90;
  wire nolabel_line158_n_91;
  wire nolabel_line158_n_92;
  wire nolabel_line158_n_93;
  wire nolabel_line158_n_94;
  wire nolabel_line158_n_95;
  wire nolabel_line158_n_96;
  wire nolabel_line158_n_97;
  wire nolabel_line158_n_98;
  wire [5:0]op;
  wire [2:0]out;
  wire [4:0]p_0_in;
  wire p_3_in;
  wire p_5_in;
  wire [7:0]rd_addr;
  wire [2:0]\reg_addr_reg[2] ;
  wire rst_IBUF;
  wire [31:0]y;

  ALU_control ALU_control_dut
       (.ALU_b(ALU_b),
        .\ALUout_reg[31] ({\PC_reg_n_1_[31] ,\led_reg[7]_P [7],\led_reg[7]_P [0]}),
        .\A_reg[10] (cu_n_254),
        .\A_reg[11] (cu_n_253),
        .\A_reg[12] (cu_n_252),
        .\A_reg[13] (cu_n_251),
        .\A_reg[14] (cu_n_250),
        .\A_reg[15] (cu_n_249),
        .\A_reg[16] (cu_n_277),
        .\A_reg[2] (cu_n_278),
        .\A_reg[31] ({A[31],A[7],A[0]}),
        .\A_reg[31]_0 (cu_n_59),
        .\A_reg[3] (cu_n_260),
        .\A_reg[4] (cu_n_259),
        .\A_reg[5] (cu_n_258),
        .\A_reg[6] (cu_n_257),
        .\A_reg[8] (cu_n_256),
        .\A_reg[9] (cu_n_255),
        .\B_reg[0] (cu_n_118),
        .\B_reg[10] (cu_n_65),
        .\B_reg[11] (cu_n_64),
        .\B_reg[12] (cu_n_63),
        .\B_reg[13] (cu_n_62),
        .\B_reg[14] (cu_n_61),
        .\B_reg[15] (cu_n_60),
        .\B_reg[16] (cu_n_116),
        .\B_reg[17] (cu_n_114),
        .\B_reg[17]_0 (cu_n_115),
        .\B_reg[18] (cu_n_112),
        .\B_reg[18]_0 (cu_n_113),
        .\B_reg[19] (cu_n_110),
        .\B_reg[19]_0 (cu_n_111),
        .\B_reg[1] (cu_n_74),
        .\B_reg[1]_0 (cu_n_73),
        .\B_reg[20] (cu_n_108),
        .\B_reg[20]_0 (cu_n_109),
        .\B_reg[21] (cu_n_106),
        .\B_reg[21]_0 (cu_n_107),
        .\B_reg[22] (cu_n_104),
        .\B_reg[22]_0 (cu_n_105),
        .\B_reg[23] (cu_n_102),
        .\B_reg[23]_0 (cu_n_103),
        .\B_reg[24] (cu_n_92),
        .\B_reg[24]_0 (cu_n_93),
        .\B_reg[25] (cu_n_90),
        .\B_reg[25]_0 (cu_n_91),
        .\B_reg[26] (cu_n_88),
        .\B_reg[26]_0 (cu_n_89),
        .\B_reg[27] (cu_n_86),
        .\B_reg[27]_0 (cu_n_87),
        .\B_reg[28] (cu_n_84),
        .\B_reg[28]_0 (cu_n_85),
        .\B_reg[29] (cu_n_82),
        .\B_reg[29]_0 (cu_n_83),
        .\B_reg[2] (cu_n_117),
        .\B_reg[30] (cu_n_81),
        .\B_reg[30]_0 (cu_n_80),
        .\B_reg[3] (cu_n_72),
        .\B_reg[4] (cu_n_71),
        .\B_reg[5] (cu_n_70),
        .\B_reg[6] (cu_n_69),
        .\B_reg[7] (cu_n_68),
        .\B_reg[8] (cu_n_67),
        .\B_reg[9] (cu_n_66),
        .CO(data5),
        .D(y),
        .E(cu_n_128),
        .O({nolabel_line158_n_38,nolabel_line158_n_39,nolabel_line158_n_40,nolabel_line158_n_41}),
        .Q({nolabel_line158_n_67,nolabel_line158_n_68,nolabel_line158_n_69,nolabel_line158_n_70,nolabel_line158_n_71,nolabel_line158_n_72,nolabel_line158_n_73,nolabel_line158_n_74,nolabel_line158_n_75,nolabel_line158_n_76,nolabel_line158_n_77,nolabel_line158_n_78,nolabel_line158_n_79,nolabel_line158_n_80,nolabel_line158_n_81,nolabel_line158_n_82,nolabel_line158_n_83,nolabel_line158_n_84,nolabel_line158_n_85,nolabel_line158_n_86,nolabel_line158_n_87,nolabel_line158_n_88,nolabel_line158_n_89,nolabel_line158_n_90,nolabel_line158_n_91,nolabel_line158_n_92,nolabel_line158_n_93,nolabel_line158_n_94,nolabel_line158_n_95,nolabel_line158_n_96,nolabel_line158_n_97,nolabel_line158_n_98}),
        .\current_state_reg[0] ({\Instruction_reg_n_1_[5] ,\Instruction_reg_n_1_[4] ,\Instruction_reg_n_1_[3] ,\Instruction_reg_n_1_[2] ,\Instruction_reg_n_1_[1] ,\Instruction_reg_n_1_[0] }),
        .\current_state_reg[1] (cu_n_6),
        .\current_state_reg[1]_0 ({p_5_in,nolabel_line158_n_31,nolabel_line158_n_32,nolabel_line158_n_33}),
        .\current_state_reg[1]_1 ({p_3_in,nolabel_line158_n_63,nolabel_line158_n_64,nolabel_line158_n_65}),
        .\current_state_reg[1]_10 ({nolabel_line158_n_18,nolabel_line158_n_19,nolabel_line158_n_20,nolabel_line158_n_21}),
        .\current_state_reg[1]_11 ({nolabel_line158_n_54,nolabel_line158_n_55,nolabel_line158_n_56,nolabel_line158_n_57}),
        .\current_state_reg[1]_12 ({nolabel_line158_n_22,nolabel_line158_n_23,nolabel_line158_n_24,nolabel_line158_n_25}),
        .\current_state_reg[1]_13 ({nolabel_line158_n_58,nolabel_line158_n_59,nolabel_line158_n_60,nolabel_line158_n_61}),
        .\current_state_reg[1]_14 ({nolabel_line158_n_26,nolabel_line158_n_27,nolabel_line158_n_28,nolabel_line158_n_29}),
        .\current_state_reg[1]_2 (cu_n_75),
        .\current_state_reg[1]_3 ({nolabel_line158_n_2,nolabel_line158_n_3,nolabel_line158_n_4,nolabel_line158_n_5}),
        .\current_state_reg[1]_4 ({nolabel_line158_n_34,nolabel_line158_n_35,nolabel_line158_n_36,nolabel_line158_n_37}),
        .\current_state_reg[1]_5 ({nolabel_line158_n_42,nolabel_line158_n_43,nolabel_line158_n_44,nolabel_line158_n_45}),
        .\current_state_reg[1]_6 ({nolabel_line158_n_10,nolabel_line158_n_11,nolabel_line158_n_12,nolabel_line158_n_13}),
        .\current_state_reg[1]_7 ({nolabel_line158_n_46,nolabel_line158_n_47,nolabel_line158_n_48,nolabel_line158_n_49}),
        .\current_state_reg[1]_8 ({nolabel_line158_n_14,nolabel_line158_n_15,nolabel_line158_n_16,nolabel_line158_n_17}),
        .\current_state_reg[1]_9 ({nolabel_line158_n_50,nolabel_line158_n_51,nolabel_line158_n_52,nolabel_line158_n_53}),
        .\current_state_reg[2] (cu_n_58),
        .\current_state_reg[2]_0 ({nolabel_line158_n_6,nolabel_line158_n_7,nolabel_line158_n_8,nolabel_line158_n_9}),
        .\current_state_reg[3] ({cu_n_125,cu_n_126,cu_n_127}),
        .\y_reg[15] (ALUoperation),
        .\y_reg[7] (ALU_control_dut_n_36));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_98),
        .Q(\ALUout_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_88),
        .Q(\ALUout_reg_n_1_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_87),
        .Q(\ALUout_reg_n_1_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_86),
        .Q(\ALUout_reg_n_1_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_85),
        .Q(\ALUout_reg_n_1_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_84),
        .Q(\ALUout_reg_n_1_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_83),
        .Q(\ALUout_reg_n_1_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_82),
        .Q(\ALUout_reg_n_1_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_81),
        .Q(\ALUout_reg_n_1_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_80),
        .Q(\ALUout_reg_n_1_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_79),
        .Q(\ALUout_reg_n_1_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_97),
        .Q(\ALUout_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_78),
        .Q(\ALUout_reg_n_1_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_77),
        .Q(\ALUout_reg_n_1_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_76),
        .Q(\ALUout_reg_n_1_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_75),
        .Q(\ALUout_reg_n_1_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_74),
        .Q(\ALUout_reg_n_1_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_73),
        .Q(\ALUout_reg_n_1_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_72),
        .Q(\ALUout_reg_n_1_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_71),
        .Q(\ALUout_reg_n_1_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_70),
        .Q(\ALUout_reg_n_1_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_69),
        .Q(\ALUout_reg_n_1_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_96),
        .Q(\ALUout_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_68),
        .Q(\ALUout_reg_n_1_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_67),
        .Q(\ALUout_reg_n_1_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_95),
        .Q(\ALUout_reg_n_1_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_94),
        .Q(\ALUout_reg_n_1_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_93),
        .Q(\ALUout_reg_n_1_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_92),
        .Q(\ALUout_reg_n_1_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_91),
        .Q(\ALUout_reg_n_1_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_90),
        .Q(\ALUout_reg_n_1_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \ALUout_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(nolabel_line158_n_89),
        .Q(\ALUout_reg_n_1_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_68),
        .Q(A[0]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_58),
        .Q(A[10]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_57),
        .Q(A[11]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_56),
        .Q(A[12]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_55),
        .Q(A[13]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_54),
        .Q(A[14]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_53),
        .Q(A[15]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_52),
        .Q(A[16]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_51),
        .Q(A[17]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_50),
        .Q(A[18]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_49),
        .Q(A[19]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_67),
        .Q(A[1]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_48),
        .Q(A[20]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_47),
        .Q(A[21]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_46),
        .Q(A[22]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_45),
        .Q(A[23]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_44),
        .Q(A[24]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_43),
        .Q(A[25]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_42),
        .Q(A[26]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_41),
        .Q(A[27]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_40),
        .Q(A[28]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_39),
        .Q(A[29]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_66),
        .Q(A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_38),
        .Q(A[30]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_37),
        .Q(A[31]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_65),
        .Q(A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_64),
        .Q(A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_63),
        .Q(A[5]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_62),
        .Q(A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_61),
        .Q(A[7]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_60),
        .Q(A[8]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_59),
        .Q(A[9]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_36),
        .Q(B[0]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_26),
        .Q(B[10]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_25),
        .Q(B[11]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_24),
        .Q(B[12]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_23),
        .Q(B[13]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_22),
        .Q(B[14]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_21),
        .Q(B[15]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_20),
        .Q(B[16]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_19),
        .Q(B[17]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_18),
        .Q(B[18]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_17),
        .Q(B[19]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_35),
        .Q(B[1]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_16),
        .Q(B[20]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_15),
        .Q(B[21]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_14),
        .Q(B[22]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_13),
        .Q(B[23]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_12),
        .Q(B[24]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_11),
        .Q(B[25]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_10),
        .Q(B[26]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_9),
        .Q(B[27]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_8),
        .Q(B[28]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_7),
        .Q(B[29]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_34),
        .Q(B[2]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_6),
        .Q(B[30]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_5),
        .Q(B[31]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_33),
        .Q(B[3]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_32),
        .Q(B[4]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_31),
        .Q(B[5]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_30),
        .Q(B[6]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_29),
        .Q(B[7]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_28),
        .Q(B[8]));
  FDCE #(
    .INIT(1'b0)) 
    \B_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(RF_dut_n_27),
        .Q(B[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[0] 
       (.CLR(1'b0),
        .D(MemData[0]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[10] 
       (.CLR(1'b0),
        .D(MemData[10]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[10] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[11] 
       (.CLR(1'b0),
        .D(MemData[11]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(p_0_in[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[12] 
       (.CLR(1'b0),
        .D(MemData[12]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(p_0_in[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[13] 
       (.CLR(1'b0),
        .D(MemData[13]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(p_0_in[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[14] 
       (.CLR(1'b0),
        .D(MemData[14]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(p_0_in[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[15] 
       (.CLR(1'b0),
        .D(MemData[15]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(p_0_in[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[16] 
       (.CLR(1'b0),
        .D(MemData[16]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[17] 
       (.CLR(1'b0),
        .D(MemData[17]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[18] 
       (.CLR(1'b0),
        .D(MemData[18]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[19] 
       (.CLR(1'b0),
        .D(MemData[19]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[1] 
       (.CLR(1'b0),
        .D(MemData[1]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[20] 
       (.CLR(1'b0),
        .D(MemData[20]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[21] 
       (.CLR(1'b0),
        .D(MemData[21]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_1[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[22] 
       (.CLR(1'b0),
        .D(MemData[22]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_1[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[23] 
       (.CLR(1'b0),
        .D(MemData[23]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(ReadRegAddr_1[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[26] 
       (.CLR(1'b0),
        .D(MemData[26]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(op[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[27] 
       (.CLR(1'b0),
        .D(MemData[27]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(op[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[28] 
       (.CLR(1'b0),
        .D(MemData[28]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(op[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[29] 
       (.CLR(1'b0),
        .D(MemData[29]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(op[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[2] 
       (.CLR(1'b0),
        .D(MemData[2]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[30] 
       (.CLR(1'b0),
        .D(MemData[30]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(op[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[31] 
       (.CLR(1'b0),
        .D(MemData[31]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(op[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[3] 
       (.CLR(1'b0),
        .D(MemData[3]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[4] 
       (.CLR(1'b0),
        .D(MemData[4]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[5] 
       (.CLR(1'b0),
        .D(MemData[5]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[6] 
       (.CLR(1'b0),
        .D(MemData[6]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[7] 
       (.CLR(1'b0),
        .D(MemData[7]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[8] 
       (.CLR(1'b0),
        .D(MemData[8]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[8] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Instruction_reg[9] 
       (.CLR(1'b0),
        .D(MemData[9]),
        .G(IRWrite),
        .GE(1'b1),
        .Q(\Instruction_reg_n_1_[9] ));
  (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
  dist_mem_gen_0 MEM_dut
       (.a(rd_addr),
        .clk(CLK),
        .d(B),
        .dpo(mem_data),
        .dpra(Q),
        .spo(MemData),
        .we(MemWrite));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[0]),
        .Q(Memery_data_register[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[10]),
        .Q(Memery_data_register[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[11]),
        .Q(Memery_data_register[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[12]),
        .Q(Memery_data_register[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[13]),
        .Q(Memery_data_register[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[14]),
        .Q(Memery_data_register[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[15]),
        .Q(Memery_data_register[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[16]),
        .Q(Memery_data_register[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[17]),
        .Q(Memery_data_register[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[18]),
        .Q(Memery_data_register[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[19]),
        .Q(Memery_data_register[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[1]),
        .Q(Memery_data_register[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[20]),
        .Q(Memery_data_register[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[21]),
        .Q(Memery_data_register[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[22]),
        .Q(Memery_data_register[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[23]),
        .Q(Memery_data_register[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[24]),
        .Q(Memery_data_register[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[25]),
        .Q(Memery_data_register[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[26]),
        .Q(Memery_data_register[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[27]),
        .Q(Memery_data_register[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[28]),
        .Q(Memery_data_register[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[29]),
        .Q(Memery_data_register[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[2]),
        .Q(Memery_data_register[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[30]),
        .Q(Memery_data_register[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[31]),
        .Q(Memery_data_register[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[3]),
        .Q(Memery_data_register[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[4]),
        .Q(Memery_data_register[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[5]),
        .Q(Memery_data_register[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[6]),
        .Q(Memery_data_register[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[7]),
        .Q(Memery_data_register[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[8]),
        .Q(Memery_data_register[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Memery_data_register_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(MemData[9]),
        .Q(Memery_data_register[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.CLR(AR),
        .D(cu_n_204),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[10] 
       (.CLR(AR),
        .D(cu_n_194),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[10] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[11] 
       (.CLR(AR),
        .D(cu_n_193),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[11] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[12] 
       (.CLR(AR),
        .D(cu_n_192),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[12] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[13] 
       (.CLR(AR),
        .D(cu_n_191),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[13] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[14] 
       (.CLR(AR),
        .D(cu_n_190),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[14] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[15] 
       (.CLR(AR),
        .D(cu_n_189),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[15] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[16] 
       (.CLR(AR),
        .D(cu_n_188),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[16] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[17] 
       (.CLR(AR),
        .D(cu_n_187),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[17] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[18] 
       (.CLR(AR),
        .D(cu_n_186),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[18] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[19] 
       (.CLR(AR),
        .D(cu_n_185),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[19] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.CLR(AR),
        .D(cu_n_203),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[20] 
       (.CLR(AR),
        .D(cu_n_184),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[20] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[21] 
       (.CLR(AR),
        .D(cu_n_183),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[21] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[22] 
       (.CLR(AR),
        .D(cu_n_182),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[22] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[23] 
       (.CLR(AR),
        .D(cu_n_181),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[23] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[24] 
       (.CLR(AR),
        .D(cu_n_180),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[24] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[25] 
       (.CLR(AR),
        .D(cu_n_179),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[25] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[26] 
       (.CLR(AR),
        .D(cu_n_178),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[26] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[27] 
       (.CLR(AR),
        .D(cu_n_177),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[27] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[28] 
       (.CLR(AR),
        .D(cu_n_176),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[28] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[29] 
       (.CLR(AR),
        .D(cu_n_175),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[29] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.CLR(AR),
        .D(cu_n_202),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[30] 
       (.CLR(AR),
        .D(cu_n_174),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[30] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[31] 
       (.CLR(AR),
        .D(cu_n_173),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[31] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.CLR(AR),
        .D(cu_n_201),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.CLR(AR),
        .D(cu_n_200),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.CLR(AR),
        .D(cu_n_199),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.CLR(AR),
        .D(cu_n_198),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.CLR(AR),
        .D(cu_n_197),
        .G(E),
        .GE(1'b1),
        .Q(\led_reg[7]_P [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[8] 
       (.CLR(AR),
        .D(cu_n_196),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[8] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[9] 
       (.CLR(AR),
        .D(cu_n_195),
        .G(E),
        .GE(1'b1),
        .Q(\PC_reg_n_1_[9] ));
  RF RF_dut
       (.AR(AR),
        .\A_reg[31] ({RF_dut_n_37,RF_dut_n_38,RF_dut_n_39,RF_dut_n_40,RF_dut_n_41,RF_dut_n_42,RF_dut_n_43,RF_dut_n_44,RF_dut_n_45,RF_dut_n_46,RF_dut_n_47,RF_dut_n_48,RF_dut_n_49,RF_dut_n_50,RF_dut_n_51,RF_dut_n_52,RF_dut_n_53,RF_dut_n_54,RF_dut_n_55,RF_dut_n_56,RF_dut_n_57,RF_dut_n_58,RF_dut_n_59,RF_dut_n_60,RF_dut_n_61,RF_dut_n_62,RF_dut_n_63,RF_dut_n_64,RF_dut_n_65,RF_dut_n_66,RF_dut_n_67,RF_dut_n_68}),
        .\B_reg[31] ({RF_dut_n_5,RF_dut_n_6,RF_dut_n_7,RF_dut_n_8,RF_dut_n_9,RF_dut_n_10,RF_dut_n_11,RF_dut_n_12,RF_dut_n_13,RF_dut_n_14,RF_dut_n_15,RF_dut_n_16,RF_dut_n_17,RF_dut_n_18,RF_dut_n_19,RF_dut_n_20,RF_dut_n_21,RF_dut_n_22,RF_dut_n_23,RF_dut_n_24,RF_dut_n_25,RF_dut_n_26,RF_dut_n_27,RF_dut_n_28,RF_dut_n_29,RF_dut_n_30,RF_dut_n_31,RF_dut_n_32,RF_dut_n_33,RF_dut_n_34,RF_dut_n_35,RF_dut_n_36}),
        .CLK(CLK),
        .D(D),
        .E(cu_n_123),
        .\Memery_data_register_reg[31] (WriteData_reg),
        .Q({ReadRegAddr_1,ReadRegAddr_2[2:0]}),
        .\current_state_reg[0] (RF),
        .\current_state_reg[2] (cu_n_122),
        .\current_state_reg[2]_0 (cu_n_121),
        .\current_state_reg[2]_1 (cu_n_120),
        .\current_state_reg[2]_2 (cu_n_119),
        .dpo(mem_data[27:0]),
        .mem_IBUF(mem_IBUF),
        .out(out),
        .\reg_addr_reg[2] (\reg_addr_reg[2] ));
  control_unit cu
       (.ALU_a(ALU_a),
        .\ALUout_reg[31] ({\ALUout_reg_n_1_[31] ,\ALUout_reg_n_1_[30] ,\ALUout_reg_n_1_[29] ,\ALUout_reg_n_1_[28] ,\ALUout_reg_n_1_[27] ,\ALUout_reg_n_1_[26] ,\ALUout_reg_n_1_[25] ,\ALUout_reg_n_1_[24] ,\ALUout_reg_n_1_[23] ,\ALUout_reg_n_1_[22] ,\ALUout_reg_n_1_[21] ,\ALUout_reg_n_1_[20] ,\ALUout_reg_n_1_[19] ,\ALUout_reg_n_1_[18] ,\ALUout_reg_n_1_[17] ,\ALUout_reg_n_1_[16] ,\ALUout_reg_n_1_[15] ,\ALUout_reg_n_1_[14] ,\ALUout_reg_n_1_[13] ,\ALUout_reg_n_1_[12] ,\ALUout_reg_n_1_[11] ,\ALUout_reg_n_1_[10] ,\ALUout_reg_n_1_[9] ,\ALUout_reg_n_1_[8] ,\ALUout_reg_n_1_[7] ,\ALUout_reg_n_1_[6] ,\ALUout_reg_n_1_[5] ,\ALUout_reg_n_1_[4] ,\ALUout_reg_n_1_[3] ,\ALUout_reg_n_1_[2] ,\ALUout_reg_n_1_[1] ,\ALUout_reg_n_1_[0] }),
        .AR(AR),
        .\A_reg[31] (IRWrite),
        .\A_reg[31]_0 (A),
        .\B_reg[31] (B),
        .CLK(CLK),
        .D({cu_n_129,cu_n_130,cu_n_131,cu_n_132,cu_n_133,cu_n_134,cu_n_135,cu_n_136}),
        .DI({cu_n_11,cu_n_12,cu_n_13,cu_n_14}),
        .E(cu_n_123),
        .\Memery_data_register_reg[31] (MemRead),
        .\Memery_data_register_reg[31]_0 (Memery_data_register),
        .Q({\PC_reg_n_1_[31] ,\PC_reg_n_1_[30] ,\PC_reg_n_1_[29] ,\PC_reg_n_1_[28] ,\PC_reg_n_1_[27] ,\PC_reg_n_1_[26] ,\PC_reg_n_1_[25] ,\PC_reg_n_1_[24] ,\PC_reg_n_1_[23] ,\PC_reg_n_1_[22] ,\PC_reg_n_1_[21] ,\PC_reg_n_1_[20] ,\PC_reg_n_1_[19] ,\PC_reg_n_1_[18] ,\PC_reg_n_1_[17] ,\PC_reg_n_1_[16] ,\PC_reg_n_1_[15] ,\PC_reg_n_1_[14] ,\PC_reg_n_1_[13] ,\PC_reg_n_1_[12] ,\PC_reg_n_1_[11] ,\PC_reg_n_1_[10] ,\PC_reg_n_1_[9] ,\PC_reg_n_1_[8] ,\led_reg[7]_P }),
        .\RF_reg[0][31] (RF),
        .\RF_reg[1][31] (WriteData_reg),
        .\RF_reg[2][31] (cu_n_122),
        .\RF_reg[3][31] (cu_n_121),
        .\RF_reg[4][31] (cu_n_120),
        .\RF_reg[5][31] (cu_n_119),
        .S({cu_n_1,cu_n_2,cu_n_3,cu_n_4}),
        .\current_state_reg[0]_0 ({op,ReadRegAddr_2,p_0_in,\Instruction_reg_n_1_[10] ,\Instruction_reg_n_1_[9] ,\Instruction_reg_n_1_[8] ,\Instruction_reg_n_1_[7] ,\Instruction_reg_n_1_[6] ,\Instruction_reg_n_1_[5] ,\Instruction_reg_n_1_[4] ,\Instruction_reg_n_1_[3] ,\Instruction_reg_n_1_[2] ,\Instruction_reg_n_1_[1] ,\Instruction_reg_n_1_[0] }),
        .\current_state_reg[0]_1 (ALU_control_dut_n_36),
        .\current_state_reg[2]_0 (ALUoperation[0]),
        .\f_reg[0] ({cu_n_233,cu_n_234,cu_n_235,cu_n_236}),
        .\f_reg[0]_0 ({cu_n_245,cu_n_246,cu_n_247,cu_n_248}),
        .flag(flag),
        .n_0_203_BUFG_inst_n_1(n_0_203_BUFG_inst_n_1),
        .rst_IBUF(rst_IBUF),
        .we(MemWrite),
        .\y_reg[0] (ALU_b),
        .\y_reg[0]_0 ({cu_n_7,cu_n_8,cu_n_9,cu_n_10}),
        .\y_reg[0]_1 ({cu_n_46,cu_n_47,cu_n_48,cu_n_49}),
        .\y_reg[0]_2 ({cu_n_50,cu_n_51,cu_n_52,cu_n_53}),
        .\y_reg[0]_3 ({cu_n_54,cu_n_55,cu_n_56,cu_n_57}),
        .\y_reg[0]_4 (cu_n_75),
        .\y_reg[0]_5 ({cu_n_94,cu_n_95,cu_n_96,cu_n_97}),
        .\y_reg[0]_6 ({cu_n_98,cu_n_99,cu_n_100,cu_n_101}),
        .\y_reg[0]_7 (cu_n_118),
        .\y_reg[10] (cu_n_65),
        .\y_reg[10]_0 (cu_n_254),
        .\y_reg[11] (cu_n_64),
        .\y_reg[11]_0 ({cu_n_221,cu_n_222,cu_n_223,cu_n_224}),
        .\y_reg[11]_1 (cu_n_253),
        .\y_reg[12] (cu_n_63),
        .\y_reg[12]_0 (cu_n_252),
        .\y_reg[13] (cu_n_62),
        .\y_reg[13]_0 (cu_n_251),
        .\y_reg[14] (cu_n_61),
        .\y_reg[14]_0 (cu_n_250),
        .\y_reg[15] (cu_n_6),
        .\y_reg[15]_0 (cu_n_60),
        .\y_reg[15]_1 ({cu_n_125,cu_n_126,cu_n_127}),
        .\y_reg[15]_2 ({cu_n_225,cu_n_226,cu_n_227,cu_n_228}),
        .\y_reg[15]_3 (cu_n_249),
        .\y_reg[16] (cu_n_116),
        .\y_reg[16]_0 (cu_n_277),
        .\y_reg[17] (cu_n_114),
        .\y_reg[17]_0 (cu_n_115),
        .\y_reg[18] (cu_n_112),
        .\y_reg[18]_0 (cu_n_113),
        .\y_reg[19] (cu_n_110),
        .\y_reg[19]_0 (cu_n_111),
        .\y_reg[19]_1 ({cu_n_269,cu_n_270,cu_n_271,cu_n_272}),
        .\y_reg[19]_2 ({cu_n_273,cu_n_274,cu_n_275,cu_n_276}),
        .\y_reg[1] (cu_n_73),
        .\y_reg[1]_0 (cu_n_74),
        .\y_reg[20] (cu_n_108),
        .\y_reg[20]_0 (cu_n_109),
        .\y_reg[21] (cu_n_106),
        .\y_reg[21]_0 (cu_n_107),
        .\y_reg[22] (cu_n_104),
        .\y_reg[22]_0 (cu_n_105),
        .\y_reg[23] (cu_n_102),
        .\y_reg[23]_0 (cu_n_103),
        .\y_reg[23]_1 ({cu_n_261,cu_n_262,cu_n_263,cu_n_264}),
        .\y_reg[23]_2 ({cu_n_265,cu_n_266,cu_n_267,cu_n_268}),
        .\y_reg[24] (cu_n_92),
        .\y_reg[24]_0 (cu_n_93),
        .\y_reg[25] (cu_n_90),
        .\y_reg[25]_0 (cu_n_91),
        .\y_reg[26] (cu_n_88),
        .\y_reg[26]_0 (cu_n_89),
        .\y_reg[27] (cu_n_86),
        .\y_reg[27]_0 (cu_n_87),
        .\y_reg[27]_1 ({cu_n_213,cu_n_214,cu_n_215,cu_n_216}),
        .\y_reg[27]_2 ({cu_n_237,cu_n_238,cu_n_239,cu_n_240}),
        .\y_reg[28] (cu_n_84),
        .\y_reg[28]_0 (cu_n_85),
        .\y_reg[29] (cu_n_82),
        .\y_reg[29]_0 (cu_n_83),
        .\y_reg[2] (cu_n_117),
        .\y_reg[2]_0 (cu_n_278),
        .\y_reg[30] (cu_n_80),
        .\y_reg[30]_0 (cu_n_81),
        .\y_reg[31] (cu_n_59),
        .\y_reg[31]_0 ({cu_n_76,cu_n_77,cu_n_78,cu_n_79}),
        .\y_reg[31]_1 ({cu_n_173,cu_n_174,cu_n_175,cu_n_176,cu_n_177,cu_n_178,cu_n_179,cu_n_180,cu_n_181,cu_n_182,cu_n_183,cu_n_184,cu_n_185,cu_n_186,cu_n_187,cu_n_188,cu_n_189,cu_n_190,cu_n_191,cu_n_192,cu_n_193,cu_n_194,cu_n_195,cu_n_196,cu_n_197,cu_n_198,cu_n_199,cu_n_200,cu_n_201,cu_n_202,cu_n_203,cu_n_204}),
        .\y_reg[31]_2 ({cu_n_205,cu_n_206,cu_n_207,cu_n_208}),
        .\y_reg[31]_3 ({nolabel_line158_n_67,nolabel_line158_n_68,nolabel_line158_n_69,nolabel_line158_n_70,nolabel_line158_n_71,nolabel_line158_n_72,nolabel_line158_n_73,nolabel_line158_n_74,nolabel_line158_n_75,nolabel_line158_n_76,nolabel_line158_n_77,nolabel_line158_n_78,nolabel_line158_n_79,nolabel_line158_n_80,nolabel_line158_n_81,nolabel_line158_n_82,nolabel_line158_n_83,nolabel_line158_n_84,nolabel_line158_n_85,nolabel_line158_n_86,nolabel_line158_n_87,nolabel_line158_n_88,nolabel_line158_n_89,nolabel_line158_n_90,nolabel_line158_n_91,nolabel_line158_n_92,nolabel_line158_n_93,nolabel_line158_n_94,nolabel_line158_n_95,nolabel_line158_n_96,nolabel_line158_n_97,nolabel_line158_n_98}),
        .\y_reg[3] (cu_n_72),
        .\y_reg[3]_0 ({cu_n_209,cu_n_210,cu_n_211,cu_n_212}),
        .\y_reg[3]_1 ({cu_n_229,cu_n_230,cu_n_231,cu_n_232}),
        .\y_reg[3]_2 (cu_n_260),
        .\y_reg[4] (cu_n_71),
        .\y_reg[4]_0 (cu_n_259),
        .\y_reg[5] (cu_n_70),
        .\y_reg[5]_0 (cu_n_258),
        .\y_reg[6] (cu_n_69),
        .\y_reg[6]_0 (cu_n_257),
        .\y_reg[7] (cu_n_58),
        .\y_reg[7]_0 (cu_n_68),
        .\y_reg[7]_1 (cu_n_128),
        .\y_reg[7]_2 ({cu_n_217,cu_n_218,cu_n_219,cu_n_220}),
        .\y_reg[7]_3 ({cu_n_241,cu_n_242,cu_n_243,cu_n_244}),
        .\y_reg[8] (cu_n_67),
        .\y_reg[8]_0 (cu_n_256),
        .\y_reg[9] (cu_n_66),
        .\y_reg[9]_0 (cu_n_255));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[0]_LDC_i_1 
       (.I0(\led_reg[7]_P [0]),
        .I1(rst_IBUF),
        .O(\led_reg[0]_P ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [0]),
        .O(\led_reg[0]_C ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[1]_LDC_i_1 
       (.I0(\led_reg[7]_P [1]),
        .I1(rst_IBUF),
        .O(\led_reg[1]_P ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [1]),
        .O(\led_reg[1]_C ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[2]_LDC_i_1 
       (.I0(\led_reg[7]_P [2]),
        .I1(rst_IBUF),
        .O(\led_reg[2]_P ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [2]),
        .O(\led_reg[2]_C ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[3]_LDC_i_1 
       (.I0(\led_reg[7]_P [3]),
        .I1(rst_IBUF),
        .O(\led_reg[3]_P ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [3]),
        .O(\led_reg[3]_C ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[4]_LDC_i_1 
       (.I0(\led_reg[7]_P [4]),
        .I1(rst_IBUF),
        .O(\led_reg[4]_P ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[4]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [4]),
        .O(\led_reg[4]_C ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[5]_LDC_i_1 
       (.I0(\led_reg[7]_P [5]),
        .I1(rst_IBUF),
        .O(\led_reg[5]_P ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[5]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [5]),
        .O(\led_reg[5]_C ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[6]_LDC_i_1 
       (.I0(\led_reg[7]_P [6]),
        .I1(rst_IBUF),
        .O(\led_reg[6]_P ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[6]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [6]),
        .O(\led_reg[6]_C ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_reg[7]_LDC_i_1 
       (.I0(\led_reg[7]_P [7]),
        .I1(rst_IBUF),
        .O(\led_reg[7]_P_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[7]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(\led_reg[7]_P [7]),
        .O(\led_reg[7]_C ));
  ALU nolabel_line158
       (.ALU_a(ALU_a),
        .\A_reg[14] ({cu_n_7,cu_n_8,cu_n_9,cu_n_10}),
        .\A_reg[19] ({cu_n_269,cu_n_270,cu_n_271,cu_n_272}),
        .\A_reg[22] ({cu_n_94,cu_n_95,cu_n_96,cu_n_97}),
        .\A_reg[23] ({cu_n_261,cu_n_262,cu_n_263,cu_n_264}),
        .\A_reg[27] ({cu_n_213,cu_n_214,cu_n_215,cu_n_216}),
        .\A_reg[31] ({cu_n_205,cu_n_206,cu_n_207,cu_n_208}),
        .\A_reg[31]_0 ({cu_n_50,cu_n_51,cu_n_52,cu_n_53}),
        .\A_reg[6] ({cu_n_54,cu_n_55,cu_n_56,cu_n_57}),
        .\A_reg[7] ({cu_n_217,cu_n_218,cu_n_219,cu_n_220}),
        .\B_reg[11] ({cu_n_245,cu_n_246,cu_n_247,cu_n_248}),
        .\B_reg[11]_0 ({cu_n_221,cu_n_222,cu_n_223,cu_n_224}),
        .\B_reg[15] ({cu_n_225,cu_n_226,cu_n_227,cu_n_228}),
        .\B_reg[15]_0 ({cu_n_233,cu_n_234,cu_n_235,cu_n_236}),
        .\B_reg[19] ({cu_n_273,cu_n_274,cu_n_275,cu_n_276}),
        .\B_reg[22] ({cu_n_98,cu_n_99,cu_n_100,cu_n_101}),
        .\B_reg[23] ({cu_n_265,cu_n_266,cu_n_267,cu_n_268}),
        .\B_reg[27] ({cu_n_237,cu_n_238,cu_n_239,cu_n_240}),
        .\B_reg[30] ({cu_n_46,cu_n_47,cu_n_48,cu_n_49}),
        .\B_reg[31] ({cu_n_76,cu_n_77,cu_n_78,cu_n_79}),
        .\B_reg[3] ({cu_n_209,cu_n_210,cu_n_211,cu_n_212}),
        .\B_reg[3]_0 ({cu_n_229,cu_n_230,cu_n_231,cu_n_232}),
        .CLK(CLK),
        .CO(data5),
        .D(y),
        .DI({cu_n_11,cu_n_12,cu_n_13,cu_n_14}),
        .O({nolabel_line158_n_38,nolabel_line158_n_39,nolabel_line158_n_40,nolabel_line158_n_41}),
        .Q({nolabel_line158_n_67,nolabel_line158_n_68,nolabel_line158_n_69,nolabel_line158_n_70,nolabel_line158_n_71,nolabel_line158_n_72,nolabel_line158_n_73,nolabel_line158_n_74,nolabel_line158_n_75,nolabel_line158_n_76,nolabel_line158_n_77,nolabel_line158_n_78,nolabel_line158_n_79,nolabel_line158_n_80,nolabel_line158_n_81,nolabel_line158_n_82,nolabel_line158_n_83,nolabel_line158_n_84,nolabel_line158_n_85,nolabel_line158_n_86,nolabel_line158_n_87,nolabel_line158_n_88,nolabel_line158_n_89,nolabel_line158_n_90,nolabel_line158_n_91,nolabel_line158_n_92,nolabel_line158_n_93,nolabel_line158_n_94,nolabel_line158_n_95,nolabel_line158_n_96,nolabel_line158_n_97,nolabel_line158_n_98}),
        .S({cu_n_1,cu_n_2,cu_n_3,cu_n_4}),
        .\current_state_reg[2] ({cu_n_241,cu_n_242,cu_n_243,cu_n_244}),
        .\current_state_reg[2]_0 (ALUoperation),
        .\f_reg[0]_0 ({nolabel_line158_n_10,nolabel_line158_n_11,nolabel_line158_n_12,nolabel_line158_n_13}),
        .\f_reg[0]_1 ({nolabel_line158_n_46,nolabel_line158_n_47,nolabel_line158_n_48,nolabel_line158_n_49}),
        .flag(flag),
        .\y_reg[11]_0 ({nolabel_line158_n_42,nolabel_line158_n_43,nolabel_line158_n_44,nolabel_line158_n_45}),
        .\y_reg[15]_0 ({nolabel_line158_n_14,nolabel_line158_n_15,nolabel_line158_n_16,nolabel_line158_n_17}),
        .\y_reg[19]_0 ({nolabel_line158_n_18,nolabel_line158_n_19,nolabel_line158_n_20,nolabel_line158_n_21}),
        .\y_reg[19]_1 ({nolabel_line158_n_50,nolabel_line158_n_51,nolabel_line158_n_52,nolabel_line158_n_53}),
        .\y_reg[23]_0 ({nolabel_line158_n_22,nolabel_line158_n_23,nolabel_line158_n_24,nolabel_line158_n_25}),
        .\y_reg[23]_1 ({nolabel_line158_n_54,nolabel_line158_n_55,nolabel_line158_n_56,nolabel_line158_n_57}),
        .\y_reg[27]_0 ({nolabel_line158_n_26,nolabel_line158_n_27,nolabel_line158_n_28,nolabel_line158_n_29}),
        .\y_reg[27]_1 ({nolabel_line158_n_58,nolabel_line158_n_59,nolabel_line158_n_60,nolabel_line158_n_61}),
        .\y_reg[31]_0 ({p_5_in,nolabel_line158_n_31,nolabel_line158_n_32,nolabel_line158_n_33}),
        .\y_reg[31]_1 ({p_3_in,nolabel_line158_n_63,nolabel_line158_n_64,nolabel_line158_n_65}),
        .\y_reg[3]_0 ({nolabel_line158_n_2,nolabel_line158_n_3,nolabel_line158_n_4,nolabel_line158_n_5}),
        .\y_reg[3]_1 ({nolabel_line158_n_34,nolabel_line158_n_35,nolabel_line158_n_36,nolabel_line158_n_37}),
        .\y_reg[7]_0 ({nolabel_line158_n_6,nolabel_line158_n_7,nolabel_line158_n_8,nolabel_line158_n_9}));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[0] 
       (.CLR(AR),
        .D(cu_n_136),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[1] 
       (.CLR(AR),
        .D(cu_n_135),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[2] 
       (.CLR(AR),
        .D(cu_n_134),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[3] 
       (.CLR(AR),
        .D(cu_n_133),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[4] 
       (.CLR(AR),
        .D(cu_n_132),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[5] 
       (.CLR(AR),
        .D(cu_n_131),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[6] 
       (.CLR(AR),
        .D(cu_n_130),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rd_addr_reg[7] 
       (.CLR(AR),
        .D(cu_n_129),
        .G(MemRead),
        .GE(1'b1),
        .Q(rd_addr[7]));
endmodule

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
module dist_mem_gen_0
   (a,
    d,
    dpra,
    clk,
    we,
    spo,
    dpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  output [31:0]spo;
  output [31:0]dpo;

  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  wire [31:0]spo;
  wire we;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_dpo = "1" *) 
  (* c_has_dpra = "1" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qdpo = "0" *) 
  (* c_has_qdpo_ce = "0" *) 
  (* c_has_qdpo_clk = "0" *) 
  (* c_has_qdpo_rst = "0" *) 
  (* c_has_qdpo_srst = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_reg_dpra_input = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule

module seg
   (out,
    an_OBUF,
    Q,
    CLK,
    AR,
    D);
  output [2:0]out;
  output [7:0]an_OBUF;
  output [6:0]Q;
  input CLK;
  input [0:0]AR;
  input [3:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire \FSM_sequential_an[0]_i_1_n_1 ;
  wire \FSM_sequential_an[1]_i_1_n_1 ;
  wire \FSM_sequential_an[2]_i_1_n_1 ;
  wire [6:0]Q;
  wire [7:0]an_OBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire \seg_inferred__0/i__n_1 ;
  wire seg_n_1;
  wire \seg_reg[0]_i_1_n_1 ;
  wire \seg_reg[1]_i_1_n_1 ;
  wire \seg_reg[2]_i_1_n_1 ;
  wire \seg_reg[3]_i_1_n_1 ;
  wire \seg_reg[5]_i_1_n_1 ;
  wire \seg_reg[6]_i_1_n_1 ;
  wire \seg_temp_reg_n_1_[0] ;
  wire \seg_temp_reg_n_1_[1] ;
  wire \seg_temp_reg_n_1_[2] ;
  wire \seg_temp_reg_n_1_[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_an[0]_i_1 
       (.I0(out[0]),
        .O(\FSM_sequential_an[0]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_an[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\FSM_sequential_an[1]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_an[2]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(\FSM_sequential_an[2]_i_1_n_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_an[0]_i_1_n_1 ),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_an[1]_i_1_n_1 ),
        .Q(out[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101,iSTATE5:110,iSTATE6:111," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_an[2]_i_1_n_1 ),
        .Q(out[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .O(an_OBUF[0]));
  LUT3 #(
    .INIT(8'hFB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(an_OBUF[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(an_OBUF[2]));
  LUT3 #(
    .INIT(8'hBF)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(an_OBUF[3]));
  LUT3 #(
    .INIT(8'hFB)) 
    \an_OBUF[4]_inst_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(an_OBUF[4]));
  LUT3 #(
    .INIT(8'hDF)) 
    \an_OBUF[5]_inst_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(an_OBUF[5]));
  LUT3 #(
    .INIT(8'hDF)) 
    \an_OBUF[6]_inst_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(an_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \an_OBUF[7]_inst_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(an_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    seg
       (.I0(\seg_temp_reg_n_1_[3] ),
        .I1(\seg_temp_reg_n_1_[1] ),
        .I2(\seg_temp_reg_n_1_[0] ),
        .I3(\seg_temp_reg_n_1_[2] ),
        .O(seg_n_1));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \seg_inferred__0/i_ 
       (.I0(\seg_temp_reg_n_1_[3] ),
        .I1(\seg_temp_reg_n_1_[2] ),
        .I2(\seg_temp_reg_n_1_[1] ),
        .O(\seg_inferred__0/i__n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.CLR(1'b0),
        .D(\seg_reg[0]_i_1_n_1 ),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \seg_reg[0]_i_1 
       (.I0(\seg_temp_reg_n_1_[1] ),
        .I1(\seg_temp_reg_n_1_[2] ),
        .I2(\seg_temp_reg_n_1_[0] ),
        .I3(\seg_temp_reg_n_1_[3] ),
        .O(\seg_reg[0]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.CLR(1'b0),
        .D(\seg_reg[1]_i_1_n_1 ),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \seg_reg[1]_i_1 
       (.I0(\seg_temp_reg_n_1_[0] ),
        .I1(\seg_temp_reg_n_1_[1] ),
        .I2(\seg_temp_reg_n_1_[2] ),
        .I3(\seg_temp_reg_n_1_[3] ),
        .O(\seg_reg[1]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.CLR(1'b0),
        .D(\seg_reg[2]_i_1_n_1 ),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \seg_reg[2]_i_1 
       (.I0(\seg_temp_reg_n_1_[0] ),
        .I1(\seg_temp_reg_n_1_[2] ),
        .I2(\seg_temp_reg_n_1_[1] ),
        .I3(\seg_temp_reg_n_1_[3] ),
        .O(\seg_reg[2]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.CLR(1'b0),
        .D(\seg_reg[3]_i_1_n_1 ),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \seg_reg[3]_i_1 
       (.I0(\seg_temp_reg_n_1_[1] ),
        .I1(\seg_temp_reg_n_1_[2] ),
        .I2(\seg_temp_reg_n_1_[0] ),
        .I3(\seg_temp_reg_n_1_[3] ),
        .O(\seg_reg[3]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.CLR(1'b0),
        .D(seg_n_1),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.CLR(1'b0),
        .D(\seg_reg[5]_i_1_n_1 ),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00B2)) 
    \seg_reg[5]_i_1 
       (.I0(\seg_temp_reg_n_1_[1] ),
        .I1(\seg_temp_reg_n_1_[2] ),
        .I2(\seg_temp_reg_n_1_[0] ),
        .I3(\seg_temp_reg_n_1_[3] ),
        .O(\seg_reg[5]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.CLR(1'b0),
        .D(\seg_reg[6]_i_1_n_1 ),
        .G(\seg_inferred__0/i__n_1 ),
        .GE(1'b1),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0091)) 
    \seg_reg[6]_i_1 
       (.I0(\seg_temp_reg_n_1_[1] ),
        .I1(\seg_temp_reg_n_1_[2] ),
        .I2(\seg_temp_reg_n_1_[0] ),
        .I3(\seg_temp_reg_n_1_[3] ),
        .O(\seg_reg[6]_i_1_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_temp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\seg_temp_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_temp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\seg_temp_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_temp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\seg_temp_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \seg_temp_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\seg_temp_reg_n_1_[3] ));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "1" *) (* C_HAS_DPRA = "1" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_MEM_TYPE = "2" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module dist_mem_gen_0_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  wire [31:0]spo;
  wire we;

  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_0_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module dist_mem_gen_0_dist_mem_gen_v8_0_12_synth
   (spo,
    dpo,
    we,
    a,
    clk,
    d,
    dpra);
  output [31:0]spo;
  output [31:0]dpo;
  input we;
  input [7:0]a;
  input clk;
  input [31:0]d;
  input [7:0]dpra;

  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  wire [31:0]spo;
  wire we;

  dist_mem_gen_0_dpram \gen_dp_ram.dpram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dpram" *) 
module dist_mem_gen_0_dpram
   (spo,
    dpo,
    we,
    a,
    clk,
    d,
    dpra);
  output [31:0]spo;
  output [31:0]dpo;
  input we;
  input [7:0]a;
  input clk;
  input [31:0]d;
  input [7:0]dpra;

  wire [7:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]dpo;
  wire [7:0]dpra;
  (* RTL_KEEP = "true" *) wire [31:0]qdpo_int;
  (* RTL_KEEP = "true" *) wire [31:0]qspo_int;
  wire ram_reg_0_127_0_0_i_1_n_0;
  wire ram_reg_0_127_0_0_n_0;
  wire ram_reg_0_127_0_0_n_1;
  wire ram_reg_0_127_10_10_n_0;
  wire ram_reg_0_127_10_10_n_1;
  wire ram_reg_0_127_11_11_n_0;
  wire ram_reg_0_127_11_11_n_1;
  wire ram_reg_0_127_12_12_n_0;
  wire ram_reg_0_127_12_12_n_1;
  wire ram_reg_0_127_13_13_n_0;
  wire ram_reg_0_127_13_13_n_1;
  wire ram_reg_0_127_14_14_n_0;
  wire ram_reg_0_127_14_14_n_1;
  wire ram_reg_0_127_15_15_n_0;
  wire ram_reg_0_127_15_15_n_1;
  wire ram_reg_0_127_16_16_n_0;
  wire ram_reg_0_127_16_16_n_1;
  wire ram_reg_0_127_17_17_n_0;
  wire ram_reg_0_127_17_17_n_1;
  wire ram_reg_0_127_18_18_n_0;
  wire ram_reg_0_127_18_18_n_1;
  wire ram_reg_0_127_19_19_n_0;
  wire ram_reg_0_127_19_19_n_1;
  wire ram_reg_0_127_1_1_n_0;
  wire ram_reg_0_127_1_1_n_1;
  wire ram_reg_0_127_20_20_n_0;
  wire ram_reg_0_127_20_20_n_1;
  wire ram_reg_0_127_21_21_n_0;
  wire ram_reg_0_127_21_21_n_1;
  wire ram_reg_0_127_22_22_n_0;
  wire ram_reg_0_127_22_22_n_1;
  wire ram_reg_0_127_23_23_n_0;
  wire ram_reg_0_127_23_23_n_1;
  wire ram_reg_0_127_24_24_n_0;
  wire ram_reg_0_127_24_24_n_1;
  wire ram_reg_0_127_25_25_n_0;
  wire ram_reg_0_127_25_25_n_1;
  wire ram_reg_0_127_26_26_n_0;
  wire ram_reg_0_127_26_26_n_1;
  wire ram_reg_0_127_27_27_n_0;
  wire ram_reg_0_127_27_27_n_1;
  wire ram_reg_0_127_28_28_n_0;
  wire ram_reg_0_127_28_28_n_1;
  wire ram_reg_0_127_29_29_n_0;
  wire ram_reg_0_127_29_29_n_1;
  wire ram_reg_0_127_2_2_n_0;
  wire ram_reg_0_127_2_2_n_1;
  wire ram_reg_0_127_30_30_n_0;
  wire ram_reg_0_127_30_30_n_1;
  wire ram_reg_0_127_31_31_n_0;
  wire ram_reg_0_127_31_31_n_1;
  wire ram_reg_0_127_3_3_n_0;
  wire ram_reg_0_127_3_3_n_1;
  wire ram_reg_0_127_4_4_n_0;
  wire ram_reg_0_127_4_4_n_1;
  wire ram_reg_0_127_5_5_n_0;
  wire ram_reg_0_127_5_5_n_1;
  wire ram_reg_0_127_6_6_n_0;
  wire ram_reg_0_127_6_6_n_1;
  wire ram_reg_0_127_7_7_n_0;
  wire ram_reg_0_127_7_7_n_1;
  wire ram_reg_0_127_8_8_n_0;
  wire ram_reg_0_127_8_8_n_1;
  wire ram_reg_0_127_9_9_n_0;
  wire ram_reg_0_127_9_9_n_1;
  wire ram_reg_128_255_0_0_i_1_n_0;
  wire ram_reg_128_255_0_0_n_0;
  wire ram_reg_128_255_0_0_n_1;
  wire ram_reg_128_255_10_10_n_0;
  wire ram_reg_128_255_10_10_n_1;
  wire ram_reg_128_255_11_11_n_0;
  wire ram_reg_128_255_11_11_n_1;
  wire ram_reg_128_255_12_12_n_0;
  wire ram_reg_128_255_12_12_n_1;
  wire ram_reg_128_255_13_13_n_0;
  wire ram_reg_128_255_13_13_n_1;
  wire ram_reg_128_255_14_14_n_0;
  wire ram_reg_128_255_14_14_n_1;
  wire ram_reg_128_255_15_15_n_0;
  wire ram_reg_128_255_15_15_n_1;
  wire ram_reg_128_255_16_16_n_0;
  wire ram_reg_128_255_16_16_n_1;
  wire ram_reg_128_255_17_17_n_0;
  wire ram_reg_128_255_17_17_n_1;
  wire ram_reg_128_255_18_18_n_0;
  wire ram_reg_128_255_18_18_n_1;
  wire ram_reg_128_255_19_19_n_0;
  wire ram_reg_128_255_19_19_n_1;
  wire ram_reg_128_255_1_1_n_0;
  wire ram_reg_128_255_1_1_n_1;
  wire ram_reg_128_255_20_20_n_0;
  wire ram_reg_128_255_20_20_n_1;
  wire ram_reg_128_255_21_21_n_0;
  wire ram_reg_128_255_21_21_n_1;
  wire ram_reg_128_255_22_22_n_0;
  wire ram_reg_128_255_22_22_n_1;
  wire ram_reg_128_255_23_23_n_0;
  wire ram_reg_128_255_23_23_n_1;
  wire ram_reg_128_255_24_24_n_0;
  wire ram_reg_128_255_24_24_n_1;
  wire ram_reg_128_255_25_25_n_0;
  wire ram_reg_128_255_25_25_n_1;
  wire ram_reg_128_255_26_26_n_0;
  wire ram_reg_128_255_26_26_n_1;
  wire ram_reg_128_255_27_27_n_0;
  wire ram_reg_128_255_27_27_n_1;
  wire ram_reg_128_255_28_28_n_0;
  wire ram_reg_128_255_28_28_n_1;
  wire ram_reg_128_255_29_29_n_0;
  wire ram_reg_128_255_29_29_n_1;
  wire ram_reg_128_255_2_2_n_0;
  wire ram_reg_128_255_2_2_n_1;
  wire ram_reg_128_255_30_30_n_0;
  wire ram_reg_128_255_30_30_n_1;
  wire ram_reg_128_255_31_31_n_0;
  wire ram_reg_128_255_31_31_n_1;
  wire ram_reg_128_255_3_3_n_0;
  wire ram_reg_128_255_3_3_n_1;
  wire ram_reg_128_255_4_4_n_0;
  wire ram_reg_128_255_4_4_n_1;
  wire ram_reg_128_255_5_5_n_0;
  wire ram_reg_128_255_5_5_n_1;
  wire ram_reg_128_255_6_6_n_0;
  wire ram_reg_128_255_6_6_n_1;
  wire ram_reg_128_255_7_7_n_0;
  wire ram_reg_128_255_7_7_n_1;
  wire ram_reg_128_255_8_8_n_0;
  wire ram_reg_128_255_8_8_n_1;
  wire ram_reg_128_255_9_9_n_0;
  wire ram_reg_128_255_9_9_n_1;
  wire [31:0]spo;
  wire we;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[0]_INST_0 
       (.I0(ram_reg_128_255_0_0_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_0_0_n_0),
        .O(dpo[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[10]_INST_0 
       (.I0(ram_reg_128_255_10_10_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_10_10_n_0),
        .O(dpo[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[11]_INST_0 
       (.I0(ram_reg_128_255_11_11_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_11_11_n_0),
        .O(dpo[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[12]_INST_0 
       (.I0(ram_reg_128_255_12_12_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_12_12_n_0),
        .O(dpo[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[13]_INST_0 
       (.I0(ram_reg_128_255_13_13_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_13_13_n_0),
        .O(dpo[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[14]_INST_0 
       (.I0(ram_reg_128_255_14_14_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_14_14_n_0),
        .O(dpo[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[15]_INST_0 
       (.I0(ram_reg_128_255_15_15_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_15_15_n_0),
        .O(dpo[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[16]_INST_0 
       (.I0(ram_reg_128_255_16_16_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_16_16_n_0),
        .O(dpo[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[17]_INST_0 
       (.I0(ram_reg_128_255_17_17_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_17_17_n_0),
        .O(dpo[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[18]_INST_0 
       (.I0(ram_reg_128_255_18_18_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_18_18_n_0),
        .O(dpo[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[19]_INST_0 
       (.I0(ram_reg_128_255_19_19_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_19_19_n_0),
        .O(dpo[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[1]_INST_0 
       (.I0(ram_reg_128_255_1_1_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_1_1_n_0),
        .O(dpo[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[20]_INST_0 
       (.I0(ram_reg_128_255_20_20_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_20_20_n_0),
        .O(dpo[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[21]_INST_0 
       (.I0(ram_reg_128_255_21_21_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_21_21_n_0),
        .O(dpo[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[22]_INST_0 
       (.I0(ram_reg_128_255_22_22_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_22_22_n_0),
        .O(dpo[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[23]_INST_0 
       (.I0(ram_reg_128_255_23_23_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_23_23_n_0),
        .O(dpo[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[24]_INST_0 
       (.I0(ram_reg_128_255_24_24_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_24_24_n_0),
        .O(dpo[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[25]_INST_0 
       (.I0(ram_reg_128_255_25_25_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_25_25_n_0),
        .O(dpo[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[26]_INST_0 
       (.I0(ram_reg_128_255_26_26_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_26_26_n_0),
        .O(dpo[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[27]_INST_0 
       (.I0(ram_reg_128_255_27_27_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_27_27_n_0),
        .O(dpo[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[28]_INST_0 
       (.I0(ram_reg_128_255_28_28_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_28_28_n_0),
        .O(dpo[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[29]_INST_0 
       (.I0(ram_reg_128_255_29_29_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_29_29_n_0),
        .O(dpo[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[2]_INST_0 
       (.I0(ram_reg_128_255_2_2_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_2_2_n_0),
        .O(dpo[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[30]_INST_0 
       (.I0(ram_reg_128_255_30_30_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_30_30_n_0),
        .O(dpo[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[31]_INST_0 
       (.I0(ram_reg_128_255_31_31_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_31_31_n_0),
        .O(dpo[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[3]_INST_0 
       (.I0(ram_reg_128_255_3_3_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_3_3_n_0),
        .O(dpo[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[4]_INST_0 
       (.I0(ram_reg_128_255_4_4_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_4_4_n_0),
        .O(dpo[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[5]_INST_0 
       (.I0(ram_reg_128_255_5_5_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_5_5_n_0),
        .O(dpo[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[6]_INST_0 
       (.I0(ram_reg_128_255_6_6_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_6_6_n_0),
        .O(dpo[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[7]_INST_0 
       (.I0(ram_reg_128_255_7_7_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_7_7_n_0),
        .O(dpo[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[8]_INST_0 
       (.I0(ram_reg_128_255_8_8_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_8_8_n_0),
        .O(dpo[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dpo[9]_INST_0 
       (.I0(ram_reg_128_255_9_9_n_0),
        .I1(dpra[7]),
        .I2(ram_reg_0_127_9_9_n_0),
        .O(dpo[9]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[0]),
        .Q(qdpo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[10]),
        .Q(qdpo_int[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[11]),
        .Q(qdpo_int[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[12]),
        .Q(qdpo_int[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[13]),
        .Q(qdpo_int[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[14]),
        .Q(qdpo_int[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[15]),
        .Q(qdpo_int[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[16]),
        .Q(qdpo_int[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[17]),
        .Q(qdpo_int[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[18]),
        .Q(qdpo_int[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[19]),
        .Q(qdpo_int[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[1]),
        .Q(qdpo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[20]),
        .Q(qdpo_int[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[21]),
        .Q(qdpo_int[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[22]),
        .Q(qdpo_int[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[23]),
        .Q(qdpo_int[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[24]),
        .Q(qdpo_int[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[25]),
        .Q(qdpo_int[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[26]),
        .Q(qdpo_int[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[27]),
        .Q(qdpo_int[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[28]),
        .Q(qdpo_int[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[29]),
        .Q(qdpo_int[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[2]),
        .Q(qdpo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[30]),
        .Q(qdpo_int[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[31]),
        .Q(qdpo_int[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[3]),
        .Q(qdpo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[4]),
        .Q(qdpo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[5]),
        .Q(qdpo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[6]),
        .Q(qdpo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[7]),
        .Q(qdpo_int[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[8]),
        .Q(qdpo_int[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(dpo[9]),
        .Q(qdpo_int[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[0]),
        .Q(qspo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[10]),
        .Q(qspo_int[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[11]),
        .Q(qspo_int[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[12]),
        .Q(qspo_int[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[13]),
        .Q(qspo_int[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[14]),
        .Q(qspo_int[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[15]),
        .Q(qspo_int[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[16]),
        .Q(qspo_int[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[17]),
        .Q(qspo_int[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[18]),
        .Q(qspo_int[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[19]),
        .Q(qspo_int[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[1]),
        .Q(qspo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[20]),
        .Q(qspo_int[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[21]),
        .Q(qspo_int[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[22]),
        .Q(qspo_int[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[23]),
        .Q(qspo_int[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[24]),
        .Q(qspo_int[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[25]),
        .Q(qspo_int[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[26]),
        .Q(qspo_int[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[27]),
        .Q(qspo_int[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[28]),
        .Q(qspo_int[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[29]),
        .Q(qspo_int[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[2]),
        .Q(qspo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[30]),
        .Q(qspo_int[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[31]),
        .Q(qspo_int[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[3]),
        .Q(qspo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[4]),
        .Q(qspo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[5]),
        .Q(qspo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[6]),
        .Q(qspo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[7]),
        .Q(qspo_int[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[8]),
        .Q(qspo_int[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[9]),
        .Q(qspo_int[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000111515113B91)) 
    ram_reg_0_127_0_0
       (.A(a[6:0]),
        .D(d[0]),
        .DPO(ram_reg_0_127_0_0_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_0_0_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_127_0_0_i_1
       (.I0(we),
        .I1(a[7]),
        .O(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_10_10
       (.A(a[6:0]),
        .D(d[10]),
        .DPO(ram_reg_0_127_10_10_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_10_10_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_11_11
       (.A(a[6:0]),
        .D(d[11]),
        .DPO(ram_reg_0_127_11_11_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_11_11_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_12_12
       (.A(a[6:0]),
        .D(d[12]),
        .DPO(ram_reg_0_127_12_12_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_12_12_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_13_13
       (.A(a[6:0]),
        .D(d[13]),
        .DPO(ram_reg_0_127_13_13_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_13_13_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_14_14
       (.A(a[6:0]),
        .D(d[14]),
        .DPO(ram_reg_0_127_14_14_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_14_14_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000044444040)) 
    ram_reg_0_127_15_15
       (.A(a[6:0]),
        .D(d[15]),
        .DPO(ram_reg_0_127_15_15_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_15_15_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000001C88C8889040)) 
    ram_reg_0_127_16_16
       (.A(a[6:0]),
        .D(d[16]),
        .DPO(ram_reg_0_127_16_16_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_16_16_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000001000000002040)) 
    ram_reg_0_127_17_17
       (.A(a[6:0]),
        .D(d[17]),
        .DPO(ram_reg_0_127_17_17_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_17_17_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_18_18
       (.A(a[6:0]),
        .D(d[18]),
        .DPO(ram_reg_0_127_18_18_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_18_18_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000001040044447840)) 
    ram_reg_0_127_19_19
       (.A(a[6:0]),
        .D(d[19]),
        .DPO(ram_reg_0_127_19_19_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_19_19_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000900444400921)) 
    ram_reg_0_127_1_1
       (.A(a[6:0]),
        .D(d[1]),
        .DPO(ram_reg_0_127_1_1_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_1_1_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000019DD99998040)) 
    ram_reg_0_127_20_20
       (.A(a[6:0]),
        .D(d[20]),
        .DPO(ram_reg_0_127_20_20_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_20_20_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000115115554040)) 
    ram_reg_0_127_21_21
       (.A(a[6:0]),
        .D(d[21]),
        .DPO(ram_reg_0_127_21_21_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_21_21_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_22_22
       (.A(a[6:0]),
        .D(d[22]),
        .DPO(ram_reg_0_127_22_22_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_22_22_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_23_23
       (.A(a[6:0]),
        .D(d[23]),
        .DPO(ram_reg_0_127_23_23_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_23_23_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000104444444040)) 
    ram_reg_0_127_24_24
       (.A(a[6:0]),
        .D(d[24]),
        .DPO(ram_reg_0_127_24_24_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_24_24_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000011111110040)) 
    ram_reg_0_127_25_25
       (.A(a[6:0]),
        .D(d[25]),
        .DPO(ram_reg_0_127_25_25_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_25_25_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000014DD999998040)) 
    ram_reg_0_127_26_26
       (.A(a[6:0]),
        .D(d[26]),
        .DPO(ram_reg_0_127_26_26_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_26_26_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000003CC8888888041)) 
    ram_reg_0_127_27_27
       (.A(a[6:0]),
        .D(d[27]),
        .DPO(ram_reg_0_127_27_27_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_27_27_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000115511110040)) 
    ram_reg_0_127_28_28
       (.A(a[6:0]),
        .D(d[28]),
        .DPO(ram_reg_0_127_28_28_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_28_28_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000001444400003840)) 
    ram_reg_0_127_29_29
       (.A(a[6:0]),
        .D(d[29]),
        .DPO(ram_reg_0_127_29_29_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_29_29_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000081C585C59220)) 
    ram_reg_0_127_2_2
       (.A(a[6:0]),
        .D(d[2]),
        .DPO(ram_reg_0_127_2_2_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_2_2_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_30_30
       (.A(a[6:0]),
        .D(d[30]),
        .DPO(ram_reg_0_127_30_30_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_30_30_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000014C8888888040)) 
    ram_reg_0_127_31_31
       (.A(a[6:0]),
        .D(d[31]),
        .DPO(ram_reg_0_127_31_31_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_31_31_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000001CC11C8118049)) 
    ram_reg_0_127_3_3
       (.A(a[6:0]),
        .D(d[3]),
        .DPO(ram_reg_0_127_3_3_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_3_3_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000002000099990040)) 
    ram_reg_0_127_4_4
       (.A(a[6:0]),
        .D(d[4]),
        .DPO(ram_reg_0_127_4_4_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_4_4_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000028C8844444040)) 
    ram_reg_0_127_5_5
       (.A(a[6:0]),
        .D(d[5]),
        .DPO(ram_reg_0_127_5_5_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_5_5_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_6_6
       (.A(a[6:0]),
        .D(d[6]),
        .DPO(ram_reg_0_127_6_6_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_6_6_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_7_7
       (.A(a[6:0]),
        .D(d[7]),
        .DPO(ram_reg_0_127_7_7_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_7_7_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_8_8
       (.A(a[6:0]),
        .D(d[8]),
        .DPO(ram_reg_0_127_8_8_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_8_8_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000040)) 
    ram_reg_0_127_9_9
       (.A(a[6:0]),
        .D(d[9]),
        .DPO(ram_reg_0_127_9_9_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_0_127_9_9_n_1),
        .WCLK(clk),
        .WE(ram_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_0_0
       (.A(a[6:0]),
        .D(d[0]),
        .DPO(ram_reg_128_255_0_0_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_0_0_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_128_255_0_0_i_1
       (.I0(we),
        .I1(a[7]),
        .O(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_10_10
       (.A(a[6:0]),
        .D(d[10]),
        .DPO(ram_reg_128_255_10_10_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_10_10_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_11_11
       (.A(a[6:0]),
        .D(d[11]),
        .DPO(ram_reg_128_255_11_11_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_11_11_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_12_12
       (.A(a[6:0]),
        .D(d[12]),
        .DPO(ram_reg_128_255_12_12_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_12_12_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_13_13
       (.A(a[6:0]),
        .D(d[13]),
        .DPO(ram_reg_128_255_13_13_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_13_13_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_14_14
       (.A(a[6:0]),
        .D(d[14]),
        .DPO(ram_reg_128_255_14_14_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_14_14_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_15_15
       (.A(a[6:0]),
        .D(d[15]),
        .DPO(ram_reg_128_255_15_15_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_15_15_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_16_16
       (.A(a[6:0]),
        .D(d[16]),
        .DPO(ram_reg_128_255_16_16_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_16_16_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_17_17
       (.A(a[6:0]),
        .D(d[17]),
        .DPO(ram_reg_128_255_17_17_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_17_17_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_18_18
       (.A(a[6:0]),
        .D(d[18]),
        .DPO(ram_reg_128_255_18_18_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_18_18_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_19_19
       (.A(a[6:0]),
        .D(d[19]),
        .DPO(ram_reg_128_255_19_19_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_19_19_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_1_1
       (.A(a[6:0]),
        .D(d[1]),
        .DPO(ram_reg_128_255_1_1_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_1_1_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_20_20
       (.A(a[6:0]),
        .D(d[20]),
        .DPO(ram_reg_128_255_20_20_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_20_20_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_21_21
       (.A(a[6:0]),
        .D(d[21]),
        .DPO(ram_reg_128_255_21_21_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_21_21_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_22_22
       (.A(a[6:0]),
        .D(d[22]),
        .DPO(ram_reg_128_255_22_22_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_22_22_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_23_23
       (.A(a[6:0]),
        .D(d[23]),
        .DPO(ram_reg_128_255_23_23_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_23_23_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_24_24
       (.A(a[6:0]),
        .D(d[24]),
        .DPO(ram_reg_128_255_24_24_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_24_24_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_25_25
       (.A(a[6:0]),
        .D(d[25]),
        .DPO(ram_reg_128_255_25_25_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_25_25_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_26_26
       (.A(a[6:0]),
        .D(d[26]),
        .DPO(ram_reg_128_255_26_26_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_26_26_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_27_27
       (.A(a[6:0]),
        .D(d[27]),
        .DPO(ram_reg_128_255_27_27_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_27_27_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_28_28
       (.A(a[6:0]),
        .D(d[28]),
        .DPO(ram_reg_128_255_28_28_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_28_28_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_29_29
       (.A(a[6:0]),
        .D(d[29]),
        .DPO(ram_reg_128_255_29_29_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_29_29_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_2_2
       (.A(a[6:0]),
        .D(d[2]),
        .DPO(ram_reg_128_255_2_2_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_2_2_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_30_30
       (.A(a[6:0]),
        .D(d[30]),
        .DPO(ram_reg_128_255_30_30_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_30_30_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_31_31
       (.A(a[6:0]),
        .D(d[31]),
        .DPO(ram_reg_128_255_31_31_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_31_31_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_3_3
       (.A(a[6:0]),
        .D(d[3]),
        .DPO(ram_reg_128_255_3_3_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_3_3_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_4_4
       (.A(a[6:0]),
        .D(d[4]),
        .DPO(ram_reg_128_255_4_4_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_4_4_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_5_5
       (.A(a[6:0]),
        .D(d[5]),
        .DPO(ram_reg_128_255_5_5_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_5_5_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_6_6
       (.A(a[6:0]),
        .D(d[6]),
        .DPO(ram_reg_128_255_6_6_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_6_6_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_7_7
       (.A(a[6:0]),
        .D(d[7]),
        .DPO(ram_reg_128_255_7_7_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_7_7_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_8_8
       (.A(a[6:0]),
        .D(d[8]),
        .DPO(ram_reg_128_255_8_8_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_8_8_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    ram_reg_128_255_9_9
       (.A(a[6:0]),
        .D(d[9]),
        .DPO(ram_reg_128_255_9_9_n_0),
        .DPRA(dpra[6:0]),
        .SPO(ram_reg_128_255_9_9_n_1),
        .WCLK(clk),
        .WE(ram_reg_128_255_0_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[0]_INST_0 
       (.I0(ram_reg_128_255_0_0_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_0_0_n_1),
        .O(spo[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[10]_INST_0 
       (.I0(ram_reg_128_255_10_10_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_10_10_n_1),
        .O(spo[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[11]_INST_0 
       (.I0(ram_reg_128_255_11_11_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_11_11_n_1),
        .O(spo[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[12]_INST_0 
       (.I0(ram_reg_128_255_12_12_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_12_12_n_1),
        .O(spo[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[13]_INST_0 
       (.I0(ram_reg_128_255_13_13_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_13_13_n_1),
        .O(spo[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[14]_INST_0 
       (.I0(ram_reg_128_255_14_14_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_14_14_n_1),
        .O(spo[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[15]_INST_0 
       (.I0(ram_reg_128_255_15_15_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_15_15_n_1),
        .O(spo[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[16]_INST_0 
       (.I0(ram_reg_128_255_16_16_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_16_16_n_1),
        .O(spo[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[17]_INST_0 
       (.I0(ram_reg_128_255_17_17_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_17_17_n_1),
        .O(spo[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[18]_INST_0 
       (.I0(ram_reg_128_255_18_18_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_18_18_n_1),
        .O(spo[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[19]_INST_0 
       (.I0(ram_reg_128_255_19_19_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_19_19_n_1),
        .O(spo[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[1]_INST_0 
       (.I0(ram_reg_128_255_1_1_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_1_1_n_1),
        .O(spo[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[20]_INST_0 
       (.I0(ram_reg_128_255_20_20_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_20_20_n_1),
        .O(spo[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[21]_INST_0 
       (.I0(ram_reg_128_255_21_21_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_21_21_n_1),
        .O(spo[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[22]_INST_0 
       (.I0(ram_reg_128_255_22_22_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_22_22_n_1),
        .O(spo[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[23]_INST_0 
       (.I0(ram_reg_128_255_23_23_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_23_23_n_1),
        .O(spo[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[24]_INST_0 
       (.I0(ram_reg_128_255_24_24_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_24_24_n_1),
        .O(spo[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[25]_INST_0 
       (.I0(ram_reg_128_255_25_25_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_25_25_n_1),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[26]_INST_0 
       (.I0(ram_reg_128_255_26_26_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_26_26_n_1),
        .O(spo[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[27]_INST_0 
       (.I0(ram_reg_128_255_27_27_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_27_27_n_1),
        .O(spo[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[28]_INST_0 
       (.I0(ram_reg_128_255_28_28_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_28_28_n_1),
        .O(spo[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[29]_INST_0 
       (.I0(ram_reg_128_255_29_29_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_29_29_n_1),
        .O(spo[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[2]_INST_0 
       (.I0(ram_reg_128_255_2_2_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_2_2_n_1),
        .O(spo[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[30]_INST_0 
       (.I0(ram_reg_128_255_30_30_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_30_30_n_1),
        .O(spo[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[31]_INST_0 
       (.I0(ram_reg_128_255_31_31_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_31_31_n_1),
        .O(spo[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[3]_INST_0 
       (.I0(ram_reg_128_255_3_3_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_3_3_n_1),
        .O(spo[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[4]_INST_0 
       (.I0(ram_reg_128_255_4_4_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_4_4_n_1),
        .O(spo[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[5]_INST_0 
       (.I0(ram_reg_128_255_5_5_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_5_5_n_1),
        .O(spo[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[6]_INST_0 
       (.I0(ram_reg_128_255_6_6_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_6_6_n_1),
        .O(spo[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[7]_INST_0 
       (.I0(ram_reg_128_255_7_7_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_7_7_n_1),
        .O(spo[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[8]_INST_0 
       (.I0(ram_reg_128_255_8_8_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_8_8_n_1),
        .O(spo[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[9]_INST_0 
       (.I0(ram_reg_128_255_9_9_n_1),
        .I1(a[7]),
        .I2(ram_reg_0_127_9_9_n_1),
        .O(spo[9]));
endmodule
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
