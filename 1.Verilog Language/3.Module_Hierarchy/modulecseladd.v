module top_module (input [31:0] a, b,
			 output [31:0] sum);
	
	wire sel, cout1, cout2;
	wire [15:0] sum_if [1:0];
	add16 S1 (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(sel));
	add16 S2 (.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_if[0]), .cout(cout1));
	add16 S3 (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_if[1]), .cout(cout2));

	always @(*)
		case (sel)
			1'b0: sum = {sum_if[0], sum[15:0]};
			1'b1: sum = {sum_if[1], sum[15:0]};
		endcase
endmodule