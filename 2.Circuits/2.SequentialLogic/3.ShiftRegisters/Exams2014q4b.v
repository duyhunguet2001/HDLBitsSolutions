module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    MUXDFF ins1 (.clk(KEY[0]), .sel(KEY[2:1]), .w(KEY[3]), .r(SW[3]), .Q(LEDR[3]));
    MUXDFF ins2 (.clk(KEY[0]), .sel(KEY[2:1]), .w(LEDR[3]), .r(SW[2]), .Q(LEDR[2]));
    MUXDFF ins3 (.clk(KEY[0]), .sel(KEY[2:1]), .w(LEDR[2]), .r(SW[1]), .Q(LEDR[1]));
    MUXDFF ins4 (.clk(KEY[0]), .sel(KEY[2:1]), .w(LEDR[1]), .r(SW[0]), .Q(LEDR[0]));
endmodule

module MUXDFF (input clk,
               input [1:0] sel,
               input w, r,
               output Q);
    
    always @(posedge clk)
        begin
            case(sel)
                2'b00: Q <= Q;
                2'b10: Q <= r;
                2'b01: Q <= w;
                2'b11: Q <= r;
            endcase
        end
endmodule
