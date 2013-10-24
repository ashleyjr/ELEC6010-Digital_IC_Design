// stimulus file nand3_stim.sv for nand3
// created by ext2svmod 5.5

module nand3_stim;

timeunit 1ns;
timeprecision 10ps;

logic A ;
logic B ;
logic C ;

wire Y ;

nand3 instance1(
	.Y ( Y ),
	.A ( A ),
	.B ( B ),
	.C ( C )
	);

// stimulus information follows

initial
  begin
    A = 0;
    B = 0;
    C = 0;

    #1000
          A = 1;
    #1000
          B = 1;
    #1000
          C = 1;
    #1000
          A = 0;
    #1000
          B = 0;
    #1000
          C = 0;

    #1000
          $stop;
          $finish;
  end

// probe information follows

initial
  $monitor($time,
    ,"%b", A ,
    ,"%b", B ,
    ,"%b", C ,
    ,"%b", Y ,
    );


//SIMVISION SCRIPT:nand3.tcl

endmodule
