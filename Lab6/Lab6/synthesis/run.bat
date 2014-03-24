set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\xst.exe" -ifn calc_top2.xst >> synthesis.dfml
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\netgen.exe" -ofmt vhdl -intstyle silent -w calc_top2.ngc  calc_top2.vhd >> synthesis.dfml
