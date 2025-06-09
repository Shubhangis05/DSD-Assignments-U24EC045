module tb_decoder_3x8;
  reg [2:0] tb_in;
  wire [7:0] tb_out;
  
  decoder_3x8 uut(
    .in(tb_in),
    .out(tb_out)
  );
  
  initial begin
    $dumpfile("decoder_3x8.vcd");
    $dumpvars(0,tb_decoder_3x8);

    tb_in= 3'b000;
    #10;
    tb_in= 3'b001;
    #10;
    tb_in= 3'b010;
    #10;
    tb_in= 3'b011;
    #10;
    tb_in= 3'b100;
    #10;
    tb_in= 3'b101;
    #10;
    tb_in= 3'b110;
    #10;
    tb_in= 3'b111;
    #10;
    
    $finish ;
  end 
  
  initial begin 
    $monitor ("Input (in) %b | Output (out) %b ", tb_in,tb_out);
  end
  
endmodule