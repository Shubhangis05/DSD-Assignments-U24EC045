module tb_mux_2x1;
  reg tb_Io;
  reg tb_I1;
  reg tb_S;
  wire tb_Y;
  
  mux_2x1 uut(
    .Io(tb_Io),
    .I1(tb_I1),
    .S(tb_S),
    .Y(tb_Y)
  );
  
  initial begin 
    $dumpfile("mux_2x1.vcd");
    $dumpvars(0,tb_mux_2x1);
    $monitor("Io=%b | I1=%b | S=%b | Y=%b" , tb_Io,tb_I1,tb_S,tb_Y);
    
    tb_S=1'b0 ; tb_Io= 1'b0; tb_I1= 1'b1;
    tb_S=1'b0 ; tb_Io= 1'b1; tb_I1= 1'b0;
    
    tb_S=1'b1 ; tb_Io= 1'b0; tb_I1= 1'b1;
    tb_S=1'b1 ; tb_Io= 1'b1; tb_I1= 1'b0;
    
    $finish;
    
  end
endmodule 
    