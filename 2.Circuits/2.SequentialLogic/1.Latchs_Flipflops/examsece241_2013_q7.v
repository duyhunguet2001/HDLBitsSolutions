module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    
    wire Qold;
    assign Qold = Q;
    
    always @(posedge clk)
        begin
            Q <= j&(~Qold) | (~k)&Qold;
        end
endmodule
