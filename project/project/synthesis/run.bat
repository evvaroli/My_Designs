set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\xst.exe" -ifn nes_driver_top.xst >> synthesis.dfml
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\netgen.exe" -ofmt vhdl -intstyle silent -w nes_driver_top.ngc  nes_driver_top.vhd >> synthesis.dfml
