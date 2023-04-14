module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [3:0] cout_wire;
    bcd_fadd BCD1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_wire[0]), .sum(sum[3:0]));
    genvar i;
    generate
        for(i = 4; i < 16; i = i + 4)
            begin: BCD_FullAdder_16bits
                bcd_fadd BCD (.a(a[i+3:i]), .b(b[i+3:i]), .cin(cout_wire[i/4-1]), .cout(cout_wire[i/4]), .sum(sum[i+3:i]));
            end
    endgenerate
    assign cout = cout_wire[3];
endmodule
