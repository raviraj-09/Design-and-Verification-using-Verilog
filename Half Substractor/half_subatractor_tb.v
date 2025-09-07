// Code your testbench here
// or browse Examples
module half_subatractor_tb ();
  
  reg A, B;
  wire Diff, Borrow;
  
  half_substractor hs( A, B, Diff, Borrow);
  
  initial begin
    $dumpfile("half_substractor_tb.vcd");
    $dumpvars(0);
  end
  
  initial begin
    $monitor("At time %0t: A = %0b, B = %0b, Diff = %0b, Borrow = %0b", $time, A, B, Diff, Borrow);
    A = 0; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 0;
    #10;
    A = 1; B = 1;
    #10;
  end
endmodule

  
