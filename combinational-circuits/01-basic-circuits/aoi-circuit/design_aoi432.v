module aoi_432 (
    input a,b,c,d,e,f,g,h,j,k,
    output y
);

    always @(*) begin
        y = ~((a & b & c & d & e) | (f & g & h) | (j & k));
    end
    
endmodule