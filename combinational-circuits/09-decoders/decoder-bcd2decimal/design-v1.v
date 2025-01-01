// this version doesn't handles invalid inputs

module decoder_bcd2decimal (
    input a, b, c, d,
    output reg y0, y1, y2, y3, y4, y5, y6, y7, y8, y9
);
    always @(*) begin
        y0 = ~a & ~b & ~c & ~d;  // 0000 => decimal 0
        y1 = ~a & ~b & ~c &  d;  // 0001 => decimal 1
        y2 = ~a & ~b &  c & ~d;  // 0010 => decimal 2
        y3 = ~a & ~b &  c &  d;  // 0011 => decimal 3
        y4 = ~a &  b & ~c & ~d;  // 0100 => decimal 4
        y5 = ~a &  b & ~c &  d;  // 0101 => decimal 5
        y6 = ~a &  b &  c & ~d;  // 0110 => decimal 6
        y7 = ~a &  b &  c &  d;  // 0111 => decimal 7
        y8 =  a & ~b & ~c & ~d;  // 1000 => decimal 8
        y9 =  a & ~b & ~c &  d;  // 1001 => decimal 9
    end
endmodule