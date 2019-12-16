`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:40 12/15/2019 
// Design Name: 
// Module Name:    muxFourToOne 
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
module muxFourToOne(
	input[1:0]sel,
	input[3:0]in,
    output out
    );

wire [3:0]w;
wire [1:0]nsel;
not n1(nsel[0],sel[0]),
	 n2(nsel[1],sel[1]);
and a1(w[0],in[0],nsel[0],nsel[1]),
	 a2(w[1],in[1],sel[0],nsel[1]),
	 a3(w[2],in[2],nsel[0],sel[1]),
	 a4(w[3],in[3],sel[0],sel[1]);
or o1(out,w[0],w[1],w[2],w[3]);

endmodule
