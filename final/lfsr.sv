module LFSR
#(
    parameter N = 9
)

(
    input wire Clk, Reset, 
    output wire [N:0] q
);

reg [N:0] r_reg;
wire [N:0] r_next;
wire feedback_value;
                        
always @(posedge Clk or posedge Reset)
begin 
    if (Reset)
        begin
        // set initial value to 1
        r_reg <= 1; 
        
        
        end     
    else if (Clk)
        r_reg <= r_next;
end


// N = 9
// Feedback polynomial : x^9 + x^5 + 1
//total sequences (maximum) : 2^9 - 1 = 511
assign feedback_value = r_reg[9] ^ r_reg[5] ^ r_reg[0];


assign r_next = {feedback_value, r_reg[N:1]};
assign q = r_reg;
endmodule  
