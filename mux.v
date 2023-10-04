`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:44:24
// Design Name: 
// Module Name: mux
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


module mux(a0, a1, a2, a3, O, s0, s1, E);
	
	input a0, a1, a2, a3, s0, s1, E;	//s1 is MSB and s0 is LSB , Enable E is active LOW
	output O;
	
	wire t0, t1, t2, t3;
	
	assign t0 = a0 & (~s1) & (~s0) & (~E);
	assign t1 = a1 & (~s1) & (s0) & (~E);
	assign t2 = a2 & (s1) & (~s0) & (~E);
	assign t3 = a3 & (s1) & (s0) & (~E);
	
	assign O = t0 | t1 | t2 | t3;
	
endmodule

