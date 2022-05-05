module Constrained_Dual_LFSR 
#(
    parameter N = 9
)

(
    input wire Clk, Reset, 
    output wire [N:0] X_rand,
	 output wire [N:0] Y_rand
);

wire [N:0] q1;
wire [N:0] q2;

LFSR random1 (
	.Clk(Clk),
	.Reset(Reset),
	.q(q1)
	);
	
LFSR random2 (
	.Clk(Clk),
	.Reset(Reset),
	.q(q2)
	);
	
always_ff @ (posedge Clk) begin
	if (q1 < 10'd120) X_rand <= q1 + 10'd120;
	else if (q1 > 10'd520) X_rand <= q1 - 10'd120;
	else X_rand <= q1;
	
	if (q2 < 10'd48) Y_rand <= q2 + 10'd148;
	else if (q2 > 10'd448) Y_rand <= q2 - 10'd132;
	else Y_rand <= q2; 
end

endmodule
