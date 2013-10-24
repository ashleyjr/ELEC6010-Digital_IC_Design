// stimulus file for RS flip flop

module rs_flipflop_stim;

timeunit 1ns; timeprecision 10ps;

logic notR, notS;
wire Q;
integer errors;

  rs_flipflop rs_instance1 ( Q, notR, notS );

  // stimulus information

  initial
    begin
        errors=0;
        notR = 1; notS = 1;
      #1000
        notR = 0;
      #1000
        assert ( Q == 0 ) else
          begin errors=errors+1; $display("ERROR with Q"); end
        notR = 1;
      #1000
        assert ( Q == 0 ) else
          begin errors=errors+1; $display("ERROR with Q"); end
        notS = 0;
      #1000
        assert ( Q == 1 ) else
          begin errors=errors+1; $display("ERROR with Q"); end
        notS = 1;
      #1000
        assert ( Q == 1 ) else
          begin errors=errors+1; $display("ERROR with Q"); end
        notR = 0;
      #1000
        assert ( Q == 0 ) else
          begin errors=errors+1; $display("ERROR with Q"); end
        notR = 1;
      #1000
        assert ( Q == 0 ) else
          begin errors=errors+1; $display("ERROR with Q"); end
        if (errors == 0)
	  $display("\nSimulation Passed\n");
        else
	  $display("\nSimulation Failed\nError count = %d\n",errors);
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
