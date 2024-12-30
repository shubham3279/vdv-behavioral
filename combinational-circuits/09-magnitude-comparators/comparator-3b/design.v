module mag_comp_3b (
    input [2:0] a, b,
    output reg e,g,l
);
    always @(*) begin
        e = (a[2] ^~ b[2]) & (a[1] ^~ b[1]) & (a[0] ^~ b[0]);
        g = (a[2] & ~b[2]) | (a[2] ^~ b[2]) & (a[1] & ~b[1]) | (a[2] ^~ b[2]) & (a[1] ^~ b[1]) & (a[0] & ~b[0]);
        l = (~a[2] & b[2]) | (a[2] ^~ b[2]) & (~a[1] & b[1]) | (a[2] ^~ b[2]) & (a[1] ^~ b[1]) & (~a[0] & b[0]);
    end
endmodule