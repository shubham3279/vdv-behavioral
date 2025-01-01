// this version handles invalid inputs by assigning all ouputs to 0 using direct assignment

module decoder_bcd2decimal (
    input [3:0] d_in,
    output reg [9:0] y
);
    always @(*) begin

        // assigning all outputs to 0
        y = 10'b0

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