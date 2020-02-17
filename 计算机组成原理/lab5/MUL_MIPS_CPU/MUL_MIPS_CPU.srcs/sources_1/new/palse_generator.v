`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/24 15:01:43
// Design Name: 
// Module Name: palse_generator
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


module palse_generator(
    input clk,
    input rst,
    input key,
    
    output reg palse
    );
    parameter S0 = 2'd0;
    parameter S1 = 2'd1;
    parameter S2 = 2'd2;
    reg [1:0]current_state;
    reg [1:0]next_state;
    always@(posedge clk or posedge rst)begin
        if(rst) current_state <= S0;
        else current_state <= next_state;
    end
    
    always@(*)begin
        case(current_state)
            S0:next_state = key ? S1 : S0;
            S1:next_state = S2;
            S2:next_state = key ? S2 : S0;
            default:next_state = S0;
        endcase    
    end
    
    always@(current_state)begin
        case(current_state)
            S0:palse=0;
            S1:palse=1;
            S2:palse=0;
            default:palse=0;
        endcase
    end
    
endmodule
