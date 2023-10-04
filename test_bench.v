`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 18:46:23
// Design Name: 
// Module Name: test_bench
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


module test_bench;

	reg [7:0] i;	//Input variable
	wire [7:0] o;	//Output variable
	reg [1:0] select;
	reg read, clear;	
	
	Circuit C1(i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], o[0], o[1], o[2], o[3], o[4], o[5], o[6], o[7], select[0], select[1], read, clear);
	
	initial 
		begin
		
			clear = 1'b0;	//active LOW reset for all DFFs to clear memory
			#10 clear = 1'b1;   //disabling reset so that DFFs can store data
			
			
			#10 read = 1'b0;   //Setting circuit to WRITE mode by giving active LOW enable to decoder
				select = 2'b00;  //Telling decoder to provide HIGH signals to DFF ICs 0 and 4 for storage
				i = 8'b00010001;   //Writing this value into DFF IC's

			#200 read = 1'b1;
        select = 2'b00;    //Telling multiplexers to read from DFF IC's 0 and 4
    
    
      #200 read = 1'b0;
			#10 select = 2'b01;    //Telling decoder to provide HIGH signals to DFF ICs 1 and 5 for storage
				i = 8'b00100010;	//Writing this value into DFF IC's
			
			
			#200 read = 1'b1;
       select = 2'b01;   //Telling multiplexers to read from DFF IC's 1 and 5
      
      
			
			#200 read = 1'b0;
			#10 select = 2'b10;    //Telling decoder to provide HIGH signals to DFF ICs 2 and 6 for storage
				i = 8'b01000100;	//Writing this value into DFF IC's
			#200 read = 1'b1;	//Setting circuit to READ mode by giving active LOW enable to multiplexers
			  select = 2'b10;   //Telling multiplexers to read from DFF IC's 2 and 6
			
			
			#200 read = 1'b0;
			#10 select = 2'b11;    //Telling decoder to provide HIGH signals to DFF ICs 3 and 7 for storage
				i = 8'b10001000;	//Writing this value into DFF IC's
			
			#200 read = 1'b1;	//Setting circuit to READ mode by giving active LOW enable to multiplexers
			 select = 2'b11;   //Telling multiplexers to read from DFF IC's 3 and 7
		
			
			
			
			end
endmodule
