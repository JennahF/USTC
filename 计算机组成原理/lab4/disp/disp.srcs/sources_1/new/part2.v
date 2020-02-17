`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/14 13:44:00
// Design Name: 
// Module Name: part2
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

module part2(
    input [3:0]v,
    output [6:0]seg,
    output z
    );
    assign z=v[3]&v[2]|v[3]&v[1];
       assign seg[0]=~v[3]&~v[2]&~v[1]&v[0]&~z|~v[3]&v[2]&~v[1]&~v[0]&~z|v[3]&~v[2]&v[1]&v[0]&z|v[3]&v[2]&v[1]&~v[0]&z;
       assign seg[1]=~v[3]&v[2]&~v[1]&v[0]&~z|~v[3]&v[2]&v[1]&~v[0]&~z|v[3]&v[2]&v[1]&v[0]&z;
       assign seg[2]=~v[3]&~v[2]&v[1]&~v[0]&~z|v[3]&v[2]&~v[1]&~v[0]&z;
       assign seg[3]=~v[3]&~v[2]&~v[1]&v[0]&~z|~v[3]&v[2]&~v[1]&~v[0]&~z|~v[3]&v[2]&v[1]&v[0]&~z|v[3]&~v[2]&v[1]&v[0]&z|v[3]&v[2]&v[1]&~v[0]&z;
       assign seg[4]=~v[3]&v[2]&~v[1]&~v[0]&~z|~v[3]&~v[1]&v[0]&~z|~v[2]&~v[1]&v[0]&~z|v[3]&v[2]&v[0]&z|v[3]&v[1]&v[0]&z|~v[3]&v[1]&v[0]&~z|v[3]&v[2]&v[1]&~v[0]&z;
       assign seg[5]=~v[3]&~v[2]&~v[1]&v[0]&~z|~v[3]&~v[2]&v[1]&~v[0]&~z|~v[3]&~v[2]&v[1]&v[0]&~z|~v[3]&v[2]&v[1]&v[0]&~z|v[3]&~v[2]&v[1]&v[0]&z|v[3]&v[2]&~v[1]&~v[0]&z|v[3]&v[2]&~v[1]&v[0]&z;
       assign seg[6]=~v[3]&~v[2]&~v[1]&~v[0]&~z|~v[3]&~v[2]&~v[1]&v[0]&~z|~v[3]&v[2]&v[1]&v[0]&~z|v[3]&~v[2]&v[1]&~v[0]&z|v[3]&~v[2]&v[1]&v[0]&z;
endmodule
