`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:16 10/28/2022 
// Design Name: 
// Module Name:    datapath 
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

module DataPath (regDst, regWrite, memRead, memWrite, memToReg, ALUop, ALUsrc, ALUsel, branch, jumpAddr, lblSel, clk, rst, opcode, func,
					 // Added new ports. 
					  select, in, out);
					  
	 input [9:0] in;
	 output [15:0] out;
	 input select;
	 

    input [1:0] regDst;
    input regWrite;
    input memRead;
    input memWrite;
    input [1:0] memToReg;
    input ALUsrc;
    input [4:0] ALUop;
    input ALUsel;
    input branch;
    input jumpAddr;
    input lblSel;
    input clk;
    input rst;
    output [5:0] opcode;
    output [4:0] func;
	 
    parameter ra = 5'b11111;    // Register ra

    wire enable;
    wire carry, zero, sign, validJump, lastCarry;
    wire [31:0] nextInstrAddr, instruction, writeData, readReg_1, instrAddr, result, nextPC, readReg_2, out_extended, b, dataMemReadData;
    wire [25:0] in1;
    wire [15:0] in2, imm;
    wire [4:0] rs, rt, shamt, writeReg;
    wire [31:0] offset;
    
    //assign enable = memRead | memWrite;         
    
	 assign enable = memRead | memWrite | select; // Changed
	 
	 assign offset = nextInstrAddr >>> 2'b10;

		wire [9:0] addr_to_mem; // Changed
		assign addr_to_mem = select ? in : result[9:0] >>> 2'b10; // Changed
		
		assign out = dataMemReadData[15:0]; // Changed


    BlockROM instructionMemory (
        .clka(clk),
        .ena(1'b1),
        .addra(offset[9:0]),
        .douta(instruction)
    );
	 
	 BlockRAM dataMemory (
        .clka(~clk),
        .ena(enable),
        .wea(memWrite),
        .addra(addr_to_mem),
        .dina(readReg_2),
        .douta(dataMemReadData)
     );
	 
	  instruction_decode instructionDecoder (
        .instruction(instruction),
        .opcode(opcode),
        .func(func),
        .in1(in1),
        .in2(in2),
        .rs(rs),
        .rt(rt),
        .shamt(shamt),
        .imm(imm)
    );
	 
    program_counter PC (
        .clk(clk),
        .reset(rst),
		  .address(nextInstrAddr),
        .out(instrAddr)
    );

    PC_increment PCInc (
        .PC(instrAddr),
        .PC_incremented(nextPC)
    );
	 
	 ALU_unit ALU (
        .a(readReg_1),
        .b(b),
        .ALUsel(ALUsel),
        .ALUop(ALUop),
        .carry(carry),
        .zero(zero), 
        .sign(sign),
        .result(result)
    );

    register registerFile (
        .rs(rs),
        .rt(rt),
        .regWrite(regWrite),
        .writeReg(writeReg),
        .writeData(writeData),
        .clk(clk),
        .rst(rst),
        .readReg_1(readReg_1),
        .readReg_2(readReg_2)
    );

    sign_extend SE (
        .opcode(opcode),
        .func(func),
        .instr(imm),
        .out_extended(out_extended)
    );

    jump_control JC (
        .opcode(opcode),
        .sign(sign),
        .carry(lastCarry),
        .zero(zero),
        .validJump(validJump)
    );

    branch_unit branchUnit (
        .PC_incremented(nextPC),
        .in1(in1),
        .in2(in2),
        .regAddr(readReg_1),
        .lblSel(lblSel),
        .jumpAddr(jumpAddr),
        .branch(branch),
        .validJump(validJump),
        .PC_new(nextInstrAddr)
    );

    d_flip_flop DFF (
        .clk(clk),
        .rst(rst),
        .d(carry),
        .q(lastCarry)
    );
	 
	 mux_5x3_to_1 MUX1 (
        .a(rs),
        .b(rt),
        .c(ra),
        .select(regDst),
        .out(writeReg)
    );
	 
	 mux_32_to_1 MUX2 (
        .a(readReg_2),
        .b(out_extended),
        .select(ALUsrc), 
        .out(b)
    );

    mux_32x3_to_1 MUX3 (
        .a(nextPC),
        .b(dataMemReadData),
        .c(result),
        .select(memToReg),
        .out(writeData)
    );

endmodule