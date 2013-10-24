// stimulus file nand3_ld_stim.sv for nand3_ld
// created by ext2svmod 5.5

module nand3_ld_stim;

timeunit 1ns;
timeprecision 10ps;

logic A ;
logic B ;
logic C ;

wire Y ;
wire Yld0 ;
wire Yld1 ;

nand3_ld instance1(
	.Y ( Y ),
	.Yld0 ( Yld0 ),
	.Yld1 ( Yld1 ),
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
    ,"%b", Yld0 ,
    ,"%b", Yld1 ,
    );


//SIMVISION SCRIPT:nand3_ld.tcl

endmodule
