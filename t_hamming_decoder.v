`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:14:17 10/18/2021
// Design Name:   hamming_decoder
// Module Name:   C:/Users/tanma/OneDrive/Documents/xilinx/Hamming_code/t_hamming_decoder.v
// Project Name:  Hamming_code
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hamming_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_hamming_decoder;

	// Inputs
	reg [6:0] codeword;
	reg clk;

	// Outputs
	wire [3:0] data;

	// Instantiate the Unit Under Test (UUT)
	hamming_decoder uut (
		.codeword(codeword), 
		.data(data), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		codeword = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10
		clk=1;
		
		codeword = 8'b0000000;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0001110;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0010101;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0011011;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0100011;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0101101;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0110110;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b0111000;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1000111;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1001001;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1010010;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1011100;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1100100;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1101010;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1110001;
		#10;
		clk=0;
		#10;
		clk=1;
		codeword = 8'b1111111;
		#10;

		// Add stimulus here

	end
      
endmodule

