`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:34 12/15/2019 
// Design Name: 
// Module Name:    multiplierFourToFour 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplierFourToFour(
		input [3:0]A,
		input [3:0]B,
		output [7:0]out
    );
	 wire carry1;
	 wire carry2;
	 wire carry3;
	 
	 wire [3:0] wm1;
	 wire [3:0] wm2;
	 wire [3:0] wm3;
	 wire [3:0] wm4;
	 
	 wire [7:0] tmp1;
	 wire [7:0] tmp2;
	 wire [7:0] tmp3;
	 wire [7:0] tmp4;
	 
	 wire [7:0] sum1;
	 wire [7:0] sum2;
	 wire [7:0] sum3;
	 
	 multiplier m1(A[1:0],B[1:0],wm1),
					m2(A[1:0],B[3:2],wm2),
					m3(A[3:2],B[1:0],wm3),
					m4(A[3:2],B[3:2],wm4);
	 
	 assign tmp1 = {4'b0000,wm1};
	 assign tmp2 = {{2'b00,wm2},2'b00};
	 assign tmp3 = {{2'b00,wm3},2'b00};
	 assign tmp4 = {wm4,4'b0000};
	 
	 eightBitAdder a1(tmp1,tmp2,sum1,carry1),
						a2(tmp3,tmp4,sum2,carry2),
						a3(sum1,sum2,sum3,carry3);
						
	 assign out = sum3;
	 
	 


endmodule
