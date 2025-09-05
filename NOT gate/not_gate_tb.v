// testbench code for not gate in verilog
`include "not_gate.v"
module not_gate_tb;
reg A;wire Y;
not_gate dut (.x(A), .y(Y));
initial begin
     A = 0;
  #1 A = 1;
  #1 A = 0;

    $monitor ("%t | A = %d| Y = %d", $time, A, Y);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule