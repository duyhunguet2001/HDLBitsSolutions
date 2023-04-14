module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @(*)
        begin
            casez (in)
                8'bz1: pos = 3'd0;
                8'bz1z: pos = 3'd1;
                8'bz1zz: pos = 3'd2;
                8'bz1zzz: pos = 3'd3;
                8'bz1zzzz: pos = 3'd4;
                8'bz1zzzzz: pos = 3'd5;
                8'bz1zzzzzz: pos = 3'd6;
                8'b1zzzzzzz: pos = 3'd7;
                default: pos = 3'b0;
            endcase
        end
endmodule