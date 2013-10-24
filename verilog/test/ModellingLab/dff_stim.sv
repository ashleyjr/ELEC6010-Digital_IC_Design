//stimulus file for edge triggered D type

module dff_stim;

timeunit 1ns; timeprecision 10ps;

logic Clk, D;

  dff dff1 ( Q, D, Clk );

  always
    begin
      Clk = 0; #250 Clk = 1; #500 Clk = 0; #250 Clk = 0;
    end
  initial
    begin
      D = 0;
      #1500
      D = 1;
      #500
      D = 0;
      #1000
      D = 1;
      #1500
      D = 0;
      #500
      D = 1;
      #1000
      D = 0;
      #2000
      D = 1;
      #1000
      $stop;
      $finish;
    end

endmodule
