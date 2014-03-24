// (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2011-08-30 13:31:23 +0200 (Tue, 30 Aug 2011) $
// $Revision: 180634 $


//Black-box wrapper for module adder_2x8
module adder_2x8 (
					input cin,
					input [15:0] a,
					input [15:0] b,
					output [15:0] s,
					output cout
				) /* synthesis syn_black_box */;

/*synthesis translate_off*/

assign {cout, s} = a + b + cin;

/*synthesis translate_on*/

endmodule
