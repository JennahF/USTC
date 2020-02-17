`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/01 12:18:40
// Design Name: 
// Module Name: seg
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


module seg(
    input clk,
    input rst,
    input [31:0]mem_data,
    input [31:0]reg_data,
    input mem,
    
    output reg [7:0]an,
    output reg [6:0]seg
    );
    
    reg [2:0] count;	//即将显示的位
    always@(posedge clk)
    begin
        count <= count + 1'b1;
    end

     always@(count)
    begin
    	case(count)
    	0:begin
    		an = 8'b1111_1110;
    	end
    	1:begin
    		an = 8'b1111_1101;
    	end
    	2:begin
    		an = 8'b1111_1011;
    	end
    	3:begin
    		an = 8'b1111_0111;
    	end
    	4:begin
    		an = 8'b1110_1111;
    	end
    	5:begin
    		an = 8'b1101_1111;
    	end
    	6:begin
    		an = 8'b1011_1111;
    	end
    	7:begin
    		an = 8'b0111_1111;
    	end
    	default: an = 8'b0000_0000;
    	endcase
    end
    
    wire [31:0]display_data = mem ? mem_data : reg_data;
    reg [3:0]seg_temp;
    
    always@(*)begin
        case(an)
            8'b11111110:seg_temp=display_data[3:0];
            8'b11111101:seg_temp=display_data[7:4];
            8'b11111011:seg_temp=display_data[11:8];
            8'b11110111:seg_temp=display_data[15:12];
            8'b11101111:seg_temp=display_data[19:16];
            8'b11011111:seg_temp=display_data[23:20];
            8'b10111111:seg_temp=display_data[27:24];
            8'b01111111:seg_temp=display_data[31:28];
            default seg_temp = 4'd0;
       endcase
    end
    
    always@(*)begin
        case(seg_temp)
            4'd0:seg = 7'b1000000;
            4'd1:seg = 7'b1111001;
            4'd2:seg = 7'b0100100;
            4'd3:seg = 7'b0110000;
            4'd4:seg = 7'b0011001;
            4'd5:seg = 7'b0010010;
            4'd6:seg = 7'b0000010;
            4'd7:seg = 7'b1111000;
            4'd8:seg = 7'b0000000;
            4'd9:seg = 7'b0010000;
            4'd10:seg = 7'b0001000;
            4'd11:seg = 7'b0000011;
            4'd12:seg = 7'b1000110;
            4'd13:seg = 7'b0100001;
            4'd14:seg = 7'b0000110;
            4'd15:seg = 7'b0001110;
            default:seg = 7'b0000000;
        endcase
    end
endmodule