// source: https://simplefpga.blogspot.com/2012/07/to-code-stopwatch-in-verilog.html

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

reg [22:0] ticker; //23 bits needed to count up to 5M bits
wire click;

reg [7:0] counter;

//the mod 5M clock to generate a tick ever 0.1 second

always_ff @ (posedge Clk or posedge Reset) begin
	if(Reset) begin
		ticker <= 1'b0;
		counter <= 1'b0;
	end
	else if(ticker == 5000000) begin//if it reaches the desired max value reset it
		ticker <= 1'b0;
		counter <= counter + 1'b1;
	end
	else if (counter == 40) begin
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
		if(hex0 == 4'h9) //xxx9 - the 0.1 second digit
		begin  //if_1
			hex0 <= 1'b0;

			if (hex1 == 4'h9) //xx99 
			begin  // if_2
				hex1 <= 1'b0;
		
				if (hex2 == 4'h5) //x599 - the two digit seconds digits
				begin //if_3
					hex2 <= 1'b0;
				
					if(hex3 == 4'h9) //9599 - The minute digit
						hex3 <= 1'b0;
					
					else
						hex3 <= hex3 + 1'b1;
				end
				else //else_3
					hex2 <= hex2 + 1'b1;
			end
			else //else_2
				hex1 <= hex1 + 1'b1;
		end 

		else //else_1
			hex0 <= hex0 + 1'b1;
	end
	
end

endmodule 
