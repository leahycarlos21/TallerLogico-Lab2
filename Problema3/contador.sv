module contador#(parameter N=6)(input logic clk, rst,
						output logic [N-1:0] count);

						
always @(posedge clk, posedge rst)
	if(rst)count <= 0;
	else count <= count +'b1;
	

endmodule
