//stimulus file for an up/down counter

module up_down_count_stim;

timeunit 1ns; timeprecision 10ps;

logic Up, Down, nReset, Clock;
wire [3:0] Count;

  up_down_count instance1 ( Count, Up, Down, Clock, nReset );

  // stimulus information

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
        Up = 0; Down = 0;
      #1000
        nReset = 0;
      #1000
        nReset = 1;
      #1000
        Up = 1;
      #15000
        Up = 0;
      #1000
        $stop;
        Down = 1;
      #15000
        Down = 0;
      #2000
        $stop;
        Up = 1; Down = 0;
      #4000
        Up = 0; Down = 1;
      #7000
        Up = 1; Down = 0;
      #23000
        $stop;
        $finish;
    end


  // status interpretation

  function [5:0][7:0] get_direction;
    input up, down;
    if ({up,down} == 2'b10) return "Up";
    else if ({up,down} == 2'b01) return "Down";
    else if ({up,down} == 2'b11) return "Reset";
    else return "Hold";
  endfunction

  wire [5:0][7:0] direction;
  assign direction = get_direction(Up,Down);

   
endmodule
