module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg [3:0] out_s;
    
    always @(posedge clk)
        begin
            if (!resetn)
                out_s <= 4'd0;
            else
                out_s <= {out_s[2:0],in};
        end
    
    assign out = out_s[3];
endmodule
