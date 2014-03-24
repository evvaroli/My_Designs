@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\ngdbuild.exe" -p 3S500EFG320-5  -aul -sd "c:\My_Designs\Lab6\Lab6\synthesis" -sd "c:\My_Designs\Lab6\Lab6\compile" -sd "c:\My_Designs\Lab6\Lab6\src" -sd "C:\Aldec\Active-HDL Student Edition\vlib\SPARTAN3E\compile" -uc "calc_top2.ucf" "calc_top2.ngc" "calc_top2.ngd"
