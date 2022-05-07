module ghastly (
	input logic Clk,
	input logic RandClk,
	input logic Reset,
	input logic [9:0] DrawX,
	input logic [9:0] DrawY,
	input logic [9:0] InitX, InitY,
	output logic [7:0] Red, Green, Blue,
	output logic [9:0] X_Pos, Y_Pos
);

logic [11:0] pixel;


Constrained_Dual_LFSR dualrand (
	.Clk(RandClk),
	.Reset(Reset),
	.X_init(InitX),
	.Y_init(InitY),
	
	.X_rand(X_Pos),
	.Y_rand(Y_Pos)
);


always_ff @ (posedge Clk) begin
	pixel <= 12'h4ff;
	if (DrawY == Y_Pos && DrawX == X_Pos) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 2) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 3) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 4) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 5) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 6) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 7) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 8) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 9) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 10) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 11) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 12) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 13) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 0 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 2) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 3) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 4) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 5) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 6) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 7) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 8) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 9) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 10) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 11) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 12) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 13) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 14) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 1 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 0) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 2) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 3) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 4) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 5) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 6) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 7) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 8) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 9) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 10) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 11) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 12) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 13) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 2 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 2) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 3) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 4) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 5) pixel <= 12'h335;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 6) pixel <= 12'h335;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 7) pixel <= 12'h335;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 8) pixel <= 12'h335;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 9) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 10) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 11) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 12) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 13) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 3 && DrawX == X_Pos + 15) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 1) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 2) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 3) pixel <= 12'h335;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 4) pixel <= 12'h335;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 5) pixel <= 12'h335;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 6) pixel <= 12'h335;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 8) pixel <= 12'h224;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 9) pixel <= 12'h224;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 10) pixel <= 12'h224;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 11) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 12) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 13) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 4 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 1) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 2) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 3) pixel <= 12'h335;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 4) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 5) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 8) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 9) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 10) pixel <= 12'h224;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 11) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 12) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 13) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 14) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 5 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 0) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 1) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 2) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 3) pixel <= 12'h335;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 4) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 5) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 8) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 9) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 10) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 11) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 12) pixel <= 12'h224;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 13) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 6 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 1) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 2) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 3) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 4) pixel <= 12'h224;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 5) pixel <= 12'h224;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 8) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 9) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 10) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 11) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 12) pixel <= 12'h224;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 13) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 14) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 7 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 1) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 2) pixel <=12'h000;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 3) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 4) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 5) pixel <= 12'h224;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 7) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 8) pixel <=12'h000;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 9) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 10) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 11) pixel <= 12'h224;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 12) pixel <= 12'h224;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 13) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 14) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 8 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 1) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 2) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 3) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 4) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 5) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 8) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 9) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 10) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 11) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 12) pixel <= 12'h224;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 13) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 14) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 9 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 0) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 1) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 2) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 3) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 4) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 5) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 8) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 9) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 10) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 11) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 12) pixel <= 12'h224;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 13) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 10 && DrawX == X_Pos + 15) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 1) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 2) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 3) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 4) pixel <= 12'hd79;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 5) pixel <= 12'hd79;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 6) pixel <= 12'hd79;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 7) pixel <= 12'hd79;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 8) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 9) pixel <= 12'h224;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 10) pixel <= 12'h224;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 11) pixel <= 12'h224;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 12) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 13) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 11 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 2) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 3) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 4) pixel <= 12'h335;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 5) pixel <= 12'h335;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 6) pixel <= 12'h224;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 7) pixel <= 12'h224;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 8) pixel <= 12'hfff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 9) pixel <= 12'h224;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 10) pixel <= 12'h224;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 11) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 12) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 13) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 12 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 2) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 3) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 4) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 5) pixel <= 12'h335;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 6) pixel <= 12'h335;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 7) pixel <= 12'h335;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 8) pixel <= 12'h224;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 9) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 10) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 11) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 12) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 13) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 14) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 13 && DrawX == X_Pos + 15) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 2) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 3) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 4) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 5) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 6) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 7) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 8) pixel <= 12'h97d;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 9) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 10) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 11) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 12) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 13) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 14 && DrawX == X_Pos + 15) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 0) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 1) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 2) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 3) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 4) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 5) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 6) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 7) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 8) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 9) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 10) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 11) pixel <= 12'h73f;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 12) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 13) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 14) pixel <=12'h4ff;
	if (DrawY == Y_Pos + 15 && DrawX == X_Pos + 15) pixel <=12'h4ff;
end

always_comb begin
	Red = {pixel[11:8], 4'h0};
	Green = {pixel[7:4], 4'h0};
	Blue = {pixel[3:0], 4'h0};
end

endmodule

