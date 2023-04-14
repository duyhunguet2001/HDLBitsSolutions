module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    
    wire j, k;
    assign j = 1'b1;
    assign k = 1'b1;
    reg [3:0] Q_n;
    assign Q_n = ~q;
    always @(posedge clk)
        begin
            if(reset)
                q[0] <= 1'b0;
            else
                q[0] <= j&Q_n[0] | (~k)&q[0];
        end
    
    always @(posedge clk)
        begin
            if(reset)
                q[1] <= 1'b0;
            else
                q[1] <= q[0]&Q_n[1] | (~q[0])&q[1];
        end
    
    always @(posedge clk)
        begin
            if(reset)
                q[2] <= 1'b0;
            else
                q[2] <= (q[0] & q[1]) & Q_n[2] | (~(q[0] & q[1]))&q[2];
        end
    
    always @(posedge clk)
        begin
            if(reset)
                q[3] <= 1'b0;
            else
                q[3] <= (q[0] & q[1] & q[2]) & Q_n[3] | (~(q[0] & q[1] & q[2]))&q[3];
        end
endmodule
