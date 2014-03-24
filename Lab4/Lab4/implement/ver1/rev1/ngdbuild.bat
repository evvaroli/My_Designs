@set XILINX=C:\Xilinx\13.2\ISE_DS\ISE
@set PATH=C:\Xilinx\13.2\ISE_DS\ISE\bin\nt
@"C:\Xilinx\13.2\ISE_DS\ISE\bin\nt\ngdbuild.exe" -p 3S500EFG320-5  -aul -sd "C:\Users\snschnei\Documents\Lab4\lab4\synthesis" -sd "C:\Users\snschnei\Documents\Lab4\lab4\compile" -sd "C:\Users\snschnei\Documents\Lab4\lab4\src" -sd "C:\Aldec\Active-HDL 9.2\vlib\SPARTAN3E\compile" -uc "lab4_top.ucf" "lab4_top.ngc" "lab4_top.ngd"
