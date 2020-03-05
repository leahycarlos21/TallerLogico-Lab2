module ffd(input clk, rst, D,
				output Q);
logic out;

always_ff @(posedge clk, posedge rst) 
	if (rst) out <= 1'b0;
	else out <= D;

assign Q = out;

endmodule
