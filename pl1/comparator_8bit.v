module comparator_8bit (
    input  [7:0] A,
    input  [7:0] B,
    output       A_greater_B,
    output       A_equal_B,
    output       A_less_B
);

    assign A_greater_B = (A > B);
    assign A_equal_B   = (A == B);
    assign A_less_B    = (A < B);

endmodule