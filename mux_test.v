`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:09 12/15/2019
// Design Name:   muxFourToOne
// Module Name:   D:/LogicProject/mux_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: muxFourToOne
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_test;

	// Inputs
	reg [1:0] sel;
	reg [3:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	muxFourToOne uut (
		.sel(sel), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		sel = 2'b01;
		in = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

