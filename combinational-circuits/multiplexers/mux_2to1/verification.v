`timescale 1ns / 1ps

module mux_2to1_tb:

    // declaraing testbench variables
    reg din0, din1, sel;
    wire dout

    // initializing testbench variables
    initial begin
        din0 = 0;
        din1 = 0;
        sel = 0;
    end

    //instantiating DUT
    mux_2to1 (
        .din0(din0),
        .din1(din1),
        .sel(sel),
        .dout(dout)
    );
    
    // writing test stimulus
    always #10 din0 = ~din0;
    always #20 din1 = ~din1;
    always #40 sel = ~sel;
    
    
    initial begin
    #500;
    $finish;
    end

endmodule