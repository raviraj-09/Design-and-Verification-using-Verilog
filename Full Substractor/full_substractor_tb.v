// Code your testbench here
// or browse Examples
module full_substractor_tb();
  
  reg A, B, BorrowIn;
  wire Diff, BorrowOut;
  
  full_substractor fs(A, B, BorrowIn, Diff, BorrowOut);
  
  initial begin
    $dumpfile("full_substractor.vcd");
    $dumpvars(0);
  end
  
  initial begin
    $monitor("At Time %0t: A = %0b, B = %0b, BorrowIn = %0b, Diff = %0b, BorrowOut = %0b", $time, A, B, BorrowIn, Diff, BorrowOut);
    
  A = 0 ; B = 0; BorrowIn = 0;
    #10;
       
  A = 0 ; B = 0; BorrowIn = 1;
    #10;
       
  A = 0 ; B = 1; BorrowIn = 0;
    #10;
       
  A = 0 ; B = 1; BorrowIn = 1;
    #10;
       
  A = 1 ; B = 0; BorrowIn = 0;
    #10;
       
  A = 1 ; B = 0; BorrowIn = 1;
    #10;
      
  A = 1 ; B = 1; BorrowIn = 0;
    #10;
       
  A = 1 ; B = 1; BorrowIn = 1;
    #10;
    
  end
endmodule
             
