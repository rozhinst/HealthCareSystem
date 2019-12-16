`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:56:44 12/15/2019
// Design Name:   BloodPHAnalyzer
// Module Name:   D:/LogicProject/phAnalyze_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BloodPHAnalyzer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module phAnalyze_test;

	// Inputs
	reg [3:0] bloodPH;

	// Outputs
	wire abnormalityP;
	wire abnormalityQ;

	// Instantiate the Unit Under Test (UUT)
	BloodPHAnalyzer uut (
		.bloodPH(bloodPH), 
		.abnormalityP(abnormalityP), 
		.abnormalityQ(abnormalityQ)
	);

	initial begin
		// Initialize Inputs
		bloodPH = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodPH = 4'b0111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodPH = 4'b0110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

