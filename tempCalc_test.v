`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:10:22 12/15/2019
// Design Name:   TemperatureCalculator
// Module Name:   D:/LogicProject/tempCalc_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tempCalc_test;

	// Inputs
	reg [7:0] factoryBaseTemp;
	reg [3:0] factoryTempCoef;
	reg [3:0] tempSensorValue;

	// Outputs
	wire [7:0] temperature;

	// Instantiate the Unit Under Test (UUT)
	TemperatureCalculator uut (
		.factoryBaseTemp(factoryBaseTemp), 
		.factoryTempCoef(factoryTempCoef), 
		.tempSensorValue(tempSensorValue), 
		.temperature(temperature)
	);

	initial begin
		// Initialize Inputs
		factoryBaseTemp = 8'b00000000;
		factoryTempCoef = 4'b0001;
		tempSensorValue = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		// Add stimulus here
				// Initialize Inputs
		factoryBaseTemp = 8'b00010001;
		factoryTempCoef = 4'b1000;
		tempSensorValue = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

