module top_module (input a, b, c, d,
			 output out, out_n);
	wire in_ab, in_cd;
	assign in_ab = a&b;
	assign in_cd = c&d;
	assign out = in_ab | in_cd;
	assign out_n = ~out;
endmodule