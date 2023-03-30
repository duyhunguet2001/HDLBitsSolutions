module wire4_tb ();
    reg clk = 0;
    always #5 clk = ~clk;
    
    initial `probe_start;
    `probe(clk);
    
    reg a = 0;
    reg b = 0;
    reg c = 0;
    wire w, x, y, z;
    
    //DUT
    wire4 wire4_tb (.a(a), .b(b), .c(c), .w(w), .x(x), .y(y), .z(z));
    
    initial begin
        #10 a <= 1; b <= 1; c <= 1;
        #5 a <= 0; b <= 0;
        #10 b <= 1; c <= 0;
        #5 a <= 1; c <= 1;
        #15 a <= 0; b <= 0; c <= 0;
        #50 $finish;
    end

endmodule

module wire4 (
    input a, b, c,
    output w, x, y, z);
    
    assign {w,x,y,z} = {a,b,b,c};
    
    `probe(a);
    `probe(b);
    `probe(c);
    `probe(w);
    `probe(x);
    `probe(y);
    `probe(z);
endmodule