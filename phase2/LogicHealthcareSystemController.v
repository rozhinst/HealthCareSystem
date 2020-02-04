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
** Module Name: LogicHealthcareSystemController
**********************************************************
** Additional Comments:
*/

module LogicHealthcareSystemController(  
    clock,
    presureAbnormality,
    bloodAbnormality,
    fallDetected,
    temperatureAbnormality,
    nervousAbnormality,
    abnormaliryWarning);
  
input clock;
input presureAbnormality;
input bloodAbnormality;
input fallDetected;
input temperatureAbnormality;
input [1:0] nervousAbnormality;
output [2:0] abnormaliryWarning;
wire[3:0] sum;
reg [2:0]state;
parameter s0 = 3'b000, s1 = 3'b001,s2 = 3'b010,s3 = 3'b011,s4 = 3'b100,s5 = 3'b0101,s6 = 3'b110;
assign sum =  presureAbnormality + bloodAbnormality + fallDetected + temperatureAbnormality + nervousAbnormality[0] + nervousAbnormality[1];
always @(posedge clock)
	begin
		state = s0;
		case(sum)
		
			3'b000: state = s0;
			3'b001: state = s1;
			3'b010: state = s2;
			3'b011: state = s3;
			3'b100: state = s4;
			3'b101: state = s5;
			3'b110: state = s6;
			
		
		endcase
	end
assign abnormaliryWarning = state;





endmodule
