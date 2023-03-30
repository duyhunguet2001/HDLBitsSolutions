module top_module (
	input wire [15:0] in,
	output wire [7:0] out_hi;
	output wire [7:0] out_lo;

	//solution1	
	assign out_hi = in[15:8];
	assign out_lo = in[7:0];

	//solution2
	assign {out_hi, out_lo} = in;
endmodule