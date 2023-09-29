`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2023 10:57:22 AM
// Design Name: 
// Module Name: gray_binary
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gray_binary(binary_no,gray_no);
input [3:0] gray_no;
output [3:0] binary_no;

buf g1(binary_no[3],gray_no[3]);
xor g2(binary_no[2],gray_no[2],binary_no[3]);
xor g3(binary_no[1],gray_no[1],binary_no[2]);
xor g4(binary_no[0],gray_no[0],binary_no[1]);

endmodule
