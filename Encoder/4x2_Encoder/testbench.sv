module tb_encoder_4x2;

    
    reg  [3:0] tb_in;     
    wire [1:0] tb_out;    
    wire        tb_valid;  

    
    encoder_4x2 uut (
        .in    (tb_in),
        .out   (tb_out),
        .valid (tb_valid)
    );

    
    initial begin
        $dumpfile("encoder_4x2.vcd"); // Specifies the VCD file name
        $dumpvars(0, tb_encoder_4x2);  // Dumps all signals in this scope to the VCD
    end

    
    initial begin
        $monitor("Time=%0t | in=%b | out=%b | valid=%b",
                 $time, tb_in, tb_out, tb_valid);
    end

    
    initial begin
        
        tb_in = 4'b0000;
        #20; 
        
        tb_in = 4'b0001;
        #20; 

        // Test 1
        tb_in = 4'b0010; 
        #20; 

        // Test 2
        tb_in = 4'b0100; 
        #20; 

        // Test 3
        tb_in = 4'b1000; 
        #20; 
        // --- Test Invalid Inputs ---

        // Test: No input active (all zeros)
        tb_in = 4'b0000;
        #20; // Expected: out=00, valid=0

        // Test: Multiple inputs active (in[0] and in[1])
        tb_in = 4'b0011;
        #20; // Expected: out=00, valid=0

        // Test: Multiple inputs active (in[1] and in[3])
        tb_in = 4'b1010;
        #20; // Expected: out=00, valid=0

        // Test: All inputs active
        tb_in = 4'b1111;
        #20; // Expected: out=00, valid=0

        // Finish simulation
        $finish;
    end

endmodule