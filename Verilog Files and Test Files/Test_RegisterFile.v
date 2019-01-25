`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:49:41 11/05/2018
// Design Name:   RegisterFile
// Module Name:   /home/vaibhav123/Desktop/Processor/RISC_PROCESSOR_GRP_31/Test_RegisterFile.v
// Project Name:  RISC_PROCESSOR_GRP_31
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_RegisterFile;

	// Inputs
	reg [4:0] readreg1;
	reg [4:0] readreg2;
	reg [4:0] writereg;
	reg [31:0] writedata;
	reg regwrite;
	reg clock;

	// Outputs
	wire [31:0] readdata1;
	wire [31:0] readdata2;
	wire [31:0] outty;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.readreg1(readreg1), 
		.readreg2(readreg2), 
		.writereg(writereg), 
		.writedata(writedata), 
		.regwrite(regwrite), 
		.readdata1(readdata1), 
		.readdata2(readdata2), 
		.clock(clock), 
		.outty(outty)
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		readreg1 = 0;
		readreg2 = 0;
		writereg = 0;
		writedata = 0;
		regwrite = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
	
	end
endmodule
