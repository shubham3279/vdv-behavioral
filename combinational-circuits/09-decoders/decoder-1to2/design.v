module decoder_1to2 (
    input a,
    output reg y0, y1
);

    always @(*) begin
        y0 = ~a;
        y1 = a;
    end    
endmodule