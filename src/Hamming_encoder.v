`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:35 10/13/2021 
// Design Name: 
// Module Name:    Hamming_encoder 
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

module hamming_encoder(clk,data,codeword);

	input clk;
	input [3:0] data;
	output reg [6:0] codeword;
	
	always@(posedge clk)
	begin
	
	codeword[6]=data[3];
	codeword[5]=data[2];
	codeword[4]=data[1];
	codeword[3]=data[1]^data[2]^data[3];
	codeword[2]=data[0];
	codeword[1]=data[0]^data[2]^data[3];
	codeword[0]=data[0]^data[1]^data[3];
	
	end
	
endmodule
	