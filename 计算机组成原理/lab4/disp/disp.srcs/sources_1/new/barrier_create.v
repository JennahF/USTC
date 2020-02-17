`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/13 10:32:07
// Design Name: 
// Module Name: barrier_create
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


module barrier_create(
    input [11:0]barrier_center,
    input [11:0]r_barrier,
    input _table,
    output reg[11:0]top,
    output reg [11:0]bottom,
    output reg [11:0]center,
    output reg [11:0]r
    );
    parameter V_Start = 27 - 1; //´¹Ö±
    parameter V_End = 627 - 1;
    parameter H_Start = 216 - 1;//Ë®Æ½
    parameter H_End = 1016 - 1;
    
    initial begin
        top=$random(V_End-V_Start-80);
        if(top<0)top<=0-top;
        top<=top+V_Start;
        r=$random(15);
        if(r<0) r<=0-r;
        center=$random(barrier_center-(r+r_barrier)-H_Start);
        if(center<0) center<=0-center;
        center<=center+H_Start;
        bottom=_table-1;
     end
endmodule
