`timescale 1ns/1ps

module comparator_8bit_tb;

    reg  [7:0] A;
    reg  [7:0] B;

    wire A_greater_B;
    wire A_equal_B;
    wire A_less_B;

    comparator_8bit uut (
        .A(A),
        .B(B),
        .A_greater_B(A_greater_B),
        .A_equal_B(A_equal_B),
        .A_less_B(A_less_B)
    );

    initial begin

        $display("A       B       A>B  A=B  A<B");
        $display("--------------------------------");

        A = 8'd50;
        B = 8'd25;
        #10;
        $display("%d      %d       %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        A = 8'd30;
        B = 8'd30;
        #10;
        $display("%d      %d       %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        A = 8'd10;
        B = 8'd40;
        #10;
        $display("%d      %d       %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        A = 8'd255;
        B = 8'd100;
        #10;
        $display("%d      %d       %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        A = 8'd0;
        B = 8'd0;
        #10;
        $display("%d      %d       %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        $finish;
    end

endmodule