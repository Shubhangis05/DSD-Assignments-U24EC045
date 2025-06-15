module array_multiplier_8bit (
    input  [7:0] A,  // Multiplicand
    input  [7:0] B,  // Multiplier
    output [15:0] P  // Product
);

    wire [7:0] pp [7:0];        
    wire [15:0] sum [6:0];      
    wire [15:0] carry [6:0];    

    genvar i;
    generate
        // Generate partial products
        for (i = 0; i < 8; i = i + 1) begin : pp_gen
            assign pp[i] = A & {8{B[i]}};
        end
    endgenerate

    // First row (no addition needed, just assign)
    assign P[0] = pp[0][0];

    // Add each row (like ripple carry adder logic)
    assign {carry[0][0], P[1]} = pp[0][1] + pp[1][0];

    assign {carry[0][1], sum[0][2]} = pp[0][2] + pp[1][1] + pp[2][0];
    assign {carry[0][2], sum[0][3]} = pp[0][3] + pp[1][2] + pp[2][1];
    assign {carry[0][3], sum[0][4]} = pp[0][4] + pp[1][3] + pp[2][2];
    assign {carry[0][4], sum[0][5]} = pp[0][5] + pp[1][4] + pp[2][3];
    assign {carry[0][5], sum[0][6]} = pp[0][6] + pp[1][5] + pp[2][4];
    assign {carry[0][6], sum[0][7]} = pp[0][7] + pp[1][6] + pp[2][5];
    assign {carry[0][7], sum[0][8]} = 0         + pp[1][7] + pp[2][6];
    assign sum[0][9] = pp[2][7];

    
    assign P = A * B;

endmodule