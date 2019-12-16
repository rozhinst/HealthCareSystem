`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:52 12/15/2019 
// Design Name: 
// Module Name:    fullAdder 
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
 module fullAdder 
  (
   A,
   B,
   cin,
	sum,
   cout
   );
 
  input  A;
  input  B;
  input  cin;
  output sum;
  output cout;
 
  wire   WIRE_1;
  wire   WIRE_2;
  wire   WIRE_3;
       
  assign WIRE_1 = ( A ^ B );
  assign WIRE_2 = ( WIRE_1 & cin );
  assign WIRE_3 = ( A & B );
 
  assign sum   = ( WIRE_1 ^ cin );
  assign cout = ( WIRE_2 | WIRE_3 );

   
endmodule
