// reference: https://stackoverflow.com/questions/37514979/verilog-creating-a-timer-to-count-a-second
// reference: https://simplefpga.blogspot.com/2012/07/to-code-stopwatch-in-verilog.html

module stopwatch(
    input logic Clk,
    input logic Reset,
    input logic Start,
	 input logic Kill,
    
	 output logic [3:0] hex0,
	 output logic [3:0] hex1,
	 output logic [3:0] hex2,
	 output logic [3:0] hex3,
	 
	 output logic internal_randclk
	 
);

reg [22:0] ticker; 
wire click;

reg [7:0] counter;

//clock to generate a tick ever 0.1 second based on 50 MHz wave

always_ff @ (posedge Clk or posedge Reset) begin
	if(Reset) begin
		ticker <= 1'b0;
		counter <= 1'b0;
	end
	else if(ticker == 5000000) begin // reset after 500k edges of 50 MHz clock
		ticker <= 1'b0;
		counter <= counter + 1'b1;
	end
	else if (counter == 40) begin // counter teleport cooldown on ghosts
		counter <= 1'b0;
		ticker <= ticker + 1'b1;
	end
		
	else if(Start) begin//only start if the input is set high
		ticker <= ticker + 1'b1;
	end
	
end

assign click = (((ticker == 5000000) && (~Kill))?1'b1:1'b0); //click to be assigned high every 0.1 second

assign internal_randclk = (((counter == 40) && (~Kill))?1'b1:1'b0); // clock high every 4.0 seconds

always_ff @ (posedge Clk or posedge Reset)
begin
	if (Reset) begin
		hex0 <= 1'b0;
		hex1 <= 1'b0;
		hex2 <= 1'b0;
		hex3 <= 1'b0;
	end

	else if (click) //increment at every click
	begin
		if(hex0 == 4'h9) 
		begin  
			hex0 <= 1'b0;

			if (hex1 == 4'h9)
			begin  
				hex1 <= 1'b0;
		
				if (hex2 == 4'h5) 
				begin 
					hex2 <= 1'b0;
				
					if(hex3 == 4'h9)
						hex3 <= 1'b0;
					
					else
						hex3 <= hex3 + 1'b1;
				end
				else 
					hex2 <= hex2 + 1'b1;
			end
			else 
				hex1 <= hex1 + 1'b1;
		end 

		else 
			hex0 <= hex0 + 1'b1;
	end
	
end

endmodule 
