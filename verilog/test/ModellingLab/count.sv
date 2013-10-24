// structural model of an "up only" counter

module count(
  output [3:0] count,
  input up, clock, not_reset
  );

timeunit 1ns; timeprecision 10ps;

  dtype dtype0 (count[0], nq0, d0, clock, not_reset);
  dtype dtype1 (count[1], nq1, d1, clock, not_reset);
  dtype dtype2 (count[2], nq2, d2, clock, not_reset);
  dtype dtype3 (count[3], nq3, d3, clock, not_reset);
  xor #1 xor0 (d0, count[0], up);
  xor #1 xor1 (d1, count[1], en1);
  and #1 and1 (en1, count[0], up);
  xor #1 xor2 (d2, count[2], en2);
  and #1 and2 (en2, count[1], en1);
  xor #1 xor3 (d3, count[3], en3);
  and #1 and3 (en3, count[2], en2);

endmodule
