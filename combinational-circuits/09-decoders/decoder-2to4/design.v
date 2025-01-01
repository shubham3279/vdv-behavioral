module decoder_2to4 (
    input a,b,
    output reg y0, y1, y2, y3
);
    always @(*) begin
        y0 = ~a & ~b;
        y1 = ~a & b;
        y2 = a & ~b;
        y3 = a & b;
    end
endmodule