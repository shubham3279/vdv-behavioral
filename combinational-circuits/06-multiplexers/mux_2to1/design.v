module mux_2to1(
    input din0, din1, sel,
    output reg dout
);

    always @(*) begin
        if (sel == 1'b0)
        dout = din0;
        else
        dout = din1;
    end
    
endmodule