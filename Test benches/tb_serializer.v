module serializer_tb();
  
reg clock = 0;
reg load = 0;
reg [31:0] in;

wire [3:0] out1;
wire [3:0] out2;
wire [3:0] out3;
wire [3:0] out4;
wire [3:0] move_counter_out;
wire done;
	
  always begin
    # 10;
    clock = ~clock;
  end
  
  serializer sr(.clk(clock),.load(load),.in(in),
  .out1(out1),.out2(out2),.out3(out3),.out4(out4),
  .move_counter_out(move_counter_out),.done(done));
  
   initial begin
   
     in = 32'b00010010001101000101011001110000;
	 //0001 0010 0011 0100 || 0101 0110 0111 0000
	 load = 1;
     
       
       #20;
	 load = 0;
	 $display("in = %b", in);
	 $display("out1 = %b, out2 = %b, out3 = %b, out4 = %b", out1, out2, out3, out4); 
	 $display("move counter = %b, done = %b", move_counter_out, done); 
      #200;
     $display("in = %b", in);
	 $display("out1 = %b, out2 = %b, out3 = %b, out4 = %b", out1, out2, out3, out4); 
	 $display("move counter = %b, done = %b",move_counter_out, done);     
        #200;
     $display("in = %b", in);
	 $display("out1 = %b, out2 = %b, out3 = %b, out4 = %b", out1, out2, out3, out4); 
	 $display("move counter = %b, done = %b",move_counter_out, done);     
     
     
   #10 $finish;
   end
  
endmodule