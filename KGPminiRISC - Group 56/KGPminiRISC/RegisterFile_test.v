`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:26 10/28/2022 
// Design Name: 
// Module Name:    register_Test
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
module register_Test;
    // Inputs
    reg [4:0] rs;
    reg [4:0] rt;
    reg regWrite;
    reg [4:0] writeReg;
    reg [31:0] writeData;
    reg clk;
    reg rst;

    // Outputs
    wire [31:0] readReg_1;
    wire [31:0] readReg_2;
    
    // Instantiate 
    register registerFile1 (
        .clk(clk),
        .rst(rst),
        .rs(rs), 
        .rt(rt),
        .regWrite(regWrite),
        .writeReg(writeReg),
        .writeData(writeData),
        .readReg_1(readReg_1),
        .readReg_2(readReg_2)
    );
    
    initial begin
        
        $monitor("rs = %d, rt = d, readReg_1 = %d, readReg_2 = %d", rs, rt, readReg_1, readReg_2);
        
        clk = 1'b0; regWrite = 1'b0; writeData = 75;

        #5 rst = 1'b1;
        
        #5 rst = 1'b0;
        
        #5 rs = 5'b10101; rt = 5'b00101; regWrite = 1'b1; writeData = 45; writeReg = 5'b10101;
        
        #10 regWrite = 1'b0; writeData = 45; writeReg = 5'b10101;
        
        #10 regWrite = 1'b1; writeData = 45; writeReg = 5'b10111;
        
        #10 rs = 5'b10111; writeData = 45; writeReg = 5'b10111;
        
        #5 $finish;
    end
    
    // Change the clock signal after every 5 time units
    always begin
        #5 clk = ~clk;
    end
endmodule