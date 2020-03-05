module mux1_2_1(input A, B,
					input S,
					output F);
logic out;

	always_comb begin 
	if (S == 1'b1)
		out = A;
	else
		out = B;
	
end
		
assign F = out;
		
endmodule
