module flipflop (input  logic Clk, Reset, Load,
              input  logic D,
              output logic Q); // basically a d flip flop

always_ff @ (posedge Clk) begin
	if (Reset)
		Q <= 1'b0;
	else if (Load)
		Q <= D;
end


endmodule
