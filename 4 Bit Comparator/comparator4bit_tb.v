// Code your testbench here
// or browse Examples
module comparator4bit_tb;
  
  reg [3:0] A, B;
  wire G,L,E;
  
  comparator4bit comparator(A,B,G,L,E);
  
  initial begin
    
    $display("G: A>B,  L: A<B,  E: A=B");
    $monitor("A: %b, B = %b  -->> G: %b, L=%b, E=%b", A,B,G,L,E);
    
    repeat(8) begin
      A = $random();
      B = $random();
      #10;
    end
  end
endmodule
