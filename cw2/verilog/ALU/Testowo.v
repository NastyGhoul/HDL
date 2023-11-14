`timescale 1ns / 1ps

module Testowo;

	// Inputs
	reg [7:0] liczbaA;
	reg [7:0] liczbaB;
	reg [1:0] wybor;
	reg bitP;

	// Outputs
	wire [7:0] wynik;
	wire C;
	wire EVEN;
	wire Z;
	wire OV;
	
	// Instantiate the Unit Under Test (UUT)
	main uut (
		.liczbaA(liczbaA), 
		.liczbaB(liczbaB), 
		.wybor(wybor), 
		.bitP(bitP), 
		.wynik(wynik), 
		.C(C),
		.EVEN(EVEN),
		.Z(Z),
		.OV(OV)
	);

	initial begin
		// Initialize Inputs
		liczbaA = 0;
		liczbaB = 0;
		wybor = 0;
		bitP = 0;

		#100;
		wybor = 2'b00;
		liczbaA = 8'b00000101;
		liczbaB = 8'b00000011;
				
		#100;
		wybor = 2'b01;
		liczbaA = 8'b00000101;
		liczbaB = 8'b00000011;
		
		#100;
		wybor = 2'b10;
		liczbaA = 8'b00000101;
		liczbaB = 8'b00000011;
		
		#100;
		wybor = 2'b11;
		liczbaA = 8'b00000101;
		liczbaB = 8'b00000011;
		
		#200;
		wybor = 2'b00;
		liczbaA = 8'b10000101;
		liczbaB = 8'b10000111;
			
		#100;
		wybor = 2'b01;
		liczbaA = 8'b10000101;
		liczbaB = 8'b10000111;
		
		#100;
		wybor = 2'b10;
		liczbaA = 8'b10000101;
		liczbaB = 8'b10000111;
		
		#100;
		wybor = 2'b11;
		liczbaA = 8'b10000101;
		liczbaB = 8'b10000111;
		
		#100;
		wybor = 2'b00;
		liczbaA = 8'b11111111;
		liczbaB = 8'b10000001;
		
		#100;
		wybor = 2'b10;
		liczbaA = 8'b00000001;
		liczbaB = 8'b10000001;
		
		#100;
		wybor = 2'b00;
		liczbaA = 8'b00000001;
		liczbaB = 8'b10000001;
		
		
		
		#100;
		bitP = 1;
		wybor = 2'b00;
		liczbaA = 8'b00000101;
		liczbaB = 8'b00000011;
				
		#100;
		wybor = 2'b01;
		liczbaA = 8'b00000101;
		liczbaB = 8'b00000011;
	end
      
endmodule

