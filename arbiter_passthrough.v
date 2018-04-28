module Arb (in1,in2,inpos1,inpos2, out,outpos);
input [5:0] in1;
input [5:0] in2;
input[5:0] inpos1;
input[5:0] inpos2;
output reg [5:0] out;
output reg [5:0] outpos;
  always @(*) 
    begin
if (in1 > in2) begin
	out = in1;
	outpos = inpos1;
	end
else if (in2 >= in1) begin
	out = in2;
	outpos = inpos2;
	end
 	 end
endmodule 


module Arb_complete (//Inputs
						in1,in2,in3,in4,in5,in6,in7,in8,
						in9,in10,in11,in12,in13,in14,in15,in16,
						in17,in18,in19,in20,in21,in22,in23,in24,
						in25,in26,in27,in28,in29,in30,in31,in32,
						in33,in34,in35,in36,in37,in38,in39,in40,
						in41,in42,in43,in44,in45,in46,in47,in48,
						in49,in50,in51,in52,in53,in54,in55,in56,
						in57,in58,in59,in60,in61,in62,in63,in64,
						//Input pos
						inpos_1,inpos_2,inpos_3,inpos_4,inpos_5,inpos_6,inpos_7,inpos_8,
						inpos_9,inpos_10,inpos_11,inpos_12,inpos_13,inpos_14,inpos_15,inpos_16,
						inpos_17,inpos_18,inpos_19,inpos_20,inpos_21,inpos_22,inpos_23,inpos_24,
						inpos_25,inpos_26,inpos_27,inpos_28,inpos_29,inpos_30,inpos_31,inpos_32,
						inpos_33,inpos_34,inpos_35,inpos_36,inpos_37,inpos_38,inpos_39,inpos_40,
						inpos_41,inpos_42,inpos_43,inpos_44,inpos_45,inpos_46,inpos_47,inpos_48,
						inpos_49,inpos_50,inpos_51,inpos_52,inpos_53,inpos_54,inpos_55,inpos_56,
						inpos_57,inpos_58,inpos_59,inpos_60,inpos_61,inpos_62,inpos_63,inpos_64,
						//Output
						out,out_pos);
input [5:0] in1;
input [5:0] in2;
input [5:0] in3;
input [5:0] in4;
input [5:0] in5;
input [5:0] in6;
input [5:0] in7;
input [5:0] in8;
input [5:0] in9;
input [5:0] in10;
input [5:0] in11;
input [5:0] in12;
input [5:0] in13;
input [5:0] in14;
input [5:0] in15;
input [5:0] in16;
input [5:0] in17;
input [5:0] in18;
input [5:0] in19;
input [5:0] in20;
input [5:0] in21;
input [5:0] in22;
input [5:0] in23;
input [5:0] in24;
input [5:0] in25;
input [5:0] in26;
input [5:0] in27;
input [5:0] in28;
input [5:0] in29;
input [5:0] in30;
input [5:0] in31;
input [5:0] in32;
input [5:0] in33;
input [5:0] in34;
input [5:0] in35;
input [5:0] in36;
input [5:0] in37;
input [5:0] in38;
input [5:0] in39;
input [5:0] in40;
input [5:0] in41;
input [5:0] in42;
input [5:0] in43;
input [5:0] in44;
input [5:0] in45;
input [5:0] in46;
input [5:0] in47;
input [5:0] in48;
input [5:0] in49;
input [5:0] in50;
input [5:0] in51;
input [5:0] in52;
input [5:0] in53;
input [5:0] in54;
input [5:0] in55;
input [5:0] in56;
input [5:0] in57;
input [5:0] in58;
input [5:0] in59;
input [5:0] in60;
input [5:0] in61;
input [5:0] in62;
input [5:0] in63;
input [5:0] in64;
//Input positions
input [5:0] inpos_1;
input [5:0] inpos_2;
input [5:0] inpos_3;
input [5:0] inpos_4;
input [5:0] inpos_5;
input [5:0] inpos_6;
input [5:0] inpos_7;
input [5:0] inpos_8;
input [5:0] inpos_9;
input [5:0] inpos_10;
input [5:0] inpos_11;
input [5:0] inpos_12;
input [5:0] inpos_13;
input [5:0] inpos_14;
input [5:0] inpos_15;
input [5:0] inpos_16;
input [5:0] inpos_17;
input [5:0] inpos_18;
input [5:0] inpos_19;
input [5:0] inpos_20;
input [5:0] inpos_21;
input [5:0] inpos_22;
input [5:0] inpos_23;
input [5:0] inpos_24;
input [5:0] inpos_25;
input [5:0] inpos_26;
input [5:0] inpos_27;
input [5:0] inpos_28;
input [5:0] inpos_29;
input [5:0] inpos_30;
input [5:0] inpos_31;
input [5:0] inpos_32;
input [5:0] inpos_33;
input [5:0] inpos_34;
input [5:0] inpos_35;
input [5:0] inpos_36;
input [5:0] inpos_37;
input [5:0] inpos_38;
input [5:0] inpos_39;
input [5:0] inpos_40;
input [5:0] inpos_41;
input [5:0] inpos_42;
input [5:0] inpos_43;
input [5:0] inpos_44;
input [5:0] inpos_45;
input [5:0] inpos_46;
input [5:0] inpos_47;
input [5:0] inpos_48;
input [5:0] inpos_49;
input [5:0] inpos_50;
input [5:0] inpos_51;
input [5:0] inpos_52;
input [5:0] inpos_53;
input [5:0] inpos_54;
input [5:0] inpos_55;
input [5:0] inpos_56;
input [5:0] inpos_57;
input [5:0] inpos_58;
input [5:0] inpos_59;
input [5:0] inpos_60;
input [5:0] inpos_61;
input [5:0] inpos_62;
input [5:0] inpos_63;
input [5:0] inpos_64;
//Out 32
wire [5:0] out32_1;
wire [5:0] out32_2;
wire [5:0] out32_3;
wire [5:0] out32_4;
wire [5:0] out32_5;
wire [5:0] out32_6;
wire [5:0] out32_7;
wire [5:0] out32_8;
wire [5:0] out32_9;
wire [5:0] out32_10;
wire [5:0] out32_11;
wire [5:0] out32_12;
wire [5:0] out32_13;
wire [5:0] out32_14;
wire [5:0] out32_15;
wire [5:0] out32_16;
wire [5:0] out32_17;
wire [5:0] out32_18;
wire [5:0] out32_19;
wire [5:0] out32_20;
wire [5:0] out32_21;
wire [5:0] out32_22;
wire [5:0] out32_23;
wire [5:0] out32_24;
wire [5:0] out32_25;
wire [5:0] out32_26;
wire [5:0] out32_27;
wire [5:0] out32_28;
wire [5:0] out32_29;
wire [5:0] out32_30;
wire [5:0] out32_31;
wire [5:0] out32_32;

//Out 32 pos
wire [5:0] out32pos_1;
wire [5:0] out32pos_2;
wire [5:0] out32pos_3;
wire [5:0] out32pos_4;
wire [5:0] out32pos_5;
wire [5:0] out32pos_6;
wire [5:0] out32pos_7;
wire [5:0] out32pos_8;
wire [5:0] out32pos_9;
wire [5:0] out32pos_10;
wire [5:0] out32pos_11;
wire [5:0] out32pos_12;
wire [5:0] out32pos_13;
wire [5:0] out32pos_14;
wire [5:0] out32pos_15;
wire [5:0] out32pos_16;
wire [5:0] out32pos_17;
wire [5:0] out32pos_18;
wire [5:0] out32pos_19;
wire [5:0] out32pos_20;
wire [5:0] out32pos_21;
wire [5:0] out32pos_22;
wire [5:0] out32pos_23;
wire [5:0] out32pos_24;
wire [5:0] out32pos_25;
wire [5:0] out32pos_26;
wire [5:0] out32pos_27;
wire [5:0] out32pos_28;
wire [5:0] out32pos_29;
wire [5:0] out32pos_30;
wire [5:0] out32pos_31;
wire [5:0] out32pos_32;
//Out 16
wire [5:0] out16_1;
wire [5:0] out16_2;
wire [5:0] out16_3;
wire [5:0] out16_4;
wire [5:0] out16_5;
wire [5:0] out16_6;
wire [5:0] out16_7;
wire [5:0] out16_8;
wire [5:0] out16_9;
wire [5:0] out16_10;
wire [5:0] out16_11;
wire [5:0] out16_12;
wire [5:0] out16_13;
wire [5:0] out16_14;
wire [5:0] out16_15;
wire [5:0] out16_16;
//Out 16 POS
wire [5:0] out16pos_1;
wire [5:0] out16pos_2;
wire [5:0] out16pos_3;
wire [5:0] out16pos_4;
wire [5:0] out16pos_5;
wire [5:0] out16pos_6;
wire [5:0] out16pos_7;
wire [5:0] out16pos_8;
wire [5:0] out16pos_9;
wire [5:0] out16pos_10;
wire [5:0] out16pos_11;
wire [5:0] out16pos_12;
wire [5:0] out16pos_13;
wire [5:0] out16pos_14;
wire [5:0] out16pos_15;
wire [5:0] out16pos_16;
//Out 8
wire [5:0] out8_1;
wire [5:0] out8_2;
wire [5:0] out8_3;
wire [5:0] out8_4;
wire [5:0] out8_5;
wire [5:0] out8_6;
wire [5:0] out8_7;
wire [5:0] out8_8;
//Out 8 Pos
wire [5:0] out8pos_1;
wire [5:0] out8pos_2;
wire [5:0] out8pos_3;
wire [5:0] out8pos_4;
wire [5:0] out8pos_5;
wire [5:0] out8pos_6;
wire [5:0] out8pos_7;
wire [5:0] out8pos_8;
//Out 4
wire [5:0] out4_1;
wire [5:0] out4_2;
wire [5:0] out4_3;
wire [5:0] out4_4;
//Out 4 Pos
wire [5:0] out4pos_1;
wire [5:0] out4pos_2;
wire [5:0] out4pos_3;
wire [5:0] out4pos_4;
//Out 2
wire [5:0] out2_1;
wire [5:0] out2_2;
//Out 2
wire [5:0] out2pos_1;
wire [5:0] out2pos_2;
//Out 1
output [5:0] out;
output [5:0] out_pos;
//32-Instantiation Level:
	Arb Arb32_1 (
		.in1 (in1),
		.in2 (in2),
		.inpos1 (inpos_1),
		.inpos2(inpos_2),
		.out(out32_1),
		.outpos(out32pos_1)
		);
	Arb Arb32_2 (
		.in1 (in3),
		.in2 (in4),
		.inpos1 (inpos_3),
		.inpos2(inpos_4),
		.out(out32_2),
		.outpos(out32pos_2)
		);
	Arb Arb32_3 (
		.in1 (in5),
		.in2 (in6),
		.inpos1 (inpos_5),
		.inpos2(inpos_6),
		.out(out32_3),
		.outpos(out32pos_3)
		);
	Arb Arb32_4 (
		.in1 (in7),
		.in2 (in8),
		.inpos1 (inpos_7),
		.inpos2(inpos_8),
		.out(out32_4),
		.outpos(out32pos_4)
		);
	Arb Arb32_5 (
		.in1 (in9),
		.in2 (in10),
		.inpos1 (inpos_9),
		.inpos2(inpos_10),
		.out(out32_5),
		.outpos(out32pos_5)
		);
	Arb Arb32_6 (
		.in1 (in11),
		.in2 (in12),
		.inpos1 (inpos_11),
		.inpos2(inpos_12),
		.out(out32_6),
		.outpos(out32pos_6)
		);
	Arb Arb32_7 (
		.in1 (in13),
		.in2 (in14),
		.inpos1 (inpos_13),
		.inpos2(inpos_14),
		.out(out32_7),
		.outpos(out32pos_7)
		);
	Arb Arb32_8 (
		.in1 (in15),
		.in2 (in16),
		.inpos1 (inpos_15),
		.inpos2(inpos_16),
		.out(out32_8),
		.outpos(out32pos_8)
		);
	Arb Arb32_9 (
		.in1 (in17),
		.in2 (in18),
		.inpos1 (inpos_17),
		.inpos2(inpos_18),
		.out(out32_9),
		.outpos(out32pos_9)
		);
	Arb Arb32_10 (
		.in1 (in19),
		.in2 (in20),
		.inpos1 (inpos_19),
		.inpos2(inpos_20),
		.out(out32_10),
		.outpos(out32pos_10)
		);

	Arb Arb32_11 (
		.in1 (in21),
		.in2 (in22),
		.inpos1 (inpos_21),
		.inpos2(inpos_22),
		.out(out32_11),
		.outpos(out32pos_11)
		);
		
	Arb Arb32_12 (
		.in1 (in23),
		.in2 (in24),
		.inpos1 (inpos_23),
		.inpos2(inpos_24),
		.out(out32_12),
		.outpos(out32pos_12)
		);
	Arb Arb32_13 (
		.in1 (in25),
		.in2 (in26),
		.inpos1 (inpos_25),
		.inpos2(inpos_26),
		.out(out32_13),
		.outpos(out32pos_13)
		);
	Arb Arb32_14 (
		.in1 (in27),
		.in2 (in28),
		.inpos1 (inpos_27),
		.inpos2(inpos_28),
		.out(out32_14),
		.outpos(out32pos_14)
		);
	Arb Arb32_15 (
		.in1 (in29),
		.in2 (in30),
		.inpos1 (inpos_29),
		.inpos2(inpos_30),
		.out(out32_15),
		.outpos(out32pos_15)
		);
	Arb Arb32_16 (
		.in1 (in31),
		.in2 (in32),
		.inpos1 (inpos_31),
		.inpos2(inpos_32),
		.out(out32_16),
		.outpos(out32pos_16)
		);
	Arb Arb32_17 (
		.in1 (in33),
		.in2 (in34),
		.inpos1 (inpos_33),
		.inpos2(inpos_34),
		.out(out32_17),
		.outpos(out32pos_17)
		);
	Arb Arb32_18 (
		.in1 (in35),
		.in2 (in36),
		.inpos1 (inpos_35),
		.inpos2(inpos_36),
		.out(out32_18),
		.outpos(out32pos_18)
		);
	Arb Arb32_19 (
		.in1 (in37),
		.in2 (in38),
		.inpos1 (inpos_37),
		.inpos2(inpos_38),
		.out(out32_19),
		.outpos(out32pos_19)
		);
	Arb Arb32_20 (
		.in1 (in39),
		.in2 (in40),
		.inpos1 (inpos_39),
		.inpos2(inpos_40),
		.out(out32_20),
		.outpos(out32pos_20)
		);
	Arb Arb32_21 (
		.in1 (in41),
		.in2 (in42),
		.inpos1 (inpos_41),
		.inpos2(inpos_42),
		.out(out32_21),
		.outpos(out32pos_21)
		);
	Arb Arb32_22 (
		.in1 (in43),
		.in2 (in44),
		.inpos1 (inpos_43),
		.inpos2(inpos_44),
		.out(out32_22),
		.outpos(out32pos_22)
		);
	Arb Arb32_23 (
		.in1 (in45),
		.in2 (in46),
		.inpos1 (inpos_45),
		.inpos2(inpos_46),
		.out(out32_23),
		.outpos(out32pos_23)
		);
	Arb Arb32_24 (
		.in1 (in47),
		.in2 (in48),
		.inpos1 (inpos_47),
		.inpos2(inpos_48),
		.out(out32_24),
		.outpos(out32pos_24)
		);
	Arb Arb32_25 (
		.in1 (in49),
		.in2 (in50),
		.inpos1 (inpos_49),
		.inpos2(inpos_50),
		.out(out32_25),
		.outpos(out32pos_25)
		);
	Arb Arb32_26 (
		.in1 (in51),
		.in2 (in52),
		.inpos1 (inpos_51),
		.inpos2(inpos_52),
		.out(out32_26),
		.outpos(out32pos_26)
		);
	Arb Arb32_27 (
		.in1 (in53),
		.in2 (in54),
		.inpos1 (inpos_53),
		.inpos2(inpos_54),
		.out(out32_27),
		.outpos(out32pos_27)
		);
	Arb Arb32_28 (
		.in1 (in55),
		.in2 (in56),
		.inpos1 (inpos_55),
		.inpos2(inpos_56),
		.out(out32_28),
		.outpos(out32pos_28)
		);
	Arb Arb32_29 (
		.in1 (in57),
		.in2 (in58),
		.inpos1 (inpos_57),
		.inpos2(inpos_58),
		.out(out32_29),
		.outpos(out32pos_29)
		);	
	Arb Arb32_30 (
		.in1 (in59),
		.in2 (in60),
		.inpos1 (inpos_59),
		.inpos2(inpos_60),
		.out(out32_30),
		.outpos(out32pos_30)
		);
	Arb Arb32_31 (
		.in1 (in61),
		.in2 (in62),
		.inpos1 (inpos_61),
		.inpos2(inpos_62),
		.out(out32_31),
		.outpos(out32pos_31)
		);
	Arb Arb32_32 (
		.in1 (in63),
		.in2 (in64),
		.inpos1 (inpos_63),
		.inpos2(inpos_64),
		.out(out32_32),
		.outpos(out32pos_32)
		);
		
//Arbiter 16 level
Arb Arb16_1 (
		.in1 (out32_1),
		.in2 (out32_2),
		.inpos1 (out32pos_1),
		.inpos2 (out32pos_2),
		.out(out16_1),
		.outpos(out16pos_1)
		);
Arb Arb16_2 (
		.in1 (out32_3),
		.in2 (out32_4),
		.inpos1 (out32pos_3),
		.inpos2 (out32pos_4),
		.out(out16_2),
		.outpos(out16pos_2)
		);
Arb Arb16_3 (
		.in1 (out32_5),
		.in2 (out32_6),
		.inpos1 (out32pos_5),
		.inpos2 (out32pos_6),
		.out(out16_3),
		.outpos(out16pos_3)
		);
Arb Arb16_4 (
		.in1 (out32_7),
		.in2 (out32_8),
		.inpos1 (out32pos_7),
		.inpos2 (out32pos_8),
		.out(out16_4),
		.outpos(out16pos_4)
		);
Arb Arb16_5 (
		.in1 (out32_9),
		.in2 (out32_10),
		.inpos1 (out32pos_9),
		.inpos2 (out32pos_10),
		.out(out16_5),
		.outpos(out16pos_5)
		);
Arb Arb16_6 (
		.in1 (out32_11),
		.in2 (out32_12),
		.inpos1 (out32pos_11),
		.inpos2 (out32pos_12),
		.out(out16_6),
		.outpos(out16pos_6)
		);
Arb Arb16_7 (
		.in1 (out32_13),
		.in2 (out32_14),
		.inpos1 (out32pos_13),
		.inpos2 (out32pos_14),
		.out(out16_7),
		.outpos(out16pos_7)
		);		
Arb Arb16_8 (
		.in1 (out32_15),
		.in2 (out32_16),
		.inpos1 (out32pos_15),
		.inpos2 (out32pos_16),
		.out(out16_8),
		.outpos(out16pos_8)
		);		
Arb Arb16_9 (
		.in1 (out32_17),
		.in2 (out32_18),
		.inpos1 (out32pos_17),
		.inpos2 (out32pos_18),
		.out(out16_9),
		.outpos(out16pos_9)
		);
Arb Arb16_10 (
		.in1 (out32_19),
		.in2 (out32_20),
		.inpos1 (out32pos_19),
		.inpos2 (out32pos_20),
		.out(out16_10),
		.outpos(out16pos_10)
		);
Arb Arb16_11 (
		.in1 (out32_21),
		.in2 (out32_22),
		.inpos1 (out32pos_21),
		.inpos2 (out32pos_22),
		.out(out16_11),
		.outpos(out16pos_11)
		);
Arb Arb16_12 (
		.in1 (out32_23),
		.in2 (out32_24),
		.inpos1 (out32pos_23),
		.inpos2 (out32pos_24),
		.out(out16_12),
		.outpos(out16pos_12)
		);
Arb Arb16_13 (
		.in1 (out32_25),
		.in2 (out32_26),
		.inpos1 (out32pos_25),
		.inpos2 (out32pos_26),
		.out(out16_13),
		.outpos(out16pos_13)
		);
Arb Arb16_14 (
		.in1 (out32_27),
		.in2 (out32_28),
		.inpos1 (out32pos_27),
		.inpos2 (out32pos_28),
		.out(out16_14),
		.outpos(out16pos_14)
		);
Arb Arb16_15 (
		.in1 (out32_29),
		.in2 (out32_30),
		.inpos1 (out32pos_29),
		.inpos2 (out32pos_30),
		.out(out16_15),
		.outpos(out16pos_15)
		);
Arb Arb16_16 (
		.in1 (out32_31),
		.in2 (out32_32),
		.inpos1 (out32pos_31),
		.inpos2 (out32pos_32),
		.out(out16_16),
		.outpos(out16pos_16)
		);
//Arbiter 8 level
Arb Arb8_1 (
		.in1 (out16_1),
		.in2 (out16_2),
		.inpos1 (out16pos_1),
		.inpos2 (out16pos_2),
		.out(out8_1),
		.outpos(out8pos_1)
		);
Arb Arb8_2 (
		.in1 (out16_3),
		.in2 (out16_4),
		.inpos1 (out16pos_3),
		.inpos2 (out16pos_4),
		.out(out8_2),
		.outpos(out8pos_2)
		);
Arb Arb8_3 (
		.in1 (out16_5),
		.in2 (out16_6),
		.inpos1 (out16pos_5),
		.inpos2 (out16pos_6),
		.out(out8_3),
		.outpos(out8pos_3)
		);
Arb Arb8_4 (
		.in1 (out16_7),
		.in2 (out16_8),
		.inpos1 (out16pos_7),
		.inpos2 (out16pos_8),
		.out(out8_4),
		.outpos(out8pos_4)
		);
Arb Arb8_5 (
		.in1 (out16_9),
		.in2 (out16_10),
		.inpos1 (out16pos_9),
		.inpos2 (out16pos_10),
		.out(out8_5),
		.outpos(out8pos_5)
		);
Arb Arb8_6 (
		.in1 (out16_11),
		.in2 (out16_12),
		.inpos1 (out16pos_11),
		.inpos2 (out16pos_12),
		.out(out8_6),
		.outpos(out8pos_6)
		);
Arb Arb8_7 (
		.in1 (out16_13),
		.in2 (out16_14),
		.inpos1 (out16pos_13),
		.inpos2 (out16pos_14),
		.out(out8_7),
		.outpos(out8pos_7)
		);
Arb Arb8_8 (
		.in1 (out16_15),
		.in2 (out16_16),
		.inpos1 (out16pos_15),
		.inpos2 (out16pos_16),
		.out(out8_8),
		.outpos(out8pos_8)
		);
//Arbiter Level 4
Arb Arb4_1 (
		.in1 (out8_1),
		.in2 (out8_2),
		.inpos1 (out8pos_1),
		.inpos2 (out8pos_2),
		.out(out4_1),
		.outpos(out4pos_1)
		);
Arb Arb4_2 (
		.in1 (out8_3),
		.in2 (out8_4),
		.inpos1 (out8pos_3),
		.inpos2 (out8pos_4),
		.out(out4_2),
		.outpos(out4pos_2)
		);
Arb Arb4_3 (
		.in1 (out8_5),
		.in2 (out8_6),
		.inpos1 (out8pos_5),
		.inpos2 (out8pos_6),
		.out(out4_3),
		.outpos(out4pos_3)
		);
Arb Arb4_4 (
		.in1 (out8_7),
		.in2 (out8_8),
		.inpos1 (out8pos_7),
		.inpos2 (out8pos_8),
		.out(out4_4),
		.outpos(out4pos_4)
		);		
//Arbiter Level 2
Arb Arb2_1 (
		.in1 (out4_1),
		.in2 (out4_2),
		.inpos1 (out4pos_1),
		.inpos2 (out4pos_2),
		.out(out2_1),
		.outpos(out2pos_1)
		);
Arb Arb2_2 (
		.in1 (out4_3),
		.in2 (out4_4),
		.inpos1 (out4pos_3),
		.inpos2 (out4pos_4),
		.out(out2_2),
		.outpos(out2pos_2)
		);

//Arbiter Level 1
Arb Arb1_1 (
		.in1 (out2_1),
		.in2 (out2_2),
		.inpos1 (out2pos_1),
		.inpos2 (out2pos_2),
		.out(out),
		.outpos(out_pos)
		);


endmodule 