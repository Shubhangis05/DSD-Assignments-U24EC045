module tb_decoder_2x4;
  reg[1:0] tb_in;
  wire[3:0] tb_out;
  
  decoder_2x4 uut(
    .in (tb_in),
    .out (tb_out)
  );
  
  initial begin
    $dumpfile("decoder_2x4.vcd");
    $dumpvars(0,tb_decoder_2x4);
    
    
    
    
    tb_in= 2'b00;  #10;
    tb_in= 2'b01;  #10;
    tb_in= 2'b10;  #10;
    tb_in= 2'b11;  #10;
    
    
   $finish;
  end
  
  initial begin
    $monitor(" Input (in) = %b  |  Output (out) =%b ", tb_in, tb_out);
  end
    
endmodule
    