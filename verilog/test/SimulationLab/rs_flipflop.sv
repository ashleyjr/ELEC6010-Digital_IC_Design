// model file for RS flip flop

module rs_flipflop (
  output q,
  input not_r, not_s
  );

timeunit 1ns; timeprecision 10ps;

wire not_q;

  // netlist information

  nand gate1 ( q, not_s, not_q );
  nand gate2 ( not_q, not_r, q );

endmodule
