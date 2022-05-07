module game_rom (
	input [18:0] read_address,
	input Clk,

//	output logic [639:0] data_Out
	output logic data_Out

);

	// mem has width of 640 bits and a total of 480 addresses
//	logic [639:0] mem [0:479];
	logic mem [307199:0];
	
	initial
	begin
		 $readmemb("iu.txt", mem);
	end


	always_ff @ (posedge Clk) begin
		data_Out<= mem[read_address];
	end

endmodule
