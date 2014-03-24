// (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2010-02-10 10:44:02 +0100 (Wed, 10 Feb 2010) $
// $Revision: 134483 $


// register
module ff(input clk, rst, input [7:0] d, output [7:0] q);
reg [7:0] qr;

always @(posedge clk or posedge rst)
if (rst)
	qr = 8'd0;
else
	qr = d;

assign q = qr;

endmodule : ff
