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
** Module Name: BloodTypeClassification
**********************************************************
** Additional Comments:
*/

module BloodTypeClassification(
        bloodType,
        bloodClass);
input [2:0] bloodType;
output bloodClass;
wire [1:0]tmp1;
wire [3:0]tmp2;
assign tmp1 = bloodType[2:1];
assign tmp2 = 4'b0101;
 muxFourToOne mux(tmp1, tmp2, bloodClass);
endmodule
