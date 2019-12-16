`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:12 12/15/2019 
// Design Name: 
// Module Name:    eBit_comparator 
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
module eBit_comparator(
		input L,
    input E,
    input G,
	 input [7:0] A,
	 input [7:0] B,
    output Lt,
    output Et,
    output Gt
    );
	 wire [5:0]w;
	 aBit_comparator c1(L,E,G,A[2],B[2],A[1:0],B[1:0],w[0],w[1],w[2]);
	 aBit_comparator c2(w[0],w[1],w[2],A[5],B[5],A[4:3],B[4:3],w[3],w[4],w[5]); 
	 aBit_comparator c3(w[3],w[4],w[5],1,1,A[7:6],B[7:6],Lt,Et,Gt);
endmodule
