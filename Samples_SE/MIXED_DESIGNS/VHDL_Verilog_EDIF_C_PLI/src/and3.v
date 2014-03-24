//-----------------------------------------------------------------------------
//
// Title       : AND3
// Design      : VHDL_Verilog_EDIF_C_PLI
// Author      : Aldec, Inc.
// Company     : Aldec, Inc.
//
//-----------------------------------------------------------------------------
//
// File        : AND3.v
// Generated   : Tue Sep 24 16:43:28 2013
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
//{module {AND3}}
module AND3 ( I0 ,O ,I1 ,I2 );
	
	output O ;
	wire O ;
	
	input I0 ;
	wire I0 ;
	input I1 ;
	wire I1 ;
	input I2 ;
	wire I2 ;
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //	 
	
	and A1 (O, I0, I1, I2);
	
endmodule
