`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:21:05 10/17/2023
// Design Name:   main
// Module Name:   C:/students_ulic/mf/licznik_rewersyjny_2/Licznik_rewersyjny/Sym1.v
// Project Name:  Licznik_rewersyjny
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sym1;

	// Inputs
	reg CLK;
	reg CE;
	reg CD;
	reg SV;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.CLK(CLK), 
		.CE(CE), 
		.CD(CD), 
		.SV(SV), 
		.out(out)
	);
	
	integer i;
	initial begin
		// Initialize Inputs
		CLK = 0;
		CE = 0;
		CD = 0;
		SV = 1;

		// Wait 100 ns for global reset to finish
		#50;
		
		//fork
		//begin
			CE = 1;
			for(i=0; i<11; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		//end
			CE = 0;
			for(i=0; i<2; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		
		#50;
		SV = 0;
		#50;
		SV = 1;
		//fork
		//begin
			CE = 1;
			for(i=0; i<11; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		//end
			CE = 0;
			for(i=0; i<2; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		
		CD = 1;
		
		#50;
		SV = 0;
		#50;
		SV = 1;
		
		CE = 1;
			for(i=0; i<11; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		//end
			CE = 0;
			for(i=0; i<2; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		
		#50;
		SV = 0;
		#50;
		SV = 1;
		//fork
		//begin
			CE = 1;
			for(i=0; i<11; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
		//end
			CE = 0;
			for(i=0; i<2; i=i+1)
			begin
				#25 CLK = 1;
				#25 CLK = 0;
			end
			
	end
endmodule

