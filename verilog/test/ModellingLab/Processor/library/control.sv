module control(
  input [15:0] data,
  output [11:0] address,
  output [3:0] operation,
  output memory_write,
  input zflag, clock, not_reset
  );

timeunit 1ns; timeprecision 10ps;

`include "opcodes.sv"

enum logic { FETCH = 0, EXECUTE = 1 } state;
logic [11:0] Program_Counter;
logic [15:0] Instruction_Register;

logic [11:0] operand;
logic [3:0] opcode;
logic branch;

   assign operand = Instruction_Register[11:0];
   assign opcode  = Instruction_Register[15:12];

   assign memory_write = (opcode == STA) && (state == EXECUTE);

   assign address = (state == FETCH) ? Program_Counter : operand;
   assign operation = (state == FETCH) ? NOP : opcode;

   assign branch = (state == EXECUTE) && ((operation ==JMP) ||
                               ((operation ==JMPZ) && (zflag == 1)) ||
                               ((operation ==JMPNZ) && (zflag == 0)));

   always_ff @(posedge clock, negedge not_reset)
      if (!not_reset)
         begin
            Program_Counter <= 0;
            state <= FETCH;
            Instruction_Register <= 0;
         end
      else
         begin

            if (state == FETCH)
               begin
                  Instruction_Register <= #20 data;
                  state <= #20 EXECUTE;
               end
            else // execute cycle
               begin
                  state <= #20 FETCH;
               end

            if (branch)
               Program_Counter <= #20 operand;
            else if (state == FETCH)
               Program_Counter <= #20 Program_Counter + 1;

         end

endmodule
