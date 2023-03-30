module top_module (
	input a, b,
	output wire out_assign,
	output wire out_alwaysblock);

	assign out_assign = a&b;

	always @(*)
		begin
			out_alwaysblock = a&b;
		end
endmodule