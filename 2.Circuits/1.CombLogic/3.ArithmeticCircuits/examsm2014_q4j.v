module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [3:0] cout;
    FA A1 (.a(x[0]), .b(y[0]), .cin (0), .cout(cout[0]), .sum(sum[0]));
    FA A2 (.a(x[1]), .b(y[1]), .cin (cout[0]), .cout(cout[1]), .sum(sum[1]));
    FA A3 (.a(x[2]), .b(y[2]), .cin (cout[1]), .cout(cout[2]), .sum(sum[2]));
    FA A4 (.a(x[3]), .b(y[3]), .cin (cout[2]), .cout(cout[3]), .sum(sum[3]));
    
    assign sum[4] = cout[3];
endmodule

module FA (input a, b,
           input cin,
           output cout,
           output sum);
    assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin;
endmodule
