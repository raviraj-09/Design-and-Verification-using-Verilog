// Code your design here
module SR_flipflop(input S,R,
                   input clk, rst,
                   output reg q, q_bar);
  
// asynchronous reset  always@(posedge clk or negedge rst)
  
  always@(posedge clk) // synchronous rst
    begin
      if(!rst)
        q <= 0;
      else
        begin
          case ({S,R})
            2'b00 : q <= q;
            2'b01 : q <= 0;
            2'b10 : q <= 1;
            2'b11 : q <= 1'bx;
          endcase
        end
    end
  assign q_bar = ~q;
endmodule
