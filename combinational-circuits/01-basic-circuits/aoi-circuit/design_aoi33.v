module aoi_33 (
    input a,b,c,d,e,f,
    output y
);
    always @(*) begin
        y = ~((a & b & c) | (d & e & f));
    end
endmodule