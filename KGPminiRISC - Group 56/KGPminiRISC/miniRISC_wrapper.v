`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:10 11/09/2022 
// Design Name: 
// Module Name:    miniRISC_wrapper 
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
module miniRISC_wrapper(clk, rst, 
                        select, InputFPGA, OutputFPGA);
								
	input clk, rst;
	
	input select;
	input [9:0] InputFPGA;
	output [15:0] OutputFPGA;
	
	wire out_clk;
	clk_divider clkdivl(clk, out_clk);

	KGPminiRISC risc(clk, rst, InputFPGA, select, OutputFPGA);
	
endmodule
