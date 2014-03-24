quiet on
setactivelib -work

clear -log			

 if ([exist -file $dsn/results.txt])
     @clearfile $dsn/results.txt
 endif  
 
 buildc $dsn/src/external/Foreign1.dlm	 
 
 vcom "$dsn/src/gates/e_and5.vhd" 
 vcom "$dsn/src/gates/e_and4.vhd" 
 vcom "$dsn/src/gates/e_and3.vhd" 
 vcom "$dsn/src/gates/e_and2.vhd" 
 vcom "$dsn/src/gates/e_nor2.vhd" 
 vcom "$dsn/src/gates/e_or5.vhd" 
 vcom "$dsn/src/gates/e_not1.vhd" 
 
 vcom "$dsn/src/Fub5.bde" 
 vcom "$dsn/src/Fub4.bde" 
 vcom "$dsn/src/Fub3.bde" 
 vcom "$dsn/src/Fub2.bde" 
 vcom "$dsn/src/Fub1.bde" 
 vcom "$dsn/src/Fub0.bde" 
 vcom "$dsn/src/SN7485_TOP.bde" 
 vcom "$dsn/src/SN7485_TOP_TB.vhd" 	
 cd $dsn/src/	 
 
 vsim -advdataflow TESTBENCH_FOR_SN7485_TOP 
 
 wave
 wave /sn7485_top_tb/A0
 wave /sn7485_top_tb/A1
 wave /sn7485_top_tb/A2
 wave /sn7485_top_tb/A3
 wave /sn7485_top_tb/B0
 wave /sn7485_top_tb/B1
 wave /sn7485_top_tb/B2
 wave /sn7485_top_tb/B3
 wave /sn7485_top_tb/K
 wave /sn7485_top_tb/L
 wave /sn7485_top_tb/M
  
 run -all
 endsim

quiet off
@echo end of macro
