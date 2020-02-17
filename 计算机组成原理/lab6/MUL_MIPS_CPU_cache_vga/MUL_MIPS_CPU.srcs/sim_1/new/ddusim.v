`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/22 19:29:04
// Design Name: 
// Module Name: ddu_sim
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


module ddu_sim(

    );
    
    reg clk0;
    initial begin
        clk0 = 0;
        forever #1 clk0=~clk0;
    end
    reg rst;
    initial begin
       rst = 0;
       #10 rst = 1;
       #5 rst = 0; 
    end
    reg cont;
    initial begin
        cont = 0;
        #500 cont = 1;
    end
    reg run;
    initial begin
        run = 1;
    end
    reg inc;
    initial begin
       inc = 0;
//       #585000 #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
//       #2000 inc = 0;
//       #2000 inc = 1;
    end
    reg dec;
    initial begin
        dec = 0;
    end
    reg mem;
    initial begin
        mem = 0;
    end
    reg step;
    initial begin
        step = 0;
//        #250 step = 1;
//        #10 step = 0;
//        #10 step = 1;
//        #10 step = 0;
//        #10 step = 1;
//        #10 step = 0;
//        #10 step = 1;
//        #10 step = 0;
//        #10 step = 1;
//        #10 step = 0;
    end
    reg right;
    reg down;
    reg enter;  
    initial begin
        right =0; 
        down = 0;
        enter = 0;
//        #50 right = 1;
//        #10 right = 0;
        #25 down = 1; 
        #25 down = 0;
//        #25 down = 1; 
//        #25 down = 0;
        #50 enter = 1;
        #50 enter = 0;
        #50 enter = 1;
        #50 enter = 0;
        #50 enter = 1;
        #50 enter = 0;
    end

    reg [4:0]reg_addr;
    initial begin
        reg_addr = 0;
    end
    wire [31:0]reg_data;
    DDU ddu_dut(
        .clk_100M(clk0),
        .rst(rst),
        .cont(cont),
        .step(step),
        .mem(mem),
        .inc(inc),
        .dec(dec),
        .led(),
        .an(),
        .seg(),
         .right(right),
         .down(down),
         .enter(enter)
//         .reg_addr_ddu(reg_addr),
//         .reg_data_ddu(reg_data)
         );
    
endmodule
