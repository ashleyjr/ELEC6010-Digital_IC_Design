// behavioural model of a digital window comparator

module window(
  output Too_High, OK, Too_Low,
  input [3:0] Top_Limit, Value, Bottom_Limit
  );

timeunit 1ns; timeprecision 10ps;

   assign Too_High  =  Value >=  Top_Limit;
   assign  Too_Low  =  Value <=  Bottom_Limit;
   assign       OK  =  !Too_High && !Too_Low;

endmodule
