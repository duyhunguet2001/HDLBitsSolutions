module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
    
    reg [7:0] Q;
    always @(posedge clk)
        begin
            if(enable)
                Q <= {Q[6:0], S};
        end
    
    wire [3:0] in = {A,B,C};
    always @(*) begin
        case (in)
            3'b000: Z = Q[0];
            3'b001: Z = Q[1];
            3'b010: Z = Q[2];
            3'b011: Z = Q[3];
            3'b100: Z = Q[4];
            3'b101: Z = Q[5];
            3'b110: Z = Q[6];
            3'b111: Z = Q[7];
        endcase
    end
    //assign Z = Q[{A,B,C}];
endmodule
