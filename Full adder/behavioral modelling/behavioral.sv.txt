module full_adder (
    input a,
    input b,
    input Cin,
    output reg sum,
    output reg Cout
);
    always @ (a or b or Cin) begin
        {Cout, sum} = a + b + Cin;
    end
endmodule
