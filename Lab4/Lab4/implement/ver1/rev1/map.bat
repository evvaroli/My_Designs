@set XILINX=C:\Xilinx\13.2\ISE_DS\ISE
@set PATH=C:\Xilinx\13.2\ISE_DS\ISE\bin\nt
@"C:\Xilinx\13.2\ISE_DS\ISE\bin\nt\map.exe" -p 3S500EFG320-5 -o "map.ncd"  -pr off  -cm area  -ir off  -c 100 "lab4_top.ngd" "lab4_top.pcf"
