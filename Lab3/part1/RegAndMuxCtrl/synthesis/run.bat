set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\xst.exe" -ifn EuclidsGCD_top.xst >> synthesis.dfml
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\netgen.exe" -ofmt vhdl -intstyle silent -w EuclidsGCD_top.ngc  EuclidsGCD_top.vhd >> synthesis.dfml
