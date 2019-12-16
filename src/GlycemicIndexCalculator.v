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
** Module Name: GlycemicIndexCalculator
**********************************************************
** Additional Comments:
*/

module GlycemicIndexCalculator(
        bloodSensor,
        glycemicIndex);
input [7:0] bloodSensor;
output [3:0] glycemicIndex;
wire [7:0]temp;
wire[7:0]notBloodSen;
wire con;
wire [7:0]addIn;
wire [7:0]addResult;
wire [1:0]fRes1;
wire [1:0]fRes2;
wire [2:0]fRes3;
wire isNeg;
wire tempCout;
wire[8:0]sum;
not n0(notBloodSen[0],bloodSensor[0]),
	 n1(notBloodSen[1],bloodSensor[1]),
	 n2(notBloodSen[2],bloodSensor[2]),
	 n3(notBloodSen[3],bloodSensor[3]),
	 n4(notBloodSen[4],bloodSensor[4]),
	 n5(notBloodSen[5],bloodSensor[5]),
	 n6(notBloodSen[6],bloodSensor[6]),
	 n7(notBloodSen[7],bloodSensor[7]);
	 
xor checkNeg(isNeg,bloodSensor[7],0);

mux2x1 m0(isNeg,bloodSensor[0],notBloodSen[0],temp[0]),
	    m1(isNeg,bloodSensor[1],notBloodSen[1],temp[1]),
		 m2(isNeg,bloodSensor[2],notBloodSen[2],temp[2]),
		 m3(isNeg,bloodSensor[3],notBloodSen[3],temp[3]),
		 m4(isNeg,bloodSensor[4],notBloodSen[4],temp[4]),
		 m5(isNeg,bloodSensor[5],notBloodSen[5],temp[5]),
		 m6(isNeg,bloodSensor[6],notBloodSen[6],temp[6]),
		 m7(isNeg,bloodSensor[7],notBloodSen[7],temp[7]),
		 
		 m8(isNeg,0,1,con);
		 
assign addIn = {7'b0000000,con};

eightBitAdder add(addIn,temp,addResult);

fullAdder f1(addResult[0],addResult[1],addResult[2],fRes1[0],fRes1[1]),
			 f2(addResult[3],addResult[4],addResult[5],fRes2[0],fRes2[1]),
			 f3(fRes1[0],fRes2[0],addResult[6],fRes3[0],tempCout),
			 f4(fRes1[1],fRes2[1],tempCout,fRes3[1],fRes3[2]);

eightBitAdder onesCounter({5'b00000,fRes3},{7'b0000000,addResult[7]},sum[7:0],sum[8]);

assign glycemicIndex = sum[3:0]; 

endmodule
