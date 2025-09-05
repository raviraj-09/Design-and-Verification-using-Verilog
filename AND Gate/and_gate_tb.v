//// testbench code for and gate
`include "and_gate.v"
module and_gate_tb();

reg a, b;
wire y;
// DUT instantiation
and_gate dut( .a(a), .b(b), .y(y));

initial begin 
stimuli(1'b0, 1'b0, 1'b0);
stimuli(1'b0, 1'b1, 1'b0);
stimuli(1'b1, 1'b0, 1'b0);
stimuli(1'b1, 1'b1, 1'b1);
end

task stimuli;
input A_t, B_t, y_exp;
begin
a = A_t;
b = B_t;
#10
if(y_exp != y)
$display("Error! When A = %0d, B = %0d, Received Y = %0d ", a, b, y);
else
$display("INFO!  When A = %0d, B = %0d, Received Y = %0d ", a, b, y);
end 
endtask 
endmodule

