`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:44 11/05/2018
// Design Name:   RISC_Processor
// Module Name:   /home/vaibhav123/Desktop/Processor/RISC_PROCESSOR_GRP_31/Test_Processor.v
// Project Name:  RISC_PROCESSOR_GRP_31
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RISC_Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Processor;

	// Inputs
	reg clock;
	reg im_clock;
	reg reset;

	// Outputs
	wire [31:0] Result;
	wire [31:0] read_addr;
	wire [31:0] instr;
	// Instantiate the Unit Under Test (UUT)
	RISC_Processor uut (
		.clock(clock), 
		.im_clock(im_clock), 
		.reset(reset), 
		.Result(Result), 
		.read_addr(read_addr), 
		.instr(instr)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		im_clock = 0;
		reset = 0;
		#100;
		reset =1;
		#500;
		reset=0;
		// Wait 100 ns for global reset to finish
		
		// Add stimulus here
	end

	always #2 im_clock = !im_clock;
	always #50 clock = !clock;

endmodule
