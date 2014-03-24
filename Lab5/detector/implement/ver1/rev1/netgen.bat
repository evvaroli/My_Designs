@set XILINX=C:\Xilinx\14.7\ISE_DS\ISE
@set PATH=C:\Xilinx\14.7\ISE_DS\ISE\bin\nt
@"C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\netgen.exe" -w -sim -ofmt vhdl -pcf "detector_top.pcf"  -tpw 0  -rpw 100  -s  5  -ar  Structure  -insert_pp_buffers true "detector_top.ncd" "time_sim.vhd"
