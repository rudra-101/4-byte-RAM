`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:43:55
// Design Name: 
// Module Name: QuadDFF74LS175
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


module QuadDFF(D0, D1, D2, D3, Q0, Q1, Q2, Q3, Reset, Clk);

	input D0, D1, D2, D3, Clk, Reset;	//Reset is active LOW
	output Q0, Q1, Q2, Q3;
	
	dff DFF0(Q0, D0, Clk, Reset);
	dff DFF1(Q1, D1, Clk, Reset);
	dff DFF2(Q2, D2, Clk, Reset);
	dff DFF3(Q3, D3, Clk, Reset);
	
endmodule
