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
module miniRISC_wrapper(clk100mhz, rst, button, out);
	input clk100mhz, rst, button;
	output[31:0] out;
		
	reg signed[9:0] counter;
	
	KGPminiRISC risc(clk100mhz, rst);
	
	always @(posedge rst or posedge button) begin 
		if(rst) 
			counter = 10'd0;
		
		else
			counter = counter + 10'd1;	
	end
	
	assign out = (button) ? 32'd0 : risc.DP.dataMemory.inst.native_mem_module.blk_mem_gen_v7_3_inst.memory[counter];

endmodule
