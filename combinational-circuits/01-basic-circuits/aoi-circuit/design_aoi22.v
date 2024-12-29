module aoi_22 (
    input a,b,c,d,
    output reg y
);
    always @(*) begin
        y = ~( (a & b) | (c &d) );
    end
endmodule