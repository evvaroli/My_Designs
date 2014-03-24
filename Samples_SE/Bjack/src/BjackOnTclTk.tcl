#------------------------------------------------------------------------------
#-- Subject     : Tcl/Tk Demo
#-- File name   : BjackOnTclTk.tcl
#-- Revision    : 4.0
#-- Date        : 02/02/07
#-- Author      : Aldec, Inc.
#-- Copyright   : (C) 1999 ALDEC Inc.
#-- Description : Tcl/Tk Graphical Interface for Bjack project.
#------------------------------------------------------------------------------

wm withdraw . 

## BEGIN SETTINGS ##
wm withdraw . 		  
package require mmedia
package require ::aldec::scripter 1.0 
set dsn [::aldec::scripter::GetVariable "dsn"] 
#####################

## COMPILATION PROCEDURE ##
set VHDLfiles ""
lappend VHDLfiles $dsn/src/gates.vhd
lappend VHDLfiles $dsn/src/disp_units.vhd
lappend VHDLfiles $dsn/src/bjack_c.asf
lappend VHDLfiles $dsn/src/bjack.vhd

proc compile { VHDLfiles } {
	foreach VHDLfile $VHDLfiles {
		if ![acom $VHDLfile] { 
			PrintString "TCL: Cannot compile $VHDLfile - aborting script..." 1
			return 0
		}
	}
	return 1
}	  

## MAIN SCRIPT ##
if {[compile $VHDLfiles]} { 
	if {![asim -advdataflow bjack structure]} {
		PrintString "TCL: Cannot initialize simulation - aborting script..." 1
		exit
	} else {
		
		wave
		wave /bjack/SYS_CLK
		wave /bjack/START
		wave /bjack/NEW_CARD
		wave /bjack/LEDS
		wave /bjack/HOLD
		wave /bjack/GEN_RES
		wave /bjack/GEN_CLK
		wave /bjack/D_L
		wave /bjack/D_H
		wave /bjack/BUST

		force /bjack/SYS_CLK 0 0, 1 40 ns -r 80 ns	   
		force /bjack/GEN_CLK 0 0, 1 160 ns -r 320 ns
		force /bjack/NEW_CARD 1;
		force /bjack/GEN_RES 1 0,0 10 ns;
		force /bjack/START 1;
#run 1 ps
 

#########################
		proc ExamineAll {} {
		global hold bust d_l d_h DisplayTopic;
		set hold [examine HOLD];  
		set bust [examine BUST];
		set d_l [examine D_L];
		set d_h [examine D_H];
		if {($hold == "1") || ($bust == "1")} {
		    set DisplayTopic "   HAND COUNT   " ;
		} else {set DisplayTopic "     NEW CARD     "};
		}
 
		proc positionWindow . {
   		 	wm geometry . +300+300
		}

		proc ExitProc {} {
			noforce /bjack/SYS_CLK
			noforce /bjack/GEN_CLK
			noforce /bjack/NEW_CARD
			noforce /bjack/GEN_RES
			noforce /bjack/START
			endsim
		}	

##############################

		wm iconify .
		wm deiconify .		  
		set . .button 
		set . .label

		wm title . "BJACK ON TCL/TK"
		wm iconname . "button"		
		wm iconname . "label"
		positionWindow .

		frame .labels
		image create photo bjack \
			-file [file join $dsn src2 images bjack.gif] 
		label .labels.image -image bjack
		label .labels.msg -wraplength 5i -justify left -text "The game begins when you click the START button which forces '0' on the START signal.
		By clicking the NEW_CARD button you select a new card
		('0 is forced on the NEW_CARD signal).
		The 2-digit display (the NEW CARD output) shows the subsequent card.
		When the game is over, the display shows the current hand count.
		The GEN_RES button resets the card sequence generator."
		pack .labels.image .labels.msg -side left 
		pack .labels -side top
		ExamineAll				 

		frame .outputs -relief raised -bd 1
		pack .outputs -side left -expand yes -ipadx 100	-ipady 10

		frame .outputs.label_display -relief solid -bd 2 
		pack .outputs.label_display -side top  -pady 10	 -ipadx 10

		label .outputs.label_display.topic -textvariable DisplayTopic  
		frame .outputs.label_display.leds 
		label .outputs.label_display.leds.d_h -textvariable d_h 
		label .outputs.label_display.leds.d_l -textvariable d_l	

		pack  .outputs.label_display.leds.d_h .outputs.label_display.leds.d_l -side left 
		pack  .outputs.label_display.topic .outputs.label_display.leds -side top 

		frame .outputs.label_hold -relief solid -bd 2
		frame .outputs.label_bust -relief solid -bd 2
		pack .outputs.label_hold .outputs.label_bust -side left -expand 1 -pady	3
	   			  
		label .outputs.label_hold.l2 -text "HOLD = " 
		label .outputs.label_hold.l3 -textvariable hold	
		pack  .outputs.label_hold.l2 .outputs.label_hold.l3 -side left
   	
		label .outputs.label_bust.l4 -text "BUST = "
		label .outputs.label_bust.l5 -textvariable bust
		pack  .outputs.label_bust.l4 .outputs.label_bust.l5 -side left 


		frame .buttons
		pack .buttons -side bottom -padx 30 -pady 2m
		button .buttons.exit -text EXIT -width 10 -command "destroy ; ExitProc; set end_tcl true; exit"
		pack .buttons.exit  -side left -expand 1
   	
		button .b1 -text "START" -width 10 \
  		  	-command ". config -bg PeachPuff1;  force /bjack/START 0 0, 1 500 ns; run 1 us; ExamineAll"
		button .b2 -text "NEW_CARD" -width 10 \
   		 	-command ". config -bg LightBlue1; force /bjack/NEW_CARD 0 0, 1 500 ns; run 1 us; ExamineAll"
		button .b3 -text "GEN_RES" -width 10 \
   		 	-command ". config -bg SeaGreen2; force /bjack/GEN_RES 1 0,0 10 ns;"
		pack .b1 .b2 .b3 -side top -expand yes -pady 2

		wm protocol . WM_DELETE_WINDOW "ExitProc; set end_tcl true; exit"	   
	
		tkwait window .
	}
}