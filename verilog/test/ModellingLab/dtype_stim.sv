module dtype_stim;

timeunit 1ns; timeprecision 10ps;

//Variable declarations for stimulus inputs.

logic nRst;
logic Clk;
logic D;

  //Instance of module "dtype" to be simulated.

  dtype dtype1 ( Q, nQ, D, Clk, nRst );

  //Task declarations provide stimulus macros.

  task pulse_reset;
    begin
      nRst = 1;
      #1000
      nRst = 0;
      #1000
      nRst = 1;
      #1000
      nRst = 1;
    end
  endtask

  task clock_pulse;
    begin
      Clk = 0;
      #1000
      Clk = 1;
      #1000
      Clk = 0;
      #1000
      Clk = 0;
    end
  endtask

  task init_sig;
    begin
      {nRst,Clk,D} = 3'b000;
      #1000
      {nRst,Clk,D} = 3'b100;
    end
  endtask

  task end_sig;
    begin
      {nRst,Clk,D} = 3'b100;
      #2000
      {nRst,Clk,D} = 3'b100;
    end
  endtask


  //Stimulus definition.

  initial
    begin
      init_sig;
      D = 0;
      clock_pulse;
      D = 1;
      clock_pulse;
      clock_pulse;
      pulse_reset;
      #1000 Clk = 1;
      pulse_reset;

      clock_pulse;
      end_sig;
      $stop;
    end


  //Probe information.

  initial 
    $write("	TIME	IN D Clk nRst OUT Q nQ\n");
  initial 
    $monitor($time,,"%b",D,"%b",Clk,"%b",nRst,,"%b",Q,"%b",nQ );

endmodule
