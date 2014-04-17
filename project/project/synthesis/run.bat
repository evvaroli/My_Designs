set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\xst.exe" -ifn vga_bsprite2a_top.xst >> synthesis.dfml
call "C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\netgen.exe" -ofmt vhdl -intstyle silent -w vga_bsprite2a_top.ngc  vga_bsprite2a_top.vhd >> synthesis.dfml
