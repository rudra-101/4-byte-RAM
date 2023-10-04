`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:43:16
// Design Name: 
// Module Name: dff
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


module dff(q,d,clk,reset);

	input d,clk,reset;    //reset is active LOW
	output q;
	reg q;
  	
	always@(posedge clk)	//Positive edge triggered DFF
		q <= d;

	always@(~reset)    //active LOW reset
		q <= 1'b0;
		
endmodule
