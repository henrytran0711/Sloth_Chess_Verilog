module board_2x2(

//CLOCK
input clk,
input engineColor,
input enable,
input clear,

input[5:0] pieceReg0,

output  [31:0] U_move_out0,
output [31:0] L_move_out0,
output [31:0] UL_move_out0,



input[5:0] pieceReg1,

output  [31:0] U_move_out1,
output [31:0] R_move_out1,
output  [31:0] UR_move_out1,


input[5:0] pieceReg2,

output [31:0] D_move_out2,
output [31:0] L_move_out2,
output [31:0] DL_move_out2,



input [5:0] pieceReg3,

output [31:0] D_move_out3,
output [31:0] R_move_out3,
output [31:0] DR_move_out3

);



wire [10:0] transmit_01;
wire [10:0] transmit_10;

wire [10:0] transmit_02;
wire [10:0] transmit_20;

wire [10:0] transmit_03;
wire [10:0] transmit_30;

wire [10:0] transmit_12;
wire [10:0] transmit_21;

wire [10:0] transmit_13;
wire [10:0] transmit_31;

wire [10:0] transmit_23;
wire [10:0] transmit_32;

square Square0(

.clk(clk), .engineColor(engineColor),  .enable(enable), .clear(clear), .pieceReg(pieceReg0), .posReg(6'd00), //6'b01_1111 

.U_in(transmit_20), .L_in(transmit_10), .UL_in(transmit_30), 

.U_out(transmit_02), .L_out(transmit_01), .UL_out(transmit_03), 

.U_move_out(U_move_out0), .L_move_out(L_move_out0), .UL_move_out(UL_move_out0)


);


square Square1(

.clk(clk), .engineColor(engineColor),  .enable(enable), .clear(clear), .pieceReg(pieceReg1), .posReg(6'd01), //6'b01_1111 

.U_in(transmit_31), .R_in(transmit_01), .UR_in(transmit_21), 

.U_out(transmit_13), .R_out(transmit_10), .UR_out(transmit_12), 

.U_move_out(U_move_out1), .R_move_out(R_move_out1), .UR_move_out(UR_move_out1)



);

square Square2(

.clk(clk), .engineColor(engineColor),  .enable(enable), .clear(clear), .pieceReg(pieceReg2), .posReg(6'd02), //6'b01_1111 

.D_in(transmit_02), .L_in(transmit_32), .DL_in(transmit_12), 

.D_out(transmit_20), .L_out(transmit_23), .DL_out(transmit_21), 

.D_move_out(D_move_out2), .L_move_out(L_move_out2), .DL_move_out(DL_move_out2)

);


square Square3(

.clk(clk), .engineColor(engineColor),  .enable(enable), .clear(clear), .pieceReg(pieceReg3), .posReg(6'd03), //6'b01_1111 

.D_in(transmit_13), .R_in(transmit_23), .DR_in(transmit_03), 

.D_out(transmit_31), .R_out(transmit_32), .DR_out(transmit_30), 

.D_move_out(D_move_out3), .R_move_out(R_move_out3), .DR_move_out(DR_move_out3)



);

endmodule