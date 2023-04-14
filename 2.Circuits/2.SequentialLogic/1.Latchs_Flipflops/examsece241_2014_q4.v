module top_module (
    input clk,
    input x,
    output z
); 
    wire [2:0] Q;
    wire [2:0] Qn;
    
    assign Qn[0] = ~Q[0];
    assign Qn[1] = ~Q[1];
    assign Qn[2] = ~Q[2];
    
    
    always @(posedge clk)
        begin
            Q[0] <= Q[0] ^ x;
        end
    
    
    always @(posedge clk)
        begin
            Q[1] <= x & Qn[1];
        end
    
    always @(posedge clk)
        begin
            Q[2] <= x | Qn[2];
        end
    
    assign z = ~(|Q);
endmodule