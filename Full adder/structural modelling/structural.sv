
module xor_gate (
    input a,
    input b,
    output y
);
    assign y = a ^ b;
endmodule


module and_gate (
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule


module or_gate (
    input a,
    input b,
    output y
);
    assign y = a | b;
endmodule


module full_adder (
    input a,
    input b,
    input Cin,
    output sum,
    output Cout
);
    wire xor1_out, and1_out, and2_out;

    xor_gate u1 (.a(a),       .b(b),       .y(xor1_out));
    xor_gate u2 (.a(xor1_out),.b(Cin),     .y(sum));

    and_gate u3 (.a(a),       .b(b),       .y(and1_out));
    and_gate u4 (.a(xor1_out),.b(Cin),     .y(and2_out));

    or_gate  u5 (.a(and1_out),.b(and2_out),.y(Cout));
endmodule
