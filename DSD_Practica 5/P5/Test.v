`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:31 03/22/2016
// Design Name:   sumT
// Module Name:   E:/UNAM_IngComputacion/5to_Semestre/DisenoSistemasDigitales/Laboratorio/DSD_Practica5/P5/Test.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sumT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [3:0] VA;
	reg [3:0] VB;
	reg CiT;

	// Outputs
	wire [4:0] St;

	// Instantiate the Unit Under Test (UUT)
	sumT uut (
		.VA(VA), 
		.VB(VB), 
		.CiT(CiT), 
		.St(St)
	);

	initial begin
		// Initialize Inputs
		VA = 0;
		VB = 0;
		CiT = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		VA = 1;
		VB = 15;
		CiT = 0;
		#100;
		
		VA = 2;
		VB = 14;
		CiT = 1;
		#100;
		
		VA = 3;
		VB = 13;
		CiT = 0;
		#100;
		
		VA = 4;
		VB = 12;
		CiT = 1;
		#100;
		
		VA = 5;
		VB = 11;
		CiT = 0;
		#100;
		
		VA = 6;
		VB = 10;
		CiT = 1;
		#100;
		
		VA = 7;
		VB = 9;
		CiT = 0;
		#100;
		
		VA = 8;
		VB = 8;
		CiT = 0;
		#100;
        
		// Add stimulus here

	end
      
endmodule

