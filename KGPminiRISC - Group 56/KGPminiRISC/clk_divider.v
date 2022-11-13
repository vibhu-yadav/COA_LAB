
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:34 11/11/2022 
// Design Name: 
// Module Name:    clk_divider 
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

`timescale 1ns / 1ps

module clk_divider(input clk, output reg out_clk);
	reg [31:0] cnt = 32'd0;
	parameter factor = 32'd500;
	
	always @(posedge clk) begin
		cnt <= cnt + 32'd1;
		if(cnt >= (factor-1))
			cnt <= 32'd0;
		if(cnt < (factor/2))
			out_clk <= 1'b1;
		else
			out_clk <= 1'b0;
	end
endmodule
