`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:14 12/15/2019 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [1:0]A,
    input [1:0]B,
    output [3:0]out
    );
	 wire[9:0]w;
	  
	 and g1(out[0],A[0],B[0]),
			g2(out[3],A[1],A[0],B[1],B[0]),
			g3(w[4],A[1],B[1],w[2]),
			g8(w[5],A[1],w[0],B[1]),
			
			g9(w[6],w[1],A[0],B[1]),
			g10(w[7],A[0],w[2],B[1]),
			g11(w[8],A[1],w[3],B[0]),
			g12(w[9],A[1],w[0],B[0]);
	not g4(w[0],A[0]),
	g5(w[1],A[1]),
	g6(w[2],B[0]),
	g7(w[3],B[1]);
	
	or g13(out[2],w[4],w[5]),
	g14(out[1],w[6],w[7],w[8],w[9]);

endmodule
