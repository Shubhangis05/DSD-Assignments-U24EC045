module bcd_encoder (
    input [9:0] in,
    output reg [3:0] out,
    output reg valid

);
always @(*) begin
out=4'b0000;
valid=1'b0;

case(in)
10'b0000000001:begin
 out=4'b0000;
 valid=1'b1;
 end
 10'b0000000010:begin
 out=4'b0001;
 valid=1'b1;
 end
 10'b0000000100:begin
 out=4'b0010;
 valid=1'b1;
 end
 10'b0000001000:begin
 out=4'b0011;
 valid=1'b1;
 end
 10'b0000010000:begin
 out=4'b0100;
 valid=1'b1;
 end
 10'b0000100000:begin
 out=4'b0101;
 valid=1'b1;
 end
 10'b0001000000:begin
 out=4'b0110;
 valid=1'b1;
 end
 10'b0010000000:begin
 out=4'b0111;
 valid=1'b1;
 end
 10'b0100000000:begin
 out=4'b1000;
 valid=1'b1;
 end
 10'b1000000000:begin
 out=4'b1001;
 valid=1'b1;
 end
endcase
endmodule
