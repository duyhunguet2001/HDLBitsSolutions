module top_module (input a, b,
			 ouput out);
	assign out = ~(a | b);
endmodule;