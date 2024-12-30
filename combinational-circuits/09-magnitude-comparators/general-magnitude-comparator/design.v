module mag_comp (
    input a,b,
    output e,g,l 
);
    always @(*) begin
        if (a == b) begin
            e = 1;
            g = 0;
            l = 0;
        end

        else if (a > b) begin
            e = 0;
            g = 1;
            l = 0;
        end

        else begin
            e = 0;
            g = 0;
            l = 1;
        end 
    end
endmodule