`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 19:30:53
// Design Name: 
// Module Name: Counter
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


module Counter(
    input [2:0]d,
    input pe,
    input ce, //计数器使能
    input clk,
    input rst,
    output reg [2:0]q
    );
    reg [2:0]q_next;
    always@(posedge clk or posedge rst)begin
        if(rst) q = 3'b0;
        else q = q_next;
    end
    always@(*)begin
        if(ce) q_next = q + 3'b001;
        else if(pe) q_next = d;
        else q_next = q;
    end
endmodule
