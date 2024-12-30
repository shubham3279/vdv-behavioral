// (num1 - num2) - num3
module full_subtractor (
    input num1, num2, num3,
    output reg diff, bout
);
    always @(*) begin
        diff = num1 ^ num2 ^ num3;
        bout = ( (~num1) & num2 ) | num3 ( ~ (num1 ^ num2));
        // bout  = (~num1 | num2) & (num2 | num3) & (num3 | ~num1);
    end
endmodule