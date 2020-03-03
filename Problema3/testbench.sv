module testbench;



	parameter n = 2;
	logic clk, rst;
	logic [6:0] out;
	
	problema3#(n) DUT1(clk,rst,out);
	
	
	initial begin
	clk = 0; rst = 0;
	#10
	clk = 0; rst = 1;
	#10
	clk = 0; rst = 0;
	//n = 4;
	clk = 0; rst = 0;
	#10
	clk = 0; rst = 1;
	#10
	clk = 0; rst = 0;
	
	
	end
	
	always begin
		#5 clk=~clk;
		
	end

endmodule 

/*

	logic clk, rst;
	parameter n = 2;
	logic [n-1:0] countOut;
	
	contador#(n) DUT(clk,rst,countOut);
	
	initial begin
	clk = 0; rst = 0;
	#10
	clk = 0; rst = 1;
	#10
	clk = 0; rst = 0;
	#10
	n=4;
	clk = 0; rst = 0;
	#10
	clk = 0; rst = 1;
	#10
	clk = 0; rst = 0;
	#10
	
	end
	
	always begin
		#5 clk=~clk;
		
	end
*/