module top_module (
	input p1a, p1b, p1c, p1d, p1e, p1f,
	output p1y,
	input p2a, p2b, p2c, p2d,
	output p2y);

	wire w1abc; // AND p1a, p1b, p1c
	wire w1def; // AND p1d, p1e, p1f

	assign w1abc = p1a & p1b & p1c;
	assign w1def = p1d & p1e & p1f;
	assign p1y = w1abc | w1def;

	wire w2ab; // AND p2a, p2b;
	wire w2cd; // AND p2c, p2d;

	assign w2ab = p2a & p2b;
	assign w2cd = p2c & p2d;
	assign p2y = w2ab | w2cd;
endmodule