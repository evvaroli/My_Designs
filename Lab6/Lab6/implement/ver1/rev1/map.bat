@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\map.exe" -p 3S500EFG320-5 -o "map.ncd"  -pr off  -cm area  -ir off  -c 100 "calc_top2.ngd" "calc_top2.pcf"
