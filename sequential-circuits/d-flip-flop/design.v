module dff (
    input clk, d,
    output reg q, qbar
);

    always @(posedge clk ) begin
        q <= d;
        qbar <= d;
    end
    
endmodule