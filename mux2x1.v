`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:20 12/15/2019 
// Design Name: 
// Module Name:    mux2x1 
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
module mux2x1(input sel,
		input in1,
		input in2,
		output out
    );
wire [1:0]w;
wire nsel;
not n(nsel,sel);
and a1(w[0],in1,nsel),
	 a2(w[1],in2,sel);
	 
or o(out,w[0],w[1]);


endmodule
