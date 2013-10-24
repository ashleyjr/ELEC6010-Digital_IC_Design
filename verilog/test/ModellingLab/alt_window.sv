// alternative behavioural model of a digital window comparator

module window(
  output logic Too_High, OK, Too_Low,
  input [3:0] Top_Limit, Value, Bottom_Limit
  );

timeunit 1ns; timeprecision 10ps;

  always_comb
    begin
      Too_High  =  Value >= Top_Limit;
       Too_Low  =  Value <= Bottom_Limit;
            OK  =  !Too_High && !Too_Low;
    end

endmodule
