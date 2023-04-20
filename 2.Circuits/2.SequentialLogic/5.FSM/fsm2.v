module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
        case (state)
            OFF: begin
                if(j == 0)
                    next_state = OFF;
                else
                    next_state = ON;
            end
            ON: begin
                if(k == 0)
                    next_state = ON;
                else
                    next_state = OFF;
            end
        endcase
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
        if(areset)
            state <= OFF;
        else
            state <= next_state;
    end

    // Output logic
    assign out = (state == ON ? 1'b1 : 1'b0);

endmodule
