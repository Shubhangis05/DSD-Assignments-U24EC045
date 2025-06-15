module  tb_bcd_encoder;
reg [9:0] tb_in;
wire[3:0] tb_out;
wire tb_valid;

bcd_encoder uut (
    .in (tb_in),
    .out (tb_out),
    .valid (tb_valid)
);

initial begin 
$dumpfile("bcd_encoder.vcd");
$dumpvars(0,tb_bcd_encoder);
end 

initial begin  
$monitor("Time=%0t | in=%b | out=%b | valid=%b", $time, tb_in, tb_out, tb_valid);
    end

    initial begin
        
        tb_in = 10'b0000000000;
        #20; 

       
        tb_in = 10'b0000000001; 
        #20; 

        
        tb_in = 10'b0000000010; 
        #20; 

        
        tb_in = 10'b0000000100; 
        #20; 

       
        tb_in = 10'b0000001000; 
        #20; 

       
        tb_in = 10'b0000010000; 
        #20; 

        
        tb_in = 10'b0000100000; 
        #20; 

        
        tb_in = 10'b0001000000; 
        #20; 

        
        tb_in = 10'b0010000000; 
        #20; 

        
        tb_in = 10'b0100000000; 
        #20; 

        
        tb_in = 10'b1000000000; 
        #20; 

        
        tb_in = 10'b0000000000;
        #20; 

        
        tb_in = 10'b0000000011;
        #20; 

        
        tb_in = 10'b0010100000;
        #20; 

        
        tb_in = 10'b1111111111;
        #20; 

       
        $finish;
    end

endmodule