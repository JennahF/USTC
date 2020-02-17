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
    input clk100M,      //100hzʱ��
    input rst,          //reset
    input [2:0]key1,    //�ٶȿ���
    input key,          //������
    input left,         //�����ƶ���
    input right,        //�����ƶ���
    output [3:0] vga_r, //��Ļ��ʾ��r��
    output [3:0] vga_g, //��Ļ��ʾ��g��
    output [3:0] vga_b, //��Ļ��ʾ��b��
    output vga_hs,      //��Ļ��ʾ������ɨ�裩
    output vga_vs,      //��Ļ��ʾ������ɨ�裩
    output temp,        //�ж�bird�Ƿ������棨debug�ã�
    output jump,        //�ж�bird�Ƿ�������debug�ã�
    output fall,        //�ж�bird�Ƿ����䣨debug�ã�
    output [6:0]seg,    //�����߶�����ܣ���ʾ�÷֣�
    output [7:0]an      //�����λѡ
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
        .pixel_clk(pixel_clk),  //40MHzʱ��
        .rst(rst),      //reset

        .vga_r(R),      //vga�źź�ɫ��Ƶ�ź�
        .vga_g(G),      //vga�ź���ɫ��Ƶ�ź�
        .vga_b(B),      //vga�ź���ɫ��Ƶ�ź�
        .vga_hs(HS),    //��ͬ���ź�
        .vga_vs(VS),    //��ͬ���ź�
        .vga_de(DE),     //vga�ź���Ч
        
        .key1(key1),    //�ٶ��ź�
        .key(key),      //�����ź�
        .left(left),    //�����ź�
        .right(right),  //�����ź�
        .temp(temp),    //�ж�bird�Ƿ������棨debug�ã�
        .jump(jump),    //�ж�bird�Ƿ�������debug�ã�
        .fall(fall),    //�ж�bird�Ƿ����䣨debug�ã�
        .k(score),      //�÷�
        .max_score(max_score)   //��ߵ÷�
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
