`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:53:20 11/10/2022
// Design Name:   miniRISC_wrapper
// Module Name:   /home/vibhu/Downloads/KGPminiRISC/miniRISC_wrapper_test.v
// Project Name:  KGPminiRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: miniRISC_wrapper
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module miniRISC_wrapper_test;

	// Inputs
	reg clk;
	reg rst;
	reg select;
	reg [9:0] InputFPGA;

	// Outputs
	wire [15:0] OutputFPGA;

	// Instantiate the Unit Under Test (UUT)
	miniRISC_wrapper uut (
		.clk(clk), 
		.rst(rst), 
		.select(select), 
		.InputFPGA(InputFPGA), 
		.OutputFPGA(OutputFPGA)
	);
	
	integer i;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		select = 0;
		InputFPGA = 10'd0;
		i = 0;
		
		#5 rst = 0;
        
		// Add stimulus here
		
		#4000000
		
		select = 1;
		
		for(i=0;i<10;i=i+1) begin
			InputFPGA = i;
			#100000
			$display("Input : %b, Output = %d, select = %b",InputFPGA, $signed(OutputFPGA), select);
		end



	end
	
	always begin
	#10 clk = ~clk;
	end
      
endmodule

// Dump 1

/*
0 : 10
1 : 10
2 : 10
3 : 10
4 : 3
5 : 5
6 : 4
7 : 3
8 : 3
9 : 3
*/

/*
0 : 3
1 : 3
2 : 0
3 : 0
4 : 3
5 : 0
6 : 0
7 : 0
8 : 3
9 : 3
*/

// Dump 2

/*
0 : 10
1 : 9
2 : 8
3 : 7
4 : 6
5 : 5
6 : 4
7 : 3
8 : 2
9 : 1
*/

/*
0 : 10
1 : 10
2 : 10
3 : 10
4 : 3
5 : 5
6 : 4
7 : 3
8 : 3
9 : 3
*/
