`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:25 10/21/2022 
// Design Name: 
// Module Name:    branch_unit_test
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

module branch_unit_test;

    reg [31:0] nextPC;
    reg [25:0] label0;
    reg [15:0] label1;
    reg [31:0] rsAddr;
    reg lblSel;
    reg jumpAddr;
    reg branch;
    reg validJump;

    wire [31:0] nextAddr;


    branch_unit BU (
        .PC_incremented(nextPC),
        .in1(label0),
        .in2(label1),
        .regAddr(rsAddr),
        .lblSel(lblSel),
        .jumpAddr(jumpAddr),
        .branch(branch),
        .validJump(validJump),
        .PC_new(nextAddr)
    );

    initial begin
        
        $monitor("nextAddr = %d", nextAddr);

        nextPC = 32'd200; label0 = 26'd100; label1 = 16'd50; rsAddr = 32'd400; 
        lblSel = 1'b0; jumpAddr = 1'b0; branch = 1'b1; validJump = 1'b1;

        #5 lblSel = 1'b1;
        #5 jumpAddr = 1'b1;
        #5 branch = 1'b0;

        #5 $finish;
    end

endmodule