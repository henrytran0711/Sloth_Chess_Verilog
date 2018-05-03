module test_tb();
  
  reg [7:0] inputs;
  
  reg clock = 0;
  wire [5:0] outputs;
  
  always begin
    # 10;
    clock = ~clock;
  end
  
  pieceReg PR(inputs[5:0], inputs[6], inputs[7], clock, outputs);
  
   initial begin
     $dumpfile("dump.vcd"); $dumpvars;
     
     for(inputs = 8'b00000000; inputs < 8'b11111111; inputs = inputs + 1) begin
       $display("in = %b, enable = %d, clear = %d, clk = %d", inputs[5:0], inputs[6], inputs[7], clock);
       #20;
       $display("out = %b\n", outputs);
       #20;
                
            
     end
     
   #10 $finish;
   end
  
endmodule