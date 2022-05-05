module game_over (
	input logic Clk,
	input logic Reset,
	input logic [9:0] X_ghost,
	input logic [9:0] Y_ghost,
	input logic [9:0] Size_ghost,
	input logic [9:0] X_pac,
	input logic [9:0] Y_pac,
	input logic [9:0] Size_pac,
	input logic [240:0] Not_ate,
	
	output Kill
);

logic [9:0] X_ghost_left, X_ghost_right, Y_ghost_top, Y_ghost_bottom;
logic [9:0] X_pac_left, X_pac_right, Y_pac_top, Y_pac_bottom;

always_comb begin
	
	X_ghost_left = X_ghost - Size_ghost;
	X_ghost_right = X_ghost + Size_ghost;
	Y_ghost_top = Y_ghost + Size_ghost;
	Y_ghost_bottom = Y_ghost + Size_ghost;
	
	X_pac_left = X_pac - Size_pac;
	X_pac_right = X_pac + Size_pac;
	Y_pac_top = Y_pac + Size_pac;
	Y_pac_bottom = Y_pac + Size_pac;
	
	if (~((X_pac_left > X_ghost_right) || (Y_pac_top > Y_ghost_bottom) || (X_pac_right < X_ghost_left) || (Y_pac_bottom > Y_ghost_top))) Kill = 1'b1;
	
	if (Not_ate == {241{1'b0}}) Kill = 1'b1;
	
	if (~Kill) Kill = 1'b0;
end

always_ff @ (posedge Reset) begin
	if (Reset) Kill <= 1'b0;
end

endmodule 
