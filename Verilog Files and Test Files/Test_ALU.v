`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:55:20 11/05/2018
// Design Name:   ALU
// Module Name:   /home/vaibhav123/Desktop/Processor/RISC_PROCESSOR_GRP_31/Test_ALU.v
// Project Name:  RISC_PROCESSOR_GRP_31
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALU;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;
	reg [2:0] ALUctr;
	reg branch;

	// Outputs
	wire [31:0] out;
	wire [3:0] flag;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.in1(in1), 
		.in2(in2), 
		.ALUctr(ALUctr), 
		.branch(branch), 
		.out(out), 
		.flag(flag)
	);

	initial begin
		// Initialize Inputs
		in1 = 10;
		in2 = 12;
		ALUctr = 3'b001; //ADD
		branch = 0;
	
		// Wait 100 ns for global reset to finish
		#100;
        
		in1 = 31;
		in2 = 127;
		ALUctr = 3'b100; //XOR
		branch = 0;
	
		// Wait 100 ns for global reset to finish
		#100;
        
		in1 = 31;
		in2 = 127;
		ALUctr = 3'b101; //shllv
		branch = 0;
	
		// Wait 100 ns for global reset to finish
		#100;
           
	end
      
endmodule

