//stimulus file for an "up only" counter

module count_stim;

timeunit 1ns; timeprecision 10ps;

logic Up, nReset, Clock;
wire [3:0] Count;

  count instance1 ( Count, Up, Clock, nReset );

  always
    begin
             Clock = 0;
      #250 Clock = 1;
      #500 Clock = 0;
      #250 Clock = 0;
    end

  initial
    begin
	nReset = 1;
	Up = 0;
      #1000
	nReset = 0;
      #1000
	nReset = 1;
      #1000
	Up = 1;
      #5000
	Up = 0;
      #2000
	Up = 1;
      #17000
	Up = 0;
      #3000
	$stop;
	$finish;
    end

  // status interpretation

  function [5:0][7:0] get_direction;
    input up;
    if (up == 1) return "Up";
    else return "Hold";
  endfunction

  logic [5:0][7:0] direction;
  assign direction = get_direction(Up);

   
endmodule
