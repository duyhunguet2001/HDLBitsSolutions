module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        if(in == 0 && state == A)
            next_state = B;
        else if (in == 0 && state == B)
            next_state = A;
        else if (in == 1 && state == B)
            next_state = B;
        else
            next_state = A;
    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if (areset)
            state <= B;
        else
            state <= next_state;
    end

    // Output logic
    assign out = (state == A ? 1'b0 : 1'b1);

endmodule
