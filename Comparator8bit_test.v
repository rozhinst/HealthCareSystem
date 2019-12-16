`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:32 12/15/2019
// Design Name:   Comparator8Bit
// Module Name:   D:/LogicProject/Comparator8bit_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator8Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comparator8bit_test;

	// Inputs
	reg [7:0] inputP;
	reg [7:0] inputQ;

	// Outputs
	wire pLessThanQ;
	wire pEqualToQ;
	wire pGraterGreaterThanQ;

	// Instantiate the Unit Under Test (UUT)
	Comparator8Bit uut (
		.inputP(inputP), 
		.inputQ(inputQ), 
		.pLessThanQ(pLessThanQ), 
		.pEqualToQ(pEqualToQ), 
		.pGraterGreaterThanQ(pGraterGreaterThanQ)
	);

	initial begin
		// Initialize Inputs
		inputP = 8'b00000000;
		inputQ = 8'b00000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		inputP = 8'b01000000;
		inputQ = 8'b10000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Initialize Inputs
		inputP = 8'b00000111;
		inputQ = 8'b00000010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here



	end
      
endmodule

