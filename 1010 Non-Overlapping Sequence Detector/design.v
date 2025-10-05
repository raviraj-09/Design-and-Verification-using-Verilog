// Code your design here

module seq_detector_1010(input bit clk, rst_n, x, output reg z);
  parameter A = 2'b00;
  parameter B = 2'b01;
  parameter C = 2'b10;
  parameter D = 2'b11;
  
  reg [3:0] state, next_state;
  always @(posedge clk or posedge rst_n) begin
    if(!rst_n) begin 
      state <= A;
    end
    else state <= next_state;
  end
  
  always @(*) begin
    z = 1'b0;
    case(state)
      A: begin
           if(x == 0) next_state = A;
           else       next_state = B;
         end
      B: begin
           if(x == 0) next_state = C;
           else       next_state = B;
         end
      C: begin
           if(x == 0) next_state = A;
           else       next_state = D;
         end
      D: begin
        if(x == 0) begin 
          		     z = 1'b1;
          			 next_state = A;
        //  $display("Reached here... z = %b",z);
                    end 
           else    next_state = B;
         end
      default: next_state = A;
    endcase
  end
 // assign z = (state == D) && (x == 0)? 1:0;
endmodule
