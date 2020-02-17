`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 16:46:36
// Design Name: 
// Module Name: cache_sim
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


module cache_sim(

    );
    reg clk;
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    reg rst;
    initial begin
       rst = 0;
       #5 rst = 1;
       #2 rst = 0;
    end
    
    reg read;
    reg write;
    initial begin
        read = 0;
        write = 0;
        #30 read = 1;
        #5 read = 0;
        #5 read = 1;
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1;
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 read = 1; 
        #15 read = 0;
        #5 write = 1;
        #15 write = 0;
        #5 write = 1; 
        #15 write = 0;
        #5 write = 1; 
        #15 write = 0;
        #5 write = 1; 
        #15 write = 0;
        #5 write = 1; 
//        #20 read = 0;
//        #20 write = 1;
//        #20 write = 0;
    end
    
    reg [7:0]rw_addr;
    initial begin
        rw_addr = 4'd12;
        #40 rw_addr = 5'd13;
        #20 rw_addr = 5'd14;
        #20 rw_addr = 5'd15;
        #20 rw_addr = 5'd16;
        #20 rw_addr = 5'd17;
        #20 rw_addr = 5'd18;
        #20 rw_addr = 5'd19;
        #20 rw_addr = 5'd20;
        #20 rw_addr = 5'd21;
        #20 rw_addr = 5'd22;
        #20 rw_addr = 5'd23;
        #20 rw_addr = 5'd24;
        #20 rw_addr = 5'd25;
        #20 rw_addr = 5'd26;
        #20 rw_addr = 5'd27;
        #20 rw_addr = 5'd28;
        #20 rw_addr = 5'd29;
        #20 rw_addr = 5'd30;
        #20 rw_addr = 5'd31;
        #20 rw_addr = 5'd28;
        #20 rw_addr = 5'd29;
        #20 rw_addr = 5'd30;
        #20 rw_addr = 5'd31;
    end
    
    reg [31:0]cpudata;
    initial begin
        cpudata = 32'hffffffff;
    end
    cache_control cachedut(.clk(clk), .rst(rst), .read(read), .write(write), .rw_addr(rw_addr), .cpudata(cpudata));
endmodule
