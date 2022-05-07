module cookie (
	input logic Clk,
	input logic Reset,
	input logic [9:0] Xc,
	input logic [9:0] Yc,
	input logic [9:0] Xp,
	input logic [9:0] Yp,
	input logic [9:0] Sizep,
	
	output logic Not_ate, // 1 is cookie has not been eaten, 0 if it has
	output logic Score
);

	// Xp and Yp are the <x,y> position of pac-man
	// Xc and Yc are the <x,y> position of a particular cookie, that this module representes

	logic [9:0] Size_adjusted;
	
	
	always_comb begin
		Size_adjusted = Sizep >> 1'b0;
		Score = ~Not_ate;
	end
	
	always_ff @ (posedge Reset or posedge Clk) begin
		// approximate pacman as box, as inequality with circle equation will use more multipliers than are on the board
		if (Reset) begin
			Not_ate <= 1'b1;
		end
		else if ( (Xp - Size_adjusted <= Xc) &&
			(Xp + Size_adjusted >= Xc) &&
			(Yp - Size_adjusted <= Yc) &&
			(Yp + Size_adjusted >= Yc) && 
			Not_ate 
			) begin // close enough to eat cookie
			
			Not_ate <= 1'b0;
		end
		
		else begin // make sure that once the cookie is eaten, it is not redrawn later unless reset, 1 for not eaten, 0 for eaten
			Not_ate <= 1'b1 & Not_ate;
		end
		
	end
	
	

endmodule


