module top_module();
    reg clk, in;
    reg [2:0] s;
    wire out;
    // DUT
    q7 q7_tb (.clk(clk), .in(in), .s(s), .out(out));
    initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
    
    initial
        begin
            in = 0;
            s = 3'd2;
            #10 s = 3'd6;
            #10 s = 3'd2;
            #0 in = 1;
            #10 s = 3'd7;
            #0 in = 0;
            #10 s = 3'd0;
            #0 in = 1;
            #30 in = 0;
        end
endmodule
