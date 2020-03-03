module problema3#(parameter n=6)(input logic clk, rst,
											output logic [6:0] out);
											
	logic [n-1:0] countOut;

	contador#(n) contadorN(clk,rst,countOut);
	
	display7 display(countOut,out);
	

endmodule 