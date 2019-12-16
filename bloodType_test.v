`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:49:37 12/15/2019
// Design Name:   BloodTypeClassification
// Module Name:   D:/LogicProject/bloodType_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BloodTypeClassification
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bloodType_test;

	// Inputs
	reg [2:0] bloodType;

	// Outputs
	wire bloodClass;

	// Instantiate the Unit Under Test (UUT)
	BloodTypeClassification uut (
		.bloodType(bloodType), 
		.bloodClass(bloodClass)
	);

	initial begin
		// Initialize Inputs
		bloodType = 3'b001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodType = 3'b010;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodType = 3'b100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	

	end
      
endmodule

