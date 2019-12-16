`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:14 12/15/2019
// Design Name:   PressureAbnormalityDetector
// Module Name:   D:/LogicProject/pressureAbDetect_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PressureAbnormalityDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pressureAbDetect_test;

	// Inputs
	reg [5:0] pressureData;

	// Outputs
	wire presureAbnormality;

	// Instantiate the Unit Under Test (UUT)
	PressureAbnormalityDetector uut (
		.pressureData(pressureData), 
		.presureAbnormality(presureAbnormality)
	);

	initial begin
		// Initialize Inputs
		pressureData = 6'b101000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		pressureData = 6'b101100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		pressureData = 6'b000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here


	end
      
endmodule

