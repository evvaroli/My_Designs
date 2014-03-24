@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\ngdbuild.exe" -p 3S500EFG320-5  -aul -sd "C:\My_Designs\Lab3\part1\RegAndMuxCtrl\synthesis" -sd "C:\My_Designs\Lab3\part1\RegAndMuxCtrl\compile" -sd "C:\My_Designs\Lab3\part1\RegAndMuxCtrl\src" -sd "C:\Aldec\Active-HDL Student Edition\vlib\SPARTAN3E\compile" -uc "EuclidsGCD_top.ucf" "EuclidsGCD_top.ngc" "EuclidsGCD_top.ngd"
