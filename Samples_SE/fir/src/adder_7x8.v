// (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2010-02-10 10:44:02 +0100 (Wed, 10 Feb 2010) $
// $Revision: 134483 $

module adder_7x8_cascade (
					input [15:0] a0,
					input [15:0] a1,
					input [15:0] a2,
					input [15:0] a3,
					input [15:0] a4,
					input [15:0] a5,
					input [15:0] a6,
					output [7:0] sum,
					output c
				);

logic c0, c1, c2, c3, c4, c5;
logic [15:0] s1, s2, s3, s4, s5, s6;

assign c0 = '0;

adder_2x8 add_01 (c0, a0, a1, s1, c1);
adder_2x8 add_012 (c1, s1, a2, s2, c2);
adder_2x8 add_0123 (c2, s2, a3, s3, c3);
adder_2x8 add_01234 (c3, s3, a4, s4, c4);
adder_2x8 add_012345 (c4, s4, a5, s5, c5);
adder_2x8 add_0123456 (c5, s5, a6, s6, c);

assign sum = s6[7:0];

endmodule : adder_7x8_cascade
