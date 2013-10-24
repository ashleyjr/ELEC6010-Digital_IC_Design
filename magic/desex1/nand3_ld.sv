// structural model of nand3_ld extracted from nand3_ld.mag
// created by ext2svmod 5.5

module nand3_ld(
	output Y ,
	output Yld0 ,
	output Yld1 ,
	input A ,
	input B ,
	input C 
	);

timeunit 1ns;
timeprecision 10ps;


// include netlist information from nand3_ld.vnet

`include "nand3_ld.vnet"

endmodule
