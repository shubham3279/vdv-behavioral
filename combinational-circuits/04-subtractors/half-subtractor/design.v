module half_subtractor (
    input num1, num2, /* num1 - num2 */
    output reg diff,  bout
);
    
    always @(*) begin
        diff = num1 ^ num2;
        bout = (~num1) & num2
    end
    
endmodule