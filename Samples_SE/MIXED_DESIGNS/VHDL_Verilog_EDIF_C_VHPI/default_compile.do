alog -v2k -dbg -l ovi_lpm "$dsn/src/and2.v"
alog -v2k -dbg -l ovi_lpm "$dsn/src/and3.v"
alog -v2k -dbg -l ovi_lpm "$dsn/src/and4.v"
acom -dbg "$dsn/src/c2or.vhd"
acom -dbg "$dsn/src/cb4ce.vhd"
acom -dbg "$dsn/src/pfdiv.vhd"
acom -dbg "$dsn/src/oscil_c_vhpi.vhd"
edfcomp "$dsn/src/crv.bde"
acom -dbg "$dsn/src/filter.bde"
comp "$dsn/src/vhpiuser_aldec.dlm"
acom -dbg "$dsn/src/testbench/filter_tb.vhd"
