`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:23 12/15/2019
// Design Name:   TemperatureAbnormalityDetector
// Module Name:   D:/LogicProject/tempAb_test.v
// Project Name:  LogicCircuitDesignProjectFirstPhase
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureAbnormalityDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tempAb_test;

	// Inputs
	reg [7:0] factoryBaseTemp;
	reg [3:0] factoryTempCoef;
	reg [3:0] tempSensorValue;

	// Outputs
		wire temperatureAbnormality;

	// Instantiate the Unit Under Test (UUT)
	TemperatureAbnormalityDetector uut (
		.factoryBaseTemp(factoryBaseTemp), 
		.factoryTempCoef(factoryTempCoef), 
		.tempSensorValue(tempSensorValue), 
		.temperatureAbnormality(temperatureAbnormality)
	);

	initial begin
		// Initialize Inputs
		factoryBaseTemp = 8'b00010001;
		factoryTempCoef = 4'b1000;
		tempSensorValue = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

