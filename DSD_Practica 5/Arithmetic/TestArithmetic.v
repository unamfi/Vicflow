`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:38:08 03/22/2016
// Design Name:   Arithmetic
// Module Name:   E:/UNAM_IngComputacion/5to_Semestre/DisenoSistemasDigitales/Laboratorio/DSD_Practica5/Arithmetic/TestArithmetic.v
// Project Name:  Arithmetic
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Arithmetic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestArithmetic;

	// Inputs
	reg [3:0] NA;
	reg [3:0] NB;
	reg [1:0] SEL;
	reg CONT;

	// Outputs
	wire [7:0] SALE;

	// Instantiate the Unit Under Test (UUT)
	BlackBox uut (
		.NA(NA), 
		.NB(NB), 
		.SEL(SEL), 
		.CONT(CONT), 
		.SALE(SALE)
	);

	initial begin
		// Initialize Inputs
		NA = 6;
		NB = 2;
		SEL = 0;
		CONT = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		NA = 9;
		NB = 3;
		SEL = 1;
		CONT = 0;
		#100;
		
		NA = 4;
		NB = 13;
		SEL = 2;
		CONT = 0;
		#100;
		
		NA = 7;
		NB = 13;
		SEL = 3;
		CONT = 0;
		#100;
		
		NA = 3;
		NB = 5;
		SEL = 0;
		CONT = 1;
		#100;
		
		NA = 15;
		NB = 9;
		SEL = 1;
		CONT = 1;
		#100;
		
		NA = 4;
		NB = 15;
		SEL = 2;
		CONT = 1;
		#100;
		
		NA = 14;
		NB = 7;
		SEL = 3;
		CONT = 1;
		#100;
		
		NA = 15;
		NB = 9;
		SEL = 0;
		CONT = 0;
		#100;
		
		NA = 10;
		NB = 8;
		SEL = 1;
		CONT = 0;
		#100;
		
		NA = 14;
		NB = 6;
		SEL = 2;
		CONT = 0;
		#100;
		
		NA = 9;
		NB = 5;
		SEL = 3;
		CONT = 0;
		#100;
		
		NA = 8;
		NB = 5;
		SEL = 0;
		CONT = 1;
		#100;
		
		NA = 6;
		NB = 9;
		SEL = 1;
		CONT = 1;
		#100;
		
		NA = 11;
		NB = 5;
		SEL = 2;
		CONT = 1;
		#100;
		
		NA = 2;
		NB = 7;
		SEL = 3;
		CONT = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

