// Code your testbench here
// or browse Examples
module comparator_1bit_tb;
  
  reg A, B;
  wire G,L,E;
  
  comparator_1bit comparator(A,B,G,L,E);
  
  initial begin
       $display("G: A>B,  L: A<B,  E: A=B");
    $monitor("A: %b ,B: %b --> G: %b, L: %b, E: %b", A,B,G,L,E);
    
    A = 0; B = 1; #10;
    A = 1; B = 1; #10;
    A = 1; B = 0; #10;
    A = 0; B = 0; #10;
  end
endmodule
    
    
  
