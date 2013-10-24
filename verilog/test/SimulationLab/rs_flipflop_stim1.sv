// stimulus file for RS flip flop

module rs_flipflop_stim;

timeunit 1ns; timeprecision 10ps;

logic notR, notS;
wire Q;

  rs_flipflop rs_instance1 ( Q, notR, notS );

  // stimulus information

  initial
    begin
        notR = 1; notS = 1;
      #1000
        notR = 0;
      #1000
        notR = 1;
      #1000
        notS = 0;
      #1000
        notS = 1;
      #1000
        notR = 0;
      #1000
        notR = 1;
      #1000
	$display("\n                    Simulation complete\n");
      $stop;   // ajr
      $finish;
    end

  // probe information

  initial
    begin
      $display("                Time     Inputs    Outputs");
      $display("                       notR  notS     Q");
      $display("                ====   ==========  =======");
      $monitor($time,"     %b    %b       %b", notR, notS, Q);
    end

endmodule
