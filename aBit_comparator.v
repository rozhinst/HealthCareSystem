`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:02 12/15/2019 
// Design Name: 
// Module Name:    aBit_comparator 
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
module aBit_comparator(
    input L,
    input E,
    input G,
	 input tempA,
	 input tempB,
	 input [1:0] A,
	 input [1:0] B,
    output Lt,
    output Et,
    output Gt
    );
	 wire [10:0] w;
	 wire notB2,notB1,notB0;
	 
	 not g1(notB2,tempB),
			g2(notB1,B[1]),
			g3(notB0,B[0]);
	and g4(w[5],notB2,tempA),
			g6(w[3],w[4],notB1,A[1]),
			g8(w[1],notB0,w[2],w[4],A[0]),
			g10(w[6],w[0],w[2],w[4]),
			g12(Et,w[6],E),
			g13(w[7],w[6],G),
			g14(w[9],w[6],L);
			
	xnor g5(w[4],tempA,tempB),
			g7(w[2],A[1],B[1]),
			g9(w[0],A[0],B[0]);
	
	or g11(w[8],w[1],w[3],w[5]),
		g15(Gt,w[7],w[8]),
		g17(Lt,w[10],w[9]);
	
	nor g16(w[10],w[8],w[6]);
endmodule
