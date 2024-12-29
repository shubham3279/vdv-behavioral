module aoi_44 (
    input a,b,c,d,e,f,g,h,
    output y
);
    always @(*) begin
        y = ~((a & b & c & d) | (e & b & g & h));
    end
endmodule