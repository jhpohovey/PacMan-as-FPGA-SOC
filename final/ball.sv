////-------------------------------------------------------------------------
////    Ball.sv                                                            --
////    Viral Mehta                                                        --
////    Spring 2005                                                        --
////                                                                       --
////    Modified by Stephen Kempf 03-01-2006                               --
////                              03-12-2007                               --
////    Translated by Joe Meng    07-07-2013                               --
////    Fall 2014 Distribution                                             --
////                                                                       --
////    For use with ECE 298 Lab 7                                         --
////    UIUC ECE Department                                                --
////-------------------------------------------------------------------------
//
//
//module  ball ( input Reset, frame_clk,
//					input [7:0] keycode,
//               output [9:0]  BallX, BallY, BallS );
//    
//	logic [9:0] Ball_X_Pos, Ball_X_Motion, Ball_Y_Pos, Ball_Y_Motion, Ball_Size;
//	logic [9:0] Mod_X_Pos, Mod_Y_Pos;
//	parameter [9:0] Ball_X_Center=320;  // Center position on the X axis
//	parameter [9:0] Ball_Y_Center=240;  // Center position on the Y axis
//	parameter [9:0] Ball_X_Min=0;       // Leftmost point on the X axis
//	parameter [9:0] Ball_X_Max=639;     // Rightmost point on the X axis
//	parameter [9:0] Ball_Y_Min=0;       // Topmost point on the Y axis
//	parameter [9:0] Ball_Y_Max=479;     // Bottommost point on the Y axis
//	parameter [9:0] Ball_X_Step=1;      // Step size on the X axis
//	parameter [9:0] Ball_Y_Step=1;      // Step size on the Y axis
//
//	assign Ball_Size = 8;  // assigns the value 4 as a 10-digit binary number, ie "0000000100"
//	
//	// don't really need this bound checking because the maze is in the middle of the screen, not possible for ball to be at very edge if in maze
////	if (Ball_X_Pos < Ball_Size) begin
////		Mod_X_Pos = Ball_X_Pos;
////	end
////	else begin
////		Mod_X_Pos = Ball_X_Pos - Ball_Size;
////	end
//	
//	logic no_move_left, no_move_up, no_move_right, no_move_down;
//	assign no_move_left = 1'b0;
//	assign no_move_up = 1'b0;
//	assign no_move_right = 1'b0;
//	assign no_move_down = 1'b0;
//	
////	pacman_wall_collision on_left(
////		.Pos_X(Ball_X_Pos - Ball_size),
////		.Pos_Y(Ball_Y_Pos),
////		
////		.Is_Wall(no_move_left)
////	);
////	pacman_wall_collision on_up(
////		.Pos_X(Ball_X_Pos),
////		.Pos_Y(Ball_Y_Pos - Ball_Size),
////		
////		.Is_Wall(no_move_up)
////	);
////	pacman_wall_collision on_right(
////		.Pos_X(Ball_X_Pos + Ball_size),
////		.Pos_Y(Ball_Y_Pos),
////		
////		.Is_Wall(no_move_right)
////	);
////	pacman_wall_collision on_down(
////		.Pos_X(Ball_X_Pos),
////		.Pos_Y(Ball_Y_Pos + Ball_Size),
////		
////		.Is_Wall(no_move_down)
////	);
//   
//	always_ff @ (posedge Reset or posedge frame_clk )
//	begin: Move_Ball
//		if (Reset)  // Asynchronous Reset
//		begin 
//			Ball_Y_Motion <= 10'd0; //Ball_Y_Step;
//			Ball_X_Motion <= 10'd0; //Ball_X_Step;
//			Ball_Y_Pos <= Ball_Y_Center;
//			Ball_X_Pos <= Ball_X_Center;
//		end
//			  
//		else 
//		begin
////			Ball_X_Motion <= Ball_X_Motion;
////			Ball_Y_Motion <= Ball_Y_Motion;
//
////			if ( no_move_down )  // Ball is at an bottom or top edge, stop moving in y direction
////				Ball_Y_Motion <= 1'b0;
////			
////			if ( no_move_up)  // Ball is at an bottom or top edge, stop moving in y direction
////				Ball_Y_Motion <= 1'b0;
////				
////			if ( no_move_left ) // Ball is at a left or right edge, stop moving in x direction
////				Ball_X_Motion <= 1'b0;
////				
////			if ( no_move_right) // Ball is at a left or right edge, stop moving in x direction
////				Ball_X_Motion <= 1'b0;
//
//			if ( (Ball_Y_Pos + Ball_Size) >= Ball_Y_Max )  // Ball is at the bottom edge, BOUNCE!
//				Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
//					  
//			else if ( Ball_Y_Pos <= (Ball_Y_Min + Ball_Size) )
//				Ball_Y_Motion <= Ball_Y_Step;
//			  
//			else if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max )  // Ball is at the Right edge, BOUNCE!
//				Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);  // 2's complement.
//			  
//			else if ( Ball_X_Pos <= (Ball_X_Min + Ball_Size) )
//				Ball_X_Motion <= Ball_X_Step;
//
//
//			 case (keycode)
//				8'h04 : 	begin // move left (A)
////					if ( ~no_move_left ) begin
////						Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);  // 2's complement.
////						Ball_Y_Motion <= 0;
////					end
//					if ( Ball_X_Pos < (Ball_X_Min + Ball_Size) ) begin
//						Ball_X_Motion <= Ball_X_Step;
//						Ball_Y_Motion <= 0;
//					end
//					else begin
//						Ball_X_Motion <= 0;//A
//						Ball_Y_Motion <= 0;
//					end
//				end
//						  
//				8'h07 :	begin // move right (D)
////					if ( ~no_move_right ) begin
////						Ball_X_Motion <= Ball_X_Step;
////						Ball_Y_Motion <= 0;
////					end
//					if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max ) begin // Ball is at the Right edge, BOUNCE!
//						Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);  // 2's complement.
//						Ball_Y_Motion <= 0;
//					end
//					else begin
//						Ball_X_Motion <= 0;//D
//						Ball_Y_Motion <= 0;
//					end
//				end
//
//						  
//				8'h16 : 	begin // move down (S)
////					if ( ~no_move_down ) begin
////						Ball_Y_Motion <= Ball_Y_Step;
////						Ball_X_Motion <= 0;
////					end
//					if ( (Ball_Y_Pos + Ball_Size) >= Ball_Y_Max ) begin // Ball is at the bottom edge, BOUNCE!
//						Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
//						Ball_X_Motion <= 0;
//					end
//					else begin
//						Ball_Y_Motion <= 0;//S
//						 Ball_X_Motion <= 0;
//					end
//				 end
//						  
//				8'h1A : 	begin // move up (W)
////					if ( ~no_move_up ) begin
////						Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
////						Ball_X_Motion <= 0;
////					end
//					if ( (Ball_Y_Pos + Ball_Size) >= Ball_Y_Max ) begin // Ball is at the bottom edge, BOUNCE!
//						Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
//						Ball_X_Motion <= 0;
//					end
//					else begin
//						Ball_Y_Motion <= 0;//W
//						Ball_X_Motion <= 0;
//					end
//				end
//				
//				default: ;
//			endcase
//		end
//			
//		if ( (Ball_Y_Motion != 0) && (Ball_X_Motion != 0) )
//			Ball_Y_Motion <= 0;
//		Ball_Y_Pos <= (Ball_Y_Pos + Ball_Y_Motion);  // Update ball position
//		Ball_X_Pos <= (Ball_X_Pos + Ball_X_Motion);
//   end
//	end
//       
//	assign BallX = Ball_X_Pos;
//
//	assign BallY = Ball_Y_Pos;
//
//	assign BallS = Ball_Size;
// 
//
//endmodule
