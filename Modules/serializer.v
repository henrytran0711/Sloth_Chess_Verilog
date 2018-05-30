module serializer(
input clk,
input load,
input  [31:0] in,

output reg [3:0] out1,
output reg [3:0] out2,
output reg [3:0] out3,
output reg [3:0] out4,
output reg [3:0] move_counter_out,
output reg done,

reg  [31:0]in_reg,
reg [3:0]done_counter,
reg [3:0]move_counter
);

//Init
initial begin
done_counter = 4'b0000;
move_counter = 4'b0000;
done = 0;
end
always @ (posedge clk) begin
   if(load)
	in_reg <= in;
	//If not load, output moves in serial
   else if(done_counter < 4'd2) begin //Enter number of iterations here
	
		
	out1 <= in_reg[31:28];
	if(in_reg[31:28])
		move_counter = move_counter + 1;
	
	out2 <= in_reg[27:24];
	if(in_reg[27:24])
		move_counter = move_counter + 1;
	
	out3 <= in_reg[23:20];
	if(in_reg[23:20])
		move_counter = move_counter + 1;
	
	out4 <= in_reg[19:16];
	if(in_reg[19:16])
		move_counter = move_counter + 1;
		
	done_counter = done_counter + 1;
	in_reg <= in_reg << 16;
	if(done_counter == 2) begin //When done.
	
		move_counter_out <= move_counter;
		done <= 1'b1;
	end
	end
end
endmodule