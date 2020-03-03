module testbench;

	logic  [3:0] in;
	logic  [6:0] out;
	
	
	Problema1  DUT(in,out);
	
	initial begin
	in=4'b0000;
	#10
	in=4'b0001;
	#10
	in=4'b0010;
	#10
	in=4'b0011;
	#10
	in=4'b0100;
	#10
	in=4'b0101;
	#10
	in=4'b0110;
	#10
	in=4'b0111;
	
	end
	


endmodule