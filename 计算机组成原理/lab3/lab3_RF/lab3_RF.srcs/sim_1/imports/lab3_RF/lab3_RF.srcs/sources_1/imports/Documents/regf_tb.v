module RF_tb  (

	);
	reg [2:0] ra0;
	reg [2:0] ra1;
	reg [2:0] wa;
	reg [2:0] wd;
	reg we;
	reg clk;
	reg rst;
	wire [2:0] rd0;
	wire [2:0] rd1;
	
	RF DUT (.ra0(ra0),.ra1(ra1),.wa(wa),.wd(wd),.we(we),.clk(clk),.rst(rst),.rd0(rd0),.rd1(rd1));
	
	initial
	begin
	clk=0;
	forever
	begin
	#10;clk=1;
	#10;clk=0;
	end
	end
	
	initial
	begin
	ra0=4;
	#10;ra0=5;
	#10;ra0=2;
	#10;ra0=1;
	#10;ra0=7;
	#10;ra0=4;
	#10;ra0=5;
	#10;ra0=2;
	#10;ra0=1;
	#10;ra0=7;
	#10;ra0=4;
	#10;ra0=5;
	#10;ra0=2;
	#10;ra0=1;
	#10;ra0=7;
	#10;ra0=4;	
	end
	
	initial
	begin
	ra1=4;
	#10;ra1=1;
	#10;ra1=4;
	#10;ra1=2;
	#10;ra1=7;
	#10;ra1=5;
	#10;ra1=1;
	#10;ra1=4;
	#10;ra1=2;
	#10;ra1=7;
	#10;ra1=5;
	#10;ra1=1;
	#10;ra1=4;
	#10;ra1=2;
	#10;ra1=7;
	#10;ra1=5;
	
	end
	
	initial
	begin
	wd=4;
	#10;wd=1;
	#10;wd=7;
	#10;wd=5;
	#10;wd=4;
	#10;wd=2;
	#10;wd=5;
	#10;wd=4;
	#10;wd=2;
	#10;wd=5;
	#10;wd=4;
	#10;wd=2;
	#10;wd=5;
	#10;wd=4;
	#10;wd=2;
	end
	
	initial
	begin
	wa=4;
	#10;wa=1;
	#10;wa=2;
	#10;wa=4;
	#10;wa=6;
	#10;wa=1;
	#10;wa=1;
	#10;wa=2;
	#10;wa=4;
	#10;wa=6;
	#10;wa=1;
	#10;wa=1;
	#10;wa=2;
	#10;wa=4;
	#10;wa=6;
	#10;wa=1;	
	end
	
	initial
	begin
	we=0;
	#10;we=1;
	#70;we=0;
	end
	
	initial
	begin
	rst=0;
	#10;rst=1;
	#20;rst=0;
	end
	
endmodule
	