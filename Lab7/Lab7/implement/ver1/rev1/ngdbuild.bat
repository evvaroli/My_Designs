@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\ngdbuild.exe" -p 3S500EFG320-5  -aul -sd "C:\My_Designs\Lab7\Lab7\synthesis" -sd "C:\My_Designs\Lab7\Lab7\compile" -sd "C:\My_Designs\Lab7\Lab7\src" -sd "C:\Aldec\Active-HDL Student Edition\vlib\SPARTAN3E\compile" -uc "group_photos_top.ucf" "group_photos_top.ngc" "group_photos_top.ngd"
