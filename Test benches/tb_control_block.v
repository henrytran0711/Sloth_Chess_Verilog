module tb_control_block();
  
  reg clock = 0;
  reg [3:0] inputs;
  wire [1:0] outputs;
  
  always begin
    # 10;
    clock = ~clock;
  end
  

  control_block ControlBlock(.clk(clock), .gen(inputs[2]), .update(inputs[1]), .reset(inputs[0]), .software_stop(outputs[1]), .init(outputs[0]));
  
  initial begin    
  for(inputs = 4'b0000; inputs < 4'b1000; inputs = inputs + 1) begin
    
    #20;
    $display("INPUTS: gen = %b, update = %b, reset = %b", inputs[2], inputs[1], inputs[0]);
    
    #20;
    $display("OUTPUTS: software_stop = %b, init = %b\n", outputs[1], outputs[0]);
    
  end
  
  #10 $finish;
    
  end
  
endmodule