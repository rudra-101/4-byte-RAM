`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:45:37
// Design Name: 
// Module Name: Circuit
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


module Circuit(I0, I1, I2, I3, I4, I5, I6, I7, O0, O1, O2, O3, O4, O5, O6, O7, Select0, Select1, Read, Clear);

	input I0, I1, I2, I3, I4, I5, I6, I7, Select0, Select1, Read, Clear;
	output O0, O1, O2, O3, O4, O5, O6, O7;
	
	wire w0, w1, w2, w3; 
	wire q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15;
	wire q16, q17, q18, q19, q20, q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31;
		
	Decoder74LS139 Decoder0(Select0, Select1, Read, w0, w1, w2, w3);
	
	QuadDFF74LS175 DFFIC0(I0, I1, I2, I3, q0, q1, q2, q3, Clear, ~w0);
	QuadDFF74LS175 DFFIC1(I0, I1, I2, I3, q4, q5, q6, q7, Clear, ~w1);
	QuadDFF74LS175 DFFIC2(I0, I1, I2, I3, q8, q9, q10, q11, Clear, ~w2);
	QuadDFF74LS175 DFFIC3(I0, I1, I2, I3, q12, q13, q14, q15, Clear, ~w3);
	
	QuadDFF74LS175 DFFIC4(I4, I5, I6, I7, q16, q17, q18, q19, Clear, ~w0);
	QuadDFF74LS175 DFFIC5(I4, I5, I6, I7, q20, q21, q22, q23, Clear, ~w1);
	QuadDFF74LS175 DFFIC6(I4, I5, I6, I7, q24, q25, q26, q27, Clear, ~w2);
	QuadDFF74LS175 DFFIC7(I4, I5, I6, I7, q28, q29, q30, q31, Clear, ~w3);
	
	MUX74HC153 MUXIC0(q0, q4, q8, q12, O0, q16, q20, q24, q28, O4, Select0, Select1, ~Read, ~Read);
	MUX74HC153 MUXIC1(q1, q5, q9, q13, O1, q17, q21, q25, q29, O5, Select0, Select1, ~Read, ~Read);
	MUX74HC153 MUXIC2(q2, q6, q10, q14, O2, q18, q22, q26, q30, O6, Select0, Select1, ~Read, ~Read);
	MUX74HC153 MUXIC3(q3, q7, q11, q15, O3, q19, q23, q27, q31, O7, Select0, Select1, ~Read, ~Read);
	
endmodule
