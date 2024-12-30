// majority-zero-detetcor = minority-one-detector
module maj_one_detect (
    input a, b, c,
    output y
);

    always @(*) begin
        y = (~a | ~b) & (~b | ~c) & (~c | ~a);
    end
    
endmodule