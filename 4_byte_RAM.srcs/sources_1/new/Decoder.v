`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:42:40
// Design Name: 
// Module Name: Decoder74LS139
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


module Decoder74LS139(S0, S1, En, A0, A1, A2, A3);

	input S0, S1, En;	//S1 is MSB and S0 is LSB , Enable En is active LOW
	output A0, A1, A2, A3;
	
	wire v0, v1, v2, v3;
	
	assign v0 = (~S1) & (~S0);	
	assign v1 = (~S1) & S0;
	assign v2 = S1 & (~S0);
	assign v3 = S1 & S0;

	assign A0 = ~v0 | En;	//taking or with En so that when En is high (disabled) all outputs are high
	assign A1 = ~v1 | En;
	assign A2 = ~v2 | En;
	assign A3 = ~v3 | En;
	
endmodule
