module Arb (in1,in2, out);
input [5:0] in1;
input [5:0] in2;
output reg [5:0] out;
  always @(*) 
    begin
if (in1 > in2)
	out = in1;
else if (in2 >= in1)
	out = in2;
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
						//Output
						out);
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
//Out 8
wire [5:0] out8_1;
wire [5:0] out8_2;
wire [5:0] out8_3;
wire [5:0] out8_4;
wire [5:0] out8_5;
wire [5:0] out8_6;
wire [5:0] out8_7;
wire [5:0] out8_8;
//Out 4
wire [5:0] out4_1;
wire [5:0] out4_2;
wire [5:0] out4_3;
wire [5:0] out4_4;
//Out 2
wire [5:0] out2_1;
wire [5:0] out2_2;
//Out 1

output [5:0] out;
//32-Instantiation Level:
	Arb Arb32_1 (
		.in1 (in1),
		.in2 (in2),
		.out(out32_1)
		);
	Arb Arb32_2 (
		.in1 (in3),
		.in2 (in4),
		.out(out32_2)
		);
	Arb Arb32_3 (
		.in1 (in5),
		.in2 (in6),
		.out(out32_3)
		);
	Arb Arb32_4 (
		.in1 (in7),
		.in2 (in8),
		.out(out32_4)
		);
  	Arb Arb32_5 (
		.in1 (in9),
		.in2 (in10),
		.out(out32_5)
		);
  	Arb Arb32_6 (
		.in1 (in11),
		.in2 (in12),
		.out(out32_6)
		);
  	Arb Arb32_7 (
		.in1 (in13),
		.in2 (in14),
		.out(out32_7)
		);
	Arb Arb32_8 (
		.in1 (in15),
		.in2 (in16),
		.out(out32_8)
		);
  	Arb Arb32_9 (
		.in1 (in17),
		.in2 (in18),
		.out(out32_9)
		);
	Arb Arb32_10 (
		.in1 (in19),
		.in2 (in20),
		.out(out32_10)
		);
	Arb Arb32_11 (
		.in1 (in21),
		.in2 (in22),
		.out(out32_11)
		);
	Arb Arb32_12 (
		.in1 (in23),
		.in2 (in24),
		.out(out32_12)
		);
	Arb Arb32_13 (
		.in1 (in25),
		.in2 (in26),
		.out(out32_13)
		);
	Arb Arb32_14 (
		.in1 (in27),
		.in2 (in28),
		.out(out32_14)
		);
	Arb Arb32_15 (
		.in1 (in29),
		.in2 (in30),
		.out(out32_15)
		);
	Arb Arb32_16 (
		.in1 (in31),
		.in2 (in32),
		.out(out32_16)
		);
	Arb Arb32_17 (
		.in1 (in33),
		.in2 (in34),
      .out(out32_17)
		);
	Arb Arb32_18 (
		.in1 (in35),
		.in2 (in36),
		.out(out32_18)
		);
	Arb Arb32_19 (
		.in1 (in37),
		.in2 (in38),
		.out(out32_19)
		);
	Arb Arb32_20 (
		.in1 (in39),
		.in2 (in40),
		.out(out32_20)
		);
	Arb Arb32_21 (
		.in1 (in41),
		.in2 (in42),
		.out(out32_21)
		);
	Arb Arb32_22 (
		.in1 (in43),
		.in2 (in44),
      .out(out32_22)
		);
	Arb Arb32_23 (
		.in1 (in45),
		.in2 (in46),
		.out(out32_23)
		);
	Arb Arb32_24 (
		.in1 (in47),
		.in2 (in48),
		.out(out32_24)
		)	;
	Arb Arb32_25 (
		.in1 (in49),
		.in2 (in50),
		.out(out32_25)
	);
	Arb Arb32_26 (
		.in1 (in51),
		.in2 (in52),
		.out(out32_26)
		);
	Arb Arb32_27 (
		.in1 (in53),
		.in2 (in54),
		.out(out32_27)
		);
	Arb Arb32_28 (
		.in1 (in55),
		.in2 (in56),
		.out(out32_28)
		);
	Arb Arb32_29 (
		.in1 (in57),
		.in2 (in58),
		.out(out32_29)
		);
	Arb Arb32_30 (
		.in1 (in59),
		.in2 (in60),
		.out(out32_30)
		);
Arb Arb32_31 (
		.in1 (in61),
		.in2 (in62),
		.out(out32_31)
		);
Arb Arb32_32 (
		.in1 (in63),
		.in2 (in64),
		.out(out32_32)
		);
		
//Arbiter 16 level

Arb Arb16_1 (
		.in1 (out32_1),
		.in2 (out32_2),
		.out(out16_1)
		);
Arb Arb16_2 (
		.in1 (out32_3),
		.in2 (out32_4),
		.out(out16_2)
		);
Arb Arb16_3 (
		.in1 (out32_5),
		.in2 (out32_6),
		.out(out16_3)
		);
Arb Arb16_4 (
		.in1 (out32_7),
		.in2 (out32_8),
		.out(out16_4)
		);
Arb Arb16_5 (
		.in1 (out32_9),
		.in2 (out32_10),
		.out(out16_5)
		);
Arb Arb16_6 (
		.in1 (out32_11),
		.in2 (out32_12),
		.out(out16_6)
		);
Arb Arb16_7 (
		.in1 (out32_13),
		.in2 (out32_14),
		.out(out16_7)
		);
Arb Arb16_8 (
		.in1 (out32_15),
		.in2 (out32_16),
		.out(out16_8)
		);
Arb Arb16_9 (
		.in1 (out32_17),
		.in2 (out32_18),
		.out(out16_9)
		);
Arb Arb16_10 (
		.in1 (out32_19),
		.in2 (out32_20),
		.out(out16_10)
		);
Arb Arb16_11 (
		.in1 (out32_21),
		.in2 (out32_22),
		.out(out16_11)
		);
Arb Arb16_12 (
		.in1 (out32_23),
		.in2 (out32_24),
		.out(out16_12)
		);
Arb Arb16_13 (
		.in1 (out32_25),
		.in2 (out32_26),
		.out(out16_13)
		);
Arb Arb16_14 (
		.in1 (out32_27),
		.in2 (out32_28),
		.out(out16_14)
		);
Arb Arb16_15 (
		.in1 (out32_29),
		.in2 (out32_30),
		.out(out16_15)
		);
Arb Arb16_16 (
		.in1 (out32_31),
		.in2 (out32_32),
		.out(out16_16)
		);
//Arbiter 16 level
Arb Arb8_1 (
		.in1 (out16_1),
		.in2 (out16_2),
		.out(out8_1)
		);
Arb Arb8_2 (
		.in1 (out16_3),
		.in2 (out16_4),
		.out(out8_2)
		);
Arb Arb8_3 (
		.in1 (out16_5),
		.in2 (out16_6),
		.out(out8_3)
		);
Arb Arb8_4 (
		.in1 (out16_7),
		.in2 (out16_8),
		.out(out8_4)
		);
Arb Arb8_5 (
		.in1 (out16_9),
		.in2 (out16_10),
		.out(out8_5)
		);
Arb Arb8_6 (
		.in1 (out16_11),
		.in2 (out16_12),
		.out(out8_6)
		);
Arb Arb8_7 (
		.in1 (out16_13),
		.in2 (out16_14),
		.out(out8_7)
		);
Arb Arb8_8 (
		.in1 (out16_15),
		.in2 (out16_16),
		.out(out8_8)
		);
//Arbiter Level 4
Arb Arb4_1 (
		.in1 (out8_1),
		.in2 (out8_2),
		.out(out4_1)
		);
Arb Arb4_2 (
		.in1 (out8_3),
		.in2 (out8_4),
		.out(out4_2)
		);
Arb Arb4_3 (
		.in1 (out8_5),
		.in2 (out8_6),
		.out(out4_3)
		);
Arb Arb4_4 (
		.in1 (out8_7),
		.in2 (out8_8),
		.out(out4_4)
		);
//Arbiter Level 2
Arb Arb2_1 (
		.in1 (out4_1),
		.in2 (out4_2),
		.out(out2_1)
		);
Arb Arb2_2 (
		.in1 (out4_3),
		.in2 (out4_4),
		.out(out2_2)
		);
//Arbiter Level 1
Arb Arb1_1 (
		.in1 (out2_1),
		.in2 (out2_2),
		.out(out)
		);

endmodule 