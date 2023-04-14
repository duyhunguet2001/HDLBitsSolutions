module top_module(
    input a,
    input b,
    input c,
    output out  );
    assign out = (a^b) | (a&b&(~c)) | c;
endmodule
