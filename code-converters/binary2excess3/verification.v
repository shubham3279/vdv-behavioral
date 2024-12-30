`timescale 1ns/1ps


module tb (
    
);
    parameter N = 4;
    reg [N-1:0] din = 0;
    wire [N:0] dout;

    integer i = 0;

    //instantiating dut
    binary2excess3 #(N) dut(
        .din(din),
        .dout(dout)
    );

    //writing test inputs
    initial begin
        for (i = 0; i < 20; i = i + 1) begin
            din = $urandom();
            #10
            $display("Value of I/P : %0d and O/P : %0d", din, dout);
        end
    end

endmodule
