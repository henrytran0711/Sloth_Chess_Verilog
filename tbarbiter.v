module tb_Arb_complete;
	reg [5:0] test_in1;
	reg [5:0] test_in2;
	reg [5:0] test_in3;
	reg [5:0] test_in4;
	reg [5:0] test_in5;
	reg [5:0] test_in6;
	reg [5:0] test_in7;
	reg [5:0] test_in8;
	reg [5:0] test_in9;
	reg [5:0] test_in10;
	reg [5:0] test_in11;
	reg [5:0] test_in12;
	reg [5:0] test_in13;
	reg [5:0] test_in14;
	reg [5:0] test_in15;
	reg [5:0] test_in16;
	reg [5:0] test_in17;
	reg [5:0] test_in18;
	reg [5:0] test_in19;
	reg [5:0] test_in20;
	reg [5:0] test_in21;
	reg [5:0] test_in22;
	reg [5:0] test_in23;
	reg [5:0] test_in24;
	reg [5:0] test_in25;
	reg [5:0] test_in26;
	reg [5:0] test_in27;
	reg [5:0] test_in28;
	reg [5:0] test_in29;
	reg [5:0] test_in30;
	reg [5:0] test_in31;
	reg [5:0] test_in32;
	reg [5:0] test_in33;
	reg [5:0] test_in34;
	reg [5:0] test_in35;
	reg [5:0] test_in36;
	reg [5:0] test_in37;
	reg [5:0] test_in38;
	reg [5:0] test_in39;
	reg [5:0] test_in40;
	reg [5:0] test_in41;
	reg [5:0] test_in42;
	reg [5:0] test_in43;
	reg [5:0] test_in44;
	reg [5:0] test_in45;
	reg [5:0] test_in46;
	reg [5:0] test_in47;
	reg [5:0] test_in48;
	reg [5:0] test_in49;
	reg [5:0] test_in50;
	reg [5:0] test_in51;
	reg [5:0] test_in52;
	reg [5:0] test_in53;
	reg [5:0] test_in54;
	reg [5:0] test_in55;
	reg [5:0] test_in56;
	reg [5:0] test_in57;
	reg [5:0] test_in58;
	reg [5:0] test_in59;
	reg [5:0] test_in60;
	reg [5:0] test_in61;
	reg [5:0] test_in62;
	reg [5:0] test_in63;
	reg [5:0] test_in64;
	wire [5:0] test_out;
	
	
	Arb_complete Arb_comp (//Inputs
						.in1(test_in1),
						.in2(test_in2),
						.in3(test_in3),
						.in4(test_in4),
						.in5(test_in5),
						.in6(test_in6),
						.in7(test_in7),
						.in8(test_in8),
						.in9(test_in9),
						.in10(test_in10),
						.in11(test_in11),
						.in12(test_in12),
						.in13(test_in13),
						.in14(test_in14),
						.in15(test_in15),
						.in16(test_in16),
						.in17(test_in17),
						.in18(test_in18),
						.in19(test_in19),
						.in20(test_in20),
						.in21(test_in21),
						.in22(test_in22),
						.in23(test_in24),
						.in24(test_in25),
						.in25(test_in25),
						.in26(test_in26),
						.in27(test_in27),
						.in28(test_in28),
						.in29(test_in29),
						.in30(test_in30),
						.in31(test_in31),
						.in32(test_in32),
						.in33(test_in33),
						.in34(test_in34),
						.in35(test_in35),
						.in36(test_in36),
						.in37(test_in37),
						.in38(test_in38),
						.in39(test_in39),
						.in40(test_in40),
						.in41(test_in41),
						.in42(test_in42),
						.in43(test_in43),
						.in44(test_in44),
						.in45(test_in45),
						.in46(test_in46),
						.in47(test_in47),
						.in48(test_in48),
						.in49(test_in49),
						.in50(test_in50),
						.in51(test_in51),
						.in52(test_in52),
						.in53(test_in53),
						.in54(test_in54),
						.in55(test_in55),
						.in56(test_in56),
						.in57(test_in57),
						.in58(test_in58),
						.in59(test_in59),
						.in60(test_in60),
						.in61(test_in61),
						.in62(test_in62),
						.in63(test_in63),
						.in64(test_in64),
						//Output
						.out(test_out));
	initial begin
		test_in1 = 6'b 100000;
		test_in2 = 6'b 000000;
		test_in3 = 6'b 000000;
		test_in4 = 6'b 000000;
		test_in5 = 6'b 000000;
		test_in6 = 6'b 000000;
		test_in7 = 6'b 000000;
		test_in8 = 6'b 000000;
		test_in9 = 6'b 000000;
		test_in10 = 6'b 000000;
		test_in11 = 6'b 000000;
		test_in12= 6'b 000000;
		test_in13 = 6'b 000000;
		test_in14 = 6'b 000000;
		test_in15 = 6'b 000000;
		test_in16= 6'b 000000;
		test_in17 = 6'b 000000;
		test_in18 = 6'b 000000;
		test_in19 = 6'b 000000;
		test_in20 = 6'b 000000;
		test_in21 = 6'b 000000;
		test_in22 = 6'b 000000;
		test_in23 = 6'b 000000;
		test_in24= 6'b 000000;
		test_in25 = 6'b 000000;
		test_in26 = 6'b 000000;
		test_in27 = 6'b 000000;
		test_in28 = 6'b 000000;
		test_in29 = 6'b 000000;
		test_in30 = 6'b 000000;
		test_in31 = 6'b 000000;
		test_in32 = 6'b 000000;
		test_in33 = 6'b 000000;
		test_in34 = 6'b 000000;
		test_in35 = 6'b 000000;
		test_in36= 6'b 000000;
		test_in37 = 6'b 000000;
		test_in38 = 6'b 000000;
		test_in39 = 6'b 000000;
		test_in40= 6'b 000000;
		test_in41 = 6'b 000000;
		test_in42 = 6'b 000000;
		test_in43 = 6'b 000000;
		test_in44 = 6'b 000000;
		test_in45 = 6'b 000000;
		test_in46 = 6'b 000000;
		test_in47 = 6'b 000000;
		test_in48= 6'b 000000;
		test_in49 = 6'b 000000;
		test_in50 = 6'b 000000;
		test_in51 = 6'b 000000;
		test_in52= 6'b 000000;
		test_in53 = 6'b 000000;
		test_in54 = 6'b 000000;
		test_in55 = 6'b 000000;
		test_in56 = 6'b 000000;
		test_in57= 6'b 000000;
		test_in58 = 6'b 000000;
		test_in59 = 6'b 000000;
		test_in60= 6'b 000000;
		test_in61 = 6'b 000000;
		test_in62 = 6'b 000000;
		test_in63 = 6'b 000000;
		test_in64= 6'b 000000;
		#20
      $display("First 4 Inputs are: %b %b %b %b,Output of Arbiter is:%b",test_in1,test_in2,test_in3,test_in4,test_out);
		  
		  
		  end
endmodule