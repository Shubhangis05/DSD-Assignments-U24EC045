module encoder_4x2 (
    input  [3:0] in,    
    output reg  [1:0] out,   
    output reg  valid  
);

    always @(*) begin
        
        out   = 2'b00;
        valid = 1'b0;

       
        case (in)
            4'b0001: begin 
                out   = 2'b00;
                valid = 1'b1;
            end
            4'b0010: begin 
                out   = 2'b01;
                valid = 1'b1;
            end
            4'b0100: begin 
                out   = 2'b10;
                valid = 1'b1;
            end
            4'b1000: begin 
                out   = 2'b11;
                valid = 1'b1;
            end
        
                out   = 2'b00;
                valid = 1'b0;
            end
        endcase
    end

endmodule