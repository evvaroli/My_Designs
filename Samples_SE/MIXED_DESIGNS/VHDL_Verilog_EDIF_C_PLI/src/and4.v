//-----------------------------------------------------------------------------
//
// Title       : AND4
// Design      : VHDL_Verilog_EDIF_C_PLI
// Author      : Aldec, Inc.
// Company     : Aldec, Inc.
//
//-----------------------------------------------------------------------------
//
// File        : AND4.v
// Generated   : Wed Sep 25 15:23:23 2013
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {AND4}}
module AND4 ( I0 ,O ,I1 ,I2 ,I3 );
	
	output O ;
	wire O ;
	
	input I0 ;
	wire I0 ;
	input I1 ;
	wire I1 ;
	input I2 ;
	wire I2 ;
	input I3 ;
	wire I3 ;
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- // 
	and A1 (O, I0, I1, I2, I3);
	
endmodule
