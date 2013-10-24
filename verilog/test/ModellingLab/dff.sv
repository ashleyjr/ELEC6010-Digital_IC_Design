// behavioural model of edge triggered D type

module dff(
  output logic Q,
  input D, Clk
  );

timeunit 1ns; timeprecision 10ps;

  // action on clock rising edge
  always_ff @(posedge Clk)
    Q <= D;

endmodule
