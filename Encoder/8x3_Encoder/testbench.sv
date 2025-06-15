module tb_encoder_8x3;

    
    reg  [7:0] tb_in;     
    wire [2:0] tb_out;    
    wire        tb_valid;  

    
    encoder_8x3 uut (
        .in    (tb_in),
        .out   (tb_out),
        .valid (tb_valid)
    );

    
    initial begin
        $dumpfile("encoder_8x3.vcd"); 
        $dumpvars(0, tb_encoder_8x3);  
        end

   
    initial begin
        $monitor("Time=%0t | in=%b | out=%b | valid=%b",
                 $time, tb_in, tb_out, tb_valid);
    end

    
    initial begin
        
        tb_in = 8'b00000000;
        #20; 

        
        tb_in = 8'b00000001; 
        #20; 

        
        tb_in = 8'b00000010; 
        #20; 

        
        tb_in = 8'b00000100; 
        #20; 

        
        tb_in = 8'b00001000;
        #20; 

        
        tb_in = 8'b00010000; 
        #20; 

        
        tb_in = 8'b00100000; 
        #20; 

        
        tb_in = 8'b01000000; 
        #20; 

        
        tb_in = 8'b10000000; 
        #20; 

        

       
        tb_in = 8'b00000000;
        #20; 

        // Test: Multiple inputs active (in[0] and in[1])
        tb_in = 8'b00000011;
        #20; // Expected: out=000, valid=0

        // Test: Multiple inputs active (in[3] and in[5])
        tb_in = 8'b00101000;
        #20; // Expected: out=000, valid=0

        // Test: All inputs active
        tb_in = 8'b11111111;
        #20; // Expected: out=000, valid=0

        // Finish simulation
        $finish;
    end

endmodule