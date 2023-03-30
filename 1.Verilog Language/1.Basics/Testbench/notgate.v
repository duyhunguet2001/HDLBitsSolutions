module notgate_tb ();
    reg clk = 0;
    always #5 clk = ~clk;
    initial `probe_start;
    `probe(clk);
    
    reg in = 0;
    wire out;
    // DUT
    notgate tb (.in(in), .out(out));
    
    initial begin
        #10 in <= 1;
        #15 in <= 0;
        #5 in <= 1;
        #5 in <= 0;
        #10 in <= 1;
        #15 in <= 0;
        #5 $finish;
    end
    
endmodule

module notgate( input in, output out );
    assign out = ~in;
    `probe(in);
    `probe(out);
endmodule