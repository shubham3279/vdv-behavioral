// this modelling is based on direct comparison of bit values from MSB to LSB

module mag_comp #(
    parameter N = 4
) (
    input  [N-1:0] a, b,
    output reg     e, g, l
);
    integer i;

    always @(*) begin
        // Default
        e = 1'b0;
        g = 1'b0;
        l = 1'b0;

        e = 1'b1; // assuming both are equal


        for (i = N-1; i >= 0; i = i - 1) begin

            // checking equality of bits MSB to LSB
            if (a[i] != b[i]) begin
                e = 1'b0;             
                if (a[i] == 1'b1) 
                    g = 1'b1; // a > b
                else
                    l = 1'b1; // a < b
                disable done;
            end
        end
        done: ;
    end
endmodule
