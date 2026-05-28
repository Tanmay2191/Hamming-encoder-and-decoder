`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:00:59 10/14/2021
// Design Name:   hamming_ecoder
// Module Name:   C:/Users/tanma/OneDrive/Documents/xilinx/Hamming_code/t_hamming_encoder.v
// Project Name:  Hamming_code
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hamming_ecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_hamming_encoder();

reg [3:0] data;
reg clk;
wire [6:0] codeword;
    
hamming_encoder uut (
		.codeword(codeword), 
		.data(data), 
		.clk(clk)
	);

initial
    begin
	 
		data=0;
		clk=0;
		#10
		clk=1;	
		data = 4'b0000;
      #10;
		clk=0;
		#10;
		clk=1;
      data = 4'b0001;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b0010;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b0011;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b0100;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b0101;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b0110;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b0111;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1000;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1001;
		#10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1010;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1011;
		#10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1100;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1101;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1110;
      #10;
		clk=0;
		#10;
		clk=1;
		data = 4'b1111;
      #10;
    end
endmodule
