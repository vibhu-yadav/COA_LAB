`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:26 10/28/2022 
// Design Name: 
// Module Name:    register 
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

/* 
    * Assignment - 6
    * Problem - 3
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)
*/

module register (rs, rt, regWrite, writeReg, writeData, clk, rst, readReg_1, readReg_2);

    input [4:0] rs;
    input [4:0] rt;
    input regWrite;
    input [4:0] writeReg;
    input [31:0] writeData;
    input clk;
    input rst;
    output reg [31:0] readReg_1;
    output reg [31:0] readReg_2;
	 
	 integer i;

    reg signed [31:0] registerMemory [31:0];

    always @(posedge clk or posedge rst) begin
	 
        if (rst) begin // On reset signal, reset all registers to hold 0 value.
            for (i = 0; i < 32; i = i + 1)
                registerMemory[i] <= 32'd0;
        end 
		  
		  else if (regWrite)
            registerMemory[writeReg] <= writeData;    
    
	 end

    always @(*) begin
        readReg_1 = registerMemory[rs];
        readReg_2 = registerMemory[rt];
    end

endmodule