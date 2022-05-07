//-------------------------------------------------------------------------
//    Ball.sv                                                            --
//    Viral Mehta                                                        --
//    Spring 2005                                                        --
//                                                                       --
//    Modified by Stephen Kempf 03-01-2006                               --
//                              03-12-2007                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Fall 2014 Distribution                                             --
//                                                                       --
//    For use with ECE 298 Lab 7                                         --
//    UIUC ECE Department                                                --
//-------------------------------------------------------------------------


module  ball ( 
	input Reset, 
	input frame_clk,
	input [7:0] keycode,
	input Kill,
	output [9:0]  BallX, BallY, BallS,
	output [3:0] No_Move,
	output [239:0] Not_ate,
	output [7:0] Total_Score

);

	logic [9:0] Ball_X_Pos, Ball_X_Motion, Ball_Y_Pos, Ball_Y_Motion, Ball_Size;

	parameter [9:0] Ball_X_Center=320;  // Center position on the X axis
//	parameter [9:0] Ball_Y_Center=240;  // Center position on the Y axis
	parameter [9:0] Ball_Y_Center=274;  // moved down to be outside of the ghost cage
	parameter [9:0] Ball_X_Min=0;       // Leftmost point on the X axis
	parameter [9:0] Ball_X_Max=639;     // Rightmost point on the X axis
	parameter [9:0] Ball_Y_Min=0;       // Topmost point on the Y axis
	parameter [9:0] Ball_Y_Max=479;     // Bottommost point on the Y axis
	parameter [9:0] Ball_X_Step=1;      // Step size on the X axis
	parameter [9:0] Ball_Y_Step=1;      // Step size on the Y axis

	assign Ball_Size = 8;  // assigns the value 4 as a 10-digit binary number, ie "000000010
	
	logic [9:0] Correct_On_Left, Correct_On_Right, Correct_On_Up, Correct_On_Down;
	logic [7:0] prev_keycode;
	
	logic [4:0] Collision_Resolver_Shift;
	assign Collision_Resolver_Shift = 4'h 0;

	logic no_move_left, no_move_up, no_move_right, no_move_down;
	assign No_Move = {no_move_up, no_move_down, no_move_left, no_move_right};
	
	// COMMENT ME OUT
//	assign no_move_left = 1'b0;
//	assign no_move_up = 1'b0;
//	assign no_move_right = 1'b0;
//	assign no_move_down = 1'b0;
	
	pacman_wall_collision on_left(
		.X_Pos(Ball_X_Pos - Ball_Size),
		.Y_Pos(Ball_Y_Pos),
		
		.Is_Wall(no_move_left)
	);
	pacman_wall_collision on_up(
		.X_Pos(Ball_X_Pos),
		.Y_Pos(Ball_Y_Pos - Ball_Size),
		
		.Is_Wall(no_move_up)
	);
	pacman_wall_collision on_right(
		.X_Pos(Ball_X_Pos + Ball_Size),
		.Y_Pos(Ball_Y_Pos),
		
		.Is_Wall(no_move_right)
	);
	pacman_wall_collision on_down(
		.X_Pos(Ball_X_Pos),
		.Y_Pos(Ball_Y_Pos + Ball_Size),
		
		.Is_Wall(no_move_down)
	);

	cookies_wrapper_all wrapper (
		.Reset(Reset), 
		.Clk(frame_clk),
		.BallX(BallX), 
		.BallY(BallY), 
		.Ball_Size(Ball_Size), 
		.Not_ate(Not_ate),
		.Total_Score(scoring)
	);
	logic [7:0] scoring;
	assign Total_Score = scoring;

	always_ff @ (posedge Reset or posedge frame_clk)
	begin: Move_Ball
		if (Reset)  // Asynchronous Reset
		begin 
			Ball_Y_Motion <= 10'd0; //Ball_Y_Step;
			Ball_X_Motion <= 10'd0; //Ball_X_Step;
			Ball_Y_Pos <= Ball_Y_Center;
			Ball_X_Pos <= Ball_X_Center;
		end
		else if (Kill) begin
			Ball_Y_Pos <= Ball_Y_Pos;
			Ball_X_Pos <= Ball_X_Pos;
		end

		else 
		begin 
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
//			else begin
//				Ball_Y_Motion <= Ball_Y_Motion;  // Ball is somewhere in the middle, don't bounce, just keep moving
			Ball_X_Motion <= Ball_X_Motion;
			Ball_Y_Motion <= Ball_Y_Motion;
			
			Correct_On_Down <= 10'b 0000000000;
			Correct_On_Up <= 10'b 0000000000;
			Correct_On_Left <= 10'b 0000000000;
			Correct_On_Right <= 10'b 0000000000;
			
			

			if ( no_move_down && (prev_keycode == 8'h16) ) begin // Ball is at an bottom or top edge, stop moving in y direction
				Ball_Y_Motion <= 1'b0;
				Correct_On_Down <= (~ (Ball_Y_Step << Collision_Resolver_Shift) + 1'b1);
//				unique case (Ball_Y_Motion)
//					Ball_Y_Step : begin
//						
//					end
//					(~ (Ball_Y_Step) + 1'b1) : begin
//						
//					end
//					default : begin // Y motion is 0
//					
//					end
//				endcase
			end
			
			else if ( no_move_up && (prev_keycode == 8'h1A) ) begin // Ball is at an bottom or top edge, stop moving in y direction
				Ball_Y_Motion <= 1'b0;
				Correct_On_Up <= Ball_Y_Step << Collision_Resolver_Shift; 
			end
			
			else if ( no_move_left && (prev_keycode == 8'h04) ) begin // Ball is at a left or right edge, stop moving in x direction
				Ball_X_Motion <= 1'b0;
				Correct_On_Left <= Ball_X_Step << Collision_Resolver_Shift;
			end
				
			else if ( no_move_right && (prev_keycode == 8'h07) ) begin // Ball is at a left or right edge, stop moving in x direction
				Ball_X_Motion <= 1'b0;
				Correct_On_Right <= (~ (Ball_X_Step << Collision_Resolver_Shift) + 1'b1);
			end

			else begin
				Ball_Y_Motion <= Ball_Y_Motion;


				case (keycode)
				8'h04 : 	begin // move left (A)
//					if ( Ball_X_Pos < (Ball_X_Min + Ball_Size) ) begin
//						Ball_X_Motion <= Ball_X_Step;
//						Ball_Y_Motion <= 0;
//					end
					if ( no_move_left ) begin
						Ball_X_Motion <= 1'b0;
						Ball_Y_Motion <= Ball_Y_Motion;
						Correct_On_Left <= Ball_X_Step << 2;
						
					end
					else begin
						Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);//A
						Ball_Y_Motion <= 1'b0;
					end
					prev_keycode <= keycode;
				end

				8'h07 :	begin // move right (D)
//					if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max ) begin // Ball is at the Right edge, BOUNCE!
//						Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);  // 2's complement.
//						Ball_Y_Motion <= 0;
//					end
					if ( no_move_right ) begin
						Ball_X_Motion <= 1'b0;
						Ball_Y_Motion <= Ball_Y_Motion;
						Correct_On_Right <= (~ (Ball_X_Step << 2) + 1'b1);
					end
					else begin
						Ball_X_Motion <= Ball_X_Step;//D
						Ball_Y_Motion <= 0;
					end
					prev_keycode <= keycode;
				end


				8'h16 : 	begin // move down (S)
//					if ( (Ball_Y_Pos + Ball_Size) >= Ball_Y_Max ) begin // Ball is at the bottom edge, BOUNCE!
//						Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
//						Ball_X_Motion <= 0;
//					end
					if ( no_move_down ) begin
						Ball_Y_Motion <= 1'b0;
						Ball_X_Motion <= Ball_X_Motion;
						Correct_On_Down <= (~ (Ball_Y_Step << 2) + 1'b1);
					end
					else begin
						Ball_Y_Motion <= Ball_Y_Step;//S
						Ball_X_Motion <= 1'b0;
					end
					prev_keycode <= keycode;
				end

				8'h1A : 	begin // move up (W)
//					if ( Ball_Y_Pos < (Ball_Y_Min + Ball_Size) ) begin
//						Ball_Y_Motion <= Ball_Y_Step;
//						Ball_X_Motion <= 0;
//					end
					if ( no_move_up ) begin
						Ball_Y_Motion <= 1'b0;
						Ball_X_Motion <= Ball_X_Motion;
						Correct_On_Up <= Ball_Y_Step << 2;
					end
					else begin
						Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
						Ball_X_Motion <= 1'b0;
					end
					prev_keycode <= keycode;
				end
				
				default: ;
				
				endcase
			end
			
			if (~Kill) begin
				if ( (Ball_Y_Motion != 0) && (Ball_X_Motion != 0) )
					Ball_Y_Motion <= 0;
				Ball_Y_Pos <= (Ball_Y_Pos + Ball_Y_Motion + Correct_On_Up + Correct_On_Down);  // Update ball position
				Ball_X_Pos <= (Ball_X_Pos + Ball_X_Motion + Correct_On_Left + Correct_On_Right);
				
				if (Ball_X_Pos < 10'd120) Ball_X_Pos <= 10'd520;
				if (Ball_X_Pos > 10'd520) Ball_X_Pos <= 10'd120;
				end
			else begin
				Ball_Y_Pos <= Ball_Y_Pos;  // Update ball position
				Ball_X_Pos <= Ball_X_Pos;
			end
			
			

		end  
		
		
		
	end

	assign BallX = Ball_X_Pos;

	assign BallY = Ball_Y_Pos;

	assign BallS = Ball_Size;


endmodule
