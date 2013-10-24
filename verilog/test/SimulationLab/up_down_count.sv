// behavioural model of an up/down counter

module up_down_count(
  output logic [3:0] count,
  input up, down, clock, not_reset
  );

timeunit 1ns; timeprecision 10ps;

  always_ff @(posedge clock, negedge not_reset)

    if (!not_reset)
      // asynchronous reset overrides synchronous action
      begin
        count <= 0;
      end
    else
      // action on clock rising edge
      begin
        if (up & ~down) count <= count + 1;
        if (down & ~up) count <= count - 1;
        if (up & down)  count <= 0;
      end


endmodule
