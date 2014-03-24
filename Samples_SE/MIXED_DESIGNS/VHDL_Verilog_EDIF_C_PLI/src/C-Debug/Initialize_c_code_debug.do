#build dlm file
buildc "$dsn/src/oscil_c_pli.dlm"
#compile all hdl files
alog $dsn/src/and4.v
alog $dsn/src/and3.v
alog $dsn/src/and2.v
alog -pli $dsn/src/PLI/oscil_c_pli.dll $dsn/src/oscil_c_pli.v
acom $dsn/src/cb4ce.vhd
acom $dsn/src/c2or.vhd
edfcomp $dsn/src/crv.bde
acom $dsn/src/pfdiv.vhd	
acom $dsn/src/filter.bde
acom $dsn/src/testbench/filter_tb.vhd 
#set top level 
entity tb_architecture
#initialize c-code debug session
cdebug -abp 