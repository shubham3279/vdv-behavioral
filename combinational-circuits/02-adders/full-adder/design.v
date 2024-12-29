module full_adder (
    input num1,num2,num_carry,
    output reg sum, cout
);
    always @(*) begin
        sum = (num1 ^ num2 ^ num_carry);
        cout =  (num1 & num2) | (num2 & num_carry) | (num1 & num_carry);
    end
    
endmodule