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
							input logic blank, Clk,
							output logic [7:0]  Red, Green, Blue );
    
	logic ball_on;
	logic [7:0] mazeR, mazeG, mazeB;
	
	logic maze_rom_out;
	logic [18:0] rom_addr;
//	logic [639:0] maze_rom_out;
	


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
	
	
	
	maze_rom maze (
		.read_address(rom_addr),
//		.read_address(DrawY),
		.Clk(Clk),
		
		.data_Out(maze_rom_out)
		);
	
//	always_comb begin
		rom_addr = DrawY * `NUM_VGA_ROWS + DrawX;
	
//		if (maze_rom_out[DrawX] > 1'b0) begin
		if (maze_rom_out == 1'b1) begin
			mazeR = 8'h00;
			mazeG = 8'h00;
			mazeB = 8'h00;
		end else begin
			mazeR = 8'hff;
			mazeG = 8'hff;
			mazeB = 8'hff;
		end
	end
	
	
	always_comb
	begin:RGB_Display
		if ((ball_on == 1'b1)) begin 
			Red = 8'hff;
			Green = 8'h55;
			Blue = 8'h00;
		end else begin 
			Red = mazeR;
			Green = mazeG;
			Blue = mazeB;
		end
	end
	
       
//    always_comb
//    begin:RGB_Display
////		if (~blank) begin
//			if ((ball_on == 1'b1)) begin 
//				Red = 8'hff;
//				Green = 8'h55;
//				Blue = 8'h00;
//			end 
//			else begin 
////				Red = 8'h00; 
////				Green = 8'h00;
////				Blue = 8'h7f - DrawX[9:3];
////				if ((DrawX >= (`NUM_VGA_COLS >> 1) - (`MAZE_DIMS >> 1)) &&
////					 (DrawX <= (`NUM_VGA_COLS >> 1) + (`MAZE_DIMS >> 1)) &&
////					 (DrawY >= 8'h30) &&
////					 (DrawY <= (`NUM_VGA_ROWS - 8'h20))) begin
//					Red = mazeR;
//					Green = mazeG;
//					Blue = mazeB;
////				end 
////				else begin
////					Red = 8'h00;
////					Green = 8'h00;
////					Blue = 8'h00;
////				end
//			end      
////		end 
////		else begin
////			Red = 8'h00;
////			Green = 8'h00;
////			Blue = 8'h00;
////		end
//    end 
//	 
////	 logic [9:0] ModDrawX, ModDrawY;
////	 always_comb begin
////		ModDrawX = DrawX - ((`NUM_VGA_COLS >> 1) - (`MAZE_DIMS >> 1));
////		ModDrawY = DrawY + 8'h30;
////	 end
//	 
//	 maze_resized maze_bkg (
////			.SpriteX(DrawX - ((`NUM_VGA_COLS >> 1) - (`MAZE_DIMS >> 1))),
////			.SpriteY(DrawY + 8'h30),
//			.SpriteX(DrawX),
//			.SpriteY(DrawY),
//			
//         .SpriteR(mazeR),
//			.SpriteG(mazeG),
//			.SpriteB(mazeB)
//			);
    
endmodule
