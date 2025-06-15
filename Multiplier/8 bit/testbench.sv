module tb_array_multiplier_8bit;

    reg  [7:0] A, B;
    wire [15:0] P;

    array_multiplier_8bit uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        $dumpfile("array_multiplier_8bit.vcd");
        $dumpvars(0, tb_array_multiplier_8bit);

        $display("Time\tA\tB\tProduct");
        $monitor("%0t\t%d\t%d\t%d", $time, A, B, P);

        A = 8'd6;    B = 8'd10;   #10;  // 6 * 10 = 60
        A = 8'd15;   B = 8'd5;   #10;  // 75
        A = 8'd100;  B = 8'd2;    #10;  // 200
        A = 8'd255;  B = 8'd2;    #10;  // 510
        A = 8'd247;  B = 8'd247;  #10;  // 61099

        $finish;
    end
endmodule