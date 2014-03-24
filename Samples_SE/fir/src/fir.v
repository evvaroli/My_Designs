// (c) Aldec, Inc.
// All rights reserved.
//
// Last modified: $Date: 2010-02-10 10:44:02 +0100 (Wed, 10 Feb 2010) $
// $Revision: 134483 $


// simple 7 tap fir model
module fir(input clk, input rst, input [7:0] inp, output [7:0] outp);


wire [7:0] q [7];
wire [15:0] mul_prod [7];
wire [15:0] sum_res;
wire c;


// structure of 7 tap FIR


// delays
ff ff0 (.d(inp), .q(q[0]), .*);
ff ff1 (.d(q[0]), .q(q[1]), .*);
ff ff2 (.d(q[1]), .q(q[2]), .*);
ff ff3 (.d(q[2]), .q(q[3]), .*);
ff ff4 (.d(q[3]), .q(q[4]), .*);
ff ff5 (.d(q[4]), .q(q[5]), .*);
ff ff6 (.d(q[5]), .q(q[6]), .*);

// *c0 = 1;
assign mul_prod[0] = q[0];


// multiplication by coefficients
// *c1
rom_rtl_c1c5 mul1 (q[1], mul_prod[1]);

// *c2
rom_rtl_c2c4 mul2 (q[2], mul_prod[2]);

// *c3
rom_rtl_c3 mul3 (q[3], mul_prod[3]);

// *c4
rom_rtl_c2c4 mul4 (q[4], mul_prod[4]);

// *c5
rom_rtl_c1c5 mul5 (q[5], mul_prod[5]);

// *c6=1
assign mul_prod[6] = q[6];


// sum of multiplication products
adder_7x8_cascade sum(mul_prod[0], mul_prod[1], mul_prod[2], mul_prod[3], mul_prod[4], mul_prod[5], mul_prod[6], outp, c);



endmodule : fir
