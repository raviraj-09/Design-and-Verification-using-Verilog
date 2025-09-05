/////testbench code for xnor gate

`include "xnor_gate.v"
module xnor_gate_tb();
reg x, y;
wire z;

xnor_gate dut(.a(x), .b(y), .y(z));

initial begin 
stimuli(1'b0, 1'b0, 1'b1);
stimuli(1'b0, 1'b1, 1'b0);
stimuli(1'b1, 1'b0, 1'b0);
stimuli(1'b1, 1'b1, 1'b1);
end

task stimuli;
input A_t, B_t, y_exp;
begin
x = A_t;
y = B_t;
#10
if(y_exp != z)
$display("Error! When A = %0d, B = %0d, Received Y = %0d ", x, y, z);
else
$display("INFO!  When A = %0d, B = %0d, Received Y = %0d ", x, y, z);
end 
endtask 
endmodule
