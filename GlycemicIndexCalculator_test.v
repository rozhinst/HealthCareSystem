`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:06:32 12/16/2019
// Design Name:   GlycemicIndexCalculator
// Module Name:   D:/LogicProject/GlycemicIndexCalculator_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GlycemicIndexCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GlycemicIndexCalculator_test;

	// Inputs
	reg [7:0] bloodSensor;

	// Outputs
	wire [3:0] glycemicIndex;

	// Instantiate the Unit Under Test (UUT)
	GlycemicIndexCalculator uut (
		.bloodSensor(bloodSensor), 
		.glycemicIndex(glycemicIndex)
	);

	initial begin
		// Initialize Inputs
		bloodSensor = 8'b00010001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodSensor = 8'b10010001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		bloodSensor = 8'b00010111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here


	end
      
endmodule

