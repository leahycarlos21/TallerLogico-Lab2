module xor_tb();

logic a, b, c;

xor_ DUT(a, b, c);

initial begin
a = 0; b = 0;
#10
a = 1;
#10
a = 0; b = 1;
#10
a = 0; 
#10
a = 0; b = 0;
end

endmodule
