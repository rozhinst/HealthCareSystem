`timescale 1ns / 1ps
`default_nettype none

/*
**********************************************************
** Logic Design Final Project Fall, 2019 Semester
** Amirkabir University of Technology (Tehran Polytechnic)
** Department of Computer Engineering (CEIT-AUT)
** Logic Circuit Design Laboratory
** https://ceit.aut.ac.ir
**********************************************************
** Student ID: XXXXXXX
** Student ID: XXXXXXX
**********************************************************
** Module Name: TemperatureCalculator
**********************************************************
** Additional Comments:
*/

module TemperatureCalculator(
        factoryBaseTemp,
        factoryTempCoef,
        tempSensorValue,
        temperature);
input [7:0] factoryBaseTemp;
input [3:0] factoryTempCoef;
input [3:0] tempSensorValue;
output [7:0] temperature;
wire [7:0]mOut;
wire [7:0]adderIn;
wire carry;
multiplierFourToFour m(tempSensorValue,factoryTempCoef, mOut);
assign adderIn = ({3'b000,mOut[7:3]});

eightBitAdder add(factoryBaseTemp,adderIn,temperature,carry);

endmodule
