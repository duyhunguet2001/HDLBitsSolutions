module top_module (input a, input b, input c, output out);//
    wire out_and;
    andgate inst1 ( .a(a), .b(b), .c(c), .d(1'b1), .e(1'b1), .out(out_and) );
    assign out = ~out_and;
endmodule
