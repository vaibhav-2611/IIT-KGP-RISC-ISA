`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:37 11/05/2018
// Design Name:   InstructionMemory
// Module Name:   /home/vaibhav123/Desktop/Processor/RISC_PROCESSOR_GRP_31/Test_InstructionMemory.v
// Project Name:  RISC_PROCESSOR_GRP_31
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_InstructionMemory;

	// Inputs
	reg clka;
	reg [3:0] wea;
	reg [31:0] addra;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	InstructionMemory uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
		addra = 1;
		#100;
		addra = 2;
		#100;
		addra = 3;
		#100;
		addra = 4;
		#100;
		addra = 5;
		#100;
		addra = 6;
		#100;
		addra = 7;
		#100;
		addra = 8;
		#100;
		addra = 9;
		#100;
		addra = 10;
		#100;
		addra = 11;
		#100;
		addra = 12;
		#100;
		addra = 13;
		#100;
		addra = 14;
		#100;
		addra = 15;
		#100;
		addra = 16;
		#100;
		addra = 17;

		// Add stimulus here

	end
      always #50 clka = !clka;      
endmodule

