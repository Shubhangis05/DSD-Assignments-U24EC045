module mux_2x1 (
    input Io,
    input I1,
    input S,
    output reg Y
);

always @(*) begin 
if(S==1'b0) begin
Y=Io;
end else begin 
Y=I1;
end
end

//using case(S)
// 1'b0: Y=Io;
// 1'b1: Y=I1;
//endcase
endmodule 