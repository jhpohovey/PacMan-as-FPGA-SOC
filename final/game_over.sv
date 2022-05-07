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

logic Data, Load;

flipflop reg_1 (
	.Clk(Clk),
	.Reset(Reset),
	.Load(Load),
	.D(Data),
		
	.Q(Kill)
);
	

always_ff @ (posedge Reset or posedge Clk) begin
	if (Reset) begin
		Load <= 1'b1;
		Data <= 1'b0;
	end 
	else if (Kill) Load <= 1'b0;
	else begin
		if (~((X_pac_left > X_ghost_right) || (Y_pac_top > Y_ghost_bottom) || (X_pac_right < X_ghost_left) || (Y_pac_bottom < Y_ghost_top))) begin // rectangle overlap
			Data <= 1'b1;
			Load <= 1'b1;
		end
		else if (Not_ate == {241{1'b0}}) begin
			Data <= 1'b1;
			Load <= 1'b1;
		end
		else begin
			Data <= 1'b0;
			Load <= 1'b1;
		end
	end
end

always_comb begin
	X_ghost_left = X_ghost - Size_ghost;
	X_ghost_right = X_ghost + Size_ghost;
	Y_ghost_top = Y_ghost - Size_ghost;
	Y_ghost_bottom = Y_ghost + Size_ghost;
	
	X_pac_left = X_pac - Size_pac;
	X_pac_right = X_pac + Size_pac;
	Y_pac_top = Y_pac - Size_pac;
	Y_pac_bottom = Y_pac + Size_pac;
end


endmodule 

