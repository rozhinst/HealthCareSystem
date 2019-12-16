`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:02 12/15/2019
// Design Name:   ParityErrorChecker
// Module Name:   D:/LogicProject/parityCheck_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ParityErrorChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parityCheck_test;

	// Inputs
	reg [5:0] data;

	// Outputs
	wire error;

	// Instantiate the Unit Under Test (UUT)
	ParityErrorChecker uut (
		.data(data), 
		.error(error)
	);

	initial begin
	// Initialize Inputs
		data = 6'b000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			// Initialize Inputs
		data = 6'b100001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			// Initialize Inputs
		data = 6'b100001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			// Initialize Inputs
		data = 6'b000011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		data = 6'b000111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here



	end
      
endmodule

