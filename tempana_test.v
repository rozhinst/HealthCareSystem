`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:26:43 12/15/2019
// Design Name:   TemperatureAnalyzer
// Module Name:   D:/LogicProject/tempana_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureAnalyzer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tempana_test;

	// Inputs
	reg [7:0] temperature;

	// Outputs
	wire temperatureAbnormality;

	// Instantiate the Unit Under Test (UUT)
	TemperatureAnalyzer uut (
		.temperature(temperature), 
		.temperatureAbnormality(temperatureAbnormality)
	);

	initial begin
		// Initialize Inputs
		temperature = 8'b00000010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// Initialize Inputs
		temperature = 8'b00100100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

