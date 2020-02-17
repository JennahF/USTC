// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Apr 19 19:26:04 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/COD/lab3/lab3_FIFO/lab3_FIFO.sim/sim_1/impl/func/xsim/FIFO_tb_func_impl.v
// Design      : FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "510ffc23" *) 
(* NotValidForBitStream *)
module FIFO
   (in,
    en_in,
    en_out,
    clk,
    rst,
    full,
    empty,
    outer,
    an,
    seg,
    dp);
  input [3:0]in;
  input en_in;
  input en_out;
  input clk;
  input rst;
  output full;
  output empty;
  output [3:0]outer;
  output [7:0]an;
  output [6:0]seg;
  output dp;

  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dp;
  wire dp_OBUF;
  wire empty;
  wire empty_OBUF;
  wire en_in;
  wire en_in_IBUF;
  wire en_out;
  wire en_out_IBUF;
  wire full;
  wire full_OBUF;
  wire [2:0]head;
  wire [3:0]in;
  wire [3:0]in_IBUF;
  wire [3:0]outer;
  wire [3:0]outer_OBUF;
  wire [2:0]ra1;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [7:0]valid;

  LCU_RF LCU_RF_DUT
       (.D(in_IBUF),
        .Q(ra1),
        .clk(clk_IBUF_BUFG),
        .empty_OBUF(empty_OBUF),
        .en_in_IBUF(en_in_IBUF),
        .en_out_IBUF(en_out_IBUF),
        .full_OBUF(full_OBUF),
        .head(head),
        .\outer[3] (outer_OBUF),
        .rst_IBUF(rst_IBUF),
        .seg_OBUF(seg_OBUF),
        .valid(valid));
  SCU SCU_DUT
       (.AR(rst_IBUF),
        .Q(ra1),
        .an_OBUF(an_OBUF),
        .clk(clk_IBUF_BUFG),
        .dp_OBUF(dp_OBUF),
        .head(head),
        .valid(valid));
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
  (* LOPT_BUFG_CLOCK *) 
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  (* OPT_INSERTED *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  IBUF en_in_IBUF_inst
       (.I(en_in),
        .O(en_in_IBUF));
  IBUF en_out_IBUF_inst
       (.I(en_out),
        .O(en_out_IBUF));
  OBUF full_OBUF_inst
       (.I(full_OBUF),
        .O(full));
  IBUF \in_IBUF[0]_inst 
       (.I(in[0]),
        .O(in_IBUF[0]));
  IBUF \in_IBUF[1]_inst 
       (.I(in[1]),
        .O(in_IBUF[1]));
  IBUF \in_IBUF[2]_inst 
       (.I(in[2]),
        .O(in_IBUF[2]));
  IBUF \in_IBUF[3]_inst 
       (.I(in[3]),
        .O(in_IBUF[3]));
  OBUF \outer_OBUF[0]_inst 
       (.I(outer_OBUF[0]),
        .O(outer[0]));
  OBUF \outer_OBUF[1]_inst 
       (.I(outer_OBUF[1]),
        .O(outer[1]));
  OBUF \outer_OBUF[2]_inst 
       (.I(outer_OBUF[2]),
        .O(outer[2]));
  OBUF \outer_OBUF[3]_inst 
       (.I(outer_OBUF[3]),
        .O(outer[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
endmodule

module LCU
   (\state_reg[0]_0 ,
    \state_reg[0]_1 ,
    Q,
    \head_reg[0]_0 ,
    \head_reg[1]_0 ,
    \valid_reg[3]_0 ,
    E,
    \RF_reg[6][0] ,
    \RF_reg[5][0] ,
    \RF_reg[4][0] ,
    \RF_reg[3][0] ,
    \RF_reg[2][0] ,
    \RF_reg[1][0] ,
    \RF_reg[0][0] ,
    \outer[3] ,
    valid,
    \RF_reg[7][3] ,
    clk,
    rst_IBUF,
    en_out_IBUF,
    en_in_IBUF,
    D,
    \in[3] );
  output \state_reg[0]_0 ;
  output \state_reg[0]_1 ;
  output [0:0]Q;
  output \head_reg[0]_0 ;
  output \head_reg[1]_0 ;
  output \valid_reg[3]_0 ;
  output [0:0]E;
  output [0:0]\RF_reg[6][0] ;
  output [0:0]\RF_reg[5][0] ;
  output [0:0]\RF_reg[4][0] ;
  output [0:0]\RF_reg[3][0] ;
  output [0:0]\RF_reg[2][0] ;
  output [0:0]\RF_reg[1][0] ;
  output [0:0]\RF_reg[0][0] ;
  output [3:0]\outer[3] ;
  output [7:0]valid;
  output [3:0]\RF_reg[7][3] ;
  input clk;
  input rst_IBUF;
  input en_out_IBUF;
  input en_in_IBUF;
  input [3:0]D;
  input [3:0]\in[3] ;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]\RF_reg[0][0] ;
  wire [0:0]\RF_reg[1][0] ;
  wire [0:0]\RF_reg[2][0] ;
  wire [0:0]\RF_reg[3][0] ;
  wire [0:0]\RF_reg[4][0] ;
  wire [0:0]\RF_reg[5][0] ;
  wire [0:0]\RF_reg[6][0] ;
  wire [3:0]\RF_reg[7][3] ;
  wire [2:0]b;
  wire clk;
  wire e;
  wire empty_i_1_n_0;
  wire empty_i_2_n_0;
  wire empty_i_3_n_0;
  wire empty_i_4_n_0;
  wire empty_i_5_n_0;
  wire empty_i_6_n_0;
  wire en_in_IBUF;
  wire en_out_IBUF;
  wire full_i_1_n_0;
  wire full_i_2_n_0;
  wire \head[0]_i_1_n_0 ;
  wire \head[1]_i_1_n_0 ;
  wire \head[2]_i_1_n_0 ;
  wire \head_reg[0]_0 ;
  wire \head_reg[1]_0 ;
  wire [3:0]\in[3] ;
  wire [2:0]next_state;
  wire [3:0]\outer[3] ;
  wire \outer[3]_i_1_n_0 ;
  wire [0:0]p_1_in;
  wire rst_IBUF;
  wire [1:0]state;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \tail[0]_i_1_n_0 ;
  wire \tail[1]_i_1_n_0 ;
  wire \tail[2]_i_1_n_0 ;
  wire \tail_reg_n_0_[0] ;
  wire \tail_reg_n_0_[1] ;
  wire \tail_reg_n_0_[2] ;
  wire [7:0]valid;
  wire \valid[0]_i_1_n_0 ;
  wire \valid[0]_i_2_n_0 ;
  wire \valid[1]_i_1_n_0 ;
  wire \valid[1]_i_2_n_0 ;
  wire \valid[2]_i_1_n_0 ;
  wire \valid[2]_i_2_n_0 ;
  wire \valid[3]_i_1_n_0 ;
  wire \valid[3]_i_2_n_0 ;
  wire \valid[4]_i_1_n_0 ;
  wire \valid[4]_i_2_n_0 ;
  wire \valid[5]_i_1_n_0 ;
  wire \valid[5]_i_2_n_0 ;
  wire \valid[6]_i_1_n_0 ;
  wire \valid[6]_i_2_n_0 ;
  wire \valid[7]_i_1_n_0 ;
  wire \valid[7]_i_2_n_0 ;
  wire \valid[7]_i_3_n_0 ;
  wire \valid_reg[3]_0 ;
  wire \wa[0]_i_1_n_0 ;
  wire \wa[1]_i_1_n_0 ;
  wire \wa[2]_i_1_n_0 ;
  wire \wd[3]_i_1_n_0 ;
  wire we_i_1_n_0;

  LUT5 #(
    .INIT(32'h00000100)) 
    \RF[0][3]_i_1 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[0][0] ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \RF[1][3]_i_1 
       (.I0(b[0]),
        .I1(b[2]),
        .I2(b[1]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[1][0] ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \RF[2][3]_i_1 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[2][0] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \RF[3][3]_i_1 
       (.I0(b[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[3][0] ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \RF[4][3]_i_1 
       (.I0(b[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[4][0] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \RF[5][3]_i_1 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[5][0] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \RF[6][3]_i_1 
       (.I0(b[0]),
        .I1(b[2]),
        .I2(b[1]),
        .I3(e),
        .I4(rst_IBUF),
        .O(\RF_reg[6][0] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \RF[7][3]_i_1 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(e),
        .I4(rst_IBUF),
        .O(E));
  LUT6 #(
    .INIT(64'hABBAFFFF03300000)) 
    empty_i_1
       (.I0(empty_i_2_n_0),
        .I1(empty_i_3_n_0),
        .I2(\tail_reg_n_0_[2] ),
        .I3(empty_i_4_n_0),
        .I4(empty_i_5_n_0),
        .I5(\state_reg[0]_0 ),
        .O(empty_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFDFDDDDFFDFFFDF)) 
    empty_i_2
       (.I0(p_1_in),
        .I1(state[0]),
        .I2(en_in_IBUF),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[0]_0 ),
        .I5(en_out_IBUF),
        .O(empty_i_2_n_0));
  LUT5 #(
    .INIT(32'hFDEFEFFD)) 
    empty_i_3
       (.I0(\tail_reg_n_0_[0] ),
        .I1(empty_i_6_n_0),
        .I2(\head_reg[0]_0 ),
        .I3(\head_reg[1]_0 ),
        .I4(\tail_reg_n_0_[1] ),
        .O(empty_i_3_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    empty_i_4
       (.I0(\head_reg[1]_0 ),
        .I1(\head_reg[0]_0 ),
        .I2(\valid_reg[3]_0 ),
        .O(empty_i_4_n_0));
  LUT6 #(
    .INIT(64'h55FF557555FF55FF)) 
    empty_i_5
       (.I0(p_1_in),
        .I1(\state_reg[0]_1 ),
        .I2(en_in_IBUF),
        .I3(state[0]),
        .I4(\state_reg[0]_0 ),
        .I5(en_out_IBUF),
        .O(empty_i_5_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    empty_i_6
       (.I0(state[0]),
        .I1(state[1]),
        .I2(Q),
        .O(empty_i_6_n_0));
  FDPE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(\state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFC04)) 
    full_i_1
       (.I0(full_i_2_n_0),
        .I1(empty_i_2_n_0),
        .I2(empty_i_5_n_0),
        .I3(\state_reg[0]_1 ),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEBF7FDFEFFBF7FD)) 
    full_i_2
       (.I0(\head_reg[0]_0 ),
        .I1(\head_reg[1]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(\tail_reg_n_0_[1] ),
        .I4(\tail_reg_n_0_[0] ),
        .I5(\tail_reg_n_0_[2] ),
        .O(full_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    full_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(full_i_1_n_0),
        .Q(\state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9F40)) 
    \head[0]_i_1 
       (.I0(Q),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\head_reg[0]_0 ),
        .O(\head[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hD3FF2000)) 
    \head[1]_i_1 
       (.I0(\head_reg[0]_0 ),
        .I1(Q),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\head_reg[1]_0 ),
        .O(\head[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF70FFFFF08000000)) 
    \head[2]_i_1 
       (.I0(\head_reg[0]_0 ),
        .I1(\head_reg[1]_0 ),
        .I2(Q),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\valid_reg[3]_0 ),
        .O(\head[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[0]_i_1_n_0 ),
        .Q(\head_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[1]_i_1_n_0 ),
        .Q(\head_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[2]_i_1_n_0 ),
        .Q(\valid_reg[3]_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    \outer[3]_i_1 
       (.I0(Q),
        .I1(state[1]),
        .I2(state[0]),
        .O(\outer[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outer_reg[0] 
       (.C(clk),
        .CE(\outer[3]_i_1_n_0 ),
        .D(D[0]),
        .Q(\outer[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outer_reg[1] 
       (.C(clk),
        .CE(\outer[3]_i_1_n_0 ),
        .D(D[1]),
        .Q(\outer[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outer_reg[2] 
       (.C(clk),
        .CE(\outer[3]_i_1_n_0 ),
        .D(D[2]),
        .Q(\outer[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outer_reg[3] 
       (.C(clk),
        .CE(\outer[3]_i_1_n_0 ),
        .D(D[3]),
        .Q(\outer[3] [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00002F2200000000)) 
    \state[0]_i_1 
       (.I0(en_out_IBUF),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[0]_1 ),
        .I3(en_in_IBUF),
        .I4(state[0]),
        .I5(p_1_in),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hF2F2F0F200000000)) 
    \state[1]_i_1 
       (.I0(en_out_IBUF),
        .I1(\state_reg[0]_0 ),
        .I2(state[0]),
        .I3(en_in_IBUF),
        .I4(\state_reg[0]_1 ),
        .I5(p_1_in),
        .O(next_state[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_2 
       (.I0(state[1]),
        .I1(Q),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'h40)) 
    \state[2]_i_1 
       (.I0(Q),
        .I1(state[1]),
        .I2(state[0]),
        .O(next_state[2]));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(rst_IBUF),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[1]),
        .Q(state[1]));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[2]),
        .PRE(rst_IBUF),
        .Q(Q));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF304)) 
    \tail[0]_i_1 
       (.I0(Q),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\tail_reg_n_0_[0] ),
        .O(\tail[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF1F0020)) 
    \tail[1]_i_1 
       (.I0(\tail_reg_n_0_[0] ),
        .I1(Q),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\tail_reg_n_0_[1] ),
        .O(\tail[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF07FF00000800)) 
    \tail[2]_i_1 
       (.I0(\tail_reg_n_0_[0] ),
        .I1(\tail_reg_n_0_[1] ),
        .I2(Q),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\tail_reg_n_0_[2] ),
        .O(\tail[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tail[0]_i_1_n_0 ),
        .Q(\tail_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tail[1]_i_1_n_0 ),
        .Q(\tail_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tail[2]_i_1_n_0 ),
        .Q(\tail_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF0000000100)) 
    \valid[0]_i_1 
       (.I0(\tail_reg_n_0_[2] ),
        .I1(\tail_reg_n_0_[1] ),
        .I2(\tail_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\valid[0]_i_2_n_0 ),
        .I5(valid[0]),
        .O(\valid[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \valid[0]_i_2 
       (.I0(\head_reg[1]_0 ),
        .I1(\head_reg[0]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(Q),
        .I4(state[1]),
        .I5(state[0]),
        .O(\valid[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000001000)) 
    \valid[1]_i_1 
       (.I0(\tail_reg_n_0_[2] ),
        .I1(\tail_reg_n_0_[1] ),
        .I2(\tail_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\valid[1]_i_2_n_0 ),
        .I5(valid[1]),
        .O(\valid[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB0000FFFFFFFF)) 
    \valid[1]_i_2 
       (.I0(\head_reg[1]_0 ),
        .I1(\head_reg[0]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(Q),
        .I4(state[1]),
        .I5(state[0]),
        .O(\valid[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000000400)) 
    \valid[2]_i_1 
       (.I0(\tail_reg_n_0_[2] ),
        .I1(\tail_reg_n_0_[1] ),
        .I2(\tail_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\valid[2]_i_2_n_0 ),
        .I5(valid[2]),
        .O(\valid[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB0000FFFFFFFF)) 
    \valid[2]_i_2 
       (.I0(\head_reg[0]_0 ),
        .I1(\head_reg[1]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(Q),
        .I4(state[1]),
        .I5(state[0]),
        .O(\valid[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDFF7F00002222)) 
    \valid[3]_i_1 
       (.I0(\valid[3]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\valid[7]_i_3_n_0 ),
        .I3(\valid_reg[3]_0 ),
        .I4(Q),
        .I5(valid[3]),
        .O(\valid[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEE00000000)) 
    \valid[3]_i_2 
       (.I0(state[1]),
        .I1(Q),
        .I2(\tail_reg_n_0_[1] ),
        .I3(\tail_reg_n_0_[0] ),
        .I4(\tail_reg_n_0_[2] ),
        .I5(state[0]),
        .O(\valid[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000000400)) 
    \valid[4]_i_1 
       (.I0(\tail_reg_n_0_[1] ),
        .I1(\tail_reg_n_0_[2] ),
        .I2(\tail_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\valid[4]_i_2_n_0 ),
        .I5(valid[4]),
        .O(\valid[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF0000FFFFFFFF)) 
    \valid[4]_i_2 
       (.I0(\head_reg[1]_0 ),
        .I1(\head_reg[0]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(Q),
        .I4(state[1]),
        .I5(state[0]),
        .O(\valid[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000004000)) 
    \valid[5]_i_1 
       (.I0(\tail_reg_n_0_[1] ),
        .I1(\tail_reg_n_0_[2] ),
        .I2(\tail_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\valid[5]_i_2_n_0 ),
        .I5(valid[5]),
        .O(\valid[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF0000FFFFFFFF)) 
    \valid[5]_i_2 
       (.I0(\head_reg[1]_0 ),
        .I1(\head_reg[0]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(Q),
        .I4(state[1]),
        .I5(state[0]),
        .O(\valid[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000000800)) 
    \valid[6]_i_1 
       (.I0(\tail_reg_n_0_[2] ),
        .I1(\tail_reg_n_0_[1] ),
        .I2(\tail_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\valid[6]_i_2_n_0 ),
        .I5(valid[6]),
        .O(\valid[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF0000FFFFFFFF)) 
    \valid[6]_i_2 
       (.I0(\head_reg[0]_0 ),
        .I1(\head_reg[1]_0 ),
        .I2(\valid_reg[3]_0 ),
        .I3(Q),
        .I4(state[1]),
        .I5(state[0]),
        .O(\valid[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD7FFF00002222)) 
    \valid[7]_i_1 
       (.I0(\valid[7]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\valid[7]_i_3_n_0 ),
        .I3(\valid_reg[3]_0 ),
        .I4(Q),
        .I5(valid[7]),
        .O(\valid[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEE00000000)) 
    \valid[7]_i_2 
       (.I0(state[1]),
        .I1(Q),
        .I2(\tail_reg_n_0_[1] ),
        .I3(\tail_reg_n_0_[0] ),
        .I4(\tail_reg_n_0_[2] ),
        .I5(state[0]),
        .O(\valid[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \valid[7]_i_3 
       (.I0(\head_reg[0]_0 ),
        .I1(\head_reg[1]_0 ),
        .O(\valid[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[0]_i_1_n_0 ),
        .Q(valid[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[1]_i_1_n_0 ),
        .Q(valid[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[2]_i_1_n_0 ),
        .Q(valid[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[3]_i_1_n_0 ),
        .Q(valid[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[4]_i_1_n_0 ),
        .Q(valid[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[5]_i_1_n_0 ),
        .Q(valid[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[6]_i_1_n_0 ),
        .Q(valid[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[7]_i_1_n_0 ),
        .Q(valid[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \wa[0]_i_1 
       (.I0(\tail_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(Q),
        .I4(b[0]),
        .O(\wa[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \wa[1]_i_1 
       (.I0(\tail_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(Q),
        .I4(b[1]),
        .O(\wa[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \wa[2]_i_1 
       (.I0(\tail_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(Q),
        .I4(b[2]),
        .O(\wa[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\wa[0]_i_1_n_0 ),
        .Q(b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\wa[1]_i_1_n_0 ),
        .Q(b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\wa[2]_i_1_n_0 ),
        .Q(b[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \wd[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(Q),
        .O(\wd[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[0] 
       (.C(clk),
        .CE(\wd[3]_i_1_n_0 ),
        .D(\in[3] [0]),
        .Q(\RF_reg[7][3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[1] 
       (.C(clk),
        .CE(\wd[3]_i_1_n_0 ),
        .D(\in[3] [1]),
        .Q(\RF_reg[7][3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[2] 
       (.C(clk),
        .CE(\wd[3]_i_1_n_0 ),
        .D(\in[3] [2]),
        .Q(\RF_reg[7][3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[3] 
       (.C(clk),
        .CE(\wd[3]_i_1_n_0 ),
        .D(\in[3] [3]),
        .Q(\RF_reg[7][3] [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h08FFF7000000F700)) 
    we_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(Q),
        .I3(empty_i_5_n_0),
        .I4(empty_i_2_n_0),
        .I5(e),
        .O(we_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    we_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(we_i_1_n_0),
        .Q(e));
endmodule

module LCU_RF
   (empty_OBUF,
    full_OBUF,
    head,
    seg_OBUF,
    \outer[3] ,
    valid,
    clk,
    rst_IBUF,
    en_out_IBUF,
    en_in_IBUF,
    Q,
    D);
  output empty_OBUF;
  output full_OBUF;
  output [2:0]head;
  output [6:0]seg_OBUF;
  output [3:0]\outer[3] ;
  output [7:0]valid;
  input clk;
  input rst_IBUF;
  input en_out_IBUF;
  input en_in_IBUF;
  input [2:0]Q;
  input [3:0]D;

  wire [3:0]D;
  wire DUT_LCU_n_10;
  wire DUT_LCU_n_11;
  wire DUT_LCU_n_12;
  wire DUT_LCU_n_13;
  wire DUT_LCU_n_6;
  wire DUT_LCU_n_7;
  wire DUT_LCU_n_8;
  wire DUT_LCU_n_9;
  wire [2:0]Q;
  wire RF_DUT_n_0;
  wire RF_DUT_n_1;
  wire RF_DUT_n_2;
  wire RF_DUT_n_3;
  wire clk;
  wire empty_OBUF;
  wire en_in_IBUF;
  wire en_out_IBUF;
  wire full_OBUF;
  wire [2:0]head;
  wire [3:0]\outer[3] ;
  wire rst_IBUF;
  wire [6:0]seg_OBUF;
  wire [2:2]state;
  wire [7:0]valid;
  wire [3:0]wd;

  LCU DUT_LCU
       (.D({RF_DUT_n_0,RF_DUT_n_1,RF_DUT_n_2,RF_DUT_n_3}),
        .E(DUT_LCU_n_6),
        .Q(state),
        .\RF_reg[0][0] (DUT_LCU_n_13),
        .\RF_reg[1][0] (DUT_LCU_n_12),
        .\RF_reg[2][0] (DUT_LCU_n_11),
        .\RF_reg[3][0] (DUT_LCU_n_10),
        .\RF_reg[4][0] (DUT_LCU_n_9),
        .\RF_reg[5][0] (DUT_LCU_n_8),
        .\RF_reg[6][0] (DUT_LCU_n_7),
        .\RF_reg[7][3] (wd),
        .clk(clk),
        .en_in_IBUF(en_in_IBUF),
        .en_out_IBUF(en_out_IBUF),
        .\head_reg[0]_0 (head[0]),
        .\head_reg[1]_0 (head[1]),
        .\in[3] (D),
        .\outer[3] (\outer[3] ),
        .rst_IBUF(rst_IBUF),
        .\state_reg[0]_0 (empty_OBUF),
        .\state_reg[0]_1 (full_OBUF),
        .valid(valid),
        .\valid_reg[3]_0 (head[2]));
  RF RF_DUT
       (.D({RF_DUT_n_0,RF_DUT_n_1,RF_DUT_n_2,RF_DUT_n_3}),
        .E(DUT_LCU_n_6),
        .Q(state),
        .clk(clk),
        .\cnt_reg[2] (Q),
        .\head_reg[0] (head[0]),
        .\head_reg[1] (head[1]),
        .\head_reg[2] (head[2]),
        .rst_IBUF(rst_IBUF),
        .seg_OBUF(seg_OBUF),
        .\wa_reg[0] (DUT_LCU_n_7),
        .\wa_reg[0]_0 (DUT_LCU_n_12),
        .\wa_reg[1] (DUT_LCU_n_8),
        .\wa_reg[1]_0 (DUT_LCU_n_11),
        .\wa_reg[1]_1 (DUT_LCU_n_13),
        .\wa_reg[2] (DUT_LCU_n_9),
        .\wa_reg[2]_0 (DUT_LCU_n_10),
        .\wd_reg[3] (wd));
endmodule

module RF
   (D,
    seg_OBUF,
    Q,
    \head_reg[2] ,
    \head_reg[1] ,
    \head_reg[0] ,
    \cnt_reg[2] ,
    E,
    \wd_reg[3] ,
    clk,
    rst_IBUF,
    \wa_reg[0] ,
    \wa_reg[1] ,
    \wa_reg[2] ,
    \wa_reg[2]_0 ,
    \wa_reg[1]_0 ,
    \wa_reg[0]_0 ,
    \wa_reg[1]_1 );
  output [3:0]D;
  output [6:0]seg_OBUF;
  input [0:0]Q;
  input \head_reg[2] ;
  input \head_reg[1] ;
  input \head_reg[0] ;
  input [2:0]\cnt_reg[2] ;
  input [0:0]E;
  input [3:0]\wd_reg[3] ;
  input clk;
  input rst_IBUF;
  input [0:0]\wa_reg[0] ;
  input [0:0]\wa_reg[1] ;
  input [0:0]\wa_reg[2] ;
  input [0:0]\wa_reg[2]_0 ;
  input [0:0]\wa_reg[1]_0 ;
  input [0:0]\wa_reg[0]_0 ;
  input [0:0]\wa_reg[1]_1 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]\RF_reg[0] ;
  wire [3:0]\RF_reg[1] ;
  wire [3:0]\RF_reg[2] ;
  wire [3:0]\RF_reg[3] ;
  wire [3:0]\RF_reg[4] ;
  wire [3:0]\RF_reg[5] ;
  wire [3:0]\RF_reg[6] ;
  wire [3:0]\RF_reg[7] ;
  wire clk;
  wire [2:0]\cnt_reg[2] ;
  wire \head_reg[0] ;
  wire \head_reg[1] ;
  wire \head_reg[2] ;
  wire \outer[0]_i_2_n_0 ;
  wire \outer[0]_i_3_n_0 ;
  wire \outer[1]_i_2_n_0 ;
  wire \outer[1]_i_3_n_0 ;
  wire \outer[2]_i_2_n_0 ;
  wire \outer[2]_i_3_n_0 ;
  wire \outer[3]_i_3_n_0 ;
  wire \outer[3]_i_4_n_0 ;
  wire rst_IBUF;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_12_n_0 ;
  wire \seg_OBUF[6]_inst_i_13_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire [0:0]\wa_reg[0] ;
  wire [0:0]\wa_reg[0]_0 ;
  wire [0:0]\wa_reg[1] ;
  wire [0:0]\wa_reg[1]_0 ;
  wire [0:0]\wa_reg[1]_1 ;
  wire [0:0]\wa_reg[2] ;
  wire [0:0]\wa_reg[2]_0 ;
  wire [3:0]\wd_reg[3] ;

  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][0] 
       (.C(clk),
        .CE(\wa_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][1] 
       (.C(clk),
        .CE(\wa_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][2] 
       (.C(clk),
        .CE(\wa_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[0][3] 
       (.C(clk),
        .CE(\wa_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][0] 
       (.C(clk),
        .CE(\wa_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][1] 
       (.C(clk),
        .CE(\wa_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][2] 
       (.C(clk),
        .CE(\wa_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[1][3] 
       (.C(clk),
        .CE(\wa_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][0] 
       (.C(clk),
        .CE(\wa_reg[1]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][1] 
       (.C(clk),
        .CE(\wa_reg[1]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][2] 
       (.C(clk),
        .CE(\wa_reg[1]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[2][3] 
       (.C(clk),
        .CE(\wa_reg[1]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][0] 
       (.C(clk),
        .CE(\wa_reg[2]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][1] 
       (.C(clk),
        .CE(\wa_reg[2]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][2] 
       (.C(clk),
        .CE(\wa_reg[2]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[3][3] 
       (.C(clk),
        .CE(\wa_reg[2]_0 ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][0] 
       (.C(clk),
        .CE(\wa_reg[2] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][1] 
       (.C(clk),
        .CE(\wa_reg[2] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][2] 
       (.C(clk),
        .CE(\wa_reg[2] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[4][3] 
       (.C(clk),
        .CE(\wa_reg[2] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][0] 
       (.C(clk),
        .CE(\wa_reg[1] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][1] 
       (.C(clk),
        .CE(\wa_reg[1] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][2] 
       (.C(clk),
        .CE(\wa_reg[1] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[5][3] 
       (.C(clk),
        .CE(\wa_reg[1] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[6][0] 
       (.C(clk),
        .CE(\wa_reg[0] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[6][1] 
       (.C(clk),
        .CE(\wa_reg[0] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[6][2] 
       (.C(clk),
        .CE(\wa_reg[0] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[6][3] 
       (.C(clk),
        .CE(\wa_reg[0] ),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[7][0] 
       (.C(clk),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [0]),
        .Q(\RF_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[7][1] 
       (.C(clk),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [1]),
        .Q(\RF_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[7][2] 
       (.C(clk),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [2]),
        .Q(\RF_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RF_reg[7][3] 
       (.C(clk),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\wd_reg[3] [3]),
        .Q(\RF_reg[7] [3]));
  LUT4 #(
    .INIT(16'h2320)) 
    \outer[0]_i_1 
       (.I0(\outer[0]_i_2_n_0 ),
        .I1(Q),
        .I2(\head_reg[2] ),
        .I3(\outer[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[0]_i_2 
       (.I0(\RF_reg[5] [0]),
        .I1(\RF_reg[7] [0]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[4] [0]),
        .I5(\RF_reg[6] [0]),
        .O(\outer[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[0]_i_3 
       (.I0(\RF_reg[1] [0]),
        .I1(\RF_reg[3] [0]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[0] [0]),
        .I5(\RF_reg[2] [0]),
        .O(\outer[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \outer[1]_i_1 
       (.I0(\outer[1]_i_2_n_0 ),
        .I1(Q),
        .I2(\head_reg[2] ),
        .I3(\outer[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[1]_i_2 
       (.I0(\RF_reg[5] [1]),
        .I1(\RF_reg[7] [1]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[4] [1]),
        .I5(\RF_reg[6] [1]),
        .O(\outer[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[1]_i_3 
       (.I0(\RF_reg[1] [1]),
        .I1(\RF_reg[3] [1]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[0] [1]),
        .I5(\RF_reg[2] [1]),
        .O(\outer[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \outer[2]_i_1 
       (.I0(\outer[2]_i_2_n_0 ),
        .I1(Q),
        .I2(\head_reg[2] ),
        .I3(\outer[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[2]_i_2 
       (.I0(\RF_reg[5] [2]),
        .I1(\RF_reg[7] [2]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[4] [2]),
        .I5(\RF_reg[6] [2]),
        .O(\outer[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[2]_i_3 
       (.I0(\RF_reg[1] [2]),
        .I1(\RF_reg[3] [2]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[0] [2]),
        .I5(\RF_reg[2] [2]),
        .O(\outer[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \outer[3]_i_2 
       (.I0(\outer[3]_i_3_n_0 ),
        .I1(Q),
        .I2(\head_reg[2] ),
        .I3(\outer[3]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[3]_i_3 
       (.I0(\RF_reg[5] [3]),
        .I1(\RF_reg[7] [3]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[4] [3]),
        .I5(\RF_reg[6] [3]),
        .O(\outer[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \outer[3]_i_4 
       (.I0(\RF_reg[1] [3]),
        .I1(\RF_reg[3] [3]),
        .I2(\head_reg[1] ),
        .I3(\head_reg[0] ),
        .I4(\RF_reg[0] [3]),
        .I5(\RF_reg[2] [3]),
        .O(\outer[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0009)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'h0090)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h0008)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'h1041)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'h015D)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'h0071)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h1003)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(\RF_reg[1] [1]),
        .I1(\RF_reg[3] [1]),
        .I2(\RF_reg[0] [1]),
        .I3(\cnt_reg[2] [1]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[2] [1]),
        .O(\seg_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(\RF_reg[5] [1]),
        .I1(\RF_reg[7] [1]),
        .I2(\RF_reg[4] [1]),
        .I3(\cnt_reg[2] [1]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[6] [1]),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(\RF_reg[1] [2]),
        .I1(\RF_reg[3] [2]),
        .I2(\RF_reg[0] [2]),
        .I3(\cnt_reg[2] [1]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[2] [2]),
        .O(\seg_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(\RF_reg[5] [2]),
        .I1(\RF_reg[7] [2]),
        .I2(\RF_reg[4] [2]),
        .I3(\cnt_reg[2] [1]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[6] [2]),
        .O(\seg_OBUF[6]_inst_i_13_n_0 ));
  MUXF7 \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ),
        .S(\cnt_reg[2] [2]));
  MUXF7 \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ),
        .S(\cnt_reg[2] [2]));
  MUXF7 \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_11_n_0 ),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ),
        .S(\cnt_reg[2] [2]));
  MUXF7 \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_12_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_13_n_0 ),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ),
        .S(\cnt_reg[2] [2]));
  LUT6 #(
    .INIT(64'h00CC1D1D33FF1D1D)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(\RF_reg[0] [0]),
        .I1(\cnt_reg[2] [1]),
        .I2(\RF_reg[2] [0]),
        .I3(\RF_reg[3] [0]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[1] [0]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00334747CCFF4747)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(\RF_reg[6] [0]),
        .I1(\cnt_reg[2] [1]),
        .I2(\RF_reg[4] [0]),
        .I3(\RF_reg[5] [0]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[7] [0]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(\RF_reg[1] [3]),
        .I1(\RF_reg[3] [3]),
        .I2(\RF_reg[0] [3]),
        .I3(\cnt_reg[2] [1]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[2] [3]),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(\RF_reg[5] [3]),
        .I1(\RF_reg[7] [3]),
        .I2(\RF_reg[4] [3]),
        .I3(\cnt_reg[2] [1]),
        .I4(\cnt_reg[2] [0]),
        .I5(\RF_reg[6] [3]),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
endmodule

module SCU
   (dp_OBUF,
    Q,
    an_OBUF,
    AR,
    clk,
    head,
    valid);
  output dp_OBUF;
  output [2:0]Q;
  output [7:0]an_OBUF;
  input [0:0]AR;
  input clk;
  input [2:0]head;
  input [7:0]valid;

  wire [0:0]AR;
  wire [2:0]Q;
  wire [7:0]an_OBUF;
  wire clk;
  wire divider_DUT_n_1;
  wire dp_OBUF;
  wire [2:0]head;
  wire sclk;
  wire [7:0]valid;

  counter_3BIT counter_DUT
       (.CLK(sclk),
        .Q(Q),
        .an_OBUF(an_OBUF),
        .bbstub_locked(divider_DUT_n_1),
        .dp_OBUF(dp_OBUF),
        .head(head),
        .valid(valid));
  divider divider_DUT
       (.AR(AR),
        .CLK(sclk),
        .clk(clk),
        .sclk_reg_0(divider_DUT_n_1));
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

  (* IBUF_LOW_PWR *) wire clk_in1;
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
    .COMPENSATION("BUF_IN"),
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
        .CLKIN1(clk_in1),
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

module counter_3BIT
   (dp_OBUF,
    Q,
    an_OBUF,
    head,
    valid,
    CLK,
    bbstub_locked);
  output dp_OBUF;
  output [2:0]Q;
  output [7:0]an_OBUF;
  input [2:0]head;
  input [7:0]valid;
  input CLK;
  input bbstub_locked;

  wire CLK;
  wire [2:0]Q;
  wire [7:0]an_OBUF;
  wire bbstub_locked;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire dp_OBUF;
  wire [2:0]head;
  wire [7:0]valid;

  LUT4 #(
    .INIT(16'hFFFB)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[2]),
        .I1(valid[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(an_OBUF[0]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(valid[1]),
        .O(an_OBUF[1]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(valid[2]),
        .O(an_OBUF[2]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[2]),
        .I1(valid[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(an_OBUF[3]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \an_OBUF[4]_inst_i_1 
       (.I0(Q[2]),
        .I1(valid[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(an_OBUF[4]));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \an_OBUF[5]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(valid[5]),
        .O(an_OBUF[5]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \an_OBUF[6]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(valid[6]),
        .O(an_OBUF[6]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \an_OBUF[7]_inst_i_1 
       (.I0(Q[2]),
        .I1(valid[7]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(an_OBUF[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(Q[0]),
        .O(\cnt[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \cnt[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\cnt[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[0]_i_1__1_n_0 ),
        .PRE(bbstub_locked),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .PRE(bbstub_locked),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .PRE(bbstub_locked),
        .Q(Q[2]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    dp_OBUF_inst_i_1
       (.I0(Q[2]),
        .I1(head[2]),
        .I2(Q[1]),
        .I3(head[1]),
        .I4(head[0]),
        .I5(Q[0]),
        .O(dp_OBUF));
endmodule

module divider
   (CLK,
    sclk_reg_0,
    AR,
    clk);
  output CLK;
  output sclk_reg_0;
  input [0:0]AR;
  input clk;

  wire [0:0]AR;
  wire CLK;
  wire clk;
  wire clk_5m;
  wire [11:0]cnt1;
  wire cnt10_carry__0_i_1_n_0;
  wire cnt10_carry__0_i_2_n_0;
  wire cnt10_carry__0_i_3_n_0;
  wire cnt10_carry__0_i_4_n_0;
  wire cnt10_carry__0_n_0;
  wire cnt10_carry__1_i_1_n_0;
  wire cnt10_carry__1_i_2_n_0;
  wire cnt10_carry__1_i_3_n_0;
  wire cnt10_carry_i_1_n_0;
  wire cnt10_carry_i_2_n_0;
  wire cnt10_carry_i_3_n_0;
  wire cnt10_carry_i_4_n_0;
  wire cnt10_carry_n_0;
  wire \cnt1[0]_i_2_n_0 ;
  wire \cnt1[11]_i_3_n_0 ;
  wire \cnt1[11]_i_4_n_0 ;
  wire [11:0]cnt1_0;
  wire [11:1]data0;
  wire rst_n;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire sclk_reg_0;
  wire [2:0]NLW_cnt10_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cnt10_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cnt10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_cnt10_carry__1_O_UNCONNECTED;

  CARRY4 cnt10_carry
       (.CI(1'b0),
        .CO({cnt10_carry_n_0,NLW_cnt10_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(cnt1[0]),
        .DI(cnt1[4:1]),
        .O(data0[4:1]),
        .S({cnt10_carry_i_1_n_0,cnt10_carry_i_2_n_0,cnt10_carry_i_3_n_0,cnt10_carry_i_4_n_0}));
  CARRY4 cnt10_carry__0
       (.CI(cnt10_carry_n_0),
        .CO({cnt10_carry__0_n_0,NLW_cnt10_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(cnt1[8:5]),
        .O(data0[8:5]),
        .S({cnt10_carry__0_i_1_n_0,cnt10_carry__0_i_2_n_0,cnt10_carry__0_i_3_n_0,cnt10_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__0_i_1
       (.I0(cnt1[8]),
        .O(cnt10_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__0_i_2
       (.I0(cnt1[7]),
        .O(cnt10_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__0_i_3
       (.I0(cnt1[6]),
        .O(cnt10_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__0_i_4
       (.I0(cnt1[5]),
        .O(cnt10_carry__0_i_4_n_0));
  CARRY4 cnt10_carry__1
       (.CI(cnt10_carry__0_n_0),
        .CO(NLW_cnt10_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt1[10:9]}),
        .O({NLW_cnt10_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,cnt10_carry__1_i_1_n_0,cnt10_carry__1_i_2_n_0,cnt10_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__1_i_1
       (.I0(cnt1[11]),
        .O(cnt10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__1_i_2
       (.I0(cnt1[10]),
        .O(cnt10_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry__1_i_3
       (.I0(cnt1[9]),
        .O(cnt10_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry_i_1
       (.I0(cnt1[4]),
        .O(cnt10_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry_i_2
       (.I0(cnt1[3]),
        .O(cnt10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry_i_3
       (.I0(cnt1[2]),
        .O(cnt10_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt10_carry_i_4
       (.I0(cnt1[1]),
        .O(cnt10_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt1[0]_i_1 
       (.I0(\cnt1[0]_i_2_n_0 ),
        .I1(cnt1[0]),
        .O(cnt1_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt1[0]_i_2 
       (.I0(cnt1[6]),
        .I1(cnt1[7]),
        .I2(cnt1[11]),
        .I3(cnt1[8]),
        .I4(cnt1[2]),
        .I5(\cnt1[11]_i_3_n_0 ),
        .O(\cnt1[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt1[10]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[10]),
        .O(cnt1_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \cnt1[11]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[11]),
        .O(cnt1_0[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt1[11]_i_2 
       (.I0(rst_n),
        .O(sclk_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt1[11]_i_3 
       (.I0(cnt1[9]),
        .I1(cnt1[10]),
        .I2(cnt1[4]),
        .I3(cnt1[5]),
        .I4(cnt1[3]),
        .I5(cnt1[1]),
        .O(\cnt1[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt1[11]_i_4 
       (.I0(cnt1[2]),
        .I1(cnt1[8]),
        .I2(cnt1[11]),
        .I3(cnt1[7]),
        .I4(cnt1[6]),
        .O(\cnt1[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt1[1]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[1]),
        .O(cnt1_0[1]));
  LUT4 #(
    .INIT(16'hFF01)) 
    \cnt1[2]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[2]),
        .O(cnt1_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt1[3]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[3]),
        .O(cnt1_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt1[4]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[4]),
        .O(cnt1_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt1[5]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[5]),
        .O(cnt1_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \cnt1[6]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[6]),
        .O(cnt1_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \cnt1[7]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[7]),
        .O(cnt1_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \cnt1[8]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[8]),
        .O(cnt1_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt1[9]_i_1 
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(\cnt1[11]_i_4_n_0 ),
        .I2(cnt1[0]),
        .I3(data0[9]),
        .O(cnt1_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[0] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[0]),
        .Q(cnt1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[10] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[10]),
        .Q(cnt1[10]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt1_reg[11] 
       (.C(clk_5m),
        .CE(1'b1),
        .D(cnt1_0[11]),
        .PRE(sclk_reg_0),
        .Q(cnt1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[1] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[1]),
        .Q(cnt1[1]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt1_reg[2] 
       (.C(clk_5m),
        .CE(1'b1),
        .D(cnt1_0[2]),
        .PRE(sclk_reg_0),
        .Q(cnt1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[3] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[3]),
        .Q(cnt1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[4] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[4]),
        .Q(cnt1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[5] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[5]),
        .Q(cnt1[5]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt1_reg[6] 
       (.C(clk_5m),
        .CE(1'b1),
        .D(cnt1_0[6]),
        .PRE(sclk_reg_0),
        .Q(cnt1[6]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt1_reg[7] 
       (.C(clk_5m),
        .CE(1'b1),
        .D(cnt1_0[7]),
        .PRE(sclk_reg_0),
        .Q(cnt1[7]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt1_reg[8] 
       (.C(clk_5m),
        .CE(1'b1),
        .D(cnt1_0[8]),
        .PRE(sclk_reg_0),
        .Q(cnt1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1_reg[9] 
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(cnt1_0[9]),
        .Q(cnt1[9]));
  clk_wiz_0 d1
       (.clk_in1(clk),
        .clk_out1(clk_5m),
        .locked(rst_n),
        .reset(AR));
  LUT3 #(
    .INIT(8'hB4)) 
    sclk_i_1
       (.I0(\cnt1[11]_i_3_n_0 ),
        .I1(sclk_i_2_n_0),
        .I2(CLK),
        .O(sclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    sclk_i_2
       (.I0(cnt1[6]),
        .I1(cnt1[7]),
        .I2(cnt1[2]),
        .I3(cnt1[0]),
        .I4(cnt1[11]),
        .I5(cnt1[8]),
        .O(sclk_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(clk_5m),
        .CE(1'b1),
        .CLR(sclk_reg_0),
        .D(sclk_i_1_n_0),
        .Q(CLK));
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
