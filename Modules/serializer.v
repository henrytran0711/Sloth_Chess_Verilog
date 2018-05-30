module serializer(
input clk,
input load,
input  [24191:0] in,

output reg [31:0] out1,
output reg [31:0] out2,
output reg [31:0] out3,
output reg [31:0] out4,
output reg [31:0] move_counter_out,
output reg done,

reg  [24191:0]in_reg,
reg [9:0]done_counter,
reg [9:0]move_counter
);

//Init
initial begin
done_counter = 10'd0;
move_counter = 10'd0;
done = 0;
end
always @ (posedge clk) begin
   if(load)
	in_reg <= in;
	//If not load, output moves in serial
   else if(done_counter < 10'd189) begin //756 moves,189 cycles
	
		
	out1 <= in_reg[24191:24160];
	if(in_reg[24191:24160])
		move_counter = move_counter + 1;
	
	out2 <= in_reg[24159:24128];
	if(in_reg[24159:24128])
		move_counter = move_counter + 1;
	
	out3 <= in_reg[24127:24096];
	if(in_reg[24127:24096])
		move_counter = move_counter + 1;
	
	out4 <= in_reg[24095:24064];
	if(in_reg[24095:24064])
		move_counter = move_counter + 1;
		
	done_counter = done_counter + 1;
	in_reg <= in_reg << 128 ; //32*4
	if(done_counter == 189) begin //When done.
	
		move_counter_out <= move_counter;
		done <= 1'b1;
	end
	end
end
endmodule