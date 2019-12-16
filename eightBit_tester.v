`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:59:17 12/15/2019
// Design Name:   eightBitAdder
// Module Name:   D:/LogicProject/eightBit_tester.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eightBitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eightBit_tester;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	eightBitAdder uut (
		.A(A), 
		.B(B), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00001111;
		B = 8'b11110000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Initialize Inputs
		A = 8'b01001111;
		B = 8'b11110000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

