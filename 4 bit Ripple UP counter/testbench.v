// Code your testbench here
// or browse Examples

module tb_ripple;
   reg clk;
   reg rst;
   wire [3:0] out;

   ripple r0   (  .clk (clk),
                  .rst (rst),
                  .out (out));

   always #5 clk = ~clk;
  initial begin
    $dumpfile("counter.vcd");
    $dumpvars(1);
  end

   initial begin
      rst <= 0;
      clk <= 0;

      repeat (4) @ (posedge clk);
      rst <= 1;

     repeat (29) @ (posedge clk);
      $finish;
   end
endmodule
