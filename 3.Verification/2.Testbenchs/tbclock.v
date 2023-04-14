module top_module ( );
    reg clk;
    // Design Under Test
    dut DUT (.clk(clk));

    initial
        begin
            clk = 0;
            forever #5 clk = (~clk);
        end
endmodule
