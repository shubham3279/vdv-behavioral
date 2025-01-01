module parametrized_decoder (
    input [N-1:0] in,
    output reg [(1<<N)-1:0] out 
);

    integer i;
    always @(*) begin
        
        // assigning 0 to all outputs
        out = (1<<N)'b0;

        // one-hot output corresponding to inputs
        out[in] = 1'b1;  // advanced way for loop inn previous code // sets value of outputs for all decimal possibilities of 'in'
    end
endmodule