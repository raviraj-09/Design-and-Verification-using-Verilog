module shift_register (
    input wire clk,        
    input wire reset,     
    input wire data_in,    
    output reg data_out,   
    output reg [3:0] reg_content 
);

   
    reg [3:0] shift_reg;

    always @(posedge clk) begin
        if (reset) begin
            shift_reg <= 4'b0000;
            data_out <= 1'b0;
        end
        else begin
            
            shift_reg <= {shift_reg[2:0], data_in};
            data_out <= shift_reg[3];
        end
    end

    
    always @(*) begin
        reg_content = shift_reg;
    end

endmodule
