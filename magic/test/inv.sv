// structural model of inv extracted from inv.mag
// created by ext2svmod 5.5

module inv(
	output out ,
	input in 
	);

timeunit 1ns;
timeprecision 10ps;


// include netlist information from inv.vnet

`include "inv.vnet"

endmodule
