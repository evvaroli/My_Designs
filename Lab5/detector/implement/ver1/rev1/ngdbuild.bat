@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\ngdbuild.exe" -p 3S500EFG320-5  -aul -sd "C:\My_Designs\Lab5\detector\synthesis" -sd "C:\My_Designs\Lab5\detector\compile" -sd "C:\My_Designs\Lab5\detector\src" -sd "C:\Aldec\Active-HDL Student Edition\vlib\SPARTAN3E\compile" -uc "detector_top.ucf" "detector_top.ngc" "detector_top.ngd"
