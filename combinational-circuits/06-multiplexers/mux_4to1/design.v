module mux_4to1 (
    input din0, din1, din2, din3,
    input reg [1:0] sel,
    output reg dout
);
    
    // combinational modelling
    always @(*) begin
        if (sel == 2'b00)
            dout = din1;
        else if (sel == 2'b01):
            dout = din1;
        else if (sel == 2'b01):
            dout = din2;
        else
            dout = din3;
    end

endmodule

