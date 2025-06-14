module tb_Mux_4x1;
reg tb_Io;
reg tb_I1;
reg tb_I2;
reg tb_I3;
reg [1:0] tb_S;
wire tb_Y;

Mux_4x1 uut(
    .Io(tb_Io),
    .I1(tb_I1),
    .I2(tb_I2),
    .I3(tb_I3),
    .S(tb_S),
    .Y(tb_Y)
);

initial begin
$dumpfile("Mux_4x1.vcd");
$dumpvars(0,tb_Mux_4x1);
end

initial begin
$monitor(" S=%b | Io=%b | I1=%b | I2=%b | I3=%b | Y=%b",tb_S,tb_Io,tb_I1,tb_I2,tb_I3);
end

initial begin
//initializing

tb_Io=1'b0;tb_I1=1'b0;tb_I2=1'b0;tb_I3=1'b0;
tb_S=2'b00;
#10;

tb_S=2'b00;
tb_Io=1'b1;tb_I1=1'b0;tb_I2=1'b0;tb_I3=1'b0;
tb_Io=1'b0;tb_I1=1'b1;tb_I2=1'b1;tb_I3=1'b1;

tb_S=2'b01;
tb_Io=1'b0;tb_I1=1'b1;tb_I2=1'b0;tb_I3=1'b0;
tb_Io=1'b1;tb_I1=1'b0;tb_I2=1'b1;tb_I3=1'b1;

tb_S=2'b10;
tb_Io=1'b0;tb_I1=1'b0;tb_I2=1'b1;tb_I3=1'b0;
tb_Io=1'b1;tb_I1=1'b1;tb_I2=1'b0;tb_I3=1'b1;

tb_S=2'b11;
tb_Io=1'b0;tb_I1=1'b0;tb_I2=1'b0;tb_I3=1'b1;
tb_Io=1'b1;tb_I1=1'b1;tb_I2=1'b1;tb_I3=1'b0;

$finish;
end
endmodule
