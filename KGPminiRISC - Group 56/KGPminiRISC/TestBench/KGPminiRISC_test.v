`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:30:39 11/09/2022
// Design Name:   KGPminiRISC
// Module Name:   /home/vibhu/KGPminiRISC/KGPminiRISC_test.v
// Project Name:  KGPminiRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KGPminiRISC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
/* 
    * Assignment - 6
    * Problem - 3
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)
*/
module KGPminiRISC_test;

	// Inputs
	reg clk;
	reg rst;
	// Instantiate the Unit Under Test (UUT)
	KGPminiRISC uut (
		.clk(clk), 
		.rst(rst)
	);
	
	integer i;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
        #5 rst = 0;
		  
		// For Simulating Sorting.
		
   /*
       #300000
		 $display("Sorting Done!");

		 for(i = 0;i < 10;i=i+1)			 
		 	$display("%d",$signed(uut.DP.dataMemory.inst.native_mem_module.blk_mem_gen_v7_3_inst.memory[i]));
				 $finish;
		*/
		
		#300000
		$display("AP with a = %d, d = %d",
		$signed(uut.DP.dataMemory.inst.native_mem_module.blk_mem_gen_v7_3_inst.memory[0]),
		$signed(uut.DP.dataMemory.inst.native_mem_module.blk_mem_gen_v7_3_inst.memory[1])
		);
		
		$display("Sum of first 5 terms of AP: ",uut.DP.registerFile.registerMemory[19]);
		  
	end
    
    always begin
        #10 clk = ~clk;
    end
      
endmodule


