`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:44:56
// Design Name: 
// Module Name: MUX74HC153
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX74HC153(A0, A1, A2, A3, o1, A4, A5, A6, A7, o2, S0, S1, E1, E2);

	input A0, A1, A2, A3, A4, A5, A6, A7, S0, S1, E1, E2;	//s1 is MsB and s0 is LSB , enable E1 and E2 are active LOW
	output o1, o2;
	
	mux MUX1(A0, A1, A2, A3, o1, S0, S1, E1);
	mux MUX2(A4, A5, A6, A7, o2, S0, S1, E2);
	
endmodule
