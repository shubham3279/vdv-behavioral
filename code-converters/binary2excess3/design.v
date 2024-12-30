module binary2excess3 #(
    N = 4 /* N-bit binary input */
) (
    input reg [N-1:0] din,
    output reg [N:0] dout // N+1 bit excess-3 output
);

    always @(*) begin
        dout = {1'b0,din} + 5'b00011
    end
    
endmodule