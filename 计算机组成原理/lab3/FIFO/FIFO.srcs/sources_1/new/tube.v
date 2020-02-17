`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 21:25:30
// Design Name: 
// Module Name: tube
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


module tube(
    input [3:0]r_seg,
    input [7:0]an,
    input [3:0]head,
    input [3:0]counter,
    output dot,
    output reg [6:0]seg,
    output display
    );
    assign dot = ~(an[4'b0111-head]==0);
    reg [3:0]flag;
    wire [3:0]last;
    assign last = (head + counter - 4'b0001)%4'b1000;
    always@(*)begin
        case(an)
            8'b11111110:flag = 4'd7;
            8'b11111101:flag = 4'd6;
            8'b11111011:flag = 4'd5;
            8'b11110111:flag = 4'd4;
            8'b11101111:flag = 4'd3;
            8'b11011111:flag = 4'd2;
            8'b10111111:flag = 4'd1;
            8'b01111111:flag = 4'd0;
        endcase 
    end
    assign display = (((head<=last)&&((head <= flag) && (flag<=last)))||((head > last)&&(flag>=head || flag <= last)))&&(counter != 4'b0);
    always@(*)begin
        if(display)begin
            case(r_seg)
                4'b0000:seg = 7'b1000000;
                4'b0001:seg = 7'b1111001;
                4'b0010:seg = 7'b0100100;
                4'b0011:seg = 7'b0110000;
                4'b0100:seg = 7'b0011001;
                4'b0101:seg = 7'b0010010;
                4'b0110:seg = 7'b0000010;
                4'b0111:seg = 7'b1111000;
                4'b1000:seg = 7'b0000000;
                4'b1001:seg = 7'b0010000;
                4'b1010:seg = 7'b0001000;
                4'b1011:seg = 7'b0000011;
                4'b1100:seg = 7'b1000110;
                4'b1101:seg = 7'b0100001;
                4'b1110:seg = 7'b0000110;
                4'b1111:seg = 7'b0001110;
            endcase
        end
        else seg = 7'b1111111;
    end
endmodule
