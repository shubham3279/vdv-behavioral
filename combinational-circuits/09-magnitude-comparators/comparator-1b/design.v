module mag_comp_1b (
    input a0, b0
    output reg e,g,l
);
    always @(*) begin
        e = (a0 ^ b0);
        g = (a0 & ~b0);
        l = (~a0 & b0);
    end
endmodule