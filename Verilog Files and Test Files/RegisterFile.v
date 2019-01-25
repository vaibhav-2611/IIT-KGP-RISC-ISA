`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:12 11/05/2018 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(input [4:0] readreg1, 
                    input [4:0] readreg2, 
						  input [4:0] writereg, 
						  input [31:0] writedata,  
						  input regwrite, 
						  output reg [31:0]readdata1, 
						  output reg[31:0] readdata2,
						  input clock,
						  output reg [31:0]outty
						  );
						  
				
			reg [31:0]registers [31:0];
		always @(negedge clock)
			begin
					if(regwrite)
					begin
					registers[writereg] <= writedata;
					end
			readdata1 <= registers[readreg1];
			readdata2 <= registers[readreg2];
			outty<= registers[20];

			end
		always@(posedge clock)
		begin
			#10;
			readdata1 <= registers[readreg1];
			readdata2 <= registers[readreg2];
			outty<= registers[20];
		end
endmodule
//26 will store end signal
//20 will store the result