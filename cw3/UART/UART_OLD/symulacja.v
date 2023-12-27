`timescale 1ns / 1ps

module symulacja;

	// Inputs
	reg [7:0] slowo_trans;
	reg start_trans;
	reg CLK;

	// Outputs
	wire transmisja;
	wire wyjscie_trans;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.slowo_trans(slowo_trans), 
		.start_trans(start_trans), 
		.CLK(CLK), 
		.transmisja(transmisja), 
		.wyjscie_trans(wyjscie_trans)
	);

	initial begin
		// Initialize Inputs
		slowo_trans = 0;
		start_trans = 1;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		slowo_trans = 8'b10011001;
		 
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
		

		 
		// Add stimulus here

	end
      
endmodule

