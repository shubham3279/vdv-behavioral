module moduleName #(
    N = 4 // initialized for 4b PBA
) (
    input reg [N-1:0] num1, num2,
    input cin // initial carry
    output reg[N-1:0] sum,
    output reg cout // final carry output
);

    reg [N:0] carry // internal carry chain

    integer i;

    // modelling
    always @(*) begin
        carry[0] = cin
        for (i = 0, i < N, i = i + 1) begin
            sum[i] = num1[i] ^ num2[i] ^ carry[i];
            carry[i+1] = (num_1[i] & num2[i]) | (carry[i] & (num1[i] ^ num1[i]));
        end
        cout = carry[N]
    end
    
endmodule