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
       #5 rst = 1;
       #5 rst = 0; 
    end
    reg cont;
    initial begin
        cont = 0;
        #10 cont = 1;
    end
    reg run;
    initial begin
        run = 1;
    end
    reg inc;
    initial begin
       inc = 0;
       #585000 #2000 inc = 0;
       #2000 inc = 1;
       #2000 inc = 0;
              #2000 inc = 1;
              #2000 inc = 0;
                     #2000 inc = 1;
                     #2000 inc = 0;
                                          #2000 inc = 1;
                                          #2000 inc = 0;
                                                               #2000 inc = 1;
                                                               #2000 inc = 0;
                                                                                    #2000 inc = 1;
                                                                                    #2000 inc = 0;
                                                                                    #2000 inc = 1;
                                                                                    #2000 inc = 0;
                                                                                    #2000 inc = 1;
    end
    reg dec;
    initial begin
        dec = 0;
    end
    reg mem;
    initial begin
        mem = 1;
    end
    reg step;
    initial begin
        step = 0;
    end
    
    DDU ddu_dut(.clk_100M(clk0),.rst(rst),.cont(cont),.step(step),.mem(mem),.inc(inc),.dec(dec),.led(),.an(),.seg());
    
endmodule
