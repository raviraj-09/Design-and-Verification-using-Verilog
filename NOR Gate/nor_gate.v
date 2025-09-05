//// verilog code for NOR gate

module nor_gate (input a, b, output y);

assign y = ~ (a|b);

endmodule
