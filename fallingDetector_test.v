`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:50:49 12/15/2019
// Design Name:   FallingDetector
// Module Name:   D:/LogicProject/fallingDetector_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FallingDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fallingDetector_test;

	// Inputs
	reg [7:0] fdSensorValue;
	reg [7:0] fdFactoryValue;

	// Outputs
	wire fallDetected;

	// Instantiate the Unit Under Test (UUT)
	FallingDetector uut (
		.fdSensorValue(fdSensorValue), 
		.fdFactoryValue(fdFactoryValue), 
		.fallDetected(fallDetected)
	);

	initial begin
		// Initialize Inputs
		fdSensorValue = 8'b00000000;
		fdFactoryValue = 8'b11111111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		// Initialize Inputs
		fdSensorValue = 8'b00000000;
		fdFactoryValue = 8'b00000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		fdSensorValue = 8'b00000100;
		fdFactoryValue = 8'b00000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		
	end
      
endmodule

