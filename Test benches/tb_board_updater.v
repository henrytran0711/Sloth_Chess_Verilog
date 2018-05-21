module tb_board_updater;

integer f;
reg clk;
reg color_type;
reg enable; 
reg clear;
reg init; 

reg [63:0] initialPosition;
reg [63:0] movedPosition;
reg [5:0] movingPiece;//000001: pawn; 000010: rook; 000100: knight ; 001000: bishop; 010000: queen; 100000: king
reg [5:0] capturedPiece;//000001: pawn; 000010: rook; 000100: knight ; 001000: bishop; 010000: queen; 100000: king
reg [1:0] castling; //00: no castling 01: Queens side 10: King Side
reg [4:0] enpassant;//00001: no enpassant; 00010:UL; 00100: UR ; 01000: DL;10000:DR 
reg undo;

//wire Enable
wire [63:0] enable_out;
//wire Piece Reg
wire [5:0] pieceReg0_out;
wire [5:0] pieceReg1_out;
wire [5:0] pieceReg2_out;
wire [5:0] pieceReg3_out;
wire [5:0] pieceReg4_out;
wire [5:0] pieceReg5_out;
wire [5:0] pieceReg6_out;
wire [5:0] pieceReg7_out;
wire [5:0] pieceReg8_out;
wire [5:0] pieceReg9_out;
wire [5:0] pieceReg10_out;
wire [5:0] pieceReg11_out;
wire [5:0] pieceReg12_out;
wire [5:0] pieceReg13_out;
wire [5:0] pieceReg14_out;
wire [5:0] pieceReg15_out;
wire [5:0] pieceReg16_out;
wire [5:0] pieceReg17_out;
wire [5:0] pieceReg18_out;
wire [5:0] pieceReg19_out;
wire [5:0] pieceReg20_out;
wire [5:0] pieceReg21_out;
wire [5:0] pieceReg22_out;
wire [5:0] pieceReg23_out;
wire [5:0] pieceReg24_out;
wire [5:0] pieceReg25_out;
wire [5:0] pieceReg26_out;
wire [5:0] pieceReg27_out;
wire [5:0] pieceReg28_out;
wire [5:0] pieceReg29_out;
wire [5:0] pieceReg30_out;
wire [5:0] pieceReg31_out;
wire [5:0] pieceReg32_out;
wire [5:0] pieceReg33_out;
wire [5:0] pieceReg34_out;
wire [5:0] pieceReg35_out;
wire [5:0] pieceReg36_out;
wire [5:0] pieceReg37_out;
wire [5:0] pieceReg38_out;
wire [5:0] pieceReg39_out;
wire [5:0] pieceReg40_out;
wire [5:0] pieceReg41_out;
wire [5:0] pieceReg42_out;
wire [5:0] pieceReg43_out;
wire [5:0] pieceReg44_out;
wire [5:0] pieceReg45_out;
wire [5:0] pieceReg46_out;
wire [5:0] pieceReg47_out;
wire [5:0] pieceReg48_out;
wire [5:0] pieceReg49_out;
wire [5:0] pieceReg50_out;
wire [5:0] pieceReg51_out;
wire [5:0] pieceReg52_out;
wire [5:0] pieceReg53_out;
wire [5:0] pieceReg54_out;
wire [5:0] pieceReg55_out;
wire [5:0] pieceReg56_out;
wire [5:0] pieceReg57_out;
wire [5:0] pieceReg58_out;
wire [5:0] pieceReg59_out;
wire [5:0] pieceReg60_out;
wire [5:0] pieceReg61_out;
wire [5:0] pieceReg62_out;
wire [5:0] pieceReg63_out;

board_updater update(//CLOCK
.clk(clk),
.color_type(color_type), //1 is white, 0 is black
.enable(enable),
.clear(clear),
.init(init),


.initialPosition(initialPosition),
.movedPosition(movedPosition),
.movingPiece(movingPiece),//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
.capturedPiece(capturedPiece),//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
.castling(castling), //00: no castling 01: Queens side 10: King Side
.enpassant(enpassant),//00001: no enpassant, 00010:UL, 00100: UR , 01000: DL,10000:DR 
.undo(undo),

//Output Enable
.enable_out(enable_out),
//Output Piece reges
.pieceReg0_out(pieceReg0_out),
.pieceReg1_out(pieceReg1_out),
.pieceReg2_out(pieceReg2_out),
.pieceReg3_out(pieceReg3_out),
.pieceReg4_out(pieceReg4_out),
.pieceReg5_out(pieceReg5_out),
.pieceReg6_out(pieceReg6_out),
.pieceReg7_out(pieceReg7_out),
.pieceReg8_out(pieceReg8_out),
.pieceReg9_out(pieceReg9_out),
.pieceReg10_out(pieceReg10_out),
.pieceReg11_out(pieceReg11_out),
.pieceReg12_out(pieceReg12_out),
.pieceReg13_out(pieceReg13_out),
.pieceReg14_out(pieceReg14_out),
.pieceReg15_out(pieceReg15_out),
.pieceReg16_out(pieceReg16_out),
.pieceReg17_out(pieceReg17_out),
.pieceReg18_out(pieceReg18_out),
.pieceReg19_out(pieceReg19_out),
.pieceReg20_out(pieceReg20_out),
.pieceReg21_out(pieceReg21_out),
.pieceReg22_out(pieceReg22_out),
.pieceReg23_out(pieceReg23_out),
.pieceReg24_out(pieceReg24_out),
.pieceReg25_out(pieceReg25_out),
.pieceReg26_out(pieceReg26_out),
.pieceReg27_out(pieceReg27_out),
.pieceReg28_out(pieceReg28_out),
.pieceReg29_out(pieceReg29_out),
.pieceReg30_out(pieceReg30_out),
.pieceReg31_out(pieceReg31_out),
.pieceReg32_out(pieceReg32_out),
.pieceReg33_out(pieceReg33_out),
.pieceReg34_out(pieceReg34_out),
.pieceReg35_out(pieceReg35_out),
.pieceReg36_out(pieceReg36_out),
.pieceReg37_out(pieceReg37_out),
.pieceReg38_out(pieceReg38_out),
.pieceReg39_out(pieceReg39_out),
.pieceReg40_out(pieceReg40_out),
.pieceReg41_out(pieceReg41_out),
.pieceReg42_out(pieceReg42_out),
.pieceReg43_out(pieceReg43_out),
.pieceReg44_out(pieceReg44_out),
.pieceReg45_out(pieceReg45_out),
.pieceReg46_out(pieceReg46_out),
.pieceReg47_out(pieceReg47_out),
.pieceReg48_out(pieceReg48_out),
.pieceReg49_out(pieceReg49_out),
.pieceReg50_out(pieceReg50_out),
.pieceReg51_out(pieceReg51_out),
.pieceReg52_out(pieceReg52_out),
.pieceReg53_out(pieceReg53_out),
.pieceReg54_out(pieceReg54_out),
.pieceReg55_out(pieceReg55_out),
.pieceReg56_out(pieceReg56_out),
.pieceReg57_out(pieceReg57_out),
.pieceReg58_out(pieceReg58_out),
.pieceReg59_out(pieceReg59_out),
.pieceReg60_out(pieceReg60_out),
.pieceReg61_out(pieceReg61_out),
.pieceReg62_out(pieceReg62_out),
.pieceReg63_out(pieceReg63_out));

initial begin
	clk = 0;
	color_type = 1'b1; //1 is white, 0 is black
	enable = 1'b1;
	clear = 1'b0;
	init = 1'b0;
	
	initialPosition = 64'h0000000000000001 << 49;
	movedPosition = 64'h0000000000000001 << 56;
	movingPiece = 6'b000001;//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
	capturedPiece = 6'b000010;//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
	castling = 2'b00; //00: no castling 01: Queens side 10: King Side
	enpassant = 5'b00000;//00001: no enpassant, 00010:UL, 00100: UR , 01000: DL,10000:DR 
	undo = 1'b1;
	
	#200;
	f = $fopen("board_update.txt");
$fwrite(f,"Enable[0]:%b\n" ,enable_out[0]);
$fwrite(f,"Enable[1]:%b\n" ,enable_out[1]);
$fwrite(f,"Enable[2]:%b\n" ,enable_out[2]);
$fwrite(f,"Enable[3]:%b\n" ,enable_out[3]);
$fwrite(f,"Enable[4]:%b\n" ,enable_out[4]);
$fwrite(f,"Enable[5]:%b\n" ,enable_out[5]);
$fwrite(f,"Enable[6]:%b\n" ,enable_out[6]);
$fwrite(f,"Enable[7]:%b\n" ,enable_out[7]);
$fwrite(f,"Enable[8]:%b\n" ,enable_out[8]);
$fwrite(f,"Enable[9]:%b\n" ,enable_out[9]);
$fwrite(f,"Enable[10]:%b\n" ,enable_out[10]);
$fwrite(f,"Enable[11]:%b\n" ,enable_out[11]);
$fwrite(f,"Enable[12]:%b\n" ,enable_out[12]);
$fwrite(f,"Enable[13]:%b\n" ,enable_out[13]);
$fwrite(f,"Enable[14]:%b\n" ,enable_out[14]);
$fwrite(f,"Enable[15]:%b\n" ,enable_out[15]);
$fwrite(f,"Enable[16]:%b\n" ,enable_out[16]);
$fwrite(f,"Enable[17]:%b\n" ,enable_out[17]);
$fwrite(f,"Enable[18]:%b\n" ,enable_out[18]);
$fwrite(f,"Enable[19]:%b\n" ,enable_out[19]);
$fwrite(f,"Enable[20]:%b\n" ,enable_out[20]);
$fwrite(f,"Enable[21]:%b\n" ,enable_out[21]);
$fwrite(f,"Enable[22]:%b\n" ,enable_out[22]);
$fwrite(f,"Enable[23]:%b\n" ,enable_out[23]);
$fwrite(f,"Enable[24]:%b\n" ,enable_out[24]);
$fwrite(f,"Enable[25]:%b\n" ,enable_out[25]);
$fwrite(f,"Enable[26]:%b\n" ,enable_out[26]);
$fwrite(f,"Enable[27]:%b\n" ,enable_out[27]);
$fwrite(f,"Enable[28]:%b\n" ,enable_out[28]);
$fwrite(f,"Enable[29]:%b\n" ,enable_out[29]);
$fwrite(f,"Enable[30]:%b\n" ,enable_out[30]);
$fwrite(f,"Enable[31]:%b\n" ,enable_out[31]);
$fwrite(f,"Enable[32]:%b\n" ,enable_out[32]);
$fwrite(f,"Enable[33]:%b\n" ,enable_out[33]);
$fwrite(f,"Enable[34]:%b\n" ,enable_out[34]);
$fwrite(f,"Enable[35]:%b\n" ,enable_out[35]);
$fwrite(f,"Enable[36]:%b\n" ,enable_out[36]);
$fwrite(f,"Enable[37]:%b\n" ,enable_out[37]);
$fwrite(f,"Enable[38]:%b\n" ,enable_out[38]);
$fwrite(f,"Enable[39]:%b\n" ,enable_out[39]);
$fwrite(f,"Enable[40]:%b\n" ,enable_out[40]);
$fwrite(f,"Enable[41]:%b\n" ,enable_out[41]);
$fwrite(f,"Enable[42]:%b\n" ,enable_out[42]);
$fwrite(f,"Enable[43]:%b\n" ,enable_out[43]);
$fwrite(f,"Enable[44]:%b\n" ,enable_out[44]);
$fwrite(f,"Enable[45]:%b\n" ,enable_out[45]);
$fwrite(f,"Enable[46]:%b\n" ,enable_out[46]);
$fwrite(f,"Enable[47]:%b\n" ,enable_out[47]);
$fwrite(f,"Enable[48]:%b\n" ,enable_out[48]);
$fwrite(f,"Enable[49]:%b\n" ,enable_out[49]);
$fwrite(f,"Enable[50]:%b\n" ,enable_out[50]);
$fwrite(f,"Enable[51]:%b\n" ,enable_out[51]);
$fwrite(f,"Enable[52]:%b\n" ,enable_out[52]);
$fwrite(f,"Enable[53]:%b\n" ,enable_out[53]);
$fwrite(f,"Enable[54]:%b\n" ,enable_out[54]);
$fwrite(f,"Enable[55]:%b\n" ,enable_out[55]);
$fwrite(f,"Enable[56]:%b\n" ,enable_out[56]);
$fwrite(f,"Enable[57]:%b\n" ,enable_out[57]);
$fwrite(f,"Enable[58]:%b\n" ,enable_out[58]);
$fwrite(f,"Enable[59]:%b\n" ,enable_out[59]);
$fwrite(f,"Enable[60]:%b\n" ,enable_out[60]);
$fwrite(f,"Enable[61]:%b\n" ,enable_out[61]);
$fwrite(f,"Enable[62]:%b\n" ,enable_out[62]);
$fwrite(f,"Enable[63]:%b\n" ,enable_out[63]);
$fwrite(f,"PieceReg0:%b\n" , pieceReg0_out);
$fwrite(f,"PieceReg1:%b\n" , pieceReg1_out);
$fwrite(f,"PieceReg2:%b\n" , pieceReg2_out);
$fwrite(f,"PieceReg3:%b\n" , pieceReg3_out);
$fwrite(f,"PieceReg4:%b\n" , pieceReg4_out);
$fwrite(f,"PieceReg5:%b\n" , pieceReg5_out);
$fwrite(f,"PieceReg6:%b\n" , pieceReg6_out);
$fwrite(f,"PieceReg7:%b\n" , pieceReg7_out);
$fwrite(f,"PieceReg8:%b\n" , pieceReg8_out);
$fwrite(f,"PieceReg9:%b\n" , pieceReg9_out);
$fwrite(f,"PieceReg10:%b\n" , pieceReg10_out);
$fwrite(f,"PieceReg11:%b\n" , pieceReg11_out);
$fwrite(f,"PieceReg12:%b\n" , pieceReg12_out);
$fwrite(f,"PieceReg13:%b\n" , pieceReg13_out);
$fwrite(f,"PieceReg14:%b\n" , pieceReg14_out);
$fwrite(f,"PieceReg15:%b\n" , pieceReg15_out);
$fwrite(f,"PieceReg16:%b\n" , pieceReg16_out);
$fwrite(f,"PieceReg17:%b\n" , pieceReg17_out);
$fwrite(f,"PieceReg18:%b\n" , pieceReg18_out);
$fwrite(f,"PieceReg19:%b\n" , pieceReg19_out);
$fwrite(f,"PieceReg20:%b\n" , pieceReg20_out);
$fwrite(f,"PieceReg21:%b\n" , pieceReg21_out);
$fwrite(f,"PieceReg22:%b\n" , pieceReg22_out);
$fwrite(f,"PieceReg23:%b\n" , pieceReg23_out);
$fwrite(f,"PieceReg24:%b\n" , pieceReg24_out);
$fwrite(f,"PieceReg25:%b\n" , pieceReg25_out);
$fwrite(f,"PieceReg26:%b\n" , pieceReg26_out);
$fwrite(f,"PieceReg27:%b\n" , pieceReg27_out);
$fwrite(f,"PieceReg28:%b\n" , pieceReg28_out);
$fwrite(f,"PieceReg29:%b\n" , pieceReg29_out);
$fwrite(f,"PieceReg30:%b\n" , pieceReg30_out);
$fwrite(f,"PieceReg31:%b\n" , pieceReg31_out);
$fwrite(f,"PieceReg32:%b\n" , pieceReg32_out);
$fwrite(f,"PieceReg33:%b\n" , pieceReg33_out);
$fwrite(f,"PieceReg34:%b\n" , pieceReg34_out);
$fwrite(f,"PieceReg35:%b\n" , pieceReg35_out);
$fwrite(f,"PieceReg36:%b\n" , pieceReg36_out);
$fwrite(f,"PieceReg37:%b\n" , pieceReg37_out);
$fwrite(f,"PieceReg38:%b\n" , pieceReg38_out);
$fwrite(f,"PieceReg39:%b\n" , pieceReg39_out);
$fwrite(f,"PieceReg40:%b\n" , pieceReg40_out);
$fwrite(f,"PieceReg41:%b\n" , pieceReg41_out);
$fwrite(f,"PieceReg42:%b\n" , pieceReg42_out);
$fwrite(f,"PieceReg43:%b\n" , pieceReg43_out);
$fwrite(f,"PieceReg44:%b\n" , pieceReg44_out);
$fwrite(f,"PieceReg45:%b\n" , pieceReg45_out);
$fwrite(f,"PieceReg46:%b\n" , pieceReg46_out);
$fwrite(f,"PieceReg47:%b\n" , pieceReg47_out);
$fwrite(f,"PieceReg48:%b\n" , pieceReg48_out);
$fwrite(f,"PieceReg49:%b\n" , pieceReg49_out);
$fwrite(f,"PieceReg50:%b\n" , pieceReg50_out);
$fwrite(f,"PieceReg51:%b\n" , pieceReg51_out);
$fwrite(f,"PieceReg52:%b\n" , pieceReg52_out);
$fwrite(f,"PieceReg53:%b\n" , pieceReg53_out);
$fwrite(f,"PieceReg54:%b\n" , pieceReg54_out);
$fwrite(f,"PieceReg55:%b\n" , pieceReg55_out);
$fwrite(f,"PieceReg56:%b\n" , pieceReg56_out);
$fwrite(f,"PieceReg57:%b\n" , pieceReg57_out);
$fwrite(f,"PieceReg58:%b\n" , pieceReg58_out);
$fwrite(f,"PieceReg59:%b\n" , pieceReg59_out);
$fwrite(f,"PieceReg60:%b\n" , pieceReg60_out);
$fwrite(f,"PieceReg61:%b\n" , pieceReg61_out);
$fwrite(f,"PieceReg62:%b\n" , pieceReg62_out);
$fwrite(f,"PieceReg63:%b\n" , pieceReg63_out);



	$finish;
end

always begin
	#10;
	clk = ~clk;

end

endmodule
