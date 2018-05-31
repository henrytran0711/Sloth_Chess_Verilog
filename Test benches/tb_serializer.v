module serializer_tb();
  
reg clock = 0;
reg load = 0;
reg [24191:0] in;
reg w_en;

wire [31:0] out1;
wire [3:0] move_counter_out;
wire done;
	
  always begin
    # 10;
    clock = ~clock;
  end
  
  
  serializer sr(.clk(clock), .in(in), .load(load),
  .w_en(w_en), .data_out(out1), .move_counter_out(move_counter_out), .done(done));
   initial begin
   
     in = 24192'd000011111111111111111111111114294967296;
	//All 0s, several highs
	 load = 1;
     
       
       #20;
	 load = 0;
	 w_en = 1;
	
	 $display("out[31:0] = %b", out1); 
	 $display("move counter = %b, done = %b", move_counter_out, done); 
      #2000;
      	 $display("out[31:0] = %b", out1); 
	 $display("move counter = %b, done = %b", move_counter_out, done);
        #15000;
    	 $display("out[31:0] = %b", out1); 
	 $display("move counter = %b, done = %b", move_counter_out, done);
     
     
   #10 $finish;
   end
  
endmodule