module Mux_4x1(
    input Io,
    input I1,
    input I2,
    input I3,
    input [1:0] S,
    
    output reg Y
);
 always @(*) begin
 case(S)
 2'b00:Y=Io;
 2'b01:Y=I1;
 2'b10:Y=I2;
 2'b00:Y=I3;
 endcase
 end
 endmodule

