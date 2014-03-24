acom "$dsn/src/ALTERA POST-P&R/Press_top.vho" 
acom "$dsn/src/ALTERA POST-P&R/presscontroller_TB_AL.vhd" 
asim  -advdataflow TESTBENCH_FOR_press_top 
wave  
wave /press_top_tb_al/CLR
wave /press_top_tb_al/CLK
wave /press_top_tb_al/CLK_T
wave /press_top_tb_al/DET
wave /press_top_tb_al/STR
wave /press_top_tb_al/STP
wave /press_top_tb_al/RST
wave /press_top_tb_al/Y
wave /press_top_tb_al/OUTPUT
wave /press_top_tb_al/TIMER
wave /press_top_tb_al/LIMIT
run 7 ms
endsim
