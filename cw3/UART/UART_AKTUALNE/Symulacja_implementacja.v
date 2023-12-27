`timescale 1ns / 1ps
module Symulacja_implementacja;

	// Inputs
	reg [7:0] slowo_trans;
	reg start_trans;
	reg CLK;
	reg czy_parz;
	reg jaki_parz;

	// Outputs
	wire transmisja;
	wire wyjscie_trans;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.slowo_trans(slowo_trans), 
		.start_trans(start_trans), 
		.CLK(CLK), 
		.czy_parz(czy_parz), 
		.jaki_parz(jaki_parz), 
		.transmisja(transmisja), 
		.wyjscie_trans(wyjscie_trans)
	);

	initial begin
		// Initialize Inputs
		slowo_trans = 8'b10011001;
		start_trans = 0;
		CLK = 0;
		czy_parz = 1;
		jaki_parz = 1;

				// Wait 100 ns for global reset to finish
		 
		#100;
		
		start_trans = 0;
		CLK = 1;
		
		#50;
		start_trans = 1;
		CLK = 0;
		
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;
		#50
		CLK = 1;
		#50
		CLK = 0;

	end
      
endmodule

