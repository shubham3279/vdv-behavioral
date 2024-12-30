// majority-one-detetcor = minority-zero-detector
module maj_one_detect (
    input a, b, c,
    output y
);

    always @(*) begin
        y = (a & b) | (b & c) | (c & a);
        // y = (a | b) & (b | c) & (c | a); self-dual of above expression
        // y = (~a & ~b) | (~b & ~c) | (~c & ~a);
        // y = (~a | ~b) & (~b | ~c) & (~c | ~a);
    end
    
endmodule