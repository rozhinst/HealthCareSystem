`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:19 12/14/2019
// Design Name:   PressureAnalyzer
// Module Name:   D:/LogicProject/pAnalyzerUnit_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PressureAnalyzer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pAnalyzerUnit_test;

	// Inputs
	reg [4:0] pData;

	// Outputs
	wire pWarning;

	// Instantiate the Unit Under Test (UUT)
	PressureAnalyzer uut (
		.pData(pData), 
		.pWarning(pWarning)
	);

	initial begin
		// Initialize Inputs
		pData = 5'b00000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		pData = 5'b11111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		pData = 5'b01111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		pData = 5'b01000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		pData = 5'b01001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

