module encoder_8x3 (
    input  [7:0] in,    
    output reg  [2:0] out,  
    output reg valid  
);

    always @(*) begin
        
        out   = 3'b000;
        valid = 1'b0;

        
        case (in)
            8'b00000001: begin 
                out   = 3'b000;
                valid = 1'b1;
            end
            8'b00000010: begin 
                out   = 3'b001;
                valid = 1'b1;
            end
            8'b00000100: begin 
                out   = 3'b010;
                valid = 1'b1;
            end
            8'b00001000: begin 
                out   = 3'b011;
                valid = 1'b1;
            end
            8'b00010000: begin 
                out   = 3'b100;
                valid = 1'b1;
            end
            8'b00100000: begin 
                out   = 3'b101;
                valid = 1'b1;
            end
            8'b01000000: begin 
                out   = 3'b110;
                valid = 1'b1;
            end
            8'b10000000: begin 
                out   = 3'b111;
                valid = 1'b1;
            end
            
                
        endcase
    end

endmodule