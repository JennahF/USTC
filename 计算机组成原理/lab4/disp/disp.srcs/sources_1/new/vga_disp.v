`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/27 23:12:46
// Design Name: 
// Module Name: vga_disp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_disp(
    input clk100M,      //100hz时钟
    input rst,          //reset
    input [2:0]key1,    //速度控制
    input key,          //上跳键
    input left,         //向左移动键
    input right,        //向右移动键
    output [3:0] vga_r, //屏幕显示（r）
    output [3:0] vga_g, //屏幕显示（g）
    output [3:0] vga_b, //屏幕显示（b）
    output vga_hs,      //屏幕显示（横向扫描）
    output vga_vs,      //屏幕显示（纵向扫描）
    output temp,        //判断bird是否触碰地面（debug用）
    output jump,        //判断bird是否上跳（debug用）
    output fall,        //判断bird是否下落（debug用）
    output [6:0]seg,    //驱动七段数码管（显示得分）
    output [7:0]an      //数码管位选
    );

    wire pixel_clk;
    wire [7:0] R, G, B;
    wire HS, VS, DE;

    assign vga_r = R[7:4];
    assign vga_g = G[7:4];
    assign vga_b = B[7:4];
    assign vga_hs = HS;
    assign vga_vs = VS;
    
     parameter V_Start = 27 - 1;
     parameter V_End = 627 - 1;
     parameter H_Start = 216 - 1;
     parameter H_End = 1016 - 1;
     wire[11:0] barrier_top_y=V_End-(V_End-V_Start)/4-61;
     wire[11:0] barrier_bottom_y=V_End-(V_End-V_Start)/4-31;
     wire[11:0] barrier_center=H_Start+(H_End-H_Start)/2;
     wire[11:0] r_barrier=15;
     wire[11:0] barrier1_top_y;
     wire[11:0] barrier1_bottom_y;
     wire[11:0] barrier1_center;
     wire[11:0] r_barrier1;
     wire table_bond=V_End-(V_End-V_Start)/4;
     wire [3:0]score;
     wire [3:0]max_score;

    vga_data_gen vga_data_gen(
        .pixel_clk(pixel_clk),  //40MHz时钟
        .rst(rst),      //reset

        .vga_r(R),      //vga信号红色视频信号
        .vga_g(G),      //vga信号绿色视频信号
        .vga_b(B),      //vga信号蓝色视频信号
        .vga_hs(HS),    //行同步信号
        .vga_vs(VS),    //列同步信号
        .vga_de(DE),     //vga信号有效
        
        .key1(key1),    //速度信号
        .key(key),      //上跳信号
        .left(left),    //左移信号
        .right(right),  //右移信号
        .temp(temp),    //判断bird是否触碰地面（debug用）
        .jump(jump),    //判断bird是否上跳（debug用）
        .fall(fall),    //判断bird是否下落（debug用）
        .k(score),      //得分
        .max_score(max_score)   //最高得分
        );
    
    lab8_2_1 L(
            .reset(rst),
            .clk_100M(pixel_clk),
            .score(score),
            .max_score(max_score),
            .seg(seg),
            .an(an)
            );
    
    clk_wiz_0 clk
    (
      .clk_out1(pixel_clk),
      .reset(1'b0),
      .locked(),
      .clk_in1(clk100M)
     );
endmodule
