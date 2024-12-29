`timescale 1ns/1ps

module dff_tb (
    
);
    
    reg clk = 0, d = 0,
    wire q, qbar

    integer i = 0;

    dff dut (
        .clk(clk),
        .d(d),
        .q(q),
        .qbar(qbar)
    );


    //writing test input stimulus

    //clock
    always #5 clk = ~clk; // for clock of 10ns

    //d
    for (i = 0 , i = 20, i = i + 1) begin
        @(posedge clk);
        d = $urandom();        
    end

    //finishing simulation
    initial begin
        #250
        $finish();
    end
endmodule