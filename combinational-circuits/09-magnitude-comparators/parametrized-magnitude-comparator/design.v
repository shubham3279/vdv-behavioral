// this modelling is based on the logical of expressions of n-bit magnitude comprartor

module mag_comp #(
    N = 4
) (
    input [N-1:0] a,b,
    output reg e,g,l
);
    reg [N-1:0] exnor;
    reg [N-1:0] prod_b_comp;
    reg [N-1:0] prod_a_comp;

    
    integer i;
    
    always @(*) begin

        for (i = 0; i < N; i = i + 1) begin
            exnor[i] = a[i] ^~ b[i];
            prod_b_comp[i] = a[i] & ~b[i];
            prod_a_comp[i] = ~a[i] & b[i];
        end

        e = &exnor;
        
        
        g = prod_b_comp[N-1];
        for (i = N-1; i > 0; i = i - 1 ) begin
            g =  g | ( exnor[i] & prod_b_comp[i-1] );
        end

        l = prod_a_comp[N-1];
        for (i = N-1 ; i > 0; i = i -1  ) begin
            l =  l | ( exnor[i] & prod_a_comp[i-1] );
        end
    end

endmodule