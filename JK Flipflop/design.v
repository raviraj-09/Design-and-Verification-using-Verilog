// Code your design here
module JK_flipflop( input j, k,
                    input clk, rst,
                   output reg q, q_bar);
  
  always @(posedge clk)
    begin
      if(rst == 0)
        q <= 0;
      else
        begin
          case({j,k})
            2'b00 : q <= q;
            2'b01 : q <= 0;
            2'b10 : q <= 1;
            2'b11 : q <= ~q;
            default: $display("Invalid Combination");
          endcase
        end
    end
  assign q_bar = ~q;
endmodule

      
      
