`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/31 11:40:39
// Design Name: 
// Module Name: word_dictionary
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


module word_dictionary(
    input [4:0]data,
    output reg [11:0]display_figure
    );
    
    parameter SPACE = 6'b11_1110;
    parameter A = 6'b00_1010;
    parameter D = 6'b00_1101;
    parameter DOLLAR = 6'b11_1111;
    parameter T = 6'b01_1101;
    parameter ZERO = 6'b00_0000;
    parameter S = 6'b01_1100;
    parameter ONE = 6'b00_0001;
    parameter TWO = 6'b00_0010;
    parameter L = 6'b01_0101;
    parameter W = 6'b10_0000;
    parameter THREE = 6'b00_0011;
    parameter FOUR = 6'b00_0100;
    parameter FIVE = 6'b00_0101;
    parameter SIX = 6'b00_0110;
    parameter SEVEN = 6'b00_0111;
    parameter EIGHT =  6'b00_1000;
    parameter NINE = 6'b00_1001;
    
    always@(*)begin
        case(data)
            5'd0:display_figure={ZERO,SPACE};
            5'd1:display_figure={ONE,SPACE};
            5'd2:display_figure={TWO,SPACE};
            5'd3:display_figure={THREE,SPACE};
            5'd4:display_figure={FOUR,SPACE};
            5'd5:display_figure={FIVE,SPACE};
            5'd6:display_figure={SIX,SPACE};
            5'd7:display_figure={SEVEN,SPACE};
            5'd8:display_figure={EIGHT,SPACE};
            5'd9:display_figure={NINE,SPACE};
            5'd10:display_figure={ONE,ZERO};
            5'd11:display_figure={ONE,ONE};
            5'd12:display_figure={ONE,TWO};
            5'd13:display_figure={ONE,THREE};
            5'd14:display_figure={ONE,FOUR};
            5'd15:display_figure={ONE,FIVE};
            5'd16:display_figure={ONE,SIX};
            5'd17:display_figure={ONE,SEVEN};
            5'd18:display_figure={ONE,EIGHT};
            5'd19:display_figure={ONE,NINE};
            5'd20:display_figure={TWO,ZERO};
            5'd21:display_figure={TWO,ONE};
            5'd22:display_figure={TWO,TWO};
            5'd23:display_figure={TWO,THREE};
            5'd24:display_figure={TWO,FOUR};
            5'd25:display_figure={TWO,FIVE};
            5'd26:display_figure={TWO,SIX};
            5'd27:display_figure={TWO,SEVEN};
            5'd28:display_figure={TWO,EIGHT};
            5'd29:display_figure={TWO,NINE};
            5'd30:display_figure={THREE,ZERO};
            5'd31:display_figure={THREE,ONE};
            default:;
        endcase
    end
    
endmodule
