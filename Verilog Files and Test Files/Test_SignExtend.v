`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:13 11/05/2018
// Design Name:   SignExtend16_32
// Module Name:   /home/vaibhav123/Desktop/Processor/RISC_PROCESSOR_GRP_31/Test_SignExtend.v
// Project Name:  RISC_PROCESSOR_GRP_31
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend16_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_SignExtend;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	SignExtend16_32 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 16'b1111111111011011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

