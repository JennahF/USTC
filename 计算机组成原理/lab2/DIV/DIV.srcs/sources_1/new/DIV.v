`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 21:12:14
// Design Name: 
// Module Name: DIV
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


module DIV(
    input [3:0]x,
    input [3:0]y,
    input clk,
    input rst,
    output [3:0]q,
    output [3:0]r,
    output error,
    output done
    );
    reg [7:0] x_next, y_next;
    reg [7:0]x_temp;
    reg [7:0]y_temp;
    reg [7:0]x_temp1;
    reg [7:0]x_temp2;
    reg [2:0]current_state;
    reg [2:0]next_state;
    always@(current_state)begin
        case(current_state)
            3'b000:next_state=3'b001;
            3'b001:next_state=3'b010;
            3'b010:next_state=3'b011;
            3'b011:next_state=3'b100;
            3'b100:next_state=3'b101;
            3'b101:next_state=3'b101;
            default:next_state=3'b101;
        endcase
    end
    
    assign {r, q} = x_temp;
    
    always@(posedge clk or posedge rst)begin
        if (rst) begin
            current_state <= 3'b000;
            x_temp <= {4'b0000, x};
            y_temp <= {y, 4'b0000};
        end else begin
            current_state <= next_state;
            x_temp <= x_next;
            y_temp <= y_next;
        end
    end
    assign error = (y == 0);
    assign done = (current_state == 3'b101);
    
    always @(*) begin
        case (current_state)
            3'b000:begin 
                x_next = {4'b0000,x};
                y_next = {y,4'b0000};
            end
            3'b001,3'b010,3'b011,3'b100:begin 
                if (x_temp1[7:4] >= y)
                    x_next = x_temp2;
                else
                    x_next = x_temp1;
            end 
        endcase
    end
    
    always@(*)begin
        x_temp1 = x_temp << 1;
        x_temp2 = (x_temp << 1) - y_temp + 8'b00000001;
    end
endmodule
