// this version handles invalid inputs by assigning all ouputs to 0 using for loop

module decoder_bcd2decimal (
    input [3:0] d_in,
    output reg [9:0] y
);
    always @(*) begin

        integer i;

        // assigning all outputs to 0
        for (i = 0; i < 10; i = i + 1) begin
            y[i] = 0;
        end

        case (d_in)
            4'b0000 : y[0] = 1;
            4'b0001 : y[1] = 1;
            4'b0010 : y[2] = 1;
            4'b0011 : y[3] = 1;
            4'b0100 : y[4] = 1;
            4'b0101 : y[5] = 1;
            4'b0110 : y[6] = 1;
            4'b0111 : y[7] = 1; 
            4'b1000 : y[8] = 1;
            4'b1001 : y[9] = 1;
            default: ;
        endcase
    end
endmodule