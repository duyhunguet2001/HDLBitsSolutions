module top_module (
	input wire [2:0] vec,
	output wire [2:0] outv,
	output wire o0, o1, o2);
	assign outv = vec;
	
	//solution1
	assign {o0,o1,o2} = vec;
	//solution2
	assign o0 = vec[0];
	assign o1 = vec[1];
	assign 02 = vec[2];
endmodule
