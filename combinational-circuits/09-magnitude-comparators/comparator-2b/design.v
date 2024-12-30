module mag_comp_2b (
    input [1:0] a, b,
    output reg e,g,l
);

    always @(*) begin
        e = (a[1] ^~ b[1]) & (a[0] ^~ b[0]);
        g = (a[1] & ~b[1]) | (a[1] ^~ b[1]) & (a[0] & ~b[0]);
        l = (~a[1] & b[1]) | (a[1] ^~ b[1]) & (~a[0] & b[0]);
    end  
endmodule