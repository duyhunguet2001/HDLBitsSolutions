module top_module(
    input clk,
    input in,
    input reset,
    output out); 
    
    parameter A = 0, B = 1, C = 2, D = 3;
    reg [10] state, next_state;
    
     State transition logic
    always @() begin
        case (state)
            A next_state = inBA;
            B next_state = inBC;
            C next_state = inDA;
            D next_state = inBC;
        endcase
    end
    
     State flip-flops with synchronous reset
    always @(posedge clk) begin
        if(reset)
            state = A;
        else
            state = next_state;
    end
    
     Output logic
    assign out = state == D;
endmodule
