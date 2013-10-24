// stimulus file inv_stim.sv for inv
// created by ext2svmod 5.5

module inv_stim;

timeunit 1ns;
timeprecision 10ps;

logic in ;

wire out ;

inv instance1(
	.out ( out ),
	.in ( in )
	);

// stimulus information follows

always
  begin
    in = 0;
    #250
         in = 1;
    #500
         in = 0;
    #250
         in = 0;
  end

initial
  begin


    #1000
          $stop;
          $finish;
  end

// probe information follows

initial
  $monitor($time,
    ,"%b", in ,
    ,"%b", out ,
    );


//SIMVISION SCRIPT:inv.tcl

endmodule
