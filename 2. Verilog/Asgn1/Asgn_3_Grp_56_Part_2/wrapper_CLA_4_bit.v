`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:36 08/31/2022 
// Design Name: 
// Module Name:    wrapper_CLA_4_bit 
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

    * Assignment - 3
    * Problem - 2.b
    * Semester - 5 (Autumn)
    * Group - 56
    * Group members - Utsav Mehta (20CS10069) and Vibhu (20CS10072)

*/

module wrapper_CLA_4_bit(input clk, input rst, input [3:0] in_data1, input [3:0] in_data2, input cnet, output reg [3:0] out_data,output reg c);

reg [3:0] in1_reg;
reg [3:0] in2_reg;
reg cin;
wire [3:0] out_net;
wire cout;

always @(posedge clk)
    begin
        if(rst)
            begin
                in1_reg<=4'd0;
                in2_reg<=4'd0;
					 cin<=1'b0;
					 out_data<=4'd0;
					 c<=1'b0;
            end
        else
            begin
                in1_reg<=in_data1;
                in2_reg<=in_data2;
					 cin<=cnet;
					 out_data<=out_net;
					 c<=cout;
            end
    end

CLA_4_bit CLA_unit(in1_reg, in2_reg, out_net, cin,  cout);

endmodule