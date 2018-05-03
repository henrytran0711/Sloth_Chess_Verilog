module piece_reg (//In
								U_in,D_in,L_in,R_in,UL_in,UR_in,DL_in,DR_in, 
								UUL_in,UUR_in,LLU_in,RRU_in,DDL_in,DDR_in,LLD_in,RRD_in
								//Out
								U_out,D_out,L_out,R_out,UL_out,UR_out,DL_out,DR_out, 
								UUL_out,UUR_out,LLU_out,RRU_out,DDL_out,DDR_out,LLD_out
								,RRD_out);
//CLOCK
input CLOCK;
//Input Reg
input reg[10:0] U_in;
input reg[10:0] D_in ;
input reg[10:0] R_in;
input reg[10:0] L_in;
input reg[10:0] UL_in;
input reg[10:0] UR_in ;
input reg[10:0] DL_in;
input reg[10:0] DR_in;
//Input knight
input reg[7:0] UUL_in;
input reg[7:0] UUR_in;
input reg[7:0] LLU_in;
input reg[7:0] RRU_in;
input reg[7:0] DDL_in;
input reg[7:0] DDR_in;
input reg[7:0] LLD_in;
input reg[7:0] RRD_in;

//Output Non knight
output reg [10:0] U_out;
output reg [10:0] D_out;
output reg [10:0] L_out;
output reg [10:0] R_out;
output reg [10:0] UL_out;
output reg [10:0] UR_out;
output reg [10:0] DL_out;
output reg [10:0] DR_out;
//Output knight
output reg [7:0] UUL_out;
output reg [7:0] UUR_out;
output reg [7:0] LLU_out;
output reg [7:0] RRU_out;
output reg [7:0] DDL_out;
output reg [7:0] DDR_out;
output reg [7:0] LLD_out;
output reg [7:0] RRD_out;
//Logic
 always @(posedge CLOCK) 
    begin
		U_out <= U_in;
		D_out <= D_in;
		L_out <= L_in;
		R_out <= R_in;
		
		UL_out <= UL_in;
		UR_out <= UR_in;
		DL_out <= DL_in;
		DR_out <= DR_in;
		
		UUL_out <= UUL_in;
		UUR_out <= UUR_in;
		LLU_out <= LLU_in;
		RRU_out <= RRU_in;
		
		DDL_out <= DDL_in;
		DDR_out <= DDR_in;
		LLD_out <= LLD_in;
		RRD_out <= RRD_in;
	end
	
	
endmodule 

