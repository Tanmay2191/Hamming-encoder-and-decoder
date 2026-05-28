`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:49 10/13/2021 
// Design Name: 
// Module Name:    Hamming_decoder 
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
module hamming_decoder(codeword,data,clk);

	input clk;
	input [6:0] codeword;
	output reg [3:0] data;
	
	reg [2:0] s;
	reg [6:0] c2;
	
	always@(posedge clk)
	begin
		s[0]=codeword[0] ^ codeword[2] ^ codeword[4] ^ codeword[6];
		s[1]=codeword[1] ^ codeword[2] ^ codeword[5] ^ codeword[6];
		s[2]=codeword[3] ^ codeword[4] ^ codeword[5] ^ codeword[6];
		
		c2=codeword;
		
			if(s)
				begin 
					c2[s-1]=~codeword[s-1];
				end
		end
		
		always@(c2)
		begin
			data[0]=c2[2];
			data[1]=c2[4];
			data[2]=c2[5];
			data[3]=c2[6];
		end
endmodule


/*module hamming_decoder(d_in,d_out);

	input [6:0]d_in;
	output reg [3:0]d_out;
	
	*/