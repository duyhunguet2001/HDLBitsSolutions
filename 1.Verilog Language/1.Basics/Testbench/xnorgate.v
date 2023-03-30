module top_module ();
    reg clk = 0;
    always #5 clk = ~clk;
    initial `probe_start;
    `probe(clk);
    
    reg a = 0;
    reg b = 0;
    wire out;
    // DUT
    norgate tb (.a(a), .b(b), .out(out));
    
    initial begin
        #10 a <= 0; b <= 0;
        #15 b <= 1;
        #5 a <= 1; b <= 0;
        #10 b <= 1;
        #5 $finish;
    end
    
endmodule

module norgate(input a, b,
               output out );
    assign out = a~^b;
    `probe(a);
    `probe(b);
    `probe(out);
endmodule