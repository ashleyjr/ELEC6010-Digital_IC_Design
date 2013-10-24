// structural model of edge triggered D type

module dtype(
  output wire Q, nQ,
  input wire D, Clk, nRst
  );

timeunit 1ns; timeprecision 10ps;

wire net1, net2, net3, net4;

   nand #1 nand1 ( net1, net3, D, nRst );
   nand #1 nand2 ( net2, net1, net4 );
   nand #1 nand3 ( net3, Clk, net1, net4 );
   nand #1 nand4 ( net4, Clk, net2, nRst );
   nand #1 nand5 ( nQ, nRst, net3, Q );
   nand #1 nand6 ( Q, nQ, net4 );

endmodule
