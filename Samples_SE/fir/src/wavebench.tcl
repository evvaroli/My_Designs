#------------------------------------------------------------------------------
#-- Subject     : WaveBench for Active-HDL
#-- File name   : wavebench.tcl
#-- Developer   : Aldec, Inc.
#-- Updated by  : Aldec, Inc.
#-- Copyright   : (C) 2012 ALDEC Inc. 
#-- Revisions   :
# 1. Windows/Linux platform support
# 2. Cursor Window support
# 3. VHDL/Verilog support
#------------------------------------------------------------------------------

global signalnamelist
global signaloriginalnamelist
global signaltypelist
global signalhierarchylist
global signallanglist
global cursortime1
global cursortime2

set signalnamelist ""
set signaloriginalnamelist ""
set signaltypelist ""
set signalhierarchylist ""
set signallanglist ""
set cursortime1 ""
set cursortime2 ""


	
proc read_signals {file} {
	global signalnamelist
	global signaloriginalnamelist
	global signaltypelist
	global signalhierarchylist
	global signallanglist
	
	set dumpwave [open $file r]
	
	foreach line [split [read $dumpwave] "\n"] { 	  
		# parsing signals
		if [string match "*<signal * />" $line] { 
			if [regexp {mode=\".+\((Verilog|VHDL)\)\" hierarchy=\"(.*)\" name=\"(.*)\" type=\"(.*)\" value} $line match signallang signalhierarchy signalfullname signaltype;] {
				lappend signaloriginalnamelist $signalfullname
				#change names with round and square brackets to extended id (VHDL) or replace them with underscores (Verilog)
				if [regexp {\(|\)|\[|\]} $signalfullname] {
					switch $signallang {
						"Verilog" {regsub -all {\(|\)|\[|\]} $signalfullname "_" signalfullname}
						"VHDL" {set signalfullname "\\$signalfullname\\"}
					}
				}
				lappend signalnamelist $signalfullname
				lappend signalhierarchylist $signalhierarchy			
				lappend signallanglist $signallang
				#revert type declaration for verilog vectors
				if {$signallang == "Verilog"}  {
					if {[regexp {^(\[.*\])(.+)$} $signaltype match range name]} {
						 set signaltype "${name} $range"
					}
				}
				lappend signaltypelist $signaltype		 
			}
		}
	}
}

proc read_cursortime {file} {
	global cursortime1
	global cursortime2
	
	set dumpwavecursors [open $file r]
	foreach line [split [read $dumpwavecursors ] "\n"] {  
		regsub -all {\s+} $line "" line
		if [string match {*[0-9]*} $line] { 
			if {$cursortime1 == ""} {
				regexp {.*/(.*)/.*/.*} $line match cursortime1;	
			} elseif {$cursortime2 == ""} {
				regexp {.*/(.*)/.*/.*} $line match cursortime2;
			} else break;
		}			  
	}
}

proc create_wavebench_vhd {dir name} {
	global signalnamelist
	global signaltypelist
	global signalhierarchylist
	
	set wavebench [open ${dir}/${name}.vhd w]
	puts $wavebench "
library ieee;
use ieee.std_logic_1164.all;  	
use ieee.std_logic_textio.all;	
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;	
	
entity ${name} is				
end ${name};
	
architecture StimulusFromWave of ${name} is"	
	
	# signal declaration  
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		puts $wavebench "\tsignal [lindex $signalnamelist $i] : [lindex $signaltypelist $i];"	 
	}
	
	puts $wavebench "\tsignal expression : [lindex $signaltypelist 0];"
	puts $wavebench "\tsignal expression_windowed : [lindex $signaltypelist 0];"	
	puts $wavebench "\tsignal events : integer :=0;"
	puts $wavebench "\tsignal events_windowed : integer :=0;"
	puts $wavebench "\tsignal cursor1 : std_logic :='0';"
	puts $wavebench "\tsignal cursor2 : std_logic :='0';"
	puts $wavebench "\tsignal cursor_window : std_logic :='0';"
	
	# architecture body
	puts $wavebench "begin"
	
	# Cursors
	puts $wavebench "\tcursor_window <= cursor1 xor cursor2;\n"	 	
	# Events 
	set sensitivity ""
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		if {$i == 1} { 
			append sensitivity "[lindex $signalnamelist $i]"
		} else {
			append sensitivity ", [lindex $signalnamelist $i]" 
		}
	}
	puts $wavebench "\tprocess ($sensitivity) is \n\tbegin\n\t\tevents<=events+1;"
	puts $wavebench "\t\tif cursor_window = '1' then\n\t\t\tevents_windowed <=events_windowed+1;\n\t\tend if;\n\tend process;\n"
	
	# Expression
	puts $wavebench "\t-- enter your expression here --"
	puts $wavebench "\tprocess ($sensitivity) is"
	puts $wavebench "\tvariable c1 : integer := 1;"
	puts $wavebench "\tvariable c2 : integer := 2;"
	puts $wavebench "\tvariable c3 : integer := 4;"
	puts $wavebench "\tvariable c4 : integer := 8;"
	puts $wavebench "\tvariable c5 : integer := 4;"
	puts $wavebench "\tvariable c6 : integer := 2;"
	puts $wavebench "\tvariable c7 : integer := 1;"
	set expression "\tbegin\n\t\texpression <= "
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		if {$i == 1} { 
			append expression "conv_std_logic_vector(c${i}*conv_integer([lindex $signalnamelist $i])"
		} elseif {$i == [expr [llength $signalnamelist]-1]} {
			append expression " + c${i}*conv_integer([lindex $signalnamelist $i]),expression'length)" 
		} else {
			append expression " + c${i}*conv_integer([lindex $signalnamelist $i])" 
		}
	}	
	puts $wavebench "$expression;\n\tend process;"
	
	#Windowed expression
	puts $wavebench "\tgen_window: for i in expression_windowed'range generate"
	puts $wavebench "\t\texpression_windowed(i) <= cursor_window and expression(i);\n"
	puts $wavebench "\tend generate gen_window;"
	
	puts $wavebench "end StimulusFromWave;\n"	 
	close $wavebench

}

proc create_wavebench_ver {dir name} {
	global signalnamelist
	global signaltypelist
	global signalhierarchylist
	
	set wavebench [open ${dir}/${name}.v w]
	puts $wavebench "module ${name};"
	# signal declaration  
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		puts $wavebench "\t[lindex $signaltypelist $i] [lindex $signalnamelist $i];"	 
	}
	
	puts $wavebench "\t[lindex $signaltypelist 0] expression;"	 
	puts $wavebench "\t[lindex $signaltypelist 0] expression_windowed;"	 
	puts $wavebench "\tint events = 0;"
	puts $wavebench "\tint events_windowed = 0;"
	puts $wavebench "\twire cursor1 = 0;"
	puts $wavebench "\twire cursor2 = 0;"
	
	# Window
	puts $wavebench "\twire cursor_window = cursor1 ^ cursor2;\n"
	
	# Events 
	set sensitivity ""
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		if {$i == 1} { 
			append sensitivity "[lindex $signalnamelist $i]"
		} else {
			append sensitivity ", [lindex $signalnamelist $i]" 
		}
	}
	puts $wavebench "\talways @($sensitivity)\n\tbegin"
	puts $wavebench "\t\tevents++;"
	puts $wavebench "\t\tevents_windowed = (cursor_window)? events_windowed+1 : events_windowed;\n\tend";

	# Expression 
	puts $wavebench "\t// enter your expression here //"
	puts $wavebench "\tint c1 = 1;int c2 = 2;int c3 = 4;int c4 = 8;int c5 = 4;int c6 = 2;int c7 =1;"
	set expression "\tassign expression = "
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		if {$i == 1} { 
			append expression "c${i}*[lindex $signalnamelist $i]"
		} else {
			append expression " + c${i}*[lindex $signalnamelist $i]" 
		}
	}	
	puts $wavebench "$expression;\n"
	
	#Windowed expression
	puts $wavebench "\tassign expression_windowed = {\$bits(expression){cursor_window}} & expression;\n"
	
   	puts $wavebench "endmodule\n"	 
	close $wavebench

}

proc create_wavebenchscript {lang dir name asdb} {
	global signaloriginalnamelist
	global signalnamelist
	global signalhierarchylist
	global cursortime1
	global cursortime2
	
	set wavebenchscript [open ${dir}/${name}.do w]
	
	switch $lang {
		"VHDL" {puts $wavebenchscript "acom ${dir}/${name}.vhd"}
		"Verilog" {puts $wavebenchscript "alog ${dir}/${name}.v"}
	}
	puts $wavebenchscript "asim +access +rw -asdb ${name}.asdb ${name} [lindex [split [lindex $signalhierarchylist 0] '/'] 1]"
	puts $wavebenchscript "wave -divider EXPRESSIONS"
	puts $wavebenchscript "wave /${name}/expression*"
	puts $wavebenchscript "wave -divider \"EXPRESSION SIGNALS\""
	# waveform stimuli	  
	for {set i 1} {$i < [llength $signalnamelist]} {incr i 1} {
		puts $wavebenchscript "wave -noreg {/${name}/[lindex $signalnamelist $i]}"
		puts $wavebenchscript "force -noreg -freeze {/${name}/[lindex $signalnamelist $i]} \"/custom $asdb,[lindex $signalhierarchylist $i]/[lindex $signaloriginalnamelist $i]\"" 
	}
	puts $wavebenchscript "wave -divider \"REFERENCE SIGNAL\""
	puts $wavebenchscript "wave [lindex $signalhierarchylist 0]/[lindex $signaloriginalnamelist 0]"
	puts $wavebenchscript "wave /${name}/events*"
	puts $wavebenchscript "wave /${name}/cursor_window"
	if {$cursortime1 != ""} {
		puts $wavebenchscript "force -freeze cursor1 1 $cursortime1"
	} 
	if {$cursortime2 != ""} {
		puts $wavebenchscript "force -freeze cursor2 1 $cursortime2"
	} 
	puts $wavebenchscript "run -all"
	close $wavebenchscript
}	

set lang [lindex $argv 0]
set reference_signal_file [lindex $argv 1]
set expression_signals_file [lindex $argv 2]
set cursors_file [lindex $argv 3]
set wavebenchname [lindex $argv 4]
set reference_asdb [lindex $argv 5]

read_signals $reference_signal_file
read_signals $expression_signals_file
read_cursortime $cursors_file

if {[string length $wavebenchname] > 0 && [string length $lang] > 0} {
	set dir ${wavebenchname}_$lang
	file mkdir $dir
}

switch $lang {
	"Verilog" {create_wavebench_ver $dir $wavebenchname;addfile -auto ${dir}/${wavebenchname}.v}
	"VHDL" {create_wavebench_vhd $dir $wavebenchname;addfile -auto ${dir}/${wavebenchname}.vhd}
}
create_wavebenchscript $lang $dir $wavebenchname $reference_asdb
addfile -auto ${dir}/${wavebenchname}.do
