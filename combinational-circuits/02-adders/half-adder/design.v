module half_adder (
    input num1, num2,
    output reg sum, cout
);
    always @(*) begin
        sum = num1 ^ num2;
        cout = num1 & num2;
    end
endmodule