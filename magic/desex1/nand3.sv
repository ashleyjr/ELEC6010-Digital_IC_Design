// structural model of nand3 extracted from nand3.mag
// created by ext2svmod 5.5

module nand3(
	output Y ,
	input A ,
	input B ,
	input C 
	);

timeunit 1ns;
timeprecision 10ps;


// include netlist information from nand3.vnet

`include "nand3.vnet"

endmodule
