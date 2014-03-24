close -all

#Define file names
set expression_signals_file expression_signals.txt
set reference_signal_file reference_signal.txt
set cursors_file cursors.txt
set wavebenchname expression
set reference_asdb wave_vhdl.asdb

cd $dsn/src
#Run reference design
adel -all
alog ff.v rom_c1c5.v rom_c2c4.v rom_c3.v adder_2x8_wrapper.v adder_7x8.v 
acom fir.vhd 
alog tb.v
asim -asdb $reference_asdb +access +r tb

wave -mem dut/*

run -all

#Specify signals for expression
clear
waveselect /tb/dut/q
waveexpand
waveclearselection
waveselect /tb/dut/q(*

wavecolumn hierarchy -show
wavecolumn type -show
wavecolumn mode -show
wavedump -onlyselectedrows > $expression_signals_file

#Specify reference signal to expression
waveclearselection
waveselect /tb/dut/outp
wavedump -onlyselectedrows > $reference_signal_file

#Create a window for expression
cursor "Cursor 1" 50ns
cursor "Cursor 2" 230ns
wavecursorsdump -all > $cursors_file

#Save configuration waveform file and close
write awc wave_vhdl.awc
close -wave

# Create wavebench files for expression
do -tcl wavebench.tcl VHDL $reference_signal_file $expression_signals_file $cursors_file $wavebenchname $reference_asdb

#Run simulation with expression
do ${wavebenchname}_VHDL/${wavebenchname}.do

#Compare expression with reference signal - no difference expected
waveclearselection
waveselect expression
waveselect /tb/dut/outp
wavecompare

#Compare windowed expression with reference signal - no difference expected in selected window
waveclearselection
waveselect expression_windowed
waveselect /tb/dut/outp
wavecompare

#Change radix of events signals to decimal
waveclearselection
waveselect events*
waveradix -decimal

#Group expression and their signals under virtual group
waveclearselection
waveselect expression
waveselect *q*
wavevirtual -vgroup "expression with signals"
waveselect "expression with signals"
waveexpand
