`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:26 10/28/2022 
// Design Name: 
// Module Name:    ControlUnit_test
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

module control_unit_test;
    // Inputs
    reg [5:0] opcode;
    reg [4:0] func;

    // Outputs
    wire [1:0] regDst;
    wire regWrite;
    wire memRead;
    wire memWrite;
    wire [1:0] memToReg;
    wire ALUsrc;
    wire [4:0] ALUop;
    wire ALUsel;
    wire branch;
    wire jumpAddr;
    wire lblSel;

    // Instantiate the unit under test
    ControlUnit CU (
        .opcode(opcode),
        .func(func),
        .regDst(regDst),
        .regWrite(regWrite),
        .memRead(memRead),
        .memWrite(memWrite),
        .memToReg(memToReg),
        .ALUsrc(ALUsrc),
        .ALUop(ALUop),
        .ALUsel(ALUsel),
        .branch(branch),
        .jumpAddr(jumpAddr),
        .lblSel(lblSel)
    );

    initial begin
        // Monitor the changes
        $monitor("regDest = %b, regWrite = %b, memRead = %b, memWrite = %b, memToReg = %b, ALUsrc = %b, ALUop = %b, ALUsel = %b, branch = %b, jumpAddr = %b, lblsel = %b",
                regDst, regWrite, memRead, memWrite, memToReg, ALUsrc, ALUop, ALUsel, branch, jumpAddr, lblSel);  

        // Stimulus to verify the working of the Control Unit
        opcode = 6'b000000; func = 5'b00000;
        #5 opcode = 6'b000001; func = 5'b00000;
        #5 opcode = 6'b000010; func = 5'b00000;
        #5 opcode = 6'b000011;
        #5 opcode = 6'b000101;
        #5 opcode = 6'b000111;

        #5 $finish;
    end
endmodule