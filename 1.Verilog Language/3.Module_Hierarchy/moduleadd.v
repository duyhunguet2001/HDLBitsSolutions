module top_module (input [31:0] a, b,
			 output [31:0] sum);
	
	wire cout1, cout2;
	add16 S1 (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(cout1));
	add16 S2 (.a(a[31:16]), .b(b[31:16]), .cin(cout1), .sum(sum[31:16]), .cout(cout2));
endmodule