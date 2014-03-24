//-----------------------------------------------------------------------------
//
// Title       : AND2
// Design      : VHDL_Verilog_EDIF_C_PLI
// Author      : Aldec, Inc.
// Company     : Aldec, Inc.
//
//-----------------------------------------------------------------------------
//
// File        : AND2.v
// Generated   : Tue Sep 24 16:39:14 2013
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
//{module {AND2}}
module AND2 ( I0 ,O ,I1 );
	
	output O ;
	wire O ;
	
	input I0 ;
	wire I0 ;
	input I1 ;
	wire I1 ;
	
	//}} End of automatically maintained section
	
	// -- Enter your statements here -- //	  
	and A1 (O, I0, I1);
	
endmodule
