`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:01:16 11/05/2018
// Design Name:   ControlUnit
// Module Name:   /home/vaibhav123/Desktop/Processor/RISC_PROCESSOR_GRP_31/Test_ControlUnit.v
// Project Name:  RISC_PROCESSOR_GRP_31
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ControlUnit;

	// Inputs
	reg [5:0] instruction;
	reg [5:0] fn;

	// Outputs
	wire ret;
	wire call;
	wire [1:0] regdst;
	wire [1:0] flag;
	wire branch;
	wire brnoeq;
	wire gotoreg;
	wire onlygoto;
	wire memtoreg;
	wire memread;
	wire memwrite;
	wire [1:0] alusrc;
	wire [2:0] aluctr;
	wire regwrite;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.instruction(instruction), 
		.fn(fn), 
		.ret(ret), 
		.call(call), 
		.regdst(regdst), 
		.flag(flag), 
		.branch(branch), 
		.brnoeq(brnoeq), 
		.gotoreg(gotoreg), 
		.onlygoto(onlygoto), 
		.memtoreg(memtoreg), 
		.memread(memread), 
		.memwrite(memwrite), 
		.alusrc(alusrc), 
		.aluctr(aluctr), 
		.regwrite(regwrite)
	);

	initial begin
		// Initialize Inputs
		instruction = 6'b00000;
		fn = 6'b000001 ; 	//add

		// Wait 100 ns for global reset to finish
		#100;
		
		instruction = 6'b00000;
		fn = 6'b000100 ; //xor
		
		#100;
		instruction = 6'b00001; // load
		
		#100;
		instruction = 6'b00010; // store
		
		#100;
		instruction = 6'b110001;	//bz
		
		// Add stimulus here

	end
      
endmodule

