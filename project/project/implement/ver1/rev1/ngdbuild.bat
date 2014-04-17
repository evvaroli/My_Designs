@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\ngdbuild.exe" -p 3S500EFG320-5  -aul -sd "c:\My_Designs\project\project\synthesis" -sd "c:\My_Designs\project\project\compile" -sd "c:\My_Designs\project\project\src" -sd "C:\Aldec\Active-HDL Student Edition\vlib\SPARTAN3E\compile" -uc "nes_driver_top.ucf" "nes_driver_top.ngc" "nes_driver_top.ngd"
