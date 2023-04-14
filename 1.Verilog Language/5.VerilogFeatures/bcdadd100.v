module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] cout_wire;
    bcd_fadd S1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_wire[0]), .sum(sum[3:0]));
    genvar i;
    generate
        for(i = 4; i < 400; i = i + 4)
            begin: BCD_Full_Adder
                bcd_fadd S (.a(a[i + 3: i]), .b(b[i + 3 : i]), .cin(cout_wire[i/4 - 1]), .cout(cout_wire[i/4]), .sum(sum[i + 3 : i]));
            end
    endgenerate
    
    assign cout = cout_wire[99];
endmodule