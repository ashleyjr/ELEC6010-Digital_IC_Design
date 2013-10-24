// stimulus file for a digital window comparator

module window_stim;

timeunit 1ns; timeprecision 10ps;

logic [3:0] Top_Limit, Value, Bottom_Limit;
wire Too_High, OK, Too_Low;

   window Window (Too_High, OK, Too_Low, Top_Limit, Value, Bottom_Limit);

   initial
      begin
            Top_Limit = 11;
            Bottom_Limit = 4;
            Value = 0;
         #1700
            $stop;
            $finish;
      end

   always
      begin
         #100
            Value = Value + 1;
      end

endmodule
