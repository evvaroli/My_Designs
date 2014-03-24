@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\trce.exe" -v 3  -s 5  -n 3  -fastpaths "map.ncd" "calc_top2.pcf" -o "calc_top2_postmap.twr"
