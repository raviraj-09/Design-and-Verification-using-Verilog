module shift_register_tb;

   
    reg clk;
    reg reset;
    reg data_in;
    wire data_out;
    wire [3:0] reg_content;

    shift_register uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out),
        .reg_content(reg_content)
    );

   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(1);
   end
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

   
    initial begin
       
        reset = 1;
        data_in = 0;
        #20;

       
        reset = 0;
        #10;

        // Test case 1: Shift in 1011
        data_in = 1; #10;
        data_in = 0; #10;
        data_in = 1; #10;
        data_in = 1; #10;

        // Test case 2: Shift in 0101
        data_in = 0; #10;
        data_in = 1; #10;
        data_in = 0; #10;
        data_in = 1; #10;

        // Apply reset
        reset = 1; #10;
        reset = 0; #10;

        // Test case 3: Shift in 1111
        data_in = 1; #40;

      
        #20;
        $finish;
    end

   
    initial begin
      $monitor("Time: %0t Reset: %b Data_in: %b Data_out: %b Reg_content: %b",
                 $time, reset, data_in, data_out, reg_content);
    end

endmodule
