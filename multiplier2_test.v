`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:43:42 12/15/2019
// Design Name:   multiplier
// Module Name:   D:/LogicProject/multiplier2_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier2_test;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.A(A), 
		.B(B), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		A = 2'b01;
		B = 2'b01;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

