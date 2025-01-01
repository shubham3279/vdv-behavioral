module parametrized_decoder #(
    parameter N = 3;
)(
    input [N-1:0] in,
    output reg [(1<<N)-1:0] out 
);

    integer i;
    always @(*) begin
        
        // assigning 0 to all outputs
        out = (1<<N)'b0;

        // one-hot output corresponding to inputs
        for (i = 0; i < (1<<N); i = i + 1) begin
            if (in == i) begin  
                out[i] = 1'b1;
            end
        end
    end
endmodule