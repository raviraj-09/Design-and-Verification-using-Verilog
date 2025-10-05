// Code your design here
module seq_detector_1011(input bit clk, rst_n, x, output reg z);
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  parameter E = 4'h5; // here we have one extra state when compared with Mealy Machine
  
  bit [2:0] state, next_state;
  always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin 
      state <= A;
    end
    else state <= next_state;
  end
  
  always @(state or x) begin
    case(state)
      A: begin
        z <= 0;
           if(x == 0) next_state = A;
           else       next_state = B;
         end
      B: begin
         z <= 0;
           if(x == 0) next_state = C;
           else       next_state = B;
         end
      C: begin
         z <= 0;
           if(x == 0) next_state = A;
           else       next_state = D;
         end
      D: begin
         z <= 0;
        if(x == 0) 	  next_state = C;
           else       next_state = E;
         end
      E: begin
         z <= 1;
           if(x == 0) next_state = C;
           else       next_state = B;
         end
      default: next_state = A;
    endcase
  end
  
  //As output z is only depends on present state
  /* always@(state) begin
    case(state)
      A : z = 0;
      B : z = 0;
      C : z = 0;
      D : z = 0;
      E : z = 1;
      default : z = 0;
    endcase 
  
  end */
endmodule
