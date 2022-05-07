//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//                                                                       --
//    Fall 2014 Distribution                                             --
//                                                                       --
//    For use with ECE 385 Lab 7                                         --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------
`define NUM_VGA_COLS 640
`define NUM_VGA_ROWS 480
`define MAZE_DIMS 400

module color_mapper(	input logic [9:0] BallX, BallY, DrawX, DrawY, Ball_size,
							input logic blank, Clk, Kill,
							input logic [239:0] Not_ate,
							input logic [7:0] GhastlyR1, GhastlyG1, GhastlyB1,
							input logic [7:0] GhastlyR2, GhastlyG2, GhastlyB2,
							output logic [7:0]  Red, Green, Blue );
    
	logic ball_on, cookie_on;
	logic [7:0] mazeR, mazeG, mazeB;
	
	logic maze_rom_out;
	logic [18:0] maze_rom_addr;
//	logic [639:0] maze_rom_out;
//	logic [7:0] GhastlyR, GhastlyG, GhastlyB;

	logic [9:0] EndR, EndG, EndB;

	LFSR Rchannel (.Clk(Clk), .Reset(1'b0), .q(EndR));
	LFSR Gchannel (.Clk(Clk), .Reset(1'b0), .q(EndG));
	LFSR Bchannel (.Clk(Clk), .Reset(1'b0), .q(EndB));


	/* Old Ball: Generated square box by checking if the current pixel is within a square of length
	2*Ball_Size, centered at (BallX, BallY).  Note that this requires unsigned comparisons.

	if ((DrawX >= BallX - Ball_size) &&
	 (DrawX <= BallX + Ball_size) &&
	 (DrawY >= BallY - Ball_size) &&
	 (DrawY <= BallY + Ball_size))

	New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
	this single line is quite powerful descriptively, it causes the synthesis tool to use up three
	of the 12 available multipliers on the chip!  Since the multiplicants are required to be signed,
	we have to first cast them from logic to int (signed by default) before they are multiplied). */
	  
	int DistX, DistY, Size;
	assign DistX = DrawX - BallX;
	assign DistY = DrawY - BallY;
	assign Size = Ball_size;

	always_comb
	begin:Ball_on_proc
	  if ( ( DistX*DistX + DistY*DistY) <= (Size * Size) ) 
			ball_on = 1'b1;
	  else 
			ball_on = 1'b0;
	end
	
	cookie_draw cookie_art (
		.X_Pos(DrawX),
		.Y_Pos(DrawY),
//		.Not_ate({240{1'b1}}),
		.Not_ate(Not_ate),
		
		.cookie_on(cookie_on)
	);
	
	logic gameover_rom_out;
	logic [7:0] gameR, gameG, gameB;
	game_rom gameover (
		.read_address(maze_rom_addr),
		.Clk(Clk),
		
		.data_Out(gameover_rom_out)
	);
	always_comb begin
		if (gameover_rom_out == 1'b1) begin
			gameR = 8'h00;
			gameG = 8'hcc;
			gameB = 8'h00;
		end else begin
			gameR = 8'hff;
			gameG = 8'hff;
			gameB = 8'hff;
		end
	end
	

//	logic [14:0] gameover_addr;
//	logic [3:0] gameover_palette_idx;
//	always_comb begin
//		if ((DrawX>= 192) && (DrawX < 448) && (DrawY >= 176) && (DrawY < 304)) gameover_addr = (DrawY - 176) * `NUM_VGA_COLS + (DrawX - 192);
//		else gameover_addr = 1'b0;
//	end
//	
//	game_end_rom gameover (
//		.read_address(gameover_addr),
//		.Clk(Clk),
//		
//		.data_Out(gameover_palette_idx)
//	);
//	
//	logic [15:0][23:0] gameover_palette;
//	assign gameover_palette = {24'h80080, 24'h000000, 24'hdedeff, 24'hff0000, 24'hffb7ae, 24'hde9751, 24'hffb751, 24'hffff00, 24'h00ff00, 24'h47b7ae, 24'h00ffff, 24'h47b7ff, 24'h2121ff, 24'hffb7ff, 24'ha100ff, 24'hffffff};
//	
	maze_rom maze (
		.read_address(maze_rom_addr),
		.Clk(Clk),
		
		.data_Out(maze_rom_out)
		);
		
	always_comb begin
		maze_rom_addr = DrawY * `NUM_VGA_COLS + DrawX;
	
//		if (maze_rom_out[DrawX] > 1'b0) begin
		if ((maze_rom_out == 1'b1) && (DrawX > 8'h10)) begin
			mazeR = 8'h21;
			mazeG = 8'h21;
			mazeB = 8'hff;
		end else begin
			mazeR = 8'h00;
			mazeG = 8'h00;
			mazeB = 8'h00;
		end
	end
	
	
	always_comb
	begin:RGB_Display
		if (Kill == 1'b1) begin
//			if ((DrawX>= 192) && (DrawX < 448) && (DrawY >= 176) && (DrawY < 304)) begin
//				Red = gameover_palette[gameover_palette_idx][23:16];
//				Green = gameover_palette[gameover_palette_idx][15:8];
//				Blue = gameover_palette[gameover_palette_idx][7:0];
//			end
//			else begin
//				Red = 8'hff; 
//				Green = 8'hff;
//				Blue = 8'hff;
//			end
			Red = gameR;
			Green = gameG;
			Blue = gameB;
//			Red = DrawX[7:0];
//			Green = 8'hff - DrawY[7:0] ;
//			Blue = DrawX[3:0];
		end
		else if ((GhastlyR1 != 8'h40) && (GhastlyG1!= 8'hf0) && (GhastlyB1 != 8'hf0)) begin // magic encoding
			Red = GhastlyR1;
			Green = GhastlyG1;
			Blue = GhastlyB1;
		end
		else if ((GhastlyR2 != 8'h40) && (GhastlyG2 != 8'hf0) && (GhastlyB2 != 8'hf0)) begin // magic encoding
			Red = GhastlyR2;
			Green = GhastlyG2;
			Blue = GhastlyB2;
		end
		else if ((ball_on == 1'b1)) begin 
			Red = 8'hff;
			Green = 8'hff;
			Blue = 8'h00;
		end

		else if ((cookie_on == 1'b1)) begin 
			Red = 8'hff;
			Green = 8'hb7;
			Blue = 8'hae;
		end 
		else begin 
			Red = mazeR;
			Green = mazeG;
			Blue = mazeB;
//			Red = 8'h00; 
//			Green = 8'h00;
//			Blue = 8'h00;
		end
	end
	
       
endmodule
