`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:14:54 12/15/2019
// Design Name:   BloodAbnormalityDetector
// Module Name:   D:/LogicProject/bloodAbnormal_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BloodAbnormalityDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bloodAbnormal_test;

	// Inputs
	reg [3:0] bloodPH;
	reg [2:0] bloodType;

	// Outputs
	wire bloodAbnormality;

	// Instantiate the Unit Under Test (UUT)
	BloodAbnormalityDetector uut (
		.bloodPH(bloodPH), 
		.bloodType(bloodType), 
		.bloodAbnormality(bloodAbnormality)
	);

	initial begin
		// Initialize Inputs
		bloodPH = 4'b0000;
		bloodType = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodPH = 4'b0111;
		bloodType = 3'b001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodPH = 4'b1000;
		bloodType = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

