set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\xst.exe" -ifn detector_top.xst >> synthesis.dfml
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\netgen.exe" -ofmt vhdl -intstyle silent -w detector_top.ngc  detector_top.vhd >> synthesis.dfml