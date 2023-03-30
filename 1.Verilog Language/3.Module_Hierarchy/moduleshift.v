module top_module (input clk, d,
			 output q);
	reg q1, q2;
	my_dff D1 (.clk(clk), .d(d), .q(q1));
	my_dff D2 (.clk(clk), .d(q1), .q(q2));
	my_dff D3 (.clk(clk), .d(q2), .q(q));
endmodule