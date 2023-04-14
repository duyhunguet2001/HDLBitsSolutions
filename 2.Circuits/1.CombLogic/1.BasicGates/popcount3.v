module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    always @(*)
        begin
            out = 0;
            for(integer i = 0; i < 3; i = i + 1)
                if(in[i] == 1'b1)
                    out = out + in[i];
        end
endmodule
