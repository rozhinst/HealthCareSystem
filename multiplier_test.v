`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:40:55 12/15/2019
// Design Name:   multiplierFourToFour
// Module Name:   D:/LogicProject/multiplier_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplierFourToFour
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	multiplierFourToFour uut (
		.A(A), 
		.B(B), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		A = 4'b1001;
		B = 4'b0100;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here



	end
      
endmodule

