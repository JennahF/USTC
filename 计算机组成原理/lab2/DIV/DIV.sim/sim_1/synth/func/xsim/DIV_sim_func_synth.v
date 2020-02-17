// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Mar 29 19:48:52 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/COD/lab2/DIV/DIV.sim/sim_1/synth/func/xsim/DIV_sim_func_synth.v
// Design      : DIV
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module DIV
   (x,
    y,
    clk,
    rst,
    q,
    r,
    error,
    done);
  input [3:0]x;
  input [3:0]y;
  input clk;
  input rst;
  output [3:0]q;
  output [3:0]r;
  output error;
  output done;

  wire \FSM_sequential_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_2_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire done;
  wire done_OBUF;
  wire done_reg_i_1_n_0;
  wire done_reg_i_2_n_0;
  wire error;
  wire error_OBUF;
  wire error_reg_i_1_n_0;
  wire error_reg_i_2_n_0;
  wire [7:1]in3;
  wire [2:0]next_state;
  wire p_0_in;
  wire [3:0]q;
  wire [3:0]q_OBUF;
  wire [3:0]r;
  wire [3:0]r_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [3:0]x;
  wire [3:0]x_IBUF;
  wire [7:0]x_next;
  wire \x_next_reg[0]_i_1_n_0 ;
  wire \x_next_reg[0]_i_3_n_0 ;
  wire \x_next_reg[1]_i_1_n_0 ;
  wire \x_next_reg[2]_i_1_n_0 ;
  wire \x_next_reg[3]_i_1_n_0 ;
  wire \x_next_reg[4]_i_1_n_0 ;
  wire \x_next_reg[4]_i_2_n_0 ;
  wire \x_next_reg[4]_i_2_n_1 ;
  wire \x_next_reg[4]_i_2_n_2 ;
  wire \x_next_reg[4]_i_2_n_3 ;
  wire \x_next_reg[4]_i_3_n_0 ;
  wire \x_next_reg[4]_i_4_n_0 ;
  wire \x_next_reg[4]_i_5_n_0 ;
  wire \x_next_reg[4]_i_6_n_0 ;
  wire \x_next_reg[4]_i_7_n_0 ;
  wire \x_next_reg[4]_i_8_n_0 ;
  wire \x_next_reg[4]_i_9_n_0 ;
  wire \x_next_reg[5]_i_1_n_0 ;
  wire \x_next_reg[6]_i_1_n_0 ;
  wire \x_next_reg[7]_i_1_n_0 ;
  wire \x_next_reg[7]_i_2_n_0 ;
  wire \x_next_reg[7]_i_3_n_2 ;
  wire \x_next_reg[7]_i_3_n_3 ;
  wire \x_next_reg[7]_i_4_n_0 ;
  wire \x_next_reg[7]_i_5_n_0 ;
  wire \x_next_reg[7]_i_6_n_0 ;
  wire \x_next_reg[7]_i_7_n_0 ;
  wire \x_next_reg[7]_i_8_n_0 ;
  wire \x_temp_reg[0]_C_n_0 ;
  wire \x_temp_reg[0]_LDC_i_1_n_0 ;
  wire \x_temp_reg[0]_LDC_i_2_n_0 ;
  wire \x_temp_reg[0]_LDC_n_0 ;
  wire \x_temp_reg[0]_P_n_0 ;
  wire \x_temp_reg[1]_C_n_0 ;
  wire \x_temp_reg[1]_LDC_i_1_n_0 ;
  wire \x_temp_reg[1]_LDC_i_2_n_0 ;
  wire \x_temp_reg[1]_LDC_n_0 ;
  wire \x_temp_reg[1]_P_n_0 ;
  wire \x_temp_reg[2]_C_n_0 ;
  wire \x_temp_reg[2]_LDC_i_1_n_0 ;
  wire \x_temp_reg[2]_LDC_i_2_n_0 ;
  wire \x_temp_reg[2]_LDC_n_0 ;
  wire \x_temp_reg[2]_P_n_0 ;
  wire \x_temp_reg[3]_C_n_0 ;
  wire \x_temp_reg[3]_LDC_i_1_n_0 ;
  wire \x_temp_reg[3]_LDC_i_2_n_0 ;
  wire \x_temp_reg[3]_LDC_n_0 ;
  wire \x_temp_reg[3]_P_n_0 ;
  wire [3:0]y;
  wire [3:0]y_IBUF;
  wire [7:4]y_next;
  wire [7:4]y_temp;
  wire \y_temp_reg[4]_C_n_0 ;
  wire \y_temp_reg[4]_LDC_i_1_n_0 ;
  wire \y_temp_reg[4]_LDC_i_2_n_0 ;
  wire \y_temp_reg[4]_LDC_n_0 ;
  wire \y_temp_reg[4]_P_n_0 ;
  wire \y_temp_reg[5]_C_n_0 ;
  wire \y_temp_reg[5]_LDC_i_1_n_0 ;
  wire \y_temp_reg[5]_LDC_i_2_n_0 ;
  wire \y_temp_reg[5]_LDC_n_0 ;
  wire \y_temp_reg[5]_P_n_0 ;
  wire \y_temp_reg[6]_C_n_0 ;
  wire \y_temp_reg[6]_LDC_i_1_n_0 ;
  wire \y_temp_reg[6]_LDC_i_2_n_0 ;
  wire \y_temp_reg[6]_LDC_n_0 ;
  wire \y_temp_reg[6]_P_n_0 ;
  wire \y_temp_reg[7]_C_n_0 ;
  wire \y_temp_reg[7]_LDC_i_1_n_0 ;
  wire \y_temp_reg[7]_LDC_i_2_n_0 ;
  wire \y_temp_reg[7]_LDC_n_0 ;
  wire \y_temp_reg[7]_P_n_0 ;
  wire [3:2]\NLW_x_next_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_next_reg[7]_i_3_O_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[2]),
        .Q(current_state[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT3 #(
    .INIT(8'h1D)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(\FSM_sequential_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_next_state_reg[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(\FSM_sequential_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_next_state_reg[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_next_state_reg[2]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_2_n_0 ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_reg
       (.CLR(1'b0),
        .D(done_reg_i_1_n_0),
        .G(done_reg_i_2_n_0),
        .GE(1'b1),
        .Q(done_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    done_reg_i_1
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(done_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    done_reg_i_2
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .O(done_reg_i_2_n_0));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    error_reg
       (.CLR(1'b0),
        .D(error_reg_i_1_n_0),
        .G(error_reg_i_2_n_0),
        .GE(1'b1),
        .Q(error_OBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    error_reg_i_1
       (.I0(y_IBUF[3]),
        .I1(y_IBUF[0]),
        .I2(y_IBUF[1]),
        .I3(y_IBUF[2]),
        .O(error_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    error_reg_i_2
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(error_reg_i_2_n_0));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[0]_inst_i_1 
       (.I0(\x_temp_reg[0]_P_n_0 ),
        .I1(\x_temp_reg[0]_LDC_n_0 ),
        .I2(\x_temp_reg[0]_C_n_0 ),
        .O(q_OBUF[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[1]_inst_i_1 
       (.I0(\x_temp_reg[1]_P_n_0 ),
        .I1(\x_temp_reg[1]_LDC_n_0 ),
        .I2(\x_temp_reg[1]_C_n_0 ),
        .O(q_OBUF[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[2]_inst_i_1 
       (.I0(\x_temp_reg[2]_P_n_0 ),
        .I1(\x_temp_reg[2]_LDC_n_0 ),
        .I2(\x_temp_reg[2]_C_n_0 ),
        .O(q_OBUF[2]));
  OBUF \q_OBUF[3]_inst 
       (.I(q_OBUF[3]),
        .O(q[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[3]_inst_i_1 
       (.I0(\x_temp_reg[3]_P_n_0 ),
        .I1(\x_temp_reg[3]_LDC_n_0 ),
        .I2(\x_temp_reg[3]_C_n_0 ),
        .O(q_OBUF[3]));
  OBUF \r_OBUF[0]_inst 
       (.I(r_OBUF[0]),
        .O(r[0]));
  OBUF \r_OBUF[1]_inst 
       (.I(r_OBUF[1]),
        .O(r[1]));
  OBUF \r_OBUF[2]_inst 
       (.I(r_OBUF[2]),
        .O(r[2]));
  OBUF \r_OBUF[3]_inst 
       (.I(r_OBUF[3]),
        .O(r[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[0] 
       (.CLR(1'b0),
        .D(\x_next_reg[0]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[0]));
  LUT5 #(
    .INIT(32'h0300FE02)) 
    \x_next_reg[0]_i_1 
       (.I0(x_IBUF[0]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(p_0_in),
        .I4(current_state[2]),
        .O(\x_next_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \x_next_reg[0]_i_2 
       (.I0(\x_next_reg[0]_i_3_n_0 ),
        .I1(y_IBUF[2]),
        .I2(r_OBUF[1]),
        .I3(y_IBUF[3]),
        .I4(r_OBUF[2]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hDFD5FFFF0000DFD5)) 
    \x_next_reg[0]_i_3 
       (.I0(y_IBUF[0]),
        .I1(\x_temp_reg[3]_P_n_0 ),
        .I2(\x_temp_reg[3]_LDC_n_0 ),
        .I3(\x_temp_reg[3]_C_n_0 ),
        .I4(y_IBUF[1]),
        .I5(r_OBUF[0]),
        .O(\x_next_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[1] 
       (.CLR(1'b0),
        .D(\x_next_reg[1]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[1]));
  LUT5 #(
    .INIT(32'h0300FE02)) 
    \x_next_reg[1]_i_1 
       (.I0(x_IBUF[1]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(in3[1]),
        .I4(current_state[2]),
        .O(\x_next_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[2] 
       (.CLR(1'b0),
        .D(\x_next_reg[2]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[2]));
  LUT5 #(
    .INIT(32'h0300FE02)) 
    \x_next_reg[2]_i_1 
       (.I0(x_IBUF[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(in3[2]),
        .I4(current_state[2]),
        .O(\x_next_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[3] 
       (.CLR(1'b0),
        .D(\x_next_reg[3]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[3]));
  LUT5 #(
    .INIT(32'h0300FE02)) 
    \x_next_reg[3]_i_1 
       (.I0(x_IBUF[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(in3[3]),
        .I4(current_state[2]),
        .O(\x_next_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[4] 
       (.CLR(1'b0),
        .D(\x_next_reg[4]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[4]));
  LUT4 #(
    .INIT(16'h02A8)) 
    \x_next_reg[4]_i_1 
       (.I0(in3[4]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\x_next_reg[4]_i_1_n_0 ));
  CARRY4 \x_next_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\x_next_reg[4]_i_2_n_0 ,\x_next_reg[4]_i_2_n_1 ,\x_next_reg[4]_i_2_n_2 ,\x_next_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_next_reg[4]_i_3_n_0 ,\x_next_reg[4]_i_4_n_0 ,\x_next_reg[4]_i_5_n_0 ,1'b0}),
        .O(in3[4:1]),
        .S({\x_next_reg[4]_i_6_n_0 ,\x_next_reg[4]_i_7_n_0 ,\x_next_reg[4]_i_8_n_0 ,\x_next_reg[4]_i_9_n_0 }));
  LUT4 #(
    .INIT(16'hA808)) 
    \x_next_reg[4]_i_3 
       (.I0(p_0_in),
        .I1(\x_temp_reg[2]_C_n_0 ),
        .I2(\x_temp_reg[2]_LDC_n_0 ),
        .I3(\x_temp_reg[2]_P_n_0 ),
        .O(\x_next_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \x_next_reg[4]_i_4 
       (.I0(p_0_in),
        .I1(\x_temp_reg[1]_C_n_0 ),
        .I2(\x_temp_reg[1]_LDC_n_0 ),
        .I3(\x_temp_reg[1]_P_n_0 ),
        .O(\x_next_reg[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \x_next_reg[4]_i_5 
       (.I0(p_0_in),
        .O(\x_next_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h777BBB7B88844484)) 
    \x_next_reg[4]_i_6 
       (.I0(q_OBUF[2]),
        .I1(p_0_in),
        .I2(\y_temp_reg[4]_C_n_0 ),
        .I3(\y_temp_reg[4]_LDC_n_0 ),
        .I4(\y_temp_reg[4]_P_n_0 ),
        .I5(q_OBUF[3]),
        .O(\x_next_reg[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FF4700)) 
    \x_next_reg[4]_i_7 
       (.I0(\x_temp_reg[1]_P_n_0 ),
        .I1(\x_temp_reg[1]_LDC_n_0 ),
        .I2(\x_temp_reg[1]_C_n_0 ),
        .I3(p_0_in),
        .I4(q_OBUF[2]),
        .O(\x_next_reg[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_next_reg[4]_i_8 
       (.I0(\x_temp_reg[1]_P_n_0 ),
        .I1(\x_temp_reg[1]_LDC_n_0 ),
        .I2(\x_temp_reg[1]_C_n_0 ),
        .O(\x_next_reg[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_next_reg[4]_i_9 
       (.I0(\x_temp_reg[0]_P_n_0 ),
        .I1(\x_temp_reg[0]_LDC_n_0 ),
        .I2(\x_temp_reg[0]_C_n_0 ),
        .O(\x_next_reg[4]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[5] 
       (.CLR(1'b0),
        .D(\x_next_reg[5]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[5]));
  LUT4 #(
    .INIT(16'h02A8)) 
    \x_next_reg[5]_i_1 
       (.I0(in3[5]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\x_next_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[6] 
       (.CLR(1'b0),
        .D(\x_next_reg[6]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[6]));
  LUT4 #(
    .INIT(16'h02A8)) 
    \x_next_reg[6]_i_1 
       (.I0(in3[6]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\x_next_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_next_reg[7] 
       (.CLR(1'b0),
        .D(\x_next_reg[7]_i_1_n_0 ),
        .G(\x_next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(x_next[7]));
  LUT4 #(
    .INIT(16'h02A8)) 
    \x_next_reg[7]_i_1 
       (.I0(in3[7]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\x_next_reg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_next_reg[7]_i_10 
       (.I0(\y_temp_reg[7]_P_n_0 ),
        .I1(\y_temp_reg[7]_LDC_n_0 ),
        .I2(\y_temp_reg[7]_C_n_0 ),
        .O(y_temp[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_next_reg[7]_i_11 
       (.I0(\y_temp_reg[5]_P_n_0 ),
        .I1(\y_temp_reg[5]_LDC_n_0 ),
        .I2(\y_temp_reg[5]_C_n_0 ),
        .O(y_temp[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_next_reg[7]_i_12 
       (.I0(\y_temp_reg[4]_P_n_0 ),
        .I1(\y_temp_reg[4]_LDC_n_0 ),
        .I2(\y_temp_reg[4]_C_n_0 ),
        .O(y_temp[4]));
  LUT3 #(
    .INIT(8'h1F)) 
    \x_next_reg[7]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(\x_next_reg[7]_i_2_n_0 ));
  CARRY4 \x_next_reg[7]_i_3 
       (.CI(\x_next_reg[4]_i_2_n_0 ),
        .CO({\NLW_x_next_reg[7]_i_3_CO_UNCONNECTED [3:2],\x_next_reg[7]_i_3_n_2 ,\x_next_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\x_next_reg[7]_i_4_n_0 ,\x_next_reg[7]_i_5_n_0 }),
        .O({\NLW_x_next_reg[7]_i_3_O_UNCONNECTED [3],in3[7:5]}),
        .S({1'b0,\x_next_reg[7]_i_6_n_0 ,\x_next_reg[7]_i_7_n_0 ,\x_next_reg[7]_i_8_n_0 }));
  LUT5 #(
    .INIT(32'h47000000)) 
    \x_next_reg[7]_i_4 
       (.I0(\y_temp_reg[5]_P_n_0 ),
        .I1(\y_temp_reg[5]_LDC_n_0 ),
        .I2(\y_temp_reg[5]_C_n_0 ),
        .I3(p_0_in),
        .I4(r_OBUF[0]),
        .O(\x_next_reg[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h47000000)) 
    \x_next_reg[7]_i_5 
       (.I0(\y_temp_reg[4]_P_n_0 ),
        .I1(\y_temp_reg[4]_LDC_n_0 ),
        .I2(\y_temp_reg[4]_C_n_0 ),
        .I3(p_0_in),
        .I4(q_OBUF[3]),
        .O(\x_next_reg[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    \x_next_reg[7]_i_6 
       (.I0(r_OBUF[1]),
        .I1(y_temp[6]),
        .I2(p_0_in),
        .I3(y_temp[7]),
        .I4(r_OBUF[2]),
        .O(\x_next_reg[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    \x_next_reg[7]_i_7 
       (.I0(r_OBUF[0]),
        .I1(y_temp[5]),
        .I2(p_0_in),
        .I3(y_temp[6]),
        .I4(r_OBUF[1]),
        .O(\x_next_reg[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    \x_next_reg[7]_i_8 
       (.I0(q_OBUF[3]),
        .I1(y_temp[4]),
        .I2(p_0_in),
        .I3(y_temp[5]),
        .I4(r_OBUF[0]),
        .O(\x_next_reg[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_next_reg[7]_i_9 
       (.I0(\y_temp_reg[6]_P_n_0 ),
        .I1(\y_temp_reg[6]_LDC_n_0 ),
        .I2(\y_temp_reg[6]_C_n_0 ),
        .O(y_temp[6]));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\x_temp_reg[0]_LDC_i_2_n_0 ),
        .D(x_next[0]),
        .Q(\x_temp_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[0]_LDC 
       (.CLR(\x_temp_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\x_temp_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\x_temp_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \x_temp_reg[0]_LDC_i_1 
       (.I0(x_IBUF[0]),
        .I1(rst_IBUF),
        .O(\x_temp_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_temp_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[0]),
        .O(\x_temp_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \x_temp_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(x_next[0]),
        .PRE(\x_temp_reg[0]_LDC_i_1_n_0 ),
        .Q(\x_temp_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\x_temp_reg[1]_LDC_i_2_n_0 ),
        .D(x_next[1]),
        .Q(\x_temp_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[1]_LDC 
       (.CLR(\x_temp_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\x_temp_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\x_temp_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \x_temp_reg[1]_LDC_i_1 
       (.I0(x_IBUF[1]),
        .I1(rst_IBUF),
        .O(\x_temp_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_temp_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[1]),
        .O(\x_temp_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \x_temp_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(x_next[1]),
        .PRE(\x_temp_reg[1]_LDC_i_1_n_0 ),
        .Q(\x_temp_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\x_temp_reg[2]_LDC_i_2_n_0 ),
        .D(x_next[2]),
        .Q(\x_temp_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[2]_LDC 
       (.CLR(\x_temp_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\x_temp_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\x_temp_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \x_temp_reg[2]_LDC_i_1 
       (.I0(x_IBUF[2]),
        .I1(rst_IBUF),
        .O(\x_temp_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_temp_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[2]),
        .O(\x_temp_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \x_temp_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(x_next[2]),
        .PRE(\x_temp_reg[2]_LDC_i_1_n_0 ),
        .Q(\x_temp_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\x_temp_reg[3]_LDC_i_2_n_0 ),
        .D(x_next[3]),
        .Q(\x_temp_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[3]_LDC 
       (.CLR(\x_temp_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\x_temp_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\x_temp_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \x_temp_reg[3]_LDC_i_1 
       (.I0(x_IBUF[3]),
        .I1(rst_IBUF),
        .O(\x_temp_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_temp_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[3]),
        .O(\x_temp_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \x_temp_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(x_next[3]),
        .PRE(\x_temp_reg[3]_LDC_i_1_n_0 ),
        .Q(\x_temp_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(x_next[4]),
        .Q(r_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(x_next[5]),
        .Q(r_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(x_next[6]),
        .Q(r_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \x_temp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(x_next[7]),
        .Q(r_OBUF[3]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_next_reg[4] 
       (.CLR(1'b0),
        .D(y_IBUF[0]),
        .G(error_reg_i_2_n_0),
        .GE(1'b1),
        .Q(y_next[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_next_reg[5] 
       (.CLR(1'b0),
        .D(y_IBUF[1]),
        .G(error_reg_i_2_n_0),
        .GE(1'b1),
        .Q(y_next[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_next_reg[6] 
       (.CLR(1'b0),
        .D(y_IBUF[2]),
        .G(error_reg_i_2_n_0),
        .GE(1'b1),
        .Q(y_next[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_next_reg[7] 
       (.CLR(1'b0),
        .D(y_IBUF[3]),
        .G(error_reg_i_2_n_0),
        .GE(1'b1),
        .Q(y_next[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\y_temp_reg[4]_LDC_i_2_n_0 ),
        .D(y_next[4]),
        .Q(\y_temp_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[4]_LDC 
       (.CLR(\y_temp_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\y_temp_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\y_temp_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \y_temp_reg[4]_LDC_i_1 
       (.I0(y_IBUF[0]),
        .I1(rst_IBUF),
        .O(\y_temp_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_temp_reg[4]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(y_IBUF[0]),
        .O(\y_temp_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \y_temp_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(y_next[4]),
        .PRE(\y_temp_reg[4]_LDC_i_1_n_0 ),
        .Q(\y_temp_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\y_temp_reg[5]_LDC_i_2_n_0 ),
        .D(y_next[5]),
        .Q(\y_temp_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[5]_LDC 
       (.CLR(\y_temp_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\y_temp_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\y_temp_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \y_temp_reg[5]_LDC_i_1 
       (.I0(y_IBUF[1]),
        .I1(rst_IBUF),
        .O(\y_temp_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_temp_reg[5]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(y_IBUF[1]),
        .O(\y_temp_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \y_temp_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(y_next[5]),
        .PRE(\y_temp_reg[5]_LDC_i_1_n_0 ),
        .Q(\y_temp_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\y_temp_reg[6]_LDC_i_2_n_0 ),
        .D(y_next[6]),
        .Q(\y_temp_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[6]_LDC 
       (.CLR(\y_temp_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\y_temp_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\y_temp_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \y_temp_reg[6]_LDC_i_1 
       (.I0(y_IBUF[2]),
        .I1(rst_IBUF),
        .O(\y_temp_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_temp_reg[6]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(y_IBUF[2]),
        .O(\y_temp_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \y_temp_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(y_next[6]),
        .PRE(\y_temp_reg[6]_LDC_i_1_n_0 ),
        .Q(\y_temp_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[7]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\y_temp_reg[7]_LDC_i_2_n_0 ),
        .D(y_next[7]),
        .Q(\y_temp_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_temp_reg[7]_LDC 
       (.CLR(\y_temp_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\y_temp_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\y_temp_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \y_temp_reg[7]_LDC_i_1 
       (.I0(y_IBUF[3]),
        .I1(rst_IBUF),
        .O(\y_temp_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_temp_reg[7]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(y_IBUF[3]),
        .O(\y_temp_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \y_temp_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(y_next[7]),
        .PRE(\y_temp_reg[7]_LDC_i_1_n_0 ),
        .Q(\y_temp_reg[7]_P_n_0 ));
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
