--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Wed Mar 19 20:05:41 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf calc_top2.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true calc_top2.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: calc_top2.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: calc_top2
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity calc_top2 is
  port (
    dp : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end calc_top2;

architecture Structure of calc_top2 is
  signal M_3_Q : STD_LOGIC; 
  signal M_6_0 : STD_LOGIC; 
  signal clkp : STD_LOGIC; 
  signal btn_3_IBUF_1868 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal M_1_Q : STD_LOGIC; 
  signal f_Mmux_y_6_f55 : STD_LOGIC; 
  signal f_fcode_1_5_0 : STD_LOGIC; 
  signal f_Mmux_y_8_f54 : STD_LOGIC; 
  signal f_Mmux_y_6_f56 : STD_LOGIC; 
  signal f_fcode_1_6_0 : STD_LOGIC; 
  signal f_Mmux_y_8_f55 : STD_LOGIC; 
  signal f_N01 : STD_LOGIC; 
  signal M_0_Q : STD_LOGIC; 
  signal N277_0 : STD_LOGIC; 
  signal N149_0 : STD_LOGIC; 
  signal f_y_or0003_0 : STD_LOGIC; 
  signal N160_0 : STD_LOGIC; 
  signal N233_0 : STD_LOGIC; 
  signal f_Mmux_y_8_f51 : STD_LOGIC; 
  signal f_Mmux_y_8_f52 : STD_LOGIC; 
  signal f_Mmux_y_8_f53 : STD_LOGIC; 
  signal f_Mmux_y_8_f56 : STD_LOGIC; 
  signal f_Mmux_y_8_f57 : STD_LOGIC; 
  signal f_Mmux_y_8_f58 : STD_LOGIC; 
  signal f_Mmux_y_8_f59 : STD_LOGIC; 
  signal f_Mmux_y_8_f510 : STD_LOGIC; 
  signal Nreg_q_0_1_1918 : STD_LOGIC; 
  signal f_Sh40 : STD_LOGIC; 
  signal f_Sh41 : STD_LOGIC; 
  signal f_Sh36 : STD_LOGIC; 
  signal f_Sh37 : STD_LOGIC; 
  signal f_Sh38 : STD_LOGIC; 
  signal f_Sh39 : STD_LOGIC; 
  signal f_Mmux_y_8_f5 : STD_LOGIC; 
  signal N55_0 : STD_LOGIC; 
  signal N54_0 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal N45_0 : STD_LOGIC; 
  signal f_y_shift0002_0_12 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal f_y_shift0002_0_21_0 : STD_LOGIC; 
  signal f_y_shift0002_0_34_0 : STD_LOGIC; 
  signal f_y_shift0002_0_89 : STD_LOGIC; 
  signal f_Mmux_y_36 : STD_LOGIC; 
  signal f_Mmux_y_37 : STD_LOGIC; 
  signal f_Mmux_y_38 : STD_LOGIC; 
  signal f_Mmux_y_8_f511 : STD_LOGIC; 
  signal f_Mmux_y_8_f512 : STD_LOGIC; 
  signal f_Mmux_y_8_f513 : STD_LOGIC; 
  signal f_Mmux_y_8_f514 : STD_LOGIC; 
  signal N90_0 : STD_LOGIC; 
  signal N78_0 : STD_LOGIC; 
  signal N72_0 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal f_fcode_1_1212 : STD_LOGIC; 
  signal f_fcode_1_1321_0 : STD_LOGIC; 
  signal f_fcode_1_136_0 : STD_LOGIC; 
  signal f_fcode_1_14 : STD_LOGIC; 
  signal f_fcode_1_1421_0 : STD_LOGIC; 
  signal f_fcode_1_146_0 : STD_LOGIC; 
  signal f_fcode_1_15 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69_0 : STD_LOGIC; 
  signal f_fcode_1_471 : STD_LOGIC; 
  signal N65_0 : STD_LOGIC; 
  signal N66_0 : STD_LOGIC; 
  signal f_fcode_1_581 : STD_LOGIC; 
  signal N158_0 : STD_LOGIC; 
  signal N157_0 : STD_LOGIC; 
  signal f_Mmux_y_46_O : STD_LOGIC; 
  signal N155_0 : STD_LOGIC; 
  signal N154_0 : STD_LOGIC; 
  signal f_Mmux_y_47_O : STD_LOGIC; 
  signal N152_0 : STD_LOGIC; 
  signal N151_0 : STD_LOGIC; 
  signal f_Mmux_y_48_O : STD_LOGIC; 
  signal sw_3_IBUF_1987 : STD_LOGIC; 
  signal f_Mmux_y_10_O : STD_LOGIC; 
  signal nmux_y_0_15_0 : STD_LOGIC; 
  signal sw_0_IBUF_1991 : STD_LOGIC; 
  signal nmux_y_0_0_O : STD_LOGIC; 
  signal N118_0 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal f_fcode_1_1012_0 : STD_LOGIC; 
  signal f_fcode_1_1018_0 : STD_LOGIC; 
  signal N133_0 : STD_LOGIC; 
  signal f_fcode_1_1029_SW0_O : STD_LOGIC; 
  signal f_Mmux_y_811_0 : STD_LOGIC; 
  signal f_Mmux_y_310_0 : STD_LOGIC; 
  signal N124_0 : STD_LOGIC; 
  signal f_fcode_1_1112_0 : STD_LOGIC; 
  signal f_fcode_1_1129_SW0_O : STD_LOGIC; 
  signal f_Mmux_y_812_0 : STD_LOGIC; 
  signal N115_0 : STD_LOGIC; 
  signal f_fcode_1_1229_SW0_O : STD_LOGIC; 
  signal f_Mmux_y_813_0 : STD_LOGIC; 
  signal f_y_or00039_2011 : STD_LOGIC; 
  signal f_y_or000314_0 : STD_LOGIC; 
  signal f_y_or00034_2013 : STD_LOGIC; 
  signal f_Sh141_O : STD_LOGIC; 
  signal f_Sh42_0 : STD_LOGIC; 
  signal f_Sh34_0 : STD_LOGIC; 
  signal f_fcode_1_912_0 : STD_LOGIC; 
  signal N130_0 : STD_LOGIC; 
  signal f_fcode_1_929_SW0_O : STD_LOGIC; 
  signal f_Mmux_y_810_0 : STD_LOGIC; 
  signal f_Mmux_y_39_0 : STD_LOGIC; 
  signal f_fcode_1_1112_SW0_O : STD_LOGIC; 
  signal f_fcode_1_274_O : STD_LOGIC; 
  signal f_fcode_1_28_0 : STD_LOGIC; 
  signal f_fcode_1_227_0 : STD_LOGIC; 
  signal f_fcode_1_242_0 : STD_LOGIC; 
  signal f_fcode_1_2120_0 : STD_LOGIC; 
  signal f_Sh33 : STD_LOGIC; 
  signal f_fcode_1_374_0 : STD_LOGIC; 
  signal f_fcode_1_38_O : STD_LOGIC; 
  signal f_fcode_1_3120_0 : STD_LOGIC; 
  signal f_fcode_1_4120_O : STD_LOGIC; 
  signal f_fcode_1_474_0 : STD_LOGIC; 
  signal f_fcode_1_5120_O : STD_LOGIC; 
  signal f_fcode_1_574_0 : STD_LOGIC; 
  signal N87_0 : STD_LOGIC; 
  signal N81_0 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal f_fcode_1_327_O : STD_LOGIC; 
  signal f_fcode_1_342_0 : STD_LOGIC; 
  signal f_fcode_1_427_O : STD_LOGIC; 
  signal f_fcode_1_442_0 : STD_LOGIC; 
  signal f_fcode_1_527_O : STD_LOGIC; 
  signal f_fcode_1_542_0 : STD_LOGIC; 
  signal f_Sh32 : STD_LOGIC; 
  signal f_Sh40_SW1_O : STD_LOGIC; 
  signal f_fcode_1_61_0 : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal f_fcode_1_211_O : STD_LOGIC; 
  signal N142_0 : STD_LOGIC; 
  signal f_fcode_1_1_0 : STD_LOGIC; 
  signal M_5_0 : STD_LOGIC; 
  signal pcCounter_count_2_1_2055 : STD_LOGIC; 
  signal N145_0 : STD_LOGIC; 
  signal seg_an_1_mux000115_0 : STD_LOGIC; 
  signal seg_an_1_mux000152_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal sw_1_IBUF_2061 : STD_LOGIC; 
  signal sw_2_IBUF_2062 : STD_LOGIC; 
  signal seg_an_2_mux000128_0 : STD_LOGIC; 
  signal seg_an_1_mux000128 : STD_LOGIC; 
  signal f_Mmux_y_411_0 : STD_LOGIC; 
  signal N117_0 : STD_LOGIC; 
  signal f_Mmux_y_412_0 : STD_LOGIC; 
  signal f_Mmux_y_814_0 : STD_LOGIC; 
  signal f_Mmux_y_82_0 : STD_LOGIC; 
  signal f_Mmux_y_815_0 : STD_LOGIC; 
  signal f_y_or0002_0 : STD_LOGIC; 
  signal f_y_or0001_0 : STD_LOGIC; 
  signal cp_delay3_2086 : STD_LOGIC; 
  signal cp_delay2_2087 : STD_LOGIC; 
  signal cp_delay1_2088 : STD_LOGIC; 
  signal N212_0 : STD_LOGIC; 
  signal seg_an_1_mux00012_2091 : STD_LOGIC; 
  signal f_Mmux_y_83_0 : STD_LOGIC; 
  signal f_Mmux_y_81_0 : STD_LOGIC; 
  signal f_Mmux_y_84_0 : STD_LOGIC; 
  signal f_fcode_1_3_0 : STD_LOGIC; 
  signal f_fcode_1_4_0 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_1_Q : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_3_Q : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_5_Q : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_7_Q : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_9_Q : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_11_Q : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal cd_Mcount_q_cy_1_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_3_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_5_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_7_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_9_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_11_Q : STD_LOGIC; 
  signal cd_Mcount_q_cy_13_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_1_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_3_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_5_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_7_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_9_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_11_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_13_Q : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_15_Q : STD_LOGIC; 
  signal sw_4_IBUF_2174 : STD_LOGIC; 
  signal sw_5_IBUF_2175 : STD_LOGIC; 
  signal sw_6_IBUF_2176 : STD_LOGIC; 
  signal sw_7_IBUF_2177 : STD_LOGIC; 
  signal btn_1_IBUF_2178 : STD_LOGIC; 
  signal btn_2_IBUF_2179 : STD_LOGIC; 
  signal Treg_q_14_DXMUX_2211 : STD_LOGIC; 
  signal Treg_q_14_F5MUX_2209 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal Treg_q_14_BXINV_2202 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal Treg_q_14_CLKINV_2194 : STD_LOGIC; 
  signal Treg_q_14_CEINV_2193 : STD_LOGIC; 
  signal Treg_q_15_DXMUX_2250 : STD_LOGIC; 
  signal Treg_q_15_F5MUX_2248 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal Treg_q_15_BXINV_2241 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal Treg_q_15_CLKINV_2233 : STD_LOGIC; 
  signal Treg_q_15_CEINV_2232 : STD_LOGIC; 
  signal f_Mmux_y_6_f55_F5MUX_2281 : STD_LOGIC; 
  signal f_Mmux_y_75_2279 : STD_LOGIC; 
  signal f_Mmux_y_6_f55_BXINV_2274 : STD_LOGIC; 
  signal f_Mmux_y_85_2272 : STD_LOGIC; 
  signal f_Mmux_y_6_f56_F5MUX_2306 : STD_LOGIC; 
  signal f_Mmux_y_76_2304 : STD_LOGIC; 
  signal f_Mmux_y_6_f56_BXINV_2299 : STD_LOGIC; 
  signal f_Mmux_y_86_2297 : STD_LOGIC; 
  signal f_Mmux_y_8_f51_F5MUX_2331 : STD_LOGIC; 
  signal f_Mmux_y_91_2329 : STD_LOGIC; 
  signal f_Mmux_y_8_f51_BXINV_2324 : STD_LOGIC; 
  signal f_Mmux_y_102_2322 : STD_LOGIC; 
  signal f_Mmux_y_8_f52_F5MUX_2356 : STD_LOGIC; 
  signal f_Mmux_y_92_2354 : STD_LOGIC; 
  signal f_Mmux_y_8_f52_BXINV_2349 : STD_LOGIC; 
  signal f_Mmux_y_103_2347 : STD_LOGIC; 
  signal f_Mmux_y_8_f53_F5MUX_2381 : STD_LOGIC; 
  signal f_Mmux_y_93_2379 : STD_LOGIC; 
  signal f_Mmux_y_8_f53_BXINV_2374 : STD_LOGIC; 
  signal f_Mmux_y_104_2372 : STD_LOGIC; 
  signal f_Mmux_y_8_f54_F5MUX_2406 : STD_LOGIC; 
  signal f_Mmux_y_94_2404 : STD_LOGIC; 
  signal f_Mmux_y_8_f54_BXINV_2399 : STD_LOGIC; 
  signal f_Mmux_y_105_2397 : STD_LOGIC; 
  signal f_Mmux_y_8_f55_F5MUX_2431 : STD_LOGIC; 
  signal f_Mmux_y_95_2429 : STD_LOGIC; 
  signal f_Mmux_y_8_f55_BXINV_2424 : STD_LOGIC; 
  signal f_Mmux_y_106_2422 : STD_LOGIC; 
  signal f_Mmux_y_8_f56_F5MUX_2456 : STD_LOGIC; 
  signal f_Mmux_y_96_2454 : STD_LOGIC; 
  signal f_Mmux_y_8_f56_BXINV_2449 : STD_LOGIC; 
  signal f_Mmux_y_107_2447 : STD_LOGIC; 
  signal f_Mmux_y_8_f57_F5MUX_2481 : STD_LOGIC; 
  signal f_Mmux_y_97_2479 : STD_LOGIC; 
  signal f_Mmux_y_8_f57_BXINV_2474 : STD_LOGIC; 
  signal f_Mmux_y_108_2472 : STD_LOGIC; 
  signal f_Mmux_y_8_f58_F5MUX_2506 : STD_LOGIC; 
  signal f_Mmux_y_98_2504 : STD_LOGIC; 
  signal f_Mmux_y_8_f58_BXINV_2499 : STD_LOGIC; 
  signal f_Mmux_y_109_2497 : STD_LOGIC; 
  signal f_Mmux_y_8_f59_F5MUX_2531 : STD_LOGIC; 
  signal f_Mmux_y_99_2529 : STD_LOGIC; 
  signal f_Mmux_y_8_f59_BXINV_2524 : STD_LOGIC; 
  signal f_Mmux_y_1010_2522 : STD_LOGIC; 
  signal f_Mmux_y_8_f510_F5MUX_2556 : STD_LOGIC; 
  signal f_Mmux_y_910_2554 : STD_LOGIC; 
  signal f_Mmux_y_8_f510_BXINV_2549 : STD_LOGIC; 
  signal f_Mmux_y_1011_2547 : STD_LOGIC; 
  signal f_Sh40_F5MUX_2581 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal f_Sh40_BXINV_2573 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal f_Sh41_F5MUX_2606 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal f_Sh41_BXINV_2598 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal f_Sh36_F5MUX_2631 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal f_Sh36_BXINV_2623 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal f_Sh37_F5MUX_2656 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal f_Sh37_BXINV_2648 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal f_Sh38_F5MUX_2681 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal f_Sh38_BXINV_2673 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal f_Sh39_F5MUX_2706 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal f_Sh39_BXINV_2698 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal f_Mmux_y_8_f5_F5MUX_2731 : STD_LOGIC; 
  signal f_Mmux_y_9_2729 : STD_LOGIC; 
  signal f_Mmux_y_8_f5_BXINV_2724 : STD_LOGIC; 
  signal f_Mmux_y_101_2722 : STD_LOGIC; 
  signal f_y_shift0002_0_12_F5MUX_2756 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal f_y_shift0002_0_12_BXINV_2749 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal f_y_shift0002_0_89_F5MUX_2781 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal f_y_shift0002_0_89_BXINV_2774 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal f_Mmux_y_36_F5MUX_2806 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal f_Mmux_y_36_BXINV_2799 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal f_Mmux_y_37_F5MUX_2831 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal f_Mmux_y_37_BXINV_2824 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal f_Mmux_y_38_F5MUX_2856 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal f_Mmux_y_38_BXINV_2849 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal seg_digit_0_F5MUX_2881 : STD_LOGIC; 
  signal seg_Mmux_digit_3_2879 : STD_LOGIC; 
  signal seg_digit_0_BXINV_2873 : STD_LOGIC; 
  signal seg_Mmux_digit_4_2871 : STD_LOGIC; 
  signal f_Mmux_y_8_f511_F5MUX_2906 : STD_LOGIC; 
  signal f_Mmux_y_911_2904 : STD_LOGIC; 
  signal f_Mmux_y_8_f511_BXINV_2899 : STD_LOGIC; 
  signal f_Mmux_y_1012_2897 : STD_LOGIC; 
  signal f_Mmux_y_8_f512_F5MUX_2931 : STD_LOGIC; 
  signal f_Mmux_y_912_2929 : STD_LOGIC; 
  signal f_Mmux_y_8_f512_BXINV_2924 : STD_LOGIC; 
  signal f_Mmux_y_1013_2922 : STD_LOGIC; 
  signal f_Mmux_y_8_f513_F5MUX_2956 : STD_LOGIC; 
  signal f_Mmux_y_913_2954 : STD_LOGIC; 
  signal f_Mmux_y_8_f513_BXINV_2949 : STD_LOGIC; 
  signal f_Mmux_y_1014_2947 : STD_LOGIC; 
  signal f_Mmux_y_8_f514_F5MUX_2981 : STD_LOGIC; 
  signal f_Mmux_y_914_2979 : STD_LOGIC; 
  signal f_Mmux_y_8_f514_BXINV_2974 : STD_LOGIC; 
  signal f_Mmux_y_1015_2972 : STD_LOGIC; 
  signal f_fcode_1_1212_F5MUX_3006 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal f_fcode_1_1212_BXINV_2999 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal f_fcode_1_14_F5MUX_3031 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal f_fcode_1_14_BXINV_3022 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal f_fcode_1_15_F5MUX_3056 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal f_fcode_1_15_BXINV_3047 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal f_fcode_1_471_F5MUX_3081 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal f_fcode_1_471_BXINV_3074 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal f_fcode_1_581_F5MUX_3106 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal f_fcode_1_581_BXINV_3098 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal Treg_q_1_FFX_RST : STD_LOGIC; 
  signal Treg_q_1_DXMUX_3138 : STD_LOGIC; 
  signal f_Mmux_y_46_O_pack_1 : STD_LOGIC; 
  signal Treg_q_1_CLKINV_3120 : STD_LOGIC; 
  signal Treg_q_1_CEINV_3119 : STD_LOGIC; 
  signal Treg_q_2_DXMUX_3176 : STD_LOGIC; 
  signal f_Mmux_y_47_O_pack_1 : STD_LOGIC; 
  signal Treg_q_2_CLKINV_3158 : STD_LOGIC; 
  signal Treg_q_2_CEINV_3157 : STD_LOGIC; 
  signal Treg_q_3_DXMUX_3214 : STD_LOGIC; 
  signal f_Mmux_y_48_O_pack_1 : STD_LOGIC; 
  signal Treg_q_3_CLKINV_3196 : STD_LOGIC; 
  signal Treg_q_3_CEINV_3195 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal nmux_y_0_15_3267 : STD_LOGIC; 
  signal f_Mmux_y_10_O_pack_1 : STD_LOGIC; 
  signal Treg_q_0_DXMUX_3300 : STD_LOGIC; 
  signal nmux_y_0_0_O_pack_1 : STD_LOGIC; 
  signal Treg_q_0_CLKINV_3284 : STD_LOGIC; 
  signal Treg_q_0_CEINV_3283 : STD_LOGIC; 
  signal f_Mmux_y_310_3329 : STD_LOGIC; 
  signal f_fcode_1_1029_SW0_O_pack_1 : STD_LOGIC; 
  signal f_Mmux_y_311_3353 : STD_LOGIC; 
  signal f_fcode_1_1129_SW0_O_pack_1 : STD_LOGIC; 
  signal f_Mmux_y_312_3377 : STD_LOGIC; 
  signal f_fcode_1_1229_SW0_O_pack_1 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal f_Sh141_O_pack_1 : STD_LOGIC; 
  signal f_Sh42_3425 : STD_LOGIC; 
  signal N68_pack_1 : STD_LOGIC; 
  signal f_Sh34_3449 : STD_LOGIC; 
  signal N63_pack_2 : STD_LOGIC; 
  signal f_Mmux_y_39_3473 : STD_LOGIC; 
  signal f_fcode_1_929_SW0_O_pack_1 : STD_LOGIC; 
  signal f_y_or0003 : STD_LOGIC; 
  signal f_y_or00034_pack_1 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal f_N01_pack_1 : STD_LOGIC; 
  signal f_fcode_1_1112_3545 : STD_LOGIC; 
  signal f_fcode_1_1112_SW0_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_2120_3569 : STD_LOGIC; 
  signal f_fcode_1_274_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_1421_3593 : STD_LOGIC; 
  signal f_Sh33_pack_1 : STD_LOGIC; 
  signal f_fcode_1_3120_3617 : STD_LOGIC; 
  signal f_fcode_1_38_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_5 : STD_LOGIC; 
  signal f_fcode_1_4120_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_6 : STD_LOGIC; 
  signal f_fcode_1_5120_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_136_3689 : STD_LOGIC; 
  signal N106_pack_1 : STD_LOGIC; 
  signal f_fcode_1_146_3713 : STD_LOGIC; 
  signal N84_pack_1 : STD_LOGIC; 
  signal f_fcode_1_374_3737 : STD_LOGIC; 
  signal f_fcode_1_327_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_474_3761 : STD_LOGIC; 
  signal f_fcode_1_427_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_574_3785 : STD_LOGIC; 
  signal f_fcode_1_527_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_28_3809 : STD_LOGIC; 
  signal f_Sh32_pack_1 : STD_LOGIC; 
  signal f_fcode_1_61_3833 : STD_LOGIC; 
  signal f_Sh40_SW1_O_pack_1 : STD_LOGIC; 
  signal f_fcode_1_1018 : STD_LOGIC; 
  signal f_y_or00039_pack_1 : STD_LOGIC; 
  signal f_fcode_1_1 : STD_LOGIC; 
  signal f_fcode_1_211_O_pack_1 : STD_LOGIC; 
  signal M_5_Q : STD_LOGIC; 
  signal pcCounter_count_2_1_DYMUX_3906 : STD_LOGIC; 
  signal pcCounter_count_2_1_GYMUX_3905 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal pcCounter_count_2_1_CLKINV_3896 : STD_LOGIC; 
  signal M_6_Q : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal seg_an_1_mux000115_4005 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal seg_an_1_mux000152_4029 : STD_LOGIC; 
  signal an_3_OBUF_4061 : STD_LOGIC; 
  signal N6_pack_1 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal an_2_OBUF_4133 : STD_LOGIC; 
  signal seg_an_1_mux000128_pack_1 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal seg_an_2_mux000128_4149 : STD_LOGIC; 
  signal f_Mmux_y_411_4181 : STD_LOGIC; 
  signal M_1_pack_1 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal f_Mmux_y_410_4197 : STD_LOGIC; 
  signal f_Mmux_y_49_4229 : STD_LOGIC; 
  signal f_Mmux_y_412_4221 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal f_Mmux_y_811_4246 : STD_LOGIC; 
  signal f_Mmux_y_814_4277 : STD_LOGIC; 
  signal f_Mmux_y_812_4269 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal f_Mmux_y_813_4294 : STD_LOGIC; 
  signal f_Mmux_y_82_4325 : STD_LOGIC; 
  signal f_Mmux_y_815_4317 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal Nreg_q_0_1_DYMUX_4409 : STD_LOGIC; 
  signal Nreg_q_0_1_CLKINV_4406 : STD_LOGIC; 
  signal Nreg_q_0_1_CEINV_4405 : STD_LOGIC; 
  signal Nreg_q_1_DXMUX_4437 : STD_LOGIC; 
  signal Nreg_q_1_DYMUX_4428 : STD_LOGIC; 
  signal Nreg_q_1_SRINV_4426 : STD_LOGIC; 
  signal Nreg_q_1_CLKINV_4425 : STD_LOGIC; 
  signal Nreg_q_1_CEINV_4424 : STD_LOGIC; 
  signal Nreg_q_3_DXMUX_4465 : STD_LOGIC; 
  signal Nreg_q_3_DYMUX_4456 : STD_LOGIC; 
  signal Nreg_q_3_SRINV_4454 : STD_LOGIC; 
  signal Nreg_q_3_CLKINV_4453 : STD_LOGIC; 
  signal Nreg_q_3_CEINV_4452 : STD_LOGIC; 
  signal Nreg_q_5_DXMUX_4493 : STD_LOGIC; 
  signal Nreg_q_5_DYMUX_4484 : STD_LOGIC; 
  signal Nreg_q_5_SRINV_4482 : STD_LOGIC; 
  signal Nreg_q_5_CLKINV_4481 : STD_LOGIC; 
  signal Nreg_q_5_CEINV_4480 : STD_LOGIC; 
  signal Nreg_q_7_DXMUX_4521 : STD_LOGIC; 
  signal Nreg_q_7_DYMUX_4512 : STD_LOGIC; 
  signal Nreg_q_7_SRINV_4510 : STD_LOGIC; 
  signal Nreg_q_7_CLKINV_4509 : STD_LOGIC; 
  signal Nreg_q_7_CEINV_4508 : STD_LOGIC; 
  signal Nreg_q_9_DXMUX_4549 : STD_LOGIC; 
  signal Nreg_q_9_DYMUX_4540 : STD_LOGIC; 
  signal Nreg_q_9_SRINV_4538 : STD_LOGIC; 
  signal Nreg_q_9_CLKINV_4537 : STD_LOGIC; 
  signal Nreg_q_9_CEINV_4536 : STD_LOGIC; 
  signal f_y_or0002 : STD_LOGIC; 
  signal f_y_or0001 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal a_to_g_6_OBUF_4626 : STD_LOGIC; 
  signal a_to_g_1_OBUF_4619 : STD_LOGIC; 
  signal an_0_OBUF_4638 : STD_LOGIC; 
  signal clkp1 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal pcCounter_count_0_DXMUX_4715 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal pcCounter_count_0_DYMUX_4700 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal pcCounter_count_0_SRINV_4690 : STD_LOGIC; 
  signal pcCounter_count_0_CLKINV_4689 : STD_LOGIC; 
  signal pcCounter_count_2_DXMUX_4748 : STD_LOGIC; 
  signal pcCounter_count_2_DYMUX_4740 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal pcCounter_count_2_SRINV_4732 : STD_LOGIC; 
  signal pcCounter_count_2_CLKINV_4731 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal an_1_OBUF_4800 : STD_LOGIC; 
  signal seg_an_1_mux00012_pack_1 : STD_LOGIC; 
  signal f_y_shift0002_0_21_4824 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal f_fcode_1_242_4848 : STD_LOGIC; 
  signal f_y_shift0002_0_34_4841 : STD_LOGIC; 
  signal f_Mmux_y_83_4872 : STD_LOGIC; 
  signal f_Mmux_y_81_4864 : STD_LOGIC; 
  signal f_fcode_1_442_4896 : STD_LOGIC; 
  signal f_Mmux_y_84_4889 : STD_LOGIC; 
  signal Nreg_q_11_DXMUX_4919 : STD_LOGIC; 
  signal Nreg_q_11_DYMUX_4910 : STD_LOGIC; 
  signal Nreg_q_11_SRINV_4908 : STD_LOGIC; 
  signal Nreg_q_11_CLKINV_4907 : STD_LOGIC; 
  signal Nreg_q_11_CEINV_4906 : STD_LOGIC; 
  signal Nreg_q_13_DXMUX_4947 : STD_LOGIC; 
  signal Nreg_q_13_DYMUX_4938 : STD_LOGIC; 
  signal Nreg_q_13_SRINV_4936 : STD_LOGIC; 
  signal Nreg_q_13_CLKINV_4935 : STD_LOGIC; 
  signal Nreg_q_13_CEINV_4934 : STD_LOGIC; 
  signal Nreg_q_15_DXMUX_4975 : STD_LOGIC; 
  signal Nreg_q_15_DYMUX_4966 : STD_LOGIC; 
  signal Nreg_q_15_SRINV_4964 : STD_LOGIC; 
  signal Nreg_q_15_CLKINV_4963 : STD_LOGIC; 
  signal Nreg_q_15_CEINV_4962 : STD_LOGIC; 
  signal a_to_g_3_OBUF_5004 : STD_LOGIC; 
  signal a_to_g_0_OBUF_4997 : STD_LOGIC; 
  signal a_to_g_5_OBUF_5028 : STD_LOGIC; 
  signal a_to_g_2_OBUF_5021 : STD_LOGIC; 
  signal a_to_g_4_OBUF_5040 : STD_LOGIC; 
  signal f_y_or000314_5052 : STD_LOGIC; 
  signal f_fcode_1_3 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal f_Mmux_y_810_5100 : STD_LOGIC; 
  signal M_0_pack_1 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal M_3_pack_1 : STD_LOGIC; 
  signal cp_delay2_DXMUX_5144 : STD_LOGIC; 
  signal cp_delay2_DYMUX_5136 : STD_LOGIC; 
  signal cp_delay2_SRINV_5134 : STD_LOGIC; 
  signal cp_delay2_CLKINV_5133 : STD_LOGIC; 
  signal cp_delay3_DYMUX_5158 : STD_LOGIC; 
  signal cp_delay3_CLKINV_5155 : STD_LOGIC; 
  signal f_fcode_1_912_5186 : STD_LOGIC; 
  signal f_fcode_1_1012_5179 : STD_LOGIC; 
  signal f_fcode_1_1321_5198 : STD_LOGIC; 
  signal f_fcode_1_342_5222 : STD_LOGIC; 
  signal f_fcode_1_4 : STD_LOGIC; 
  signal f_fcode_1_542_5246 : STD_LOGIC; 
  signal f_fcode_1_227_5239 : STD_LOGIC; 
  signal f_y_addsub0000_0_XORF_5283 : STD_LOGIC; 
  signal f_y_addsub0000_0_CYINIT_5282 : STD_LOGIC; 
  signal f_y_addsub0000_0_CY0F_5281 : STD_LOGIC; 
  signal f_y_addsub0000_0_CYSELF_5275 : STD_LOGIC; 
  signal f_y_addsub0000_0_XORG_5271 : STD_LOGIC; 
  signal f_y_addsub0000_0_CYMUXG_5270 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_0_Q : STD_LOGIC; 
  signal f_y_addsub0000_0_CY0G_5268 : STD_LOGIC; 
  signal f_y_addsub0000_0_CYSELG_5262 : STD_LOGIC; 
  signal f_y_addsub0000_2_XORF_5322 : STD_LOGIC; 
  signal f_y_addsub0000_2_CYINIT_5321 : STD_LOGIC; 
  signal f_y_addsub0000_2_CY0F_5320 : STD_LOGIC; 
  signal f_y_addsub0000_2_XORG_5312 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_2_Q : STD_LOGIC; 
  signal f_y_addsub0000_2_CYSELF_5310 : STD_LOGIC; 
  signal f_y_addsub0000_2_CYMUXFAST_5309 : STD_LOGIC; 
  signal f_y_addsub0000_2_CYAND_5308 : STD_LOGIC; 
  signal f_y_addsub0000_2_FASTCARRY_5307 : STD_LOGIC; 
  signal f_y_addsub0000_2_CYMUXG2_5306 : STD_LOGIC; 
  signal f_y_addsub0000_2_CYMUXF2_5305 : STD_LOGIC; 
  signal f_y_addsub0000_2_CY0G_5304 : STD_LOGIC; 
  signal f_y_addsub0000_2_CYSELG_5298 : STD_LOGIC; 
  signal f_y_addsub0000_4_XORF_5361 : STD_LOGIC; 
  signal f_y_addsub0000_4_CYINIT_5360 : STD_LOGIC; 
  signal f_y_addsub0000_4_CY0F_5359 : STD_LOGIC; 
  signal f_y_addsub0000_4_XORG_5351 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_4_Q : STD_LOGIC; 
  signal f_y_addsub0000_4_CYSELF_5349 : STD_LOGIC; 
  signal f_y_addsub0000_4_CYMUXFAST_5348 : STD_LOGIC; 
  signal f_y_addsub0000_4_CYAND_5347 : STD_LOGIC; 
  signal f_y_addsub0000_4_FASTCARRY_5346 : STD_LOGIC; 
  signal f_y_addsub0000_4_CYMUXG2_5345 : STD_LOGIC; 
  signal f_y_addsub0000_4_CYMUXF2_5344 : STD_LOGIC; 
  signal f_y_addsub0000_4_CY0G_5343 : STD_LOGIC; 
  signal f_y_addsub0000_4_CYSELG_5337 : STD_LOGIC; 
  signal f_y_addsub0000_6_XORF_5400 : STD_LOGIC; 
  signal f_y_addsub0000_6_CYINIT_5399 : STD_LOGIC; 
  signal f_y_addsub0000_6_CY0F_5398 : STD_LOGIC; 
  signal f_y_addsub0000_6_XORG_5390 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_6_Q : STD_LOGIC; 
  signal f_y_addsub0000_6_CYSELF_5388 : STD_LOGIC; 
  signal f_y_addsub0000_6_CYMUXFAST_5387 : STD_LOGIC; 
  signal f_y_addsub0000_6_CYAND_5386 : STD_LOGIC; 
  signal f_y_addsub0000_6_FASTCARRY_5385 : STD_LOGIC; 
  signal f_y_addsub0000_6_CYMUXG2_5384 : STD_LOGIC; 
  signal f_y_addsub0000_6_CYMUXF2_5383 : STD_LOGIC; 
  signal f_y_addsub0000_6_CY0G_5382 : STD_LOGIC; 
  signal f_y_addsub0000_6_CYSELG_5376 : STD_LOGIC; 
  signal f_y_addsub0000_8_XORF_5439 : STD_LOGIC; 
  signal f_y_addsub0000_8_CYINIT_5438 : STD_LOGIC; 
  signal f_y_addsub0000_8_CY0F_5437 : STD_LOGIC; 
  signal f_y_addsub0000_8_XORG_5429 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_8_Q : STD_LOGIC; 
  signal f_y_addsub0000_8_CYSELF_5427 : STD_LOGIC; 
  signal f_y_addsub0000_8_CYMUXFAST_5426 : STD_LOGIC; 
  signal f_y_addsub0000_8_CYAND_5425 : STD_LOGIC; 
  signal f_y_addsub0000_8_FASTCARRY_5424 : STD_LOGIC; 
  signal f_y_addsub0000_8_CYMUXG2_5423 : STD_LOGIC; 
  signal f_y_addsub0000_8_CYMUXF2_5422 : STD_LOGIC; 
  signal f_y_addsub0000_8_CY0G_5421 : STD_LOGIC; 
  signal f_y_addsub0000_8_CYSELG_5415 : STD_LOGIC; 
  signal f_y_addsub0000_10_XORF_5478 : STD_LOGIC; 
  signal f_y_addsub0000_10_CYINIT_5477 : STD_LOGIC; 
  signal f_y_addsub0000_10_CY0F_5476 : STD_LOGIC; 
  signal f_y_addsub0000_10_XORG_5468 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_10_Q : STD_LOGIC; 
  signal f_y_addsub0000_10_CYSELF_5466 : STD_LOGIC; 
  signal f_y_addsub0000_10_CYMUXFAST_5465 : STD_LOGIC; 
  signal f_y_addsub0000_10_CYAND_5464 : STD_LOGIC; 
  signal f_y_addsub0000_10_FASTCARRY_5463 : STD_LOGIC; 
  signal f_y_addsub0000_10_CYMUXG2_5462 : STD_LOGIC; 
  signal f_y_addsub0000_10_CYMUXF2_5461 : STD_LOGIC; 
  signal f_y_addsub0000_10_CY0G_5460 : STD_LOGIC; 
  signal f_y_addsub0000_10_CYSELG_5454 : STD_LOGIC; 
  signal f_y_addsub0000_12_XORF_5517 : STD_LOGIC; 
  signal f_y_addsub0000_12_CYINIT_5516 : STD_LOGIC; 
  signal f_y_addsub0000_12_CY0F_5515 : STD_LOGIC; 
  signal f_y_addsub0000_12_XORG_5507 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_12_Q : STD_LOGIC; 
  signal f_y_addsub0000_12_CYSELF_5505 : STD_LOGIC; 
  signal f_y_addsub0000_12_CYMUXFAST_5504 : STD_LOGIC; 
  signal f_y_addsub0000_12_CYAND_5503 : STD_LOGIC; 
  signal f_y_addsub0000_12_FASTCARRY_5502 : STD_LOGIC; 
  signal f_y_addsub0000_12_CYMUXG2_5501 : STD_LOGIC; 
  signal f_y_addsub0000_12_CYMUXF2_5500 : STD_LOGIC; 
  signal f_y_addsub0000_12_CY0G_5499 : STD_LOGIC; 
  signal f_y_addsub0000_12_CYSELG_5493 : STD_LOGIC; 
  signal f_y_addsub0000_14_XORF_5548 : STD_LOGIC; 
  signal f_y_addsub0000_14_CYINIT_5547 : STD_LOGIC; 
  signal f_y_addsub0000_14_CY0F_5546 : STD_LOGIC; 
  signal f_y_addsub0000_14_CYSELF_5540 : STD_LOGIC; 
  signal f_y_addsub0000_14_XORG_5537 : STD_LOGIC; 
  signal f_Maddsub_y_addsub0000_cy_14_Q : STD_LOGIC; 
  signal cd_q_0_DXMUX_5597 : STD_LOGIC; 
  signal cd_q_0_XORF_5595 : STD_LOGIC; 
  signal cd_q_0_LOGIC_ONE_5594 : STD_LOGIC; 
  signal cd_q_0_CYINIT_5593 : STD_LOGIC; 
  signal cd_q_0_CYSELF_5584 : STD_LOGIC; 
  signal cd_q_0_BXINV_5582 : STD_LOGIC; 
  signal cd_q_0_DYMUX_5575 : STD_LOGIC; 
  signal cd_q_0_XORG_5573 : STD_LOGIC; 
  signal cd_q_0_CYMUXG_5572 : STD_LOGIC; 
  signal cd_Mcount_q_cy_0_Q : STD_LOGIC; 
  signal cd_q_0_LOGIC_ZERO_5570 : STD_LOGIC; 
  signal cd_q_0_CYSELG_5561 : STD_LOGIC; 
  signal cd_q_0_G : STD_LOGIC; 
  signal cd_q_0_SRINV_5559 : STD_LOGIC; 
  signal cd_q_0_CLKINV_5558 : STD_LOGIC; 
  signal cd_q_2_DXMUX_5653 : STD_LOGIC; 
  signal cd_q_2_XORF_5651 : STD_LOGIC; 
  signal cd_q_2_CYINIT_5650 : STD_LOGIC; 
  signal cd_q_2_F : STD_LOGIC; 
  signal cd_q_2_DYMUX_5634 : STD_LOGIC; 
  signal cd_q_2_XORG_5632 : STD_LOGIC; 
  signal cd_Mcount_q_cy_2_Q : STD_LOGIC; 
  signal cd_q_2_CYSELF_5630 : STD_LOGIC; 
  signal cd_q_2_CYMUXFAST_5629 : STD_LOGIC; 
  signal cd_q_2_CYAND_5628 : STD_LOGIC; 
  signal cd_q_2_FASTCARRY_5627 : STD_LOGIC; 
  signal cd_q_2_CYMUXG2_5626 : STD_LOGIC; 
  signal cd_q_2_CYMUXF2_5625 : STD_LOGIC; 
  signal cd_q_2_LOGIC_ZERO_5624 : STD_LOGIC; 
  signal cd_q_2_CYSELG_5615 : STD_LOGIC; 
  signal cd_q_2_G : STD_LOGIC; 
  signal cd_q_2_SRINV_5613 : STD_LOGIC; 
  signal cd_q_2_CLKINV_5612 : STD_LOGIC; 
  signal cd_q_4_DXMUX_5709 : STD_LOGIC; 
  signal cd_q_4_XORF_5707 : STD_LOGIC; 
  signal cd_q_4_CYINIT_5706 : STD_LOGIC; 
  signal cd_q_4_F : STD_LOGIC; 
  signal cd_q_4_DYMUX_5690 : STD_LOGIC; 
  signal cd_q_4_XORG_5688 : STD_LOGIC; 
  signal cd_Mcount_q_cy_4_Q : STD_LOGIC; 
  signal cd_q_4_CYSELF_5686 : STD_LOGIC; 
  signal cd_q_4_CYMUXFAST_5685 : STD_LOGIC; 
  signal cd_q_4_CYAND_5684 : STD_LOGIC; 
  signal cd_q_4_FASTCARRY_5683 : STD_LOGIC; 
  signal cd_q_4_CYMUXG2_5682 : STD_LOGIC; 
  signal cd_q_4_CYMUXF2_5681 : STD_LOGIC; 
  signal cd_q_4_LOGIC_ZERO_5680 : STD_LOGIC; 
  signal cd_q_4_CYSELG_5671 : STD_LOGIC; 
  signal cd_q_4_G : STD_LOGIC; 
  signal cd_q_4_SRINV_5669 : STD_LOGIC; 
  signal cd_q_4_CLKINV_5668 : STD_LOGIC; 
  signal cd_q_6_DXMUX_5765 : STD_LOGIC; 
  signal cd_q_6_XORF_5763 : STD_LOGIC; 
  signal cd_q_6_CYINIT_5762 : STD_LOGIC; 
  signal cd_q_6_F : STD_LOGIC; 
  signal cd_q_6_DYMUX_5746 : STD_LOGIC; 
  signal cd_q_6_XORG_5744 : STD_LOGIC; 
  signal cd_Mcount_q_cy_6_Q : STD_LOGIC; 
  signal cd_q_6_CYSELF_5742 : STD_LOGIC; 
  signal cd_q_6_CYMUXFAST_5741 : STD_LOGIC; 
  signal cd_q_6_CYAND_5740 : STD_LOGIC; 
  signal cd_q_6_FASTCARRY_5739 : STD_LOGIC; 
  signal cd_q_6_CYMUXG2_5738 : STD_LOGIC; 
  signal cd_q_6_CYMUXF2_5737 : STD_LOGIC; 
  signal cd_q_6_LOGIC_ZERO_5736 : STD_LOGIC; 
  signal cd_q_6_CYSELG_5727 : STD_LOGIC; 
  signal cd_q_6_G : STD_LOGIC; 
  signal cd_q_6_SRINV_5725 : STD_LOGIC; 
  signal cd_q_6_CLKINV_5724 : STD_LOGIC; 
  signal cd_q_8_DXMUX_5821 : STD_LOGIC; 
  signal cd_q_8_XORF_5819 : STD_LOGIC; 
  signal cd_q_8_CYINIT_5818 : STD_LOGIC; 
  signal cd_q_8_F : STD_LOGIC; 
  signal cd_q_8_DYMUX_5802 : STD_LOGIC; 
  signal cd_q_8_XORG_5800 : STD_LOGIC; 
  signal cd_Mcount_q_cy_8_Q : STD_LOGIC; 
  signal cd_q_8_CYSELF_5798 : STD_LOGIC; 
  signal cd_q_8_CYMUXFAST_5797 : STD_LOGIC; 
  signal cd_q_8_CYAND_5796 : STD_LOGIC; 
  signal cd_q_8_FASTCARRY_5795 : STD_LOGIC; 
  signal cd_q_8_CYMUXG2_5794 : STD_LOGIC; 
  signal cd_q_8_CYMUXF2_5793 : STD_LOGIC; 
  signal cd_q_8_LOGIC_ZERO_5792 : STD_LOGIC; 
  signal cd_q_8_CYSELG_5783 : STD_LOGIC; 
  signal cd_q_8_G : STD_LOGIC; 
  signal cd_q_8_SRINV_5781 : STD_LOGIC; 
  signal cd_q_8_CLKINV_5780 : STD_LOGIC; 
  signal cd_q_10_DXMUX_5877 : STD_LOGIC; 
  signal cd_q_10_XORF_5875 : STD_LOGIC; 
  signal cd_q_10_CYINIT_5874 : STD_LOGIC; 
  signal cd_q_10_F : STD_LOGIC; 
  signal cd_q_10_DYMUX_5858 : STD_LOGIC; 
  signal cd_q_10_XORG_5856 : STD_LOGIC; 
  signal cd_Mcount_q_cy_10_Q : STD_LOGIC; 
  signal cd_q_10_CYSELF_5854 : STD_LOGIC; 
  signal cd_q_10_CYMUXFAST_5853 : STD_LOGIC; 
  signal cd_q_10_CYAND_5852 : STD_LOGIC; 
  signal cd_q_10_FASTCARRY_5851 : STD_LOGIC; 
  signal cd_q_10_CYMUXG2_5850 : STD_LOGIC; 
  signal cd_q_10_CYMUXF2_5849 : STD_LOGIC; 
  signal cd_q_10_LOGIC_ZERO_5848 : STD_LOGIC; 
  signal cd_q_10_CYSELG_5839 : STD_LOGIC; 
  signal cd_q_10_G : STD_LOGIC; 
  signal cd_q_10_SRINV_5837 : STD_LOGIC; 
  signal cd_q_10_CLKINV_5836 : STD_LOGIC; 
  signal cd_q_12_DXMUX_5933 : STD_LOGIC; 
  signal cd_q_12_XORF_5931 : STD_LOGIC; 
  signal cd_q_12_CYINIT_5930 : STD_LOGIC; 
  signal cd_q_12_F : STD_LOGIC; 
  signal cd_q_12_DYMUX_5914 : STD_LOGIC; 
  signal cd_q_12_XORG_5912 : STD_LOGIC; 
  signal cd_Mcount_q_cy_12_Q : STD_LOGIC; 
  signal cd_q_12_CYSELF_5910 : STD_LOGIC; 
  signal cd_q_12_CYMUXFAST_5909 : STD_LOGIC; 
  signal cd_q_12_CYAND_5908 : STD_LOGIC; 
  signal cd_q_12_FASTCARRY_5907 : STD_LOGIC; 
  signal cd_q_12_CYMUXG2_5906 : STD_LOGIC; 
  signal cd_q_12_CYMUXF2_5905 : STD_LOGIC; 
  signal cd_q_12_LOGIC_ZERO_5904 : STD_LOGIC; 
  signal cd_q_12_CYSELG_5895 : STD_LOGIC; 
  signal cd_q_12_G : STD_LOGIC; 
  signal cd_q_12_SRINV_5893 : STD_LOGIC; 
  signal cd_q_12_CLKINV_5892 : STD_LOGIC; 
  signal cd_q_14_DXMUX_5989 : STD_LOGIC; 
  signal cd_q_14_XORF_5987 : STD_LOGIC; 
  signal cd_q_14_CYINIT_5986 : STD_LOGIC; 
  signal cd_q_14_F : STD_LOGIC; 
  signal cd_q_14_DYMUX_5970 : STD_LOGIC; 
  signal cd_q_14_XORG_5968 : STD_LOGIC; 
  signal cd_Mcount_q_cy_14_Q : STD_LOGIC; 
  signal cd_q_14_CYSELF_5966 : STD_LOGIC; 
  signal cd_q_14_CYMUXFAST_5965 : STD_LOGIC; 
  signal cd_q_14_CYAND_5964 : STD_LOGIC; 
  signal cd_q_14_FASTCARRY_5963 : STD_LOGIC; 
  signal cd_q_14_CYMUXG2_5962 : STD_LOGIC; 
  signal cd_q_14_CYMUXF2_5961 : STD_LOGIC; 
  signal cd_q_14_LOGIC_ZERO_5960 : STD_LOGIC; 
  signal cd_q_14_CYSELG_5951 : STD_LOGIC; 
  signal cd_q_14_G : STD_LOGIC; 
  signal cd_q_14_SRINV_5949 : STD_LOGIC; 
  signal cd_q_14_CLKINV_5948 : STD_LOGIC; 
  signal cd_q_16_DXMUX_6038 : STD_LOGIC; 
  signal cd_q_16_XORF_6036 : STD_LOGIC; 
  signal cd_q_16_LOGIC_ZERO_6035 : STD_LOGIC; 
  signal cd_q_16_CYINIT_6034 : STD_LOGIC; 
  signal cd_q_16_CYSELF_6025 : STD_LOGIC; 
  signal cd_q_16_F : STD_LOGIC; 
  signal cd_q_16_DYMUX_6017 : STD_LOGIC; 
  signal cd_q_16_XORG_6015 : STD_LOGIC; 
  signal cd_Mcount_q_cy_16_Q : STD_LOGIC; 
  signal cd_q_17_rt_6012 : STD_LOGIC; 
  signal cd_q_16_SRINV_6004 : STD_LOGIC; 
  signal cd_q_16_CLKINV_6003 : STD_LOGIC; 
  signal seg_clkdiv_0_DXMUX_6092 : STD_LOGIC; 
  signal seg_clkdiv_0_XORF_6090 : STD_LOGIC; 
  signal seg_clkdiv_0_LOGIC_ONE_6089 : STD_LOGIC; 
  signal seg_clkdiv_0_CYINIT_6088 : STD_LOGIC; 
  signal seg_clkdiv_0_CYSELF_6079 : STD_LOGIC; 
  signal seg_clkdiv_0_BXINV_6077 : STD_LOGIC; 
  signal seg_clkdiv_0_DYMUX_6070 : STD_LOGIC; 
  signal seg_clkdiv_0_XORG_6068 : STD_LOGIC; 
  signal seg_clkdiv_0_CYMUXG_6067 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_0_Q : STD_LOGIC; 
  signal seg_clkdiv_0_LOGIC_ZERO_6065 : STD_LOGIC; 
  signal seg_clkdiv_0_CYSELG_6056 : STD_LOGIC; 
  signal seg_clkdiv_0_G : STD_LOGIC; 
  signal seg_clkdiv_0_SRINV_6054 : STD_LOGIC; 
  signal seg_clkdiv_0_CLKINV_6053 : STD_LOGIC; 
  signal seg_clkdiv_2_DXMUX_6148 : STD_LOGIC; 
  signal seg_clkdiv_2_XORF_6146 : STD_LOGIC; 
  signal seg_clkdiv_2_CYINIT_6145 : STD_LOGIC; 
  signal seg_clkdiv_2_F : STD_LOGIC; 
  signal seg_clkdiv_2_DYMUX_6129 : STD_LOGIC; 
  signal seg_clkdiv_2_XORG_6127 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_2_Q : STD_LOGIC; 
  signal seg_clkdiv_2_CYSELF_6125 : STD_LOGIC; 
  signal seg_clkdiv_2_CYMUXFAST_6124 : STD_LOGIC; 
  signal seg_clkdiv_2_CYAND_6123 : STD_LOGIC; 
  signal seg_clkdiv_2_FASTCARRY_6122 : STD_LOGIC; 
  signal seg_clkdiv_2_CYMUXG2_6121 : STD_LOGIC; 
  signal seg_clkdiv_2_CYMUXF2_6120 : STD_LOGIC; 
  signal seg_clkdiv_2_LOGIC_ZERO_6119 : STD_LOGIC; 
  signal seg_clkdiv_2_CYSELG_6110 : STD_LOGIC; 
  signal seg_clkdiv_2_G : STD_LOGIC; 
  signal seg_clkdiv_2_SRINV_6108 : STD_LOGIC; 
  signal seg_clkdiv_2_CLKINV_6107 : STD_LOGIC; 
  signal seg_clkdiv_4_FFY_RST : STD_LOGIC; 
  signal seg_clkdiv_4_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_4_DXMUX_6204 : STD_LOGIC; 
  signal seg_clkdiv_4_XORF_6202 : STD_LOGIC; 
  signal seg_clkdiv_4_CYINIT_6201 : STD_LOGIC; 
  signal seg_clkdiv_4_F : STD_LOGIC; 
  signal seg_clkdiv_4_DYMUX_6185 : STD_LOGIC; 
  signal seg_clkdiv_4_XORG_6183 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_4_Q : STD_LOGIC; 
  signal seg_clkdiv_4_CYSELF_6181 : STD_LOGIC; 
  signal seg_clkdiv_4_CYMUXFAST_6180 : STD_LOGIC; 
  signal seg_clkdiv_4_CYAND_6179 : STD_LOGIC; 
  signal seg_clkdiv_4_FASTCARRY_6178 : STD_LOGIC; 
  signal seg_clkdiv_4_CYMUXG2_6177 : STD_LOGIC; 
  signal seg_clkdiv_4_CYMUXF2_6176 : STD_LOGIC; 
  signal seg_clkdiv_4_LOGIC_ZERO_6175 : STD_LOGIC; 
  signal seg_clkdiv_4_CYSELG_6166 : STD_LOGIC; 
  signal seg_clkdiv_4_G : STD_LOGIC; 
  signal seg_clkdiv_4_SRINV_6164 : STD_LOGIC; 
  signal seg_clkdiv_4_CLKINV_6163 : STD_LOGIC; 
  signal seg_clkdiv_6_FFY_RST : STD_LOGIC; 
  signal seg_clkdiv_6_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_6_DXMUX_6260 : STD_LOGIC; 
  signal seg_clkdiv_6_XORF_6258 : STD_LOGIC; 
  signal seg_clkdiv_6_CYINIT_6257 : STD_LOGIC; 
  signal seg_clkdiv_6_F : STD_LOGIC; 
  signal seg_clkdiv_6_DYMUX_6241 : STD_LOGIC; 
  signal seg_clkdiv_6_XORG_6239 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_6_Q : STD_LOGIC; 
  signal seg_clkdiv_6_CYSELF_6237 : STD_LOGIC; 
  signal seg_clkdiv_6_CYMUXFAST_6236 : STD_LOGIC; 
  signal seg_clkdiv_6_CYAND_6235 : STD_LOGIC; 
  signal seg_clkdiv_6_FASTCARRY_6234 : STD_LOGIC; 
  signal seg_clkdiv_6_CYMUXG2_6233 : STD_LOGIC; 
  signal seg_clkdiv_6_CYMUXF2_6232 : STD_LOGIC; 
  signal seg_clkdiv_6_LOGIC_ZERO_6231 : STD_LOGIC; 
  signal seg_clkdiv_6_CYSELG_6222 : STD_LOGIC; 
  signal seg_clkdiv_6_G : STD_LOGIC; 
  signal seg_clkdiv_6_SRINV_6220 : STD_LOGIC; 
  signal seg_clkdiv_6_CLKINV_6219 : STD_LOGIC; 
  signal seg_clkdiv_8_FFY_RST : STD_LOGIC; 
  signal seg_clkdiv_8_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_8_DXMUX_6316 : STD_LOGIC; 
  signal seg_clkdiv_8_XORF_6314 : STD_LOGIC; 
  signal seg_clkdiv_8_CYINIT_6313 : STD_LOGIC; 
  signal seg_clkdiv_8_F : STD_LOGIC; 
  signal seg_clkdiv_8_DYMUX_6297 : STD_LOGIC; 
  signal seg_clkdiv_8_XORG_6295 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_8_Q : STD_LOGIC; 
  signal seg_clkdiv_8_CYSELF_6293 : STD_LOGIC; 
  signal seg_clkdiv_8_CYMUXFAST_6292 : STD_LOGIC; 
  signal seg_clkdiv_8_CYAND_6291 : STD_LOGIC; 
  signal seg_clkdiv_8_FASTCARRY_6290 : STD_LOGIC; 
  signal seg_clkdiv_8_CYMUXG2_6289 : STD_LOGIC; 
  signal seg_clkdiv_8_CYMUXF2_6288 : STD_LOGIC; 
  signal seg_clkdiv_8_LOGIC_ZERO_6287 : STD_LOGIC; 
  signal seg_clkdiv_8_CYSELG_6278 : STD_LOGIC; 
  signal seg_clkdiv_8_G : STD_LOGIC; 
  signal seg_clkdiv_8_SRINV_6276 : STD_LOGIC; 
  signal seg_clkdiv_8_CLKINV_6275 : STD_LOGIC; 
  signal seg_clkdiv_10_FFY_RST : STD_LOGIC; 
  signal seg_clkdiv_10_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_10_DXMUX_6372 : STD_LOGIC; 
  signal seg_clkdiv_10_XORF_6370 : STD_LOGIC; 
  signal seg_clkdiv_10_CYINIT_6369 : STD_LOGIC; 
  signal seg_clkdiv_10_F : STD_LOGIC; 
  signal seg_clkdiv_10_DYMUX_6353 : STD_LOGIC; 
  signal seg_clkdiv_10_XORG_6351 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_10_Q : STD_LOGIC; 
  signal seg_clkdiv_10_CYSELF_6349 : STD_LOGIC; 
  signal seg_clkdiv_10_CYMUXFAST_6348 : STD_LOGIC; 
  signal seg_clkdiv_10_CYAND_6347 : STD_LOGIC; 
  signal seg_clkdiv_10_FASTCARRY_6346 : STD_LOGIC; 
  signal seg_clkdiv_10_CYMUXG2_6345 : STD_LOGIC; 
  signal seg_clkdiv_10_CYMUXF2_6344 : STD_LOGIC; 
  signal seg_clkdiv_10_LOGIC_ZERO_6343 : STD_LOGIC; 
  signal seg_clkdiv_10_CYSELG_6334 : STD_LOGIC; 
  signal seg_clkdiv_10_G : STD_LOGIC; 
  signal seg_clkdiv_10_SRINV_6332 : STD_LOGIC; 
  signal seg_clkdiv_10_CLKINV_6331 : STD_LOGIC; 
  signal seg_clkdiv_12_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_12_DXMUX_6428 : STD_LOGIC; 
  signal seg_clkdiv_12_XORF_6426 : STD_LOGIC; 
  signal seg_clkdiv_12_CYINIT_6425 : STD_LOGIC; 
  signal seg_clkdiv_12_F : STD_LOGIC; 
  signal seg_clkdiv_12_DYMUX_6409 : STD_LOGIC; 
  signal seg_clkdiv_12_XORG_6407 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_12_Q : STD_LOGIC; 
  signal seg_clkdiv_12_CYSELF_6405 : STD_LOGIC; 
  signal seg_clkdiv_12_CYMUXFAST_6404 : STD_LOGIC; 
  signal seg_clkdiv_12_CYAND_6403 : STD_LOGIC; 
  signal seg_clkdiv_12_FASTCARRY_6402 : STD_LOGIC; 
  signal seg_clkdiv_12_CYMUXG2_6401 : STD_LOGIC; 
  signal seg_clkdiv_12_CYMUXF2_6400 : STD_LOGIC; 
  signal seg_clkdiv_12_LOGIC_ZERO_6399 : STD_LOGIC; 
  signal seg_clkdiv_12_CYSELG_6390 : STD_LOGIC; 
  signal seg_clkdiv_12_G : STD_LOGIC; 
  signal seg_clkdiv_12_SRINV_6388 : STD_LOGIC; 
  signal seg_clkdiv_12_CLKINV_6387 : STD_LOGIC; 
  signal seg_clkdiv_14_FFY_RST : STD_LOGIC; 
  signal seg_clkdiv_14_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_14_DXMUX_6484 : STD_LOGIC; 
  signal seg_clkdiv_14_XORF_6482 : STD_LOGIC; 
  signal seg_clkdiv_14_CYINIT_6481 : STD_LOGIC; 
  signal seg_clkdiv_14_F : STD_LOGIC; 
  signal seg_clkdiv_14_DYMUX_6465 : STD_LOGIC; 
  signal seg_clkdiv_14_XORG_6463 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_14_Q : STD_LOGIC; 
  signal seg_clkdiv_14_CYSELF_6461 : STD_LOGIC; 
  signal seg_clkdiv_14_CYMUXFAST_6460 : STD_LOGIC; 
  signal seg_clkdiv_14_CYAND_6459 : STD_LOGIC; 
  signal seg_clkdiv_14_FASTCARRY_6458 : STD_LOGIC; 
  signal seg_clkdiv_14_CYMUXG2_6457 : STD_LOGIC; 
  signal seg_clkdiv_14_CYMUXF2_6456 : STD_LOGIC; 
  signal seg_clkdiv_14_LOGIC_ZERO_6455 : STD_LOGIC; 
  signal seg_clkdiv_14_CYSELG_6446 : STD_LOGIC; 
  signal seg_clkdiv_14_G : STD_LOGIC; 
  signal seg_clkdiv_14_SRINV_6444 : STD_LOGIC; 
  signal seg_clkdiv_14_CLKINV_6443 : STD_LOGIC; 
  signal seg_clkdiv_16_FFY_RST : STD_LOGIC; 
  signal seg_clkdiv_16_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_16_DXMUX_6540 : STD_LOGIC; 
  signal seg_clkdiv_16_XORF_6538 : STD_LOGIC; 
  signal seg_clkdiv_16_CYINIT_6537 : STD_LOGIC; 
  signal seg_clkdiv_16_F : STD_LOGIC; 
  signal seg_clkdiv_16_DYMUX_6521 : STD_LOGIC; 
  signal seg_clkdiv_16_XORG_6519 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_16_Q : STD_LOGIC; 
  signal seg_clkdiv_16_CYSELF_6517 : STD_LOGIC; 
  signal seg_clkdiv_16_CYMUXFAST_6516 : STD_LOGIC; 
  signal seg_clkdiv_16_CYAND_6515 : STD_LOGIC; 
  signal seg_clkdiv_16_FASTCARRY_6514 : STD_LOGIC; 
  signal seg_clkdiv_16_CYMUXG2_6513 : STD_LOGIC; 
  signal seg_clkdiv_16_CYMUXF2_6512 : STD_LOGIC; 
  signal seg_clkdiv_16_LOGIC_ZERO_6511 : STD_LOGIC; 
  signal seg_clkdiv_16_CYSELG_6502 : STD_LOGIC; 
  signal seg_clkdiv_16_G : STD_LOGIC; 
  signal seg_clkdiv_16_SRINV_6500 : STD_LOGIC; 
  signal seg_clkdiv_16_CLKINV_6499 : STD_LOGIC; 
  signal seg_clkdiv_18_FFX_RST : STD_LOGIC; 
  signal seg_clkdiv_18_DXMUX_6589 : STD_LOGIC; 
  signal seg_clkdiv_18_XORF_6587 : STD_LOGIC; 
  signal seg_clkdiv_18_LOGIC_ZERO_6586 : STD_LOGIC; 
  signal seg_clkdiv_18_CYINIT_6585 : STD_LOGIC; 
  signal seg_clkdiv_18_CYSELF_6576 : STD_LOGIC; 
  signal seg_clkdiv_18_F : STD_LOGIC; 
  signal seg_clkdiv_18_DYMUX_6568 : STD_LOGIC; 
  signal seg_clkdiv_18_XORG_6566 : STD_LOGIC; 
  signal seg_Mcount_clkdiv_cy_18_Q : STD_LOGIC; 
  signal seg_clkdiv_19_rt_6563 : STD_LOGIC; 
  signal seg_clkdiv_18_SRINV_6555 : STD_LOGIC; 
  signal seg_clkdiv_18_CLKINV_6554 : STD_LOGIC; 
  signal dp_O : STD_LOGIC; 
  signal a_to_g_0_O : STD_LOGIC; 
  signal a_to_g_1_O : STD_LOGIC; 
  signal a_to_g_2_O : STD_LOGIC; 
  signal a_to_g_3_O : STD_LOGIC; 
  signal a_to_g_4_O : STD_LOGIC; 
  signal a_to_g_5_O : STD_LOGIC; 
  signal a_to_g_6_O : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal an_0_O : STD_LOGIC; 
  signal an_1_O : STD_LOGIC; 
  signal an_2_O : STD_LOGIC; 
  signal an_3_O : STD_LOGIC; 
  signal sw_0_INBUF : STD_LOGIC; 
  signal sw_1_INBUF : STD_LOGIC; 
  signal sw_2_INBUF : STD_LOGIC; 
  signal sw_3_INBUF : STD_LOGIC; 
  signal sw_4_INBUF : STD_LOGIC; 
  signal sw_5_INBUF : STD_LOGIC; 
  signal sw_6_INBUF : STD_LOGIC; 
  signal sw_7_INBUF : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal btn_1_INBUF : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal btn_3_INBUF : STD_LOGIC; 
  signal clkp_BUFG_S_INVNOT : STD_LOGIC; 
  signal clkp_BUFG_I0_INV : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal Treg_q_4_FFX_RST : STD_LOGIC; 
  signal Treg_q_4_DXMUX_6811 : STD_LOGIC; 
  signal Treg_q_4_F5MUX_6809 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal Treg_q_4_BXINV_6802 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal Treg_q_4_CLKINV_6794 : STD_LOGIC; 
  signal Treg_q_4_CEINV_6793 : STD_LOGIC; 
  signal Treg_q_5_FFX_RST : STD_LOGIC; 
  signal Treg_q_5_DXMUX_6850 : STD_LOGIC; 
  signal Treg_q_5_F5MUX_6848 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal Treg_q_5_BXINV_6841 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal Treg_q_5_CLKINV_6833 : STD_LOGIC; 
  signal Treg_q_5_CEINV_6832 : STD_LOGIC; 
  signal Treg_q_6_FFX_RST : STD_LOGIC; 
  signal Treg_q_6_DXMUX_6889 : STD_LOGIC; 
  signal Treg_q_6_F5MUX_6887 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal Treg_q_6_BXINV_6880 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal Treg_q_6_CLKINV_6872 : STD_LOGIC; 
  signal Treg_q_6_CEINV_6871 : STD_LOGIC; 
  signal Treg_q_7_FFX_RST : STD_LOGIC; 
  signal Treg_q_7_DXMUX_6928 : STD_LOGIC; 
  signal Treg_q_7_F5MUX_6926 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal Treg_q_7_BXINV_6919 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal Treg_q_7_CLKINV_6911 : STD_LOGIC; 
  signal Treg_q_7_CEINV_6910 : STD_LOGIC; 
  signal Treg_q_8_FFX_RST : STD_LOGIC; 
  signal Treg_q_8_DXMUX_6967 : STD_LOGIC; 
  signal Treg_q_8_F5MUX_6965 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal Treg_q_8_BXINV_6958 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal Treg_q_8_CLKINV_6950 : STD_LOGIC; 
  signal Treg_q_8_CEINV_6949 : STD_LOGIC; 
  signal Treg_q_9_FFX_RST : STD_LOGIC; 
  signal Treg_q_9_DXMUX_7006 : STD_LOGIC; 
  signal Treg_q_9_F5MUX_7004 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal Treg_q_9_BXINV_6997 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal Treg_q_9_CLKINV_6989 : STD_LOGIC; 
  signal Treg_q_9_CEINV_6988 : STD_LOGIC; 
  signal seg_digit_1_F5MUX_7037 : STD_LOGIC; 
  signal seg_Mmux_digit_31_7035 : STD_LOGIC; 
  signal seg_digit_1_BXINV_7029 : STD_LOGIC; 
  signal seg_Mmux_digit_41_7027 : STD_LOGIC; 
  signal seg_digit_2_F5MUX_7062 : STD_LOGIC; 
  signal seg_Mmux_digit_32_7060 : STD_LOGIC; 
  signal seg_digit_2_BXINV_7054 : STD_LOGIC; 
  signal seg_Mmux_digit_42_7052 : STD_LOGIC; 
  signal seg_digit_3_F5MUX_7087 : STD_LOGIC; 
  signal seg_Mmux_digit_33_7085 : STD_LOGIC; 
  signal seg_digit_3_BXINV_7079 : STD_LOGIC; 
  signal seg_Mmux_digit_43_7077 : STD_LOGIC; 
  signal N166_F5MUX_7112 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N166_BXINV_7105 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N167_F5MUX_7137 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N167_BXINV_7128 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal Treg_q_10_DXMUX_7170 : STD_LOGIC; 
  signal Treg_q_10_F5MUX_7168 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal Treg_q_10_BXINV_7161 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal Treg_q_10_CLKINV_7153 : STD_LOGIC; 
  signal Treg_q_10_CEINV_7152 : STD_LOGIC; 
  signal Treg_q_11_DXMUX_7209 : STD_LOGIC; 
  signal Treg_q_11_F5MUX_7207 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal Treg_q_11_BXINV_7200 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal Treg_q_11_CLKINV_7192 : STD_LOGIC; 
  signal Treg_q_11_CEINV_7191 : STD_LOGIC; 
  signal Treg_q_12_DXMUX_7248 : STD_LOGIC; 
  signal Treg_q_12_F5MUX_7246 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal Treg_q_12_BXINV_7239 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal Treg_q_12_CLKINV_7231 : STD_LOGIC; 
  signal Treg_q_12_CEINV_7230 : STD_LOGIC; 
  signal Treg_q_13_DXMUX_7287 : STD_LOGIC; 
  signal Treg_q_13_F5MUX_7285 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal Treg_q_13_BXINV_7278 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal Treg_q_13_CLKINV_7270 : STD_LOGIC; 
  signal Treg_q_13_CEINV_7269 : STD_LOGIC; 
  signal Treg_q_14_FFX_RSTAND_2217 : STD_LOGIC; 
  signal Treg_q_15_FFX_RSTAND_2256 : STD_LOGIC; 
  signal Treg_q_2_FFX_RSTAND_3182 : STD_LOGIC; 
  signal Treg_q_3_FFX_RSTAND_3220 : STD_LOGIC; 
  signal Treg_q_0_FFX_RSTAND_3306 : STD_LOGIC; 
  signal pcCounter_count_2_1_FFY_RSTAND_3911 : STD_LOGIC; 
  signal Nreg_q_0_1_FFY_RSTAND_4415 : STD_LOGIC; 
  signal cp_delay3_FFY_RSTAND_5163 : STD_LOGIC; 
  signal Treg_q_10_FFX_RSTAND_7176 : STD_LOGIC; 
  signal Treg_q_11_FFX_RSTAND_7215 : STD_LOGIC; 
  signal Treg_q_12_FFX_RSTAND_7254 : STD_LOGIC; 
  signal Treg_q_13_FFX_RSTAND_7293 : STD_LOGIC; 
  signal dp_OUTPUT_OFF_O1INV_6603 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal f_y_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Treg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal pcCounter_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Nreg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal seg_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal seg_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cd_q : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal tin : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal f_Maddsub_y_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cd_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal seg_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  Treg_q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_14_F5MUX_2209,
      O => Treg_q_14_DXMUX_2211
    );
  Treg_q_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X47Y36"
    )
    port map (
      IA => N179,
      IB => N180,
      SEL => Treg_q_14_BXINV_2202,
      O => Treg_q_14_F5MUX_2209
    );
  Treg_q_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_14_BXINV_2202
    );
  Treg_q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_14_CLKINV_2194
    );
  Treg_q_14_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_14_CEINV_2193
    );
  Treg_q_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_15_F5MUX_2248,
      O => Treg_q_15_DXMUX_2250
    );
  Treg_q_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X53Y51"
    )
    port map (
      IA => N177,
      IB => N178,
      SEL => Treg_q_15_BXINV_2241,
      O => Treg_q_15_F5MUX_2248
    );
  Treg_q_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_15_BXINV_2241
    );
  Treg_q_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_15_CLKINV_2233
    );
  Treg_q_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_15_CEINV_2232
    );
  f_Mmux_y_6_f55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_6_f55_F5MUX_2281,
      O => f_Mmux_y_6_f55
    );
  f_Mmux_y_6_f55_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y41"
    )
    port map (
      IA => f_Mmux_y_85_2272,
      IB => f_Mmux_y_75_2279,
      SEL => f_Mmux_y_6_f55_BXINV_2274,
      O => f_Mmux_y_6_f55_F5MUX_2281
    );
  f_Mmux_y_6_f55_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_6_f55_BXINV_2274
    );
  f_Mmux_y_6_f56_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_6_f56_F5MUX_2306,
      O => f_Mmux_y_6_f56
    );
  f_Mmux_y_6_f56_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X52Y47"
    )
    port map (
      IA => f_Mmux_y_86_2297,
      IB => f_Mmux_y_76_2304,
      SEL => f_Mmux_y_6_f56_BXINV_2299,
      O => f_Mmux_y_6_f56_F5MUX_2306
    );
  f_Mmux_y_6_f56_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_6_f56_BXINV_2299
    );
  f_Mmux_y_91 : X_LUT4
    generic map(
      INIT => X"FADA",
      LOC => "SLICE_X46Y42"
    )
    port map (
      ADR0 => Treg_q(11),
      ADR1 => N160_0,
      ADR2 => Nreg_q(11),
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_91_2329
    );
  f_Mmux_y_8_f51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f51_F5MUX_2331,
      O => f_Mmux_y_8_f51
    );
  f_Mmux_y_8_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y42"
    )
    port map (
      IA => f_Mmux_y_102_2322,
      IB => f_Mmux_y_91_2329,
      SEL => f_Mmux_y_8_f51_BXINV_2324,
      O => f_Mmux_y_8_f51_F5MUX_2331
    );
  f_Mmux_y_8_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f51_BXINV_2324
    );
  f_Mmux_y_102 : X_LUT4
    generic map(
      INIT => X"3391",
      LOC => "SLICE_X46Y42"
    )
    port map (
      ADR0 => N233_0,
      ADR1 => Treg_q(11),
      ADR2 => Nreg_q(11),
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_102_2322
    );
  f_Mmux_y_92 : X_LUT4
    generic map(
      INIT => X"FBCC",
      LOC => "SLICE_X53Y45"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => Nreg_q(12),
      ADR2 => N160_0,
      ADR3 => Treg_q(12),
      O => f_Mmux_y_92_2354
    );
  f_Mmux_y_8_f52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f52_F5MUX_2356,
      O => f_Mmux_y_8_f52
    );
  f_Mmux_y_8_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X53Y45"
    )
    port map (
      IA => f_Mmux_y_103_2347,
      IB => f_Mmux_y_92_2354,
      SEL => f_Mmux_y_8_f52_BXINV_2349,
      O => f_Mmux_y_8_f52_F5MUX_2356
    );
  f_Mmux_y_8_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f52_BXINV_2349
    );
  f_Mmux_y_103 : X_LUT4
    generic map(
      INIT => X"4A0F",
      LOC => "SLICE_X53Y45"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => Nreg_q(12),
      ADR2 => Treg_q(12),
      ADR3 => N233_0,
      O => f_Mmux_y_103_2347
    );
  f_Mmux_y_93 : X_LUT4
    generic map(
      INIT => X"EEE6",
      LOC => "SLICE_X44Y36"
    )
    port map (
      ADR0 => Treg_q(13),
      ADR1 => Nreg_q(13),
      ADR2 => pcCounter_count(2),
      ADR3 => N160_0,
      O => f_Mmux_y_93_2379
    );
  f_Mmux_y_8_f53_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f53_F5MUX_2381,
      O => f_Mmux_y_8_f53
    );
  f_Mmux_y_8_f53_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X44Y36"
    )
    port map (
      IA => f_Mmux_y_104_2372,
      IB => f_Mmux_y_93_2379,
      SEL => f_Mmux_y_8_f53_BXINV_2374,
      O => f_Mmux_y_8_f53_F5MUX_2381
    );
  f_Mmux_y_8_f53_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f53_BXINV_2374
    );
  f_Mmux_y_104 : X_LUT4
    generic map(
      INIT => X"5855",
      LOC => "SLICE_X44Y36"
    )
    port map (
      ADR0 => Treg_q(13),
      ADR1 => Nreg_q(13),
      ADR2 => pcCounter_count(2),
      ADR3 => N233_0,
      O => f_Mmux_y_104_2372
    );
  f_Mmux_y_8_f54_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f54_F5MUX_2406,
      O => f_Mmux_y_8_f54
    );
  f_Mmux_y_8_f54_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X42Y37"
    )
    port map (
      IA => f_Mmux_y_105_2397,
      IB => f_Mmux_y_94_2404,
      SEL => f_Mmux_y_8_f54_BXINV_2399,
      O => f_Mmux_y_8_f54_F5MUX_2406
    );
  f_Mmux_y_8_f54_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X42Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f54_BXINV_2399
    );
  f_Mmux_y_8_f55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f55_F5MUX_2431,
      O => f_Mmux_y_8_f55
    );
  f_Mmux_y_8_f55_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y44"
    )
    port map (
      IA => f_Mmux_y_106_2422,
      IB => f_Mmux_y_95_2429,
      SEL => f_Mmux_y_8_f55_BXINV_2424,
      O => f_Mmux_y_8_f55_F5MUX_2431
    );
  f_Mmux_y_8_f55_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f55_BXINV_2424
    );
  f_Mmux_y_8_f56_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f56_F5MUX_2456,
      O => f_Mmux_y_8_f56
    );
  f_Mmux_y_8_f56_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y37"
    )
    port map (
      IA => f_Mmux_y_107_2447,
      IB => f_Mmux_y_96_2454,
      SEL => f_Mmux_y_8_f56_BXINV_2449,
      O => f_Mmux_y_8_f56_F5MUX_2456
    );
  f_Mmux_y_8_f56_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f56_BXINV_2449
    );
  f_Mmux_y_8_f57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f57_F5MUX_2481,
      O => f_Mmux_y_8_f57
    );
  f_Mmux_y_8_f57_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y33"
    )
    port map (
      IA => f_Mmux_y_108_2472,
      IB => f_Mmux_y_97_2479,
      SEL => f_Mmux_y_8_f57_BXINV_2474,
      O => f_Mmux_y_8_f57_F5MUX_2481
    );
  f_Mmux_y_8_f57_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f57_BXINV_2474
    );
  f_Mmux_y_8_f58_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f58_F5MUX_2506,
      O => f_Mmux_y_8_f58
    );
  f_Mmux_y_8_f58_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y32"
    )
    port map (
      IA => f_Mmux_y_109_2497,
      IB => f_Mmux_y_98_2504,
      SEL => f_Mmux_y_8_f58_BXINV_2499,
      O => f_Mmux_y_8_f58_F5MUX_2506
    );
  f_Mmux_y_8_f58_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f58_BXINV_2499
    );
  f_Mmux_y_8_f59_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f59_F5MUX_2531,
      O => f_Mmux_y_8_f59
    );
  f_Mmux_y_8_f59_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X52Y30"
    )
    port map (
      IA => f_Mmux_y_1010_2522,
      IB => f_Mmux_y_99_2529,
      SEL => f_Mmux_y_8_f59_BXINV_2524,
      O => f_Mmux_y_8_f59_F5MUX_2531
    );
  f_Mmux_y_8_f59_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f59_BXINV_2524
    );
  f_Mmux_y_8_f510_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f510_F5MUX_2556,
      O => f_Mmux_y_8_f510
    );
  f_Mmux_y_8_f510_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y35"
    )
    port map (
      IA => f_Mmux_y_1011_2547,
      IB => f_Mmux_y_910_2554,
      SEL => f_Mmux_y_8_f510_BXINV_2549,
      O => f_Mmux_y_8_f510_F5MUX_2556
    );
  f_Mmux_y_8_f510_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f510_BXINV_2549
    );
  f_Sh40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh40_F5MUX_2581,
      O => f_Sh40
    );
  f_Sh40_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y34"
    )
    port map (
      IA => N203,
      IB => N204,
      SEL => f_Sh40_BXINV_2573,
      O => f_Sh40_F5MUX_2581
    );
  f_Sh40_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_Sh40_BXINV_2573
    );
  f_Sh41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh41_F5MUX_2606,
      O => f_Sh41
    );
  f_Sh41_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y38"
    )
    port map (
      IA => N201,
      IB => N202,
      SEL => f_Sh41_BXINV_2598,
      O => f_Sh41_F5MUX_2606
    );
  f_Sh41_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_Sh41_BXINV_2598
    );
  f_Sh36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh36_F5MUX_2631,
      O => f_Sh36
    );
  f_Sh36_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y45"
    )
    port map (
      IA => N199,
      IB => N200,
      SEL => f_Sh36_BXINV_2623,
      O => f_Sh36_F5MUX_2631
    );
  f_Sh36_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_Sh36_BXINV_2623
    );
  f_Sh37_G : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => Treg_q(3),
      ADR2 => Treg_q(2),
      ADR3 => VCC,
      O => N198
    );
  f_Sh37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh37_F5MUX_2656,
      O => f_Sh37
    );
  f_Sh37_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y31"
    )
    port map (
      IA => N197,
      IB => N198,
      SEL => f_Sh37_BXINV_2648,
      O => f_Sh37_F5MUX_2656
    );
  f_Sh37_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_Sh37_BXINV_2648
    );
  f_Sh37_F : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => Treg_q(4),
      ADR2 => VCC,
      ADR3 => Treg_q(5),
      O => N197
    );
  f_Sh38_G : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(3),
      ADR2 => Treg_q(4),
      ADR3 => Nreg_q_0_1_1918,
      O => N194
    );
  f_Sh38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh38_F5MUX_2681,
      O => f_Sh38
    );
  f_Sh38_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y37"
    )
    port map (
      IA => N193,
      IB => N194,
      SEL => f_Sh38_BXINV_2673,
      O => f_Sh38_F5MUX_2681
    );
  f_Sh38_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_Sh38_BXINV_2673
    );
  f_Sh38_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => Treg_q(6),
      ADR2 => Nreg_q_0_1_1918,
      ADR3 => VCC,
      O => N193
    );
  f_Sh39_G : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X55Y59"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => Treg_q(5),
      ADR2 => VCC,
      ADR3 => Treg_q(4),
      O => N206
    );
  f_Sh39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh39_F5MUX_2706,
      O => f_Sh39
    );
  f_Sh39_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y59"
    )
    port map (
      IA => N205,
      IB => N206,
      SEL => f_Sh39_BXINV_2698,
      O => f_Sh39_F5MUX_2706
    );
  f_Sh39_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_Sh39_BXINV_2698
    );
  f_Sh39_F : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X55Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(6),
      ADR2 => Treg_q(7),
      ADR3 => Nreg_q_0_1_1918,
      O => N205
    );
  f_Mmux_y_9 : X_LUT4
    generic map(
      INIT => X"EFF0",
      LOC => "SLICE_X50Y39"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => N160_0,
      ADR2 => Treg_q(10),
      ADR3 => Nreg_q(10),
      O => f_Mmux_y_9_2729
    );
  f_Mmux_y_8_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f5_F5MUX_2731,
      O => f_Mmux_y_8_f5
    );
  f_Mmux_y_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y39"
    )
    port map (
      IA => f_Mmux_y_101_2722,
      IB => f_Mmux_y_9_2729,
      SEL => f_Mmux_y_8_f5_BXINV_2724,
      O => f_Mmux_y_8_f5_F5MUX_2731
    );
  f_Mmux_y_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f5_BXINV_2724
    );
  f_Mmux_y_101 : X_LUT4
    generic map(
      INIT => X"6233",
      LOC => "SLICE_X50Y39"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => Treg_q(10),
      ADR2 => Nreg_q(10),
      ADR3 => N233_0,
      O => f_Mmux_y_101_2722
    );
  f_y_shift0002_0_12_G : X_LUT4
    generic map(
      INIT => X"A808",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => N54_0,
      ADR2 => Nreg_q(1),
      ADR3 => N55_0,
      O => N188
    );
  f_y_shift0002_0_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_shift0002_0_12_F5MUX_2756,
      O => f_y_shift0002_0_12
    );
  f_y_shift0002_0_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y43"
    )
    port map (
      IA => N187,
      IB => N188,
      SEL => f_y_shift0002_0_12_BXINV_2749,
      O => f_y_shift0002_0_12_F5MUX_2756
    );
  f_y_shift0002_0_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(3),
      O => f_y_shift0002_0_12_BXINV_2749
    );
  f_y_shift0002_0_12_F : X_LUT4
    generic map(
      INIT => X"A808",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => N51_0,
      ADR2 => Nreg_q(1),
      ADR3 => N45_0,
      O => N187
    );
  f_y_shift0002_0_89_G : X_LUT4
    generic map(
      INIT => X"5410",
      LOC => "SLICE_X65Y59"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => Nreg_q(1),
      ADR2 => N22_0,
      ADR3 => N23_0,
      O => N186
    );
  f_y_shift0002_0_89_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_shift0002_0_89_F5MUX_2781,
      O => f_y_shift0002_0_89
    );
  f_y_shift0002_0_89_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y59"
    )
    port map (
      IA => N185,
      IB => N186,
      SEL => f_y_shift0002_0_89_BXINV_2774,
      O => f_y_shift0002_0_89_F5MUX_2781
    );
  f_y_shift0002_0_89_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(3),
      O => f_y_shift0002_0_89_BXINV_2774
    );
  f_y_shift0002_0_89_F : X_LUT4
    generic map(
      INIT => X"5410",
      LOC => "SLICE_X65Y59"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => Nreg_q(0),
      ADR2 => f_y_shift0002_0_34_0,
      ADR3 => f_y_shift0002_0_21_0,
      O => N185
    );
  f_Mmux_y_36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_36_F5MUX_2806,
      O => f_Mmux_y_36
    );
  f_Mmux_y_36_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y35"
    )
    port map (
      IA => N283,
      IB => N284,
      SEL => f_Mmux_y_36_BXINV_2799,
      O => f_Mmux_y_36_F5MUX_2806
    );
  f_Mmux_y_36_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_36_BXINV_2799
    );
  f_Mmux_y_37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_37_F5MUX_2831,
      O => f_Mmux_y_37
    );
  f_Mmux_y_37_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y33"
    )
    port map (
      IA => N285,
      IB => N286,
      SEL => f_Mmux_y_37_BXINV_2824,
      O => f_Mmux_y_37_F5MUX_2831
    );
  f_Mmux_y_37_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_37_BXINV_2824
    );
  f_Mmux_y_38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_38_F5MUX_2856,
      O => f_Mmux_y_38
    );
  f_Mmux_y_38_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y33"
    )
    port map (
      IA => N287,
      IB => N288,
      SEL => f_Mmux_y_38_BXINV_2849,
      O => f_Mmux_y_38_F5MUX_2856
    );
  f_Mmux_y_38_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_38_BXINV_2849
    );
  seg_digit_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_digit_0_F5MUX_2881,
      O => seg_digit(0)
    );
  seg_digit_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y68"
    )
    port map (
      IA => seg_Mmux_digit_4_2871,
      IB => seg_Mmux_digit_3_2879,
      SEL => seg_digit_0_BXINV_2873,
      O => seg_digit_0_F5MUX_2881
    );
  seg_digit_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv(19),
      O => seg_digit_0_BXINV_2873
    );
  f_Mmux_y_8_f511_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f511_F5MUX_2906,
      O => f_Mmux_y_8_f511
    );
  f_Mmux_y_8_f511_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y32"
    )
    port map (
      IA => f_Mmux_y_1012_2897,
      IB => f_Mmux_y_911_2904,
      SEL => f_Mmux_y_8_f511_BXINV_2899,
      O => f_Mmux_y_8_f511_F5MUX_2906
    );
  f_Mmux_y_8_f511_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f511_BXINV_2899
    );
  f_Mmux_y_8_f512_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f512_F5MUX_2931,
      O => f_Mmux_y_8_f512
    );
  f_Mmux_y_8_f512_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y31"
    )
    port map (
      IA => f_Mmux_y_1013_2922,
      IB => f_Mmux_y_912_2929,
      SEL => f_Mmux_y_8_f512_BXINV_2924,
      O => f_Mmux_y_8_f512_F5MUX_2931
    );
  f_Mmux_y_8_f512_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f512_BXINV_2924
    );
  f_Mmux_y_8_f513_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f513_F5MUX_2956,
      O => f_Mmux_y_8_f513
    );
  f_Mmux_y_8_f513_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X46Y39"
    )
    port map (
      IA => f_Mmux_y_1014_2947,
      IB => f_Mmux_y_913_2954,
      SEL => f_Mmux_y_8_f513_BXINV_2949,
      O => f_Mmux_y_8_f513_F5MUX_2956
    );
  f_Mmux_y_8_f513_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f513_BXINV_2949
    );
  f_Mmux_y_8_f514_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_8_f514_F5MUX_2981,
      O => f_Mmux_y_8_f514
    );
  f_Mmux_y_8_f514_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y38"
    )
    port map (
      IA => f_Mmux_y_1015_2972,
      IB => f_Mmux_y_914_2979,
      SEL => f_Mmux_y_8_f514_BXINV_2974,
      O => f_Mmux_y_8_f514_F5MUX_2981
    );
  f_Mmux_y_8_f514_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_Q,
      O => f_Mmux_y_8_f514_BXINV_2974
    );
  f_fcode_1_1212_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1212_F5MUX_3006,
      O => f_fcode_1_1212
    );
  f_fcode_1_1212_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y38"
    )
    port map (
      IA => N217,
      IB => N218,
      SEL => f_fcode_1_1212_BXINV_2999,
      O => f_fcode_1_1212_F5MUX_3006
    );
  f_fcode_1_1212_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(1),
      O => f_fcode_1_1212_BXINV_2999
    );
  f_fcode_1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_14_F5MUX_3031,
      O => f_fcode_1_14
    );
  f_fcode_1_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y39"
    )
    port map (
      IA => N281,
      IB => N282,
      SEL => f_fcode_1_14_BXINV_3022,
      O => f_fcode_1_14_F5MUX_3031
    );
  f_fcode_1_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_0_Q,
      O => f_fcode_1_14_BXINV_3022
    );
  f_fcode_1_1476_G : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X52Y38"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => VCC,
      ADR2 => Treg_q(9),
      ADR3 => VCC,
      O => N280
    );
  f_fcode_1_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_15_F5MUX_3056,
      O => f_fcode_1_15
    );
  f_fcode_1_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X52Y38"
    )
    port map (
      IA => N279,
      IB => N280,
      SEL => f_fcode_1_15_BXINV_3047,
      O => f_fcode_1_15_F5MUX_3056
    );
  f_fcode_1_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_0_Q,
      O => f_fcode_1_15_BXINV_3047
    );
  f_fcode_1_1476_F : X_LUT4
    generic map(
      INIT => X"FF54",
      LOC => "SLICE_X52Y38"
    )
    port map (
      ADR0 => f_y_or0003_0,
      ADR1 => f_fcode_1_1421_0,
      ADR2 => f_fcode_1_146_0,
      ADR3 => M_1_Q,
      O => N279
    );
  f_fcode_1_471_G : X_LUT4
    generic map(
      INIT => X"220F",
      LOC => "SLICE_X52Y41"
    )
    port map (
      ADR0 => Treg_q(1),
      ADR1 => Nreg_q(1),
      ADR2 => N63,
      ADR3 => Nreg_q(0),
      O => N196
    );
  f_fcode_1_471_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_471_F5MUX_3081,
      O => f_fcode_1_471
    );
  f_fcode_1_471_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X52Y41"
    )
    port map (
      IA => N195,
      IB => N196,
      SEL => f_fcode_1_471_BXINV_3074,
      O => f_fcode_1_471_F5MUX_3081
    );
  f_fcode_1_471_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(3),
      O => f_fcode_1_471_BXINV_3074
    );
  f_fcode_1_471_F : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X52Y41"
    )
    port map (
      ADR0 => N68,
      ADR1 => N69_0,
      ADR2 => VCC,
      ADR3 => Nreg_q(1),
      O => N195
    );
  f_fcode_1_581_G : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X64Y63"
    )
    port map (
      ADR0 => N90_0,
      ADR1 => N84,
      ADR2 => Nreg_q(1),
      ADR3 => VCC,
      O => N192
    );
  f_fcode_1_581_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_581_F5MUX_3106,
      O => f_fcode_1_581
    );
  f_fcode_1_581_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y63"
    )
    port map (
      IA => N191,
      IB => N192,
      SEL => f_fcode_1_581_BXINV_3098,
      O => f_fcode_1_581_F5MUX_3106
    );
  f_fcode_1_581_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => Nreg_q(3),
      O => f_fcode_1_581_BXINV_3098
    );
  f_fcode_1_581_F : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X64Y63"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => VCC,
      ADR2 => N66_0,
      ADR3 => N65_0,
      O => N191
    );
  f_Mmux_y_46 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_y_addsub0000(1),
      ADR2 => f_Mmux_y_8_f56,
      ADR3 => VCC,
      O => f_Mmux_y_46_O_pack_1
    );
  nmux_y_1_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => N157_0,
      ADR1 => N158_0,
      ADR2 => VCC,
      ADR3 => f_Mmux_y_46_O,
      O => tin(1)
    );
  Treg_q_1_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_1_FFX_RST
    );
  Treg_q_1 : X_FF
    generic map(
      LOC => "SLICE_X65Y37",
      INIT => '0'
    )
    port map (
      I => Treg_q_1_DXMUX_3138,
      CE => Treg_q_1_CEINV_3119,
      CLK => Treg_q_1_CLKINV_3120,
      SET => GND,
      RST => Treg_q_1_FFX_RST,
      O => Treg_q(1)
    );
  Treg_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => tin(1),
      O => Treg_q_1_DXMUX_3138
    );
  Treg_q_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_46_O_pack_1,
      O => f_Mmux_y_46_O
    );
  Treg_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_1_CLKINV_3120
    );
  Treg_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_1_CEINV_3119
    );
  Treg_q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => tin(2),
      O => Treg_q_2_DXMUX_3176
    );
  Treg_q_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_47_O_pack_1,
      O => f_Mmux_y_47_O
    );
  Treg_q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_2_CLKINV_3158
    );
  Treg_q_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_2_CEINV_3157
    );
  Treg_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => tin(3),
      O => Treg_q_3_DXMUX_3214
    );
  Treg_q_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_48_O_pack_1,
      O => f_Mmux_y_48_O
    );
  Treg_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_3_CLKINV_3196
    );
  Treg_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_3_CEINV_3195
    );
  N152_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N152,
      O => N152_0
    );
  N152_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  nmux_y_0_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nmux_y_0_15_3267,
      O => nmux_y_0_15_0
    );
  nmux_y_0_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_10_O_pack_1,
      O => f_Mmux_y_10_O
    );
  Treg_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => tin(0),
      O => Treg_q_0_DXMUX_3300
    );
  Treg_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => nmux_y_0_0_O_pack_1,
      O => nmux_y_0_0_O
    );
  Treg_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_0_CLKINV_3284
    );
  Treg_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_0_CEINV_3283
    );
  f_Mmux_y_310_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_310_3329,
      O => f_Mmux_y_310_0
    );
  f_Mmux_y_310_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1029_SW0_O_pack_1,
      O => f_fcode_1_1029_SW0_O
    );
  f_Mmux_y_311_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1129_SW0_O_pack_1,
      O => f_fcode_1_1129_SW0_O
    );
  f_Mmux_y_312_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1229_SW0_O_pack_1,
      O => f_fcode_1_1229_SW0_O
    );
  N277_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N277,
      O => N277_0
    );
  N277_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh141_O_pack_1,
      O => f_Sh141_O
    );
  f_Sh42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh42_3425,
      O => f_Sh42_0
    );
  f_Sh42_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N68_pack_1,
      O => N68
    );
  f_Sh34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh34_3449,
      O => f_Sh34_0
    );
  f_Sh34_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N63_pack_2,
      O => N63
    );
  f_Mmux_y_39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_39_3473,
      O => f_Mmux_y_39_0
    );
  f_Mmux_y_39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_929_SW0_O_pack_1,
      O => f_fcode_1_929_SW0_O
    );
  f_y_or0003_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or0003,
      O => f_y_or0003_0
    );
  f_y_or0003_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or00034_pack_1,
      O => f_y_or00034_2013
    );
  N149_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N149,
      O => N149_0
    );
  N149_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_N01_pack_1,
      O => f_N01
    );
  f_fcode_1_1112_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1112_3545,
      O => f_fcode_1_1112_0
    );
  f_fcode_1_1112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1112_SW0_O_pack_1,
      O => f_fcode_1_1112_SW0_O
    );
  f_fcode_1_2120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_2120_3569,
      O => f_fcode_1_2120_0
    );
  f_fcode_1_2120_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_274_O_pack_1,
      O => f_fcode_1_274_O
    );
  f_fcode_1_1421_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1421_3593,
      O => f_fcode_1_1421_0
    );
  f_fcode_1_1421_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh33_pack_1,
      O => f_Sh33
    );
  f_fcode_1_3120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_3120_3617,
      O => f_fcode_1_3120_0
    );
  f_fcode_1_3120_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_38_O_pack_1,
      O => f_fcode_1_38_O
    );
  f_fcode_1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_5,
      O => f_fcode_1_5_0
    );
  f_fcode_1_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_4120_O_pack_1,
      O => f_fcode_1_4120_O
    );
  f_fcode_1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_6,
      O => f_fcode_1_6_0
    );
  f_fcode_1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_5120_O_pack_1,
      O => f_fcode_1_5120_O
    );
  f_fcode_1_136_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_136_3689,
      O => f_fcode_1_136_0
    );
  f_fcode_1_136_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N106_pack_1,
      O => N106
    );
  f_fcode_1_146_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_146_3713,
      O => f_fcode_1_146_0
    );
  f_fcode_1_146_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N84_pack_1,
      O => N84
    );
  f_fcode_1_374_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_374_3737,
      O => f_fcode_1_374_0
    );
  f_fcode_1_374_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_327_O_pack_1,
      O => f_fcode_1_327_O
    );
  f_fcode_1_474_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_474_3761,
      O => f_fcode_1_474_0
    );
  f_fcode_1_474_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_427_O_pack_1,
      O => f_fcode_1_427_O
    );
  f_fcode_1_574_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_574_3785,
      O => f_fcode_1_574_0
    );
  f_fcode_1_574_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_527_O_pack_1,
      O => f_fcode_1_527_O
    );
  f_fcode_1_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_28_3809,
      O => f_fcode_1_28_0
    );
  f_fcode_1_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh32_pack_1,
      O => f_Sh32
    );
  f_fcode_1_61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_61_3833,
      O => f_fcode_1_61_0
    );
  f_fcode_1_61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Sh40_SW1_O_pack_1,
      O => f_Sh40_SW1_O
    );
  f_fcode_1_1018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1018,
      O => f_fcode_1_1018_0
    );
  f_fcode_1_1018_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or00039_pack_1,
      O => f_y_or00039_2011
    );
  f_fcode_1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1,
      O => f_fcode_1_1_0
    );
  f_fcode_1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_211_O_pack_1,
      O => f_fcode_1_211_O
    );
  pcCounter_count_2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_Q,
      O => M_5_0
    );
  pcCounter_count_2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => pcCounter_count_2_1_GYMUX_3905,
      O => pcCounter_count_2_1_DYMUX_3906
    );
  pcCounter_count_2_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_2_1,
      O => pcCounter_count_2_1_GYMUX_3905
    );
  pcCounter_count_2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => pcCounter_count_2_1_CLKINV_3896
    );
  M_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_Q,
      O => M_6_0
    );
  M_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N145,
      O => N145_0
    );
  N142_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N142,
      O => N142_0
    );
  N142_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  N124_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N124,
      O => N124_0
    );
  N124_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N130,
      O => N130_0
    );
  N66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  N66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_an_1_mux000115_4005,
      O => seg_an_1_mux000115_0
    );
  N78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N78,
      O => N78_0
    );
  N78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_an_1_mux000152_4029,
      O => seg_an_1_mux000152_0
    );
  an_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6_pack_1,
      O => N6
    );
  N158_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N158,
      O => N158_0
    );
  N158_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N157,
      O => N157_0
    );
  N151_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N151,
      O => N151_0
    );
  N151_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N154,
      O => N154_0
    );
  an_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_an_1_mux000128_pack_1,
      O => seg_an_1_mux000128
    );
  N22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  N22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y59",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_an_2_mux000128_4149,
      O => seg_an_2_mux000128_0
    );
  f_Mmux_y_411_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_411_4181,
      O => f_Mmux_y_411_0
    );
  f_Mmux_y_411_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_1_pack_1,
      O => M_1_Q
    );
  N117_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N117,
      O => N117_0
    );
  f_Mmux_y_49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_412_4221,
      O => f_Mmux_y_412_0
    );
  N133_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N133,
      O => N133_0
    );
  N133_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_811_4246,
      O => f_Mmux_y_811_0
    );
  f_Mmux_y_814_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_814_4277,
      O => f_Mmux_y_814_0
    );
  f_Mmux_y_814_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_812_4269,
      O => f_Mmux_y_812_0
    );
  N115_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N115,
      O => N115_0
    );
  N115_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_813_4294,
      O => f_Mmux_y_813_0
    );
  f_Mmux_y_82_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_82_4325,
      O => f_Mmux_y_82_0
    );
  f_Mmux_y_82_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_815_4317,
      O => f_Mmux_y_815_0
    );
  N90_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N90,
      O => N90_0
    );
  N90_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  N69_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N69,
      O => N69_0
    );
  N69_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N45,
      O => N45_0
    );
  N65_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => N65,
      O => N65_0
    );
  N65_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y63",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  Nreg_q_0_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(0),
      O => Nreg_q_0_1_DYMUX_4409
    );
  Nreg_q_0_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_0_1_CLKINV_4406
    );
  Nreg_q_0_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_0_1_CEINV_4405
    );
  Nreg_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(1),
      O => Nreg_q_1_DXMUX_4437
    );
  Nreg_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(0),
      O => Nreg_q_1_DYMUX_4428
    );
  Nreg_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_1_SRINV_4426
    );
  Nreg_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_1_CLKINV_4425
    );
  Nreg_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_1_CEINV_4424
    );
  Nreg_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(3),
      O => Nreg_q_3_DXMUX_4465
    );
  Nreg_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(2),
      O => Nreg_q_3_DYMUX_4456
    );
  Nreg_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_3_SRINV_4454
    );
  Nreg_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_3_CLKINV_4453
    );
  Nreg_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_3_CEINV_4452
    );
  Nreg_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(5),
      O => Nreg_q_5_DXMUX_4493
    );
  Nreg_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(4),
      O => Nreg_q_5_DYMUX_4484
    );
  Nreg_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_5_SRINV_4482
    );
  Nreg_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_5_CLKINV_4481
    );
  Nreg_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_5_CEINV_4480
    );
  Nreg_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(7),
      O => Nreg_q_7_DXMUX_4521
    );
  Nreg_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(6),
      O => Nreg_q_7_DYMUX_4512
    );
  Nreg_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_7_SRINV_4510
    );
  Nreg_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_7_CLKINV_4509
    );
  Nreg_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_7_CEINV_4508
    );
  Nreg_q_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(9),
      O => Nreg_q_9_DXMUX_4549
    );
  Nreg_q_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(8),
      O => Nreg_q_9_DYMUX_4540
    );
  Nreg_q_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_9_SRINV_4538
    );
  Nreg_q_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_9_CLKINV_4537
    );
  Nreg_q_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_9_CEINV_4536
    );
  f_y_or0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or0002,
      O => f_y_or0002_0
    );
  f_y_or0002_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or0001,
      O => f_y_or0001_0
    );
  N233_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N233,
      O => N233_0
    );
  N233_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N160,
      O => N160_0
    );
  N55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N55,
      O => N55_0
    );
  N55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N54,
      O => N54_0
    );
  pcCounter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X53Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => pcCounter_count(0),
      O => pcCounter_count_0_DXMUX_4715
    );
  pcCounter_count_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N212,
      O => N212_0
    );
  pcCounter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_1_1,
      O => pcCounter_count_0_DYMUX_4700
    );
  pcCounter_count_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => pcCounter_count_0_SRINV_4690
    );
  pcCounter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => pcCounter_count_0_CLKINV_4689
    );
  pcCounter_count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => pcCounter_count_2_1_GYMUX_3905,
      O => pcCounter_count_2_DXMUX_4748
    );
  pcCounter_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_3_1,
      O => pcCounter_count_2_DYMUX_4740
    );
  pcCounter_count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => pcCounter_count_2_SRINV_4732
    );
  pcCounter_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => pcCounter_count_2_CLKINV_4731
    );
  N87_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N87,
      O => N87_0
    );
  N87_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N72,
      O => N72_0
    );
  an_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y62",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_an_1_mux00012_pack_1,
      O => seg_an_1_mux00012_2091
    );
  f_y_shift0002_0_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_shift0002_0_21_4824,
      O => f_y_shift0002_0_21_0
    );
  f_y_shift0002_0_21_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N81,
      O => N81_0
    );
  f_fcode_1_242_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_242_4848,
      O => f_fcode_1_242_0
    );
  f_fcode_1_242_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_shift0002_0_34_4841,
      O => f_y_shift0002_0_34_0
    );
  f_Mmux_y_83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_83_4872,
      O => f_Mmux_y_83_0
    );
  f_Mmux_y_83_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_81_4864,
      O => f_Mmux_y_81_0
    );
  f_fcode_1_442_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_442_4896,
      O => f_fcode_1_442_0
    );
  f_fcode_1_442_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_84_4889,
      O => f_Mmux_y_84_0
    );
  Nreg_q_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(11),
      O => Nreg_q_11_DXMUX_4919
    );
  Nreg_q_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(10),
      O => Nreg_q_11_DYMUX_4910
    );
  Nreg_q_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_11_SRINV_4908
    );
  Nreg_q_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_11_CLKINV_4907
    );
  Nreg_q_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_11_CEINV_4906
    );
  Nreg_q_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(13),
      O => Nreg_q_13_DXMUX_4947
    );
  Nreg_q_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(12),
      O => Nreg_q_13_DYMUX_4938
    );
  Nreg_q_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_13_SRINV_4936
    );
  Nreg_q_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_13_CLKINV_4935
    );
  Nreg_q_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_13_CEINV_4934
    );
  Nreg_q_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(15),
      O => Nreg_q_15_DXMUX_4975
    );
  Nreg_q_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(14),
      O => Nreg_q_15_DYMUX_4966
    );
  Nreg_q_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_15_SRINV_4964
    );
  Nreg_q_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Nreg_q_15_CLKINV_4963
    );
  Nreg_q_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_5_0,
      O => Nreg_q_15_CEINV_4962
    );
  f_y_or000314_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or000314_5052,
      O => f_y_or000314_0
    );
  f_fcode_1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_3,
      O => f_fcode_1_3_0
    );
  f_fcode_1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N118,
      O => N118_0
    );
  f_Mmux_y_810_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_810_5100,
      O => f_Mmux_y_810_0
    );
  f_Mmux_y_810_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_0_pack_1,
      O => M_0_Q
    );
  N155_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N155,
      O => N155_0
    );
  N155_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_pack_1,
      O => M_3_Q
    );
  cp_delay2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => cp_delay1_2088,
      O => cp_delay2_DXMUX_5144
    );
  cp_delay2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_INBUF,
      O => cp_delay2_DYMUX_5136
    );
  cp_delay2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cp_delay2_SRINV_5134
    );
  cp_delay2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => cp_delay2_CLKINV_5133
    );
  cp_delay3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => cp_delay2_2087,
      O => cp_delay3_DYMUX_5158
    );
  cp_delay3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q(17),
      O => cp_delay3_CLKINV_5155
    );
  f_fcode_1_912_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_912_5186,
      O => f_fcode_1_912_0
    );
  f_fcode_1_912_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1012_5179,
      O => f_fcode_1_1012_0
    );
  f_fcode_1_1321_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_1321_5198,
      O => f_fcode_1_1321_0
    );
  f_fcode_1_342_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_342_5222,
      O => f_fcode_1_342_0
    );
  f_fcode_1_342_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_4,
      O => f_fcode_1_4_0
    );
  f_fcode_1_542_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_542_5246,
      O => f_fcode_1_542_0
    );
  f_fcode_1_542_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_fcode_1_227_5239,
      O => f_fcode_1_227_0
    );
  f_y_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_0_XORF_5283,
      O => f_y_addsub0000(0)
    );
  f_y_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      I0 => f_y_addsub0000_0_CYINIT_5282,
      I1 => f_Maddsub_y_addsub0000_lut(0),
      O => f_y_addsub0000_0_XORF_5283
    );
  f_y_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => f_y_addsub0000_0_CY0F_5281,
      IB => f_y_addsub0000_0_CYINIT_5282,
      SEL => f_y_addsub0000_0_CYSELF_5275,
      O => f_Maddsub_y_addsub0000_cy_0_Q
    );
  f_y_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_or0002_0,
      O => f_y_addsub0000_0_CYINIT_5282
    );
  f_y_addsub0000_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(0),
      O => f_y_addsub0000_0_CY0F_5281
    );
  f_y_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(0),
      O => f_y_addsub0000_0_CYSELF_5275
    );
  f_y_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_0_XORG_5271,
      O => f_y_addsub0000(1)
    );
  f_y_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_0_Q,
      I1 => f_Maddsub_y_addsub0000_lut(1),
      O => f_y_addsub0000_0_XORG_5271
    );
  f_y_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_0_CYMUXG_5270,
      O => f_Maddsub_y_addsub0000_cy_1_Q
    );
  f_y_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => f_y_addsub0000_0_CY0G_5268,
      IB => f_Maddsub_y_addsub0000_cy_0_Q,
      SEL => f_y_addsub0000_0_CYSELG_5262,
      O => f_y_addsub0000_0_CYMUXG_5270
    );
  f_y_addsub0000_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(1),
      O => f_y_addsub0000_0_CY0G_5268
    );
  f_y_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(1),
      O => f_y_addsub0000_0_CYSELG_5262
    );
  f_y_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_2_XORF_5322,
      O => f_y_addsub0000(2)
    );
  f_y_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      I0 => f_y_addsub0000_2_CYINIT_5321,
      I1 => f_Maddsub_y_addsub0000_lut(2),
      O => f_y_addsub0000_2_XORF_5322
    );
  f_y_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      IA => f_y_addsub0000_2_CY0F_5320,
      IB => f_y_addsub0000_2_CYINIT_5321,
      SEL => f_y_addsub0000_2_CYSELF_5310,
      O => f_Maddsub_y_addsub0000_cy_2_Q
    );
  f_y_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      IA => f_y_addsub0000_2_CY0F_5320,
      IB => f_y_addsub0000_2_CY0F_5320,
      SEL => f_y_addsub0000_2_CYSELF_5310,
      O => f_y_addsub0000_2_CYMUXF2_5305
    );
  f_y_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_1_Q,
      O => f_y_addsub0000_2_CYINIT_5321
    );
  f_y_addsub0000_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(2),
      O => f_y_addsub0000_2_CY0F_5320
    );
  f_y_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(2),
      O => f_y_addsub0000_2_CYSELF_5310
    );
  f_y_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_2_XORG_5312,
      O => f_y_addsub0000(3)
    );
  f_y_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_2_Q,
      I1 => f_Maddsub_y_addsub0000_lut(3),
      O => f_y_addsub0000_2_XORG_5312
    );
  f_y_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_2_CYMUXFAST_5309,
      O => f_Maddsub_y_addsub0000_cy_3_Q
    );
  f_y_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_1_Q,
      O => f_y_addsub0000_2_FASTCARRY_5307
    );
  f_y_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      I0 => f_y_addsub0000_2_CYSELG_5298,
      I1 => f_y_addsub0000_2_CYSELF_5310,
      O => f_y_addsub0000_2_CYAND_5308
    );
  f_y_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      IA => f_y_addsub0000_2_CYMUXG2_5306,
      IB => f_y_addsub0000_2_FASTCARRY_5307,
      SEL => f_y_addsub0000_2_CYAND_5308,
      O => f_y_addsub0000_2_CYMUXFAST_5309
    );
  f_y_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      IA => f_y_addsub0000_2_CY0G_5304,
      IB => f_y_addsub0000_2_CYMUXF2_5305,
      SEL => f_y_addsub0000_2_CYSELG_5298,
      O => f_y_addsub0000_2_CYMUXG2_5306
    );
  f_y_addsub0000_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(3),
      O => f_y_addsub0000_2_CY0G_5304
    );
  f_y_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(3),
      O => f_y_addsub0000_2_CYSELG_5298
    );
  f_y_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_4_XORF_5361,
      O => f_y_addsub0000(4)
    );
  f_y_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      I0 => f_y_addsub0000_4_CYINIT_5360,
      I1 => f_Maddsub_y_addsub0000_lut(4),
      O => f_y_addsub0000_4_XORF_5361
    );
  f_y_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      IA => f_y_addsub0000_4_CY0F_5359,
      IB => f_y_addsub0000_4_CYINIT_5360,
      SEL => f_y_addsub0000_4_CYSELF_5349,
      O => f_Maddsub_y_addsub0000_cy_4_Q
    );
  f_y_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      IA => f_y_addsub0000_4_CY0F_5359,
      IB => f_y_addsub0000_4_CY0F_5359,
      SEL => f_y_addsub0000_4_CYSELF_5349,
      O => f_y_addsub0000_4_CYMUXF2_5344
    );
  f_y_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_3_Q,
      O => f_y_addsub0000_4_CYINIT_5360
    );
  f_y_addsub0000_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(4),
      O => f_y_addsub0000_4_CY0F_5359
    );
  f_y_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(4),
      O => f_y_addsub0000_4_CYSELF_5349
    );
  f_y_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_4_XORG_5351,
      O => f_y_addsub0000(5)
    );
  f_y_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_4_Q,
      I1 => f_Maddsub_y_addsub0000_lut(5),
      O => f_y_addsub0000_4_XORG_5351
    );
  f_y_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_4_CYMUXFAST_5348,
      O => f_Maddsub_y_addsub0000_cy_5_Q
    );
  f_y_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_3_Q,
      O => f_y_addsub0000_4_FASTCARRY_5346
    );
  f_y_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      I0 => f_y_addsub0000_4_CYSELG_5337,
      I1 => f_y_addsub0000_4_CYSELF_5349,
      O => f_y_addsub0000_4_CYAND_5347
    );
  f_y_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      IA => f_y_addsub0000_4_CYMUXG2_5345,
      IB => f_y_addsub0000_4_FASTCARRY_5346,
      SEL => f_y_addsub0000_4_CYAND_5347,
      O => f_y_addsub0000_4_CYMUXFAST_5348
    );
  f_y_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y32"
    )
    port map (
      IA => f_y_addsub0000_4_CY0G_5343,
      IB => f_y_addsub0000_4_CYMUXF2_5344,
      SEL => f_y_addsub0000_4_CYSELG_5337,
      O => f_y_addsub0000_4_CYMUXG2_5345
    );
  f_y_addsub0000_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(5),
      O => f_y_addsub0000_4_CY0G_5343
    );
  f_y_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(5),
      O => f_y_addsub0000_4_CYSELG_5337
    );
  f_y_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_6_XORF_5400,
      O => f_y_addsub0000(6)
    );
  f_y_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      I0 => f_y_addsub0000_6_CYINIT_5399,
      I1 => f_Maddsub_y_addsub0000_lut(6),
      O => f_y_addsub0000_6_XORF_5400
    );
  f_y_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      IA => f_y_addsub0000_6_CY0F_5398,
      IB => f_y_addsub0000_6_CYINIT_5399,
      SEL => f_y_addsub0000_6_CYSELF_5388,
      O => f_Maddsub_y_addsub0000_cy_6_Q
    );
  f_y_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      IA => f_y_addsub0000_6_CY0F_5398,
      IB => f_y_addsub0000_6_CY0F_5398,
      SEL => f_y_addsub0000_6_CYSELF_5388,
      O => f_y_addsub0000_6_CYMUXF2_5383
    );
  f_y_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_5_Q,
      O => f_y_addsub0000_6_CYINIT_5399
    );
  f_y_addsub0000_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(6),
      O => f_y_addsub0000_6_CY0F_5398
    );
  f_y_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(6),
      O => f_y_addsub0000_6_CYSELF_5388
    );
  f_y_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_6_XORG_5390,
      O => f_y_addsub0000(7)
    );
  f_y_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_6_Q,
      I1 => f_Maddsub_y_addsub0000_lut(7),
      O => f_y_addsub0000_6_XORG_5390
    );
  f_y_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_6_CYMUXFAST_5387,
      O => f_Maddsub_y_addsub0000_cy_7_Q
    );
  f_y_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_5_Q,
      O => f_y_addsub0000_6_FASTCARRY_5385
    );
  f_y_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      I0 => f_y_addsub0000_6_CYSELG_5376,
      I1 => f_y_addsub0000_6_CYSELF_5388,
      O => f_y_addsub0000_6_CYAND_5386
    );
  f_y_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      IA => f_y_addsub0000_6_CYMUXG2_5384,
      IB => f_y_addsub0000_6_FASTCARRY_5385,
      SEL => f_y_addsub0000_6_CYAND_5386,
      O => f_y_addsub0000_6_CYMUXFAST_5387
    );
  f_y_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y33"
    )
    port map (
      IA => f_y_addsub0000_6_CY0G_5382,
      IB => f_y_addsub0000_6_CYMUXF2_5383,
      SEL => f_y_addsub0000_6_CYSELG_5376,
      O => f_y_addsub0000_6_CYMUXG2_5384
    );
  f_y_addsub0000_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(7),
      O => f_y_addsub0000_6_CY0G_5382
    );
  f_y_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(7),
      O => f_y_addsub0000_6_CYSELG_5376
    );
  f_y_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_8_XORF_5439,
      O => f_y_addsub0000(8)
    );
  f_y_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      I0 => f_y_addsub0000_8_CYINIT_5438,
      I1 => f_Maddsub_y_addsub0000_lut(8),
      O => f_y_addsub0000_8_XORF_5439
    );
  f_y_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => f_y_addsub0000_8_CY0F_5437,
      IB => f_y_addsub0000_8_CYINIT_5438,
      SEL => f_y_addsub0000_8_CYSELF_5427,
      O => f_Maddsub_y_addsub0000_cy_8_Q
    );
  f_y_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => f_y_addsub0000_8_CY0F_5437,
      IB => f_y_addsub0000_8_CY0F_5437,
      SEL => f_y_addsub0000_8_CYSELF_5427,
      O => f_y_addsub0000_8_CYMUXF2_5422
    );
  f_y_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_7_Q,
      O => f_y_addsub0000_8_CYINIT_5438
    );
  f_y_addsub0000_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(8),
      O => f_y_addsub0000_8_CY0F_5437
    );
  f_y_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(8),
      O => f_y_addsub0000_8_CYSELF_5427
    );
  f_y_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_8_XORG_5429,
      O => f_y_addsub0000(9)
    );
  f_y_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_8_Q,
      I1 => f_Maddsub_y_addsub0000_lut(9),
      O => f_y_addsub0000_8_XORG_5429
    );
  f_y_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_8_CYMUXFAST_5426,
      O => f_Maddsub_y_addsub0000_cy_9_Q
    );
  f_y_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_7_Q,
      O => f_y_addsub0000_8_FASTCARRY_5424
    );
  f_y_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      I0 => f_y_addsub0000_8_CYSELG_5415,
      I1 => f_y_addsub0000_8_CYSELF_5427,
      O => f_y_addsub0000_8_CYAND_5425
    );
  f_y_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => f_y_addsub0000_8_CYMUXG2_5423,
      IB => f_y_addsub0000_8_FASTCARRY_5424,
      SEL => f_y_addsub0000_8_CYAND_5425,
      O => f_y_addsub0000_8_CYMUXFAST_5426
    );
  f_y_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y34"
    )
    port map (
      IA => f_y_addsub0000_8_CY0G_5421,
      IB => f_y_addsub0000_8_CYMUXF2_5422,
      SEL => f_y_addsub0000_8_CYSELG_5415,
      O => f_y_addsub0000_8_CYMUXG2_5423
    );
  f_y_addsub0000_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(9),
      O => f_y_addsub0000_8_CY0G_5421
    );
  f_y_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(9),
      O => f_y_addsub0000_8_CYSELG_5415
    );
  f_y_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_10_XORF_5478,
      O => f_y_addsub0000(10)
    );
  f_y_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      I0 => f_y_addsub0000_10_CYINIT_5477,
      I1 => f_Maddsub_y_addsub0000_lut(10),
      O => f_y_addsub0000_10_XORF_5478
    );
  f_y_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => f_y_addsub0000_10_CY0F_5476,
      IB => f_y_addsub0000_10_CYINIT_5477,
      SEL => f_y_addsub0000_10_CYSELF_5466,
      O => f_Maddsub_y_addsub0000_cy_10_Q
    );
  f_y_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => f_y_addsub0000_10_CY0F_5476,
      IB => f_y_addsub0000_10_CY0F_5476,
      SEL => f_y_addsub0000_10_CYSELF_5466,
      O => f_y_addsub0000_10_CYMUXF2_5461
    );
  f_y_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_9_Q,
      O => f_y_addsub0000_10_CYINIT_5477
    );
  f_y_addsub0000_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(10),
      O => f_y_addsub0000_10_CY0F_5476
    );
  f_y_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(10),
      O => f_y_addsub0000_10_CYSELF_5466
    );
  f_y_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_10_XORG_5468,
      O => f_y_addsub0000(11)
    );
  f_y_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_10_Q,
      I1 => f_Maddsub_y_addsub0000_lut(11),
      O => f_y_addsub0000_10_XORG_5468
    );
  f_y_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_10_CYMUXFAST_5465,
      O => f_Maddsub_y_addsub0000_cy_11_Q
    );
  f_y_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_9_Q,
      O => f_y_addsub0000_10_FASTCARRY_5463
    );
  f_y_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      I0 => f_y_addsub0000_10_CYSELG_5454,
      I1 => f_y_addsub0000_10_CYSELF_5466,
      O => f_y_addsub0000_10_CYAND_5464
    );
  f_y_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => f_y_addsub0000_10_CYMUXG2_5462,
      IB => f_y_addsub0000_10_FASTCARRY_5463,
      SEL => f_y_addsub0000_10_CYAND_5464,
      O => f_y_addsub0000_10_CYMUXFAST_5465
    );
  f_y_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y35"
    )
    port map (
      IA => f_y_addsub0000_10_CY0G_5460,
      IB => f_y_addsub0000_10_CYMUXF2_5461,
      SEL => f_y_addsub0000_10_CYSELG_5454,
      O => f_y_addsub0000_10_CYMUXG2_5462
    );
  f_y_addsub0000_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(11),
      O => f_y_addsub0000_10_CY0G_5460
    );
  f_y_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(11),
      O => f_y_addsub0000_10_CYSELG_5454
    );
  f_y_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_12_XORF_5517,
      O => f_y_addsub0000(12)
    );
  f_y_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      I0 => f_y_addsub0000_12_CYINIT_5516,
      I1 => f_Maddsub_y_addsub0000_lut(12),
      O => f_y_addsub0000_12_XORF_5517
    );
  f_y_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => f_y_addsub0000_12_CY0F_5515,
      IB => f_y_addsub0000_12_CYINIT_5516,
      SEL => f_y_addsub0000_12_CYSELF_5505,
      O => f_Maddsub_y_addsub0000_cy_12_Q
    );
  f_y_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => f_y_addsub0000_12_CY0F_5515,
      IB => f_y_addsub0000_12_CY0F_5515,
      SEL => f_y_addsub0000_12_CYSELF_5505,
      O => f_y_addsub0000_12_CYMUXF2_5500
    );
  f_y_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_11_Q,
      O => f_y_addsub0000_12_CYINIT_5516
    );
  f_y_addsub0000_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(12),
      O => f_y_addsub0000_12_CY0F_5515
    );
  f_y_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(12),
      O => f_y_addsub0000_12_CYSELF_5505
    );
  f_y_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_12_XORG_5507,
      O => f_y_addsub0000(13)
    );
  f_y_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_12_Q,
      I1 => f_Maddsub_y_addsub0000_lut(13),
      O => f_y_addsub0000_12_XORG_5507
    );
  f_y_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_cy_11_Q,
      O => f_y_addsub0000_12_FASTCARRY_5502
    );
  f_y_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      I0 => f_y_addsub0000_12_CYSELG_5493,
      I1 => f_y_addsub0000_12_CYSELF_5505,
      O => f_y_addsub0000_12_CYAND_5503
    );
  f_y_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => f_y_addsub0000_12_CYMUXG2_5501,
      IB => f_y_addsub0000_12_FASTCARRY_5502,
      SEL => f_y_addsub0000_12_CYAND_5503,
      O => f_y_addsub0000_12_CYMUXFAST_5504
    );
  f_y_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y36"
    )
    port map (
      IA => f_y_addsub0000_12_CY0G_5499,
      IB => f_y_addsub0000_12_CYMUXF2_5500,
      SEL => f_y_addsub0000_12_CYSELG_5493,
      O => f_y_addsub0000_12_CYMUXG2_5501
    );
  f_y_addsub0000_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(13),
      O => f_y_addsub0000_12_CY0G_5499
    );
  f_y_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(13),
      O => f_y_addsub0000_12_CYSELG_5493
    );
  f_y_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_14_XORF_5548,
      O => f_y_addsub0000(14)
    );
  f_y_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      I0 => f_y_addsub0000_14_CYINIT_5547,
      I1 => f_Maddsub_y_addsub0000_lut(14),
      O => f_y_addsub0000_14_XORF_5548
    );
  f_y_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      IA => f_y_addsub0000_14_CY0F_5546,
      IB => f_y_addsub0000_14_CYINIT_5547,
      SEL => f_y_addsub0000_14_CYSELF_5540,
      O => f_Maddsub_y_addsub0000_cy_14_Q
    );
  f_y_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_12_CYMUXFAST_5504,
      O => f_y_addsub0000_14_CYINIT_5547
    );
  f_y_addsub0000_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q(14),
      O => f_y_addsub0000_14_CY0F_5546
    );
  f_y_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Maddsub_y_addsub0000_lut(14),
      O => f_y_addsub0000_14_CYSELF_5540
    );
  f_y_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_y_addsub0000_14_XORG_5537,
      O => f_y_addsub0000(15)
    );
  f_y_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y37"
    )
    port map (
      I0 => f_Maddsub_y_addsub0000_cy_14_Q,
      I1 => f_Maddsub_y_addsub0000_lut(15),
      O => f_y_addsub0000_14_XORG_5537
    );
  cd_q_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y80"
    )
    port map (
      O => cd_q_0_LOGIC_ZERO_5570
    );
  cd_q_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y80"
    )
    port map (
      O => cd_q_0_LOGIC_ONE_5594
    );
  cd_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_XORF_5595,
      O => cd_q_0_DXMUX_5597
    );
  cd_q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y80"
    )
    port map (
      I0 => cd_q_0_CYINIT_5593,
      I1 => cd_Mcount_q_lut(0),
      O => cd_q_0_XORF_5595
    );
  cd_q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y80"
    )
    port map (
      IA => cd_q_0_LOGIC_ONE_5594,
      IB => cd_q_0_CYINIT_5593,
      SEL => cd_q_0_CYSELF_5584,
      O => cd_Mcount_q_cy_0_Q
    );
  cd_q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_BXINV_5582,
      O => cd_q_0_CYINIT_5593
    );
  cd_q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_lut(0),
      O => cd_q_0_CYSELF_5584
    );
  cd_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => cd_q_0_BXINV_5582
    );
  cd_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_XORG_5573,
      O => cd_q_0_DYMUX_5575
    );
  cd_q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y80"
    )
    port map (
      I0 => cd_Mcount_q_cy_0_Q,
      I1 => cd_q_0_G,
      O => cd_q_0_XORG_5573
    );
  cd_q_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_CYMUXG_5572,
      O => cd_Mcount_q_cy_1_Q
    );
  cd_q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X49Y80"
    )
    port map (
      IA => cd_q_0_LOGIC_ZERO_5570,
      IB => cd_Mcount_q_cy_0_Q,
      SEL => cd_q_0_CYSELG_5561,
      O => cd_q_0_CYMUXG_5572
    );
  cd_q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_0_G,
      O => cd_q_0_CYSELG_5561
    );
  cd_q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_0_SRINV_5559
    );
  cd_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_0_CLKINV_5558
    );
  cd_q_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      O => cd_q_2_LOGIC_ZERO_5624
    );
  cd_q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_XORF_5651,
      O => cd_q_2_DXMUX_5653
    );
  cd_q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      I0 => cd_q_2_CYINIT_5650,
      I1 => cd_q_2_F,
      O => cd_q_2_XORF_5651
    );
  cd_q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_5624,
      IB => cd_q_2_CYINIT_5650,
      SEL => cd_q_2_CYSELF_5630,
      O => cd_Mcount_q_cy_2_Q
    );
  cd_q_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_5624,
      IB => cd_q_2_LOGIC_ZERO_5624,
      SEL => cd_q_2_CYSELF_5630,
      O => cd_q_2_CYMUXF2_5625
    );
  cd_q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_1_Q,
      O => cd_q_2_CYINIT_5650
    );
  cd_q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_F,
      O => cd_q_2_CYSELF_5630
    );
  cd_q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_XORG_5632,
      O => cd_q_2_DYMUX_5634
    );
  cd_q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      I0 => cd_Mcount_q_cy_2_Q,
      I1 => cd_q_2_G,
      O => cd_q_2_XORG_5632
    );
  cd_q_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_CYMUXFAST_5629,
      O => cd_Mcount_q_cy_3_Q
    );
  cd_q_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_1_Q,
      O => cd_q_2_FASTCARRY_5627
    );
  cd_q_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      I0 => cd_q_2_CYSELG_5615,
      I1 => cd_q_2_CYSELF_5630,
      O => cd_q_2_CYAND_5628
    );
  cd_q_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      IA => cd_q_2_CYMUXG2_5626,
      IB => cd_q_2_FASTCARRY_5627,
      SEL => cd_q_2_CYAND_5628,
      O => cd_q_2_CYMUXFAST_5629
    );
  cd_q_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y81"
    )
    port map (
      IA => cd_q_2_LOGIC_ZERO_5624,
      IB => cd_q_2_CYMUXF2_5625,
      SEL => cd_q_2_CYSELG_5615,
      O => cd_q_2_CYMUXG2_5626
    );
  cd_q_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_2_G,
      O => cd_q_2_CYSELG_5615
    );
  cd_q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_2_SRINV_5613
    );
  cd_q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_2_CLKINV_5612
    );
  cd_q_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      O => cd_q_4_LOGIC_ZERO_5680
    );
  cd_q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_XORF_5707,
      O => cd_q_4_DXMUX_5709
    );
  cd_q_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      I0 => cd_q_4_CYINIT_5706,
      I1 => cd_q_4_F,
      O => cd_q_4_XORF_5707
    );
  cd_q_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_5680,
      IB => cd_q_4_CYINIT_5706,
      SEL => cd_q_4_CYSELF_5686,
      O => cd_Mcount_q_cy_4_Q
    );
  cd_q_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_5680,
      IB => cd_q_4_LOGIC_ZERO_5680,
      SEL => cd_q_4_CYSELF_5686,
      O => cd_q_4_CYMUXF2_5681
    );
  cd_q_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_3_Q,
      O => cd_q_4_CYINIT_5706
    );
  cd_q_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_F,
      O => cd_q_4_CYSELF_5686
    );
  cd_q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_XORG_5688,
      O => cd_q_4_DYMUX_5690
    );
  cd_q_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      I0 => cd_Mcount_q_cy_4_Q,
      I1 => cd_q_4_G,
      O => cd_q_4_XORG_5688
    );
  cd_q_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_CYMUXFAST_5685,
      O => cd_Mcount_q_cy_5_Q
    );
  cd_q_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_3_Q,
      O => cd_q_4_FASTCARRY_5683
    );
  cd_q_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      I0 => cd_q_4_CYSELG_5671,
      I1 => cd_q_4_CYSELF_5686,
      O => cd_q_4_CYAND_5684
    );
  cd_q_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      IA => cd_q_4_CYMUXG2_5682,
      IB => cd_q_4_FASTCARRY_5683,
      SEL => cd_q_4_CYAND_5684,
      O => cd_q_4_CYMUXFAST_5685
    );
  cd_q_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      IA => cd_q_4_LOGIC_ZERO_5680,
      IB => cd_q_4_CYMUXF2_5681,
      SEL => cd_q_4_CYSELG_5671,
      O => cd_q_4_CYMUXG2_5682
    );
  cd_q_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_4_G,
      O => cd_q_4_CYSELG_5671
    );
  cd_q_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_4_SRINV_5669
    );
  cd_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_4_CLKINV_5668
    );
  cd_q_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      O => cd_q_6_LOGIC_ZERO_5736
    );
  cd_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_XORF_5763,
      O => cd_q_6_DXMUX_5765
    );
  cd_q_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      I0 => cd_q_6_CYINIT_5762,
      I1 => cd_q_6_F,
      O => cd_q_6_XORF_5763
    );
  cd_q_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_5736,
      IB => cd_q_6_CYINIT_5762,
      SEL => cd_q_6_CYSELF_5742,
      O => cd_Mcount_q_cy_6_Q
    );
  cd_q_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_5736,
      IB => cd_q_6_LOGIC_ZERO_5736,
      SEL => cd_q_6_CYSELF_5742,
      O => cd_q_6_CYMUXF2_5737
    );
  cd_q_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_5_Q,
      O => cd_q_6_CYINIT_5762
    );
  cd_q_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_F,
      O => cd_q_6_CYSELF_5742
    );
  cd_q_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_XORG_5744,
      O => cd_q_6_DYMUX_5746
    );
  cd_q_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      I0 => cd_Mcount_q_cy_6_Q,
      I1 => cd_q_6_G,
      O => cd_q_6_XORG_5744
    );
  cd_q_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_CYMUXFAST_5741,
      O => cd_Mcount_q_cy_7_Q
    );
  cd_q_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_5_Q,
      O => cd_q_6_FASTCARRY_5739
    );
  cd_q_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      I0 => cd_q_6_CYSELG_5727,
      I1 => cd_q_6_CYSELF_5742,
      O => cd_q_6_CYAND_5740
    );
  cd_q_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => cd_q_6_CYMUXG2_5738,
      IB => cd_q_6_FASTCARRY_5739,
      SEL => cd_q_6_CYAND_5740,
      O => cd_q_6_CYMUXFAST_5741
    );
  cd_q_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => cd_q_6_LOGIC_ZERO_5736,
      IB => cd_q_6_CYMUXF2_5737,
      SEL => cd_q_6_CYSELG_5727,
      O => cd_q_6_CYMUXG2_5738
    );
  cd_q_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_6_G,
      O => cd_q_6_CYSELG_5727
    );
  cd_q_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_6_SRINV_5725
    );
  cd_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_6_CLKINV_5724
    );
  cd_q_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      O => cd_q_8_LOGIC_ZERO_5792
    );
  cd_q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_XORF_5819,
      O => cd_q_8_DXMUX_5821
    );
  cd_q_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      I0 => cd_q_8_CYINIT_5818,
      I1 => cd_q_8_F,
      O => cd_q_8_XORF_5819
    );
  cd_q_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_5792,
      IB => cd_q_8_CYINIT_5818,
      SEL => cd_q_8_CYSELF_5798,
      O => cd_Mcount_q_cy_8_Q
    );
  cd_q_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_5792,
      IB => cd_q_8_LOGIC_ZERO_5792,
      SEL => cd_q_8_CYSELF_5798,
      O => cd_q_8_CYMUXF2_5793
    );
  cd_q_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_7_Q,
      O => cd_q_8_CYINIT_5818
    );
  cd_q_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_F,
      O => cd_q_8_CYSELF_5798
    );
  cd_q_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_XORG_5800,
      O => cd_q_8_DYMUX_5802
    );
  cd_q_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      I0 => cd_Mcount_q_cy_8_Q,
      I1 => cd_q_8_G,
      O => cd_q_8_XORG_5800
    );
  cd_q_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_CYMUXFAST_5797,
      O => cd_Mcount_q_cy_9_Q
    );
  cd_q_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_7_Q,
      O => cd_q_8_FASTCARRY_5795
    );
  cd_q_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      I0 => cd_q_8_CYSELG_5783,
      I1 => cd_q_8_CYSELF_5798,
      O => cd_q_8_CYAND_5796
    );
  cd_q_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => cd_q_8_CYMUXG2_5794,
      IB => cd_q_8_FASTCARRY_5795,
      SEL => cd_q_8_CYAND_5796,
      O => cd_q_8_CYMUXFAST_5797
    );
  cd_q_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => cd_q_8_LOGIC_ZERO_5792,
      IB => cd_q_8_CYMUXF2_5793,
      SEL => cd_q_8_CYSELG_5783,
      O => cd_q_8_CYMUXG2_5794
    );
  cd_q_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_8_G,
      O => cd_q_8_CYSELG_5783
    );
  cd_q_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_8_SRINV_5781
    );
  cd_q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_8_CLKINV_5780
    );
  cd_q_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      O => cd_q_10_LOGIC_ZERO_5848
    );
  cd_q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_XORF_5875,
      O => cd_q_10_DXMUX_5877
    );
  cd_q_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      I0 => cd_q_10_CYINIT_5874,
      I1 => cd_q_10_F,
      O => cd_q_10_XORF_5875
    );
  cd_q_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_5848,
      IB => cd_q_10_CYINIT_5874,
      SEL => cd_q_10_CYSELF_5854,
      O => cd_Mcount_q_cy_10_Q
    );
  cd_q_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_5848,
      IB => cd_q_10_LOGIC_ZERO_5848,
      SEL => cd_q_10_CYSELF_5854,
      O => cd_q_10_CYMUXF2_5849
    );
  cd_q_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_9_Q,
      O => cd_q_10_CYINIT_5874
    );
  cd_q_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_F,
      O => cd_q_10_CYSELF_5854
    );
  cd_q_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_XORG_5856,
      O => cd_q_10_DYMUX_5858
    );
  cd_q_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      I0 => cd_Mcount_q_cy_10_Q,
      I1 => cd_q_10_G,
      O => cd_q_10_XORG_5856
    );
  cd_q_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_CYMUXFAST_5853,
      O => cd_Mcount_q_cy_11_Q
    );
  cd_q_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_9_Q,
      O => cd_q_10_FASTCARRY_5851
    );
  cd_q_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      I0 => cd_q_10_CYSELG_5839,
      I1 => cd_q_10_CYSELF_5854,
      O => cd_q_10_CYAND_5852
    );
  cd_q_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      IA => cd_q_10_CYMUXG2_5850,
      IB => cd_q_10_FASTCARRY_5851,
      SEL => cd_q_10_CYAND_5852,
      O => cd_q_10_CYMUXFAST_5853
    );
  cd_q_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      IA => cd_q_10_LOGIC_ZERO_5848,
      IB => cd_q_10_CYMUXF2_5849,
      SEL => cd_q_10_CYSELG_5839,
      O => cd_q_10_CYMUXG2_5850
    );
  cd_q_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_10_G,
      O => cd_q_10_CYSELG_5839
    );
  cd_q_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_10_SRINV_5837
    );
  cd_q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_10_CLKINV_5836
    );
  cd_q_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      O => cd_q_12_LOGIC_ZERO_5904
    );
  cd_q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_XORF_5931,
      O => cd_q_12_DXMUX_5933
    );
  cd_q_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      I0 => cd_q_12_CYINIT_5930,
      I1 => cd_q_12_F,
      O => cd_q_12_XORF_5931
    );
  cd_q_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_5904,
      IB => cd_q_12_CYINIT_5930,
      SEL => cd_q_12_CYSELF_5910,
      O => cd_Mcount_q_cy_12_Q
    );
  cd_q_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_5904,
      IB => cd_q_12_LOGIC_ZERO_5904,
      SEL => cd_q_12_CYSELF_5910,
      O => cd_q_12_CYMUXF2_5905
    );
  cd_q_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_11_Q,
      O => cd_q_12_CYINIT_5930
    );
  cd_q_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_F,
      O => cd_q_12_CYSELF_5910
    );
  cd_q_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_XORG_5912,
      O => cd_q_12_DYMUX_5914
    );
  cd_q_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      I0 => cd_Mcount_q_cy_12_Q,
      I1 => cd_q_12_G,
      O => cd_q_12_XORG_5912
    );
  cd_q_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_CYMUXFAST_5909,
      O => cd_Mcount_q_cy_13_Q
    );
  cd_q_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_11_Q,
      O => cd_q_12_FASTCARRY_5907
    );
  cd_q_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      I0 => cd_q_12_CYSELG_5895,
      I1 => cd_q_12_CYSELF_5910,
      O => cd_q_12_CYAND_5908
    );
  cd_q_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      IA => cd_q_12_CYMUXG2_5906,
      IB => cd_q_12_FASTCARRY_5907,
      SEL => cd_q_12_CYAND_5908,
      O => cd_q_12_CYMUXFAST_5909
    );
  cd_q_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      IA => cd_q_12_LOGIC_ZERO_5904,
      IB => cd_q_12_CYMUXF2_5905,
      SEL => cd_q_12_CYSELG_5895,
      O => cd_q_12_CYMUXG2_5906
    );
  cd_q_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_12_G,
      O => cd_q_12_CYSELG_5895
    );
  cd_q_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_12_SRINV_5893
    );
  cd_q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_12_CLKINV_5892
    );
  cd_q_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      O => cd_q_14_LOGIC_ZERO_5960
    );
  cd_q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_XORF_5987,
      O => cd_q_14_DXMUX_5989
    );
  cd_q_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      I0 => cd_q_14_CYINIT_5986,
      I1 => cd_q_14_F,
      O => cd_q_14_XORF_5987
    );
  cd_q_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_5960,
      IB => cd_q_14_CYINIT_5986,
      SEL => cd_q_14_CYSELF_5966,
      O => cd_Mcount_q_cy_14_Q
    );
  cd_q_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_5960,
      IB => cd_q_14_LOGIC_ZERO_5960,
      SEL => cd_q_14_CYSELF_5966,
      O => cd_q_14_CYMUXF2_5961
    );
  cd_q_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_13_Q,
      O => cd_q_14_CYINIT_5986
    );
  cd_q_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_F,
      O => cd_q_14_CYSELF_5966
    );
  cd_q_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_XORG_5968,
      O => cd_q_14_DYMUX_5970
    );
  cd_q_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      I0 => cd_Mcount_q_cy_14_Q,
      I1 => cd_q_14_G,
      O => cd_q_14_XORG_5968
    );
  cd_q_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_Mcount_q_cy_13_Q,
      O => cd_q_14_FASTCARRY_5963
    );
  cd_q_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      I0 => cd_q_14_CYSELG_5951,
      I1 => cd_q_14_CYSELF_5966,
      O => cd_q_14_CYAND_5964
    );
  cd_q_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      IA => cd_q_14_CYMUXG2_5962,
      IB => cd_q_14_FASTCARRY_5963,
      SEL => cd_q_14_CYAND_5964,
      O => cd_q_14_CYMUXFAST_5965
    );
  cd_q_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y87"
    )
    port map (
      IA => cd_q_14_LOGIC_ZERO_5960,
      IB => cd_q_14_CYMUXF2_5961,
      SEL => cd_q_14_CYSELG_5951,
      O => cd_q_14_CYMUXG2_5962
    );
  cd_q_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_G,
      O => cd_q_14_CYSELG_5951
    );
  cd_q_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_14_SRINV_5949
    );
  cd_q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_14_CLKINV_5948
    );
  cd_q_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      O => cd_q_16_LOGIC_ZERO_6035
    );
  cd_q_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_XORF_6036,
      O => cd_q_16_DXMUX_6038
    );
  cd_q_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      I0 => cd_q_16_CYINIT_6034,
      I1 => cd_q_16_F,
      O => cd_q_16_XORF_6036
    );
  cd_q_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      IA => cd_q_16_LOGIC_ZERO_6035,
      IB => cd_q_16_CYINIT_6034,
      SEL => cd_q_16_CYSELF_6025,
      O => cd_Mcount_q_cy_16_Q
    );
  cd_q_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_14_CYMUXFAST_5965,
      O => cd_q_16_CYINIT_6034
    );
  cd_q_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_F,
      O => cd_q_16_CYSELF_6025
    );
  cd_q_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => cd_q_16_XORG_6015,
      O => cd_q_16_DYMUX_6017
    );
  cd_q_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y88"
    )
    port map (
      I0 => cd_Mcount_q_cy_16_Q,
      I1 => cd_q_17_rt_6012,
      O => cd_q_16_XORG_6015
    );
  cd_q_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cd_q_16_SRINV_6004
    );
  cd_q_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => cd_q_16_CLKINV_6003
    );
  seg_clkdiv_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      O => seg_clkdiv_0_LOGIC_ZERO_6065
    );
  seg_clkdiv_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      O => seg_clkdiv_0_LOGIC_ONE_6089
    );
  seg_clkdiv_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_0_XORF_6090,
      O => seg_clkdiv_0_DXMUX_6092
    );
  seg_clkdiv_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => seg_clkdiv_0_CYINIT_6088,
      I1 => seg_Mcount_clkdiv_lut(0),
      O => seg_clkdiv_0_XORF_6090
    );
  seg_clkdiv_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => seg_clkdiv_0_LOGIC_ONE_6089,
      IB => seg_clkdiv_0_CYINIT_6088,
      SEL => seg_clkdiv_0_CYSELF_6079,
      O => seg_Mcount_clkdiv_cy_0_Q
    );
  seg_clkdiv_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_0_BXINV_6077,
      O => seg_clkdiv_0_CYINIT_6088
    );
  seg_clkdiv_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_lut(0),
      O => seg_clkdiv_0_CYSELF_6079
    );
  seg_clkdiv_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => seg_clkdiv_0_BXINV_6077
    );
  seg_clkdiv_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_0_XORG_6068,
      O => seg_clkdiv_0_DYMUX_6070
    );
  seg_clkdiv_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_0_Q,
      I1 => seg_clkdiv_0_G,
      O => seg_clkdiv_0_XORG_6068
    );
  seg_clkdiv_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_0_CYMUXG_6067,
      O => seg_Mcount_clkdiv_cy_1_Q
    );
  seg_clkdiv_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => seg_clkdiv_0_LOGIC_ZERO_6065,
      IB => seg_Mcount_clkdiv_cy_0_Q,
      SEL => seg_clkdiv_0_CYSELG_6056,
      O => seg_clkdiv_0_CYMUXG_6067
    );
  seg_clkdiv_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_0_G,
      O => seg_clkdiv_0_CYSELG_6056
    );
  seg_clkdiv_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_0_SRINV_6054
    );
  seg_clkdiv_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_0_CLKINV_6053
    );
  seg_clkdiv_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      O => seg_clkdiv_2_LOGIC_ZERO_6119
    );
  seg_clkdiv_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_2_XORF_6146,
      O => seg_clkdiv_2_DXMUX_6148
    );
  seg_clkdiv_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => seg_clkdiv_2_CYINIT_6145,
      I1 => seg_clkdiv_2_F,
      O => seg_clkdiv_2_XORF_6146
    );
  seg_clkdiv_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => seg_clkdiv_2_LOGIC_ZERO_6119,
      IB => seg_clkdiv_2_CYINIT_6145,
      SEL => seg_clkdiv_2_CYSELF_6125,
      O => seg_Mcount_clkdiv_cy_2_Q
    );
  seg_clkdiv_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => seg_clkdiv_2_LOGIC_ZERO_6119,
      IB => seg_clkdiv_2_LOGIC_ZERO_6119,
      SEL => seg_clkdiv_2_CYSELF_6125,
      O => seg_clkdiv_2_CYMUXF2_6120
    );
  seg_clkdiv_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_1_Q,
      O => seg_clkdiv_2_CYINIT_6145
    );
  seg_clkdiv_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_2_F,
      O => seg_clkdiv_2_CYSELF_6125
    );
  seg_clkdiv_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_2_XORG_6127,
      O => seg_clkdiv_2_DYMUX_6129
    );
  seg_clkdiv_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_2_Q,
      I1 => seg_clkdiv_2_G,
      O => seg_clkdiv_2_XORG_6127
    );
  seg_clkdiv_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_2_CYMUXFAST_6124,
      O => seg_Mcount_clkdiv_cy_3_Q
    );
  seg_clkdiv_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_1_Q,
      O => seg_clkdiv_2_FASTCARRY_6122
    );
  seg_clkdiv_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => seg_clkdiv_2_CYSELG_6110,
      I1 => seg_clkdiv_2_CYSELF_6125,
      O => seg_clkdiv_2_CYAND_6123
    );
  seg_clkdiv_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => seg_clkdiv_2_CYMUXG2_6121,
      IB => seg_clkdiv_2_FASTCARRY_6122,
      SEL => seg_clkdiv_2_CYAND_6123,
      O => seg_clkdiv_2_CYMUXFAST_6124
    );
  seg_clkdiv_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => seg_clkdiv_2_LOGIC_ZERO_6119,
      IB => seg_clkdiv_2_CYMUXF2_6120,
      SEL => seg_clkdiv_2_CYSELG_6110,
      O => seg_clkdiv_2_CYMUXG2_6121
    );
  seg_clkdiv_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_2_G,
      O => seg_clkdiv_2_CYSELG_6110
    );
  seg_clkdiv_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_2_SRINV_6108
    );
  seg_clkdiv_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_2_CLKINV_6107
    );
  seg_clkdiv_2 : X_FF
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_2_DXMUX_6148,
      CE => VCC,
      CLK => seg_clkdiv_2_CLKINV_6107,
      SET => GND,
      RST => seg_clkdiv_2_SRINV_6108,
      O => seg_clkdiv(2)
    );
  seg_clkdiv_4_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_SRINV_6164,
      O => seg_clkdiv_4_FFY_RST
    );
  seg_clkdiv_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y84",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_4_DYMUX_6185,
      CE => VCC,
      CLK => seg_clkdiv_4_CLKINV_6163,
      SET => GND,
      RST => seg_clkdiv_4_FFY_RST,
      O => seg_clkdiv(5)
    );
  seg_clkdiv_4_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_SRINV_6164,
      O => seg_clkdiv_4_FFX_RST
    );
  seg_clkdiv_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y84",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_4_DXMUX_6204,
      CE => VCC,
      CLK => seg_clkdiv_4_CLKINV_6163,
      SET => GND,
      RST => seg_clkdiv_4_FFX_RST,
      O => seg_clkdiv(4)
    );
  seg_clkdiv_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      O => seg_clkdiv_4_LOGIC_ZERO_6175
    );
  seg_clkdiv_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_XORF_6202,
      O => seg_clkdiv_4_DXMUX_6204
    );
  seg_clkdiv_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      I0 => seg_clkdiv_4_CYINIT_6201,
      I1 => seg_clkdiv_4_F,
      O => seg_clkdiv_4_XORF_6202
    );
  seg_clkdiv_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => seg_clkdiv_4_LOGIC_ZERO_6175,
      IB => seg_clkdiv_4_CYINIT_6201,
      SEL => seg_clkdiv_4_CYSELF_6181,
      O => seg_Mcount_clkdiv_cy_4_Q
    );
  seg_clkdiv_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => seg_clkdiv_4_LOGIC_ZERO_6175,
      IB => seg_clkdiv_4_LOGIC_ZERO_6175,
      SEL => seg_clkdiv_4_CYSELF_6181,
      O => seg_clkdiv_4_CYMUXF2_6176
    );
  seg_clkdiv_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_3_Q,
      O => seg_clkdiv_4_CYINIT_6201
    );
  seg_clkdiv_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_F,
      O => seg_clkdiv_4_CYSELF_6181
    );
  seg_clkdiv_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_XORG_6183,
      O => seg_clkdiv_4_DYMUX_6185
    );
  seg_clkdiv_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_4_Q,
      I1 => seg_clkdiv_4_G,
      O => seg_clkdiv_4_XORG_6183
    );
  seg_clkdiv_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_CYMUXFAST_6180,
      O => seg_Mcount_clkdiv_cy_5_Q
    );
  seg_clkdiv_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_3_Q,
      O => seg_clkdiv_4_FASTCARRY_6178
    );
  seg_clkdiv_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      I0 => seg_clkdiv_4_CYSELG_6166,
      I1 => seg_clkdiv_4_CYSELF_6181,
      O => seg_clkdiv_4_CYAND_6179
    );
  seg_clkdiv_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => seg_clkdiv_4_CYMUXG2_6177,
      IB => seg_clkdiv_4_FASTCARRY_6178,
      SEL => seg_clkdiv_4_CYAND_6179,
      O => seg_clkdiv_4_CYMUXFAST_6180
    );
  seg_clkdiv_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y84"
    )
    port map (
      IA => seg_clkdiv_4_LOGIC_ZERO_6175,
      IB => seg_clkdiv_4_CYMUXF2_6176,
      SEL => seg_clkdiv_4_CYSELG_6166,
      O => seg_clkdiv_4_CYMUXG2_6177
    );
  seg_clkdiv_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_4_G,
      O => seg_clkdiv_4_CYSELG_6166
    );
  seg_clkdiv_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_4_SRINV_6164
    );
  seg_clkdiv_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y84",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_4_CLKINV_6163
    );
  seg_clkdiv_6_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_SRINV_6220,
      O => seg_clkdiv_6_FFY_RST
    );
  seg_clkdiv_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_6_DYMUX_6241,
      CE => VCC,
      CLK => seg_clkdiv_6_CLKINV_6219,
      SET => GND,
      RST => seg_clkdiv_6_FFY_RST,
      O => seg_clkdiv(7)
    );
  seg_clkdiv_6_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_SRINV_6220,
      O => seg_clkdiv_6_FFX_RST
    );
  seg_clkdiv_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_6_DXMUX_6260,
      CE => VCC,
      CLK => seg_clkdiv_6_CLKINV_6219,
      SET => GND,
      RST => seg_clkdiv_6_FFX_RST,
      O => seg_clkdiv(6)
    );
  seg_clkdiv_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      O => seg_clkdiv_6_LOGIC_ZERO_6231
    );
  seg_clkdiv_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_XORF_6258,
      O => seg_clkdiv_6_DXMUX_6260
    );
  seg_clkdiv_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      I0 => seg_clkdiv_6_CYINIT_6257,
      I1 => seg_clkdiv_6_F,
      O => seg_clkdiv_6_XORF_6258
    );
  seg_clkdiv_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      IA => seg_clkdiv_6_LOGIC_ZERO_6231,
      IB => seg_clkdiv_6_CYINIT_6257,
      SEL => seg_clkdiv_6_CYSELF_6237,
      O => seg_Mcount_clkdiv_cy_6_Q
    );
  seg_clkdiv_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      IA => seg_clkdiv_6_LOGIC_ZERO_6231,
      IB => seg_clkdiv_6_LOGIC_ZERO_6231,
      SEL => seg_clkdiv_6_CYSELF_6237,
      O => seg_clkdiv_6_CYMUXF2_6232
    );
  seg_clkdiv_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_5_Q,
      O => seg_clkdiv_6_CYINIT_6257
    );
  seg_clkdiv_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_F,
      O => seg_clkdiv_6_CYSELF_6237
    );
  seg_clkdiv_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_XORG_6239,
      O => seg_clkdiv_6_DYMUX_6241
    );
  seg_clkdiv_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_6_Q,
      I1 => seg_clkdiv_6_G,
      O => seg_clkdiv_6_XORG_6239
    );
  seg_clkdiv_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_CYMUXFAST_6236,
      O => seg_Mcount_clkdiv_cy_7_Q
    );
  seg_clkdiv_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_5_Q,
      O => seg_clkdiv_6_FASTCARRY_6234
    );
  seg_clkdiv_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      I0 => seg_clkdiv_6_CYSELG_6222,
      I1 => seg_clkdiv_6_CYSELF_6237,
      O => seg_clkdiv_6_CYAND_6235
    );
  seg_clkdiv_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      IA => seg_clkdiv_6_CYMUXG2_6233,
      IB => seg_clkdiv_6_FASTCARRY_6234,
      SEL => seg_clkdiv_6_CYAND_6235,
      O => seg_clkdiv_6_CYMUXFAST_6236
    );
  seg_clkdiv_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      IA => seg_clkdiv_6_LOGIC_ZERO_6231,
      IB => seg_clkdiv_6_CYMUXF2_6232,
      SEL => seg_clkdiv_6_CYSELG_6222,
      O => seg_clkdiv_6_CYMUXG2_6233
    );
  seg_clkdiv_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_6_G,
      O => seg_clkdiv_6_CYSELG_6222
    );
  seg_clkdiv_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_6_SRINV_6220
    );
  seg_clkdiv_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y85",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_6_CLKINV_6219
    );
  seg_clkdiv_8_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_SRINV_6276,
      O => seg_clkdiv_8_FFY_RST
    );
  seg_clkdiv_9 : X_FF
    generic map(
      LOC => "SLICE_X55Y86",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_8_DYMUX_6297,
      CE => VCC,
      CLK => seg_clkdiv_8_CLKINV_6275,
      SET => GND,
      RST => seg_clkdiv_8_FFY_RST,
      O => seg_clkdiv(9)
    );
  seg_clkdiv_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_SRINV_6276,
      O => seg_clkdiv_8_FFX_RST
    );
  seg_clkdiv_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y86",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_8_DXMUX_6316,
      CE => VCC,
      CLK => seg_clkdiv_8_CLKINV_6275,
      SET => GND,
      RST => seg_clkdiv_8_FFX_RST,
      O => seg_clkdiv(8)
    );
  seg_clkdiv_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      O => seg_clkdiv_8_LOGIC_ZERO_6287
    );
  seg_clkdiv_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_XORF_6314,
      O => seg_clkdiv_8_DXMUX_6316
    );
  seg_clkdiv_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      I0 => seg_clkdiv_8_CYINIT_6313,
      I1 => seg_clkdiv_8_F,
      O => seg_clkdiv_8_XORF_6314
    );
  seg_clkdiv_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      IA => seg_clkdiv_8_LOGIC_ZERO_6287,
      IB => seg_clkdiv_8_CYINIT_6313,
      SEL => seg_clkdiv_8_CYSELF_6293,
      O => seg_Mcount_clkdiv_cy_8_Q
    );
  seg_clkdiv_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      IA => seg_clkdiv_8_LOGIC_ZERO_6287,
      IB => seg_clkdiv_8_LOGIC_ZERO_6287,
      SEL => seg_clkdiv_8_CYSELF_6293,
      O => seg_clkdiv_8_CYMUXF2_6288
    );
  seg_clkdiv_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_7_Q,
      O => seg_clkdiv_8_CYINIT_6313
    );
  seg_clkdiv_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_F,
      O => seg_clkdiv_8_CYSELF_6293
    );
  seg_clkdiv_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_XORG_6295,
      O => seg_clkdiv_8_DYMUX_6297
    );
  seg_clkdiv_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_8_Q,
      I1 => seg_clkdiv_8_G,
      O => seg_clkdiv_8_XORG_6295
    );
  seg_clkdiv_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_CYMUXFAST_6292,
      O => seg_Mcount_clkdiv_cy_9_Q
    );
  seg_clkdiv_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_7_Q,
      O => seg_clkdiv_8_FASTCARRY_6290
    );
  seg_clkdiv_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      I0 => seg_clkdiv_8_CYSELG_6278,
      I1 => seg_clkdiv_8_CYSELF_6293,
      O => seg_clkdiv_8_CYAND_6291
    );
  seg_clkdiv_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      IA => seg_clkdiv_8_CYMUXG2_6289,
      IB => seg_clkdiv_8_FASTCARRY_6290,
      SEL => seg_clkdiv_8_CYAND_6291,
      O => seg_clkdiv_8_CYMUXFAST_6292
    );
  seg_clkdiv_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      IA => seg_clkdiv_8_LOGIC_ZERO_6287,
      IB => seg_clkdiv_8_CYMUXF2_6288,
      SEL => seg_clkdiv_8_CYSELG_6278,
      O => seg_clkdiv_8_CYMUXG2_6289
    );
  seg_clkdiv_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_8_G,
      O => seg_clkdiv_8_CYSELG_6278
    );
  seg_clkdiv_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_8_SRINV_6276
    );
  seg_clkdiv_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y86",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_8_CLKINV_6275
    );
  seg_clkdiv_10_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_SRINV_6332,
      O => seg_clkdiv_10_FFY_RST
    );
  seg_clkdiv_11 : X_FF
    generic map(
      LOC => "SLICE_X55Y87",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_10_DYMUX_6353,
      CE => VCC,
      CLK => seg_clkdiv_10_CLKINV_6331,
      SET => GND,
      RST => seg_clkdiv_10_FFY_RST,
      O => seg_clkdiv(11)
    );
  seg_clkdiv_10_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_SRINV_6332,
      O => seg_clkdiv_10_FFX_RST
    );
  seg_clkdiv_10 : X_FF
    generic map(
      LOC => "SLICE_X55Y87",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_10_DXMUX_6372,
      CE => VCC,
      CLK => seg_clkdiv_10_CLKINV_6331,
      SET => GND,
      RST => seg_clkdiv_10_FFX_RST,
      O => seg_clkdiv(10)
    );
  seg_clkdiv_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      O => seg_clkdiv_10_LOGIC_ZERO_6343
    );
  seg_clkdiv_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_XORF_6370,
      O => seg_clkdiv_10_DXMUX_6372
    );
  seg_clkdiv_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      I0 => seg_clkdiv_10_CYINIT_6369,
      I1 => seg_clkdiv_10_F,
      O => seg_clkdiv_10_XORF_6370
    );
  seg_clkdiv_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      IA => seg_clkdiv_10_LOGIC_ZERO_6343,
      IB => seg_clkdiv_10_CYINIT_6369,
      SEL => seg_clkdiv_10_CYSELF_6349,
      O => seg_Mcount_clkdiv_cy_10_Q
    );
  seg_clkdiv_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      IA => seg_clkdiv_10_LOGIC_ZERO_6343,
      IB => seg_clkdiv_10_LOGIC_ZERO_6343,
      SEL => seg_clkdiv_10_CYSELF_6349,
      O => seg_clkdiv_10_CYMUXF2_6344
    );
  seg_clkdiv_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_9_Q,
      O => seg_clkdiv_10_CYINIT_6369
    );
  seg_clkdiv_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_F,
      O => seg_clkdiv_10_CYSELF_6349
    );
  seg_clkdiv_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_XORG_6351,
      O => seg_clkdiv_10_DYMUX_6353
    );
  seg_clkdiv_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_10_Q,
      I1 => seg_clkdiv_10_G,
      O => seg_clkdiv_10_XORG_6351
    );
  seg_clkdiv_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_CYMUXFAST_6348,
      O => seg_Mcount_clkdiv_cy_11_Q
    );
  seg_clkdiv_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_9_Q,
      O => seg_clkdiv_10_FASTCARRY_6346
    );
  seg_clkdiv_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      I0 => seg_clkdiv_10_CYSELG_6334,
      I1 => seg_clkdiv_10_CYSELF_6349,
      O => seg_clkdiv_10_CYAND_6347
    );
  seg_clkdiv_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      IA => seg_clkdiv_10_CYMUXG2_6345,
      IB => seg_clkdiv_10_FASTCARRY_6346,
      SEL => seg_clkdiv_10_CYAND_6347,
      O => seg_clkdiv_10_CYMUXFAST_6348
    );
  seg_clkdiv_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y87"
    )
    port map (
      IA => seg_clkdiv_10_LOGIC_ZERO_6343,
      IB => seg_clkdiv_10_CYMUXF2_6344,
      SEL => seg_clkdiv_10_CYSELG_6334,
      O => seg_clkdiv_10_CYMUXG2_6345
    );
  seg_clkdiv_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_10_G,
      O => seg_clkdiv_10_CYSELG_6334
    );
  seg_clkdiv_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_10_SRINV_6332
    );
  seg_clkdiv_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y87",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_10_CLKINV_6331
    );
  seg_clkdiv_12_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_12_SRINV_6388,
      O => seg_clkdiv_12_FFX_RST
    );
  seg_clkdiv_12 : X_FF
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_12_DXMUX_6428,
      CE => VCC,
      CLK => seg_clkdiv_12_CLKINV_6387,
      SET => GND,
      RST => seg_clkdiv_12_FFX_RST,
      O => seg_clkdiv(12)
    );
  seg_clkdiv_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      O => seg_clkdiv_12_LOGIC_ZERO_6399
    );
  seg_clkdiv_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_12_XORF_6426,
      O => seg_clkdiv_12_DXMUX_6428
    );
  seg_clkdiv_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      I0 => seg_clkdiv_12_CYINIT_6425,
      I1 => seg_clkdiv_12_F,
      O => seg_clkdiv_12_XORF_6426
    );
  seg_clkdiv_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      IA => seg_clkdiv_12_LOGIC_ZERO_6399,
      IB => seg_clkdiv_12_CYINIT_6425,
      SEL => seg_clkdiv_12_CYSELF_6405,
      O => seg_Mcount_clkdiv_cy_12_Q
    );
  seg_clkdiv_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      IA => seg_clkdiv_12_LOGIC_ZERO_6399,
      IB => seg_clkdiv_12_LOGIC_ZERO_6399,
      SEL => seg_clkdiv_12_CYSELF_6405,
      O => seg_clkdiv_12_CYMUXF2_6400
    );
  seg_clkdiv_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_11_Q,
      O => seg_clkdiv_12_CYINIT_6425
    );
  seg_clkdiv_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_12_F,
      O => seg_clkdiv_12_CYSELF_6405
    );
  seg_clkdiv_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_12_XORG_6407,
      O => seg_clkdiv_12_DYMUX_6409
    );
  seg_clkdiv_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_12_Q,
      I1 => seg_clkdiv_12_G,
      O => seg_clkdiv_12_XORG_6407
    );
  seg_clkdiv_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_12_CYMUXFAST_6404,
      O => seg_Mcount_clkdiv_cy_13_Q
    );
  seg_clkdiv_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_11_Q,
      O => seg_clkdiv_12_FASTCARRY_6402
    );
  seg_clkdiv_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      I0 => seg_clkdiv_12_CYSELG_6390,
      I1 => seg_clkdiv_12_CYSELF_6405,
      O => seg_clkdiv_12_CYAND_6403
    );
  seg_clkdiv_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      IA => seg_clkdiv_12_CYMUXG2_6401,
      IB => seg_clkdiv_12_FASTCARRY_6402,
      SEL => seg_clkdiv_12_CYAND_6403,
      O => seg_clkdiv_12_CYMUXFAST_6404
    );
  seg_clkdiv_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y88"
    )
    port map (
      IA => seg_clkdiv_12_LOGIC_ZERO_6399,
      IB => seg_clkdiv_12_CYMUXF2_6400,
      SEL => seg_clkdiv_12_CYSELG_6390,
      O => seg_clkdiv_12_CYMUXG2_6401
    );
  seg_clkdiv_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_12_G,
      O => seg_clkdiv_12_CYSELG_6390
    );
  seg_clkdiv_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_12_SRINV_6388
    );
  seg_clkdiv_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y88",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_12_CLKINV_6387
    );
  seg_clkdiv_14_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_SRINV_6444,
      O => seg_clkdiv_14_FFY_RST
    );
  seg_clkdiv_15 : X_FF
    generic map(
      LOC => "SLICE_X55Y89",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_14_DYMUX_6465,
      CE => VCC,
      CLK => seg_clkdiv_14_CLKINV_6443,
      SET => GND,
      RST => seg_clkdiv_14_FFY_RST,
      O => seg_clkdiv(15)
    );
  seg_clkdiv_14_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_SRINV_6444,
      O => seg_clkdiv_14_FFX_RST
    );
  seg_clkdiv_14 : X_FF
    generic map(
      LOC => "SLICE_X55Y89",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_14_DXMUX_6484,
      CE => VCC,
      CLK => seg_clkdiv_14_CLKINV_6443,
      SET => GND,
      RST => seg_clkdiv_14_FFX_RST,
      O => seg_clkdiv(14)
    );
  seg_clkdiv_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      O => seg_clkdiv_14_LOGIC_ZERO_6455
    );
  seg_clkdiv_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_XORF_6482,
      O => seg_clkdiv_14_DXMUX_6484
    );
  seg_clkdiv_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      I0 => seg_clkdiv_14_CYINIT_6481,
      I1 => seg_clkdiv_14_F,
      O => seg_clkdiv_14_XORF_6482
    );
  seg_clkdiv_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      IA => seg_clkdiv_14_LOGIC_ZERO_6455,
      IB => seg_clkdiv_14_CYINIT_6481,
      SEL => seg_clkdiv_14_CYSELF_6461,
      O => seg_Mcount_clkdiv_cy_14_Q
    );
  seg_clkdiv_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      IA => seg_clkdiv_14_LOGIC_ZERO_6455,
      IB => seg_clkdiv_14_LOGIC_ZERO_6455,
      SEL => seg_clkdiv_14_CYSELF_6461,
      O => seg_clkdiv_14_CYMUXF2_6456
    );
  seg_clkdiv_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_13_Q,
      O => seg_clkdiv_14_CYINIT_6481
    );
  seg_clkdiv_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_F,
      O => seg_clkdiv_14_CYSELF_6461
    );
  seg_clkdiv_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_XORG_6463,
      O => seg_clkdiv_14_DYMUX_6465
    );
  seg_clkdiv_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_14_Q,
      I1 => seg_clkdiv_14_G,
      O => seg_clkdiv_14_XORG_6463
    );
  seg_clkdiv_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_CYMUXFAST_6460,
      O => seg_Mcount_clkdiv_cy_15_Q
    );
  seg_clkdiv_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_13_Q,
      O => seg_clkdiv_14_FASTCARRY_6458
    );
  seg_clkdiv_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      I0 => seg_clkdiv_14_CYSELG_6446,
      I1 => seg_clkdiv_14_CYSELF_6461,
      O => seg_clkdiv_14_CYAND_6459
    );
  seg_clkdiv_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      IA => seg_clkdiv_14_CYMUXG2_6457,
      IB => seg_clkdiv_14_FASTCARRY_6458,
      SEL => seg_clkdiv_14_CYAND_6459,
      O => seg_clkdiv_14_CYMUXFAST_6460
    );
  seg_clkdiv_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y89"
    )
    port map (
      IA => seg_clkdiv_14_LOGIC_ZERO_6455,
      IB => seg_clkdiv_14_CYMUXF2_6456,
      SEL => seg_clkdiv_14_CYSELG_6446,
      O => seg_clkdiv_14_CYMUXG2_6457
    );
  seg_clkdiv_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_14_G,
      O => seg_clkdiv_14_CYSELG_6446
    );
  seg_clkdiv_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_14_SRINV_6444
    );
  seg_clkdiv_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y89",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_14_CLKINV_6443
    );
  seg_clkdiv_16_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_SRINV_6500,
      O => seg_clkdiv_16_FFY_RST
    );
  seg_clkdiv_17 : X_FF
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_16_DYMUX_6521,
      CE => VCC,
      CLK => seg_clkdiv_16_CLKINV_6499,
      SET => GND,
      RST => seg_clkdiv_16_FFY_RST,
      O => seg_clkdiv(17)
    );
  seg_clkdiv_16_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_SRINV_6500,
      O => seg_clkdiv_16_FFX_RST
    );
  seg_clkdiv_16 : X_FF
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_16_DXMUX_6540,
      CE => VCC,
      CLK => seg_clkdiv_16_CLKINV_6499,
      SET => GND,
      RST => seg_clkdiv_16_FFX_RST,
      O => seg_clkdiv(16)
    );
  seg_clkdiv_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      O => seg_clkdiv_16_LOGIC_ZERO_6511
    );
  seg_clkdiv_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_XORF_6538,
      O => seg_clkdiv_16_DXMUX_6540
    );
  seg_clkdiv_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      I0 => seg_clkdiv_16_CYINIT_6537,
      I1 => seg_clkdiv_16_F,
      O => seg_clkdiv_16_XORF_6538
    );
  seg_clkdiv_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      IA => seg_clkdiv_16_LOGIC_ZERO_6511,
      IB => seg_clkdiv_16_CYINIT_6537,
      SEL => seg_clkdiv_16_CYSELF_6517,
      O => seg_Mcount_clkdiv_cy_16_Q
    );
  seg_clkdiv_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      IA => seg_clkdiv_16_LOGIC_ZERO_6511,
      IB => seg_clkdiv_16_LOGIC_ZERO_6511,
      SEL => seg_clkdiv_16_CYSELF_6517,
      O => seg_clkdiv_16_CYMUXF2_6512
    );
  seg_clkdiv_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_15_Q,
      O => seg_clkdiv_16_CYINIT_6537
    );
  seg_clkdiv_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_F,
      O => seg_clkdiv_16_CYSELF_6517
    );
  seg_clkdiv_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_XORG_6519,
      O => seg_clkdiv_16_DYMUX_6521
    );
  seg_clkdiv_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_16_Q,
      I1 => seg_clkdiv_16_G,
      O => seg_clkdiv_16_XORG_6519
    );
  seg_clkdiv_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_Mcount_clkdiv_cy_15_Q,
      O => seg_clkdiv_16_FASTCARRY_6514
    );
  seg_clkdiv_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      I0 => seg_clkdiv_16_CYSELG_6502,
      I1 => seg_clkdiv_16_CYSELF_6517,
      O => seg_clkdiv_16_CYAND_6515
    );
  seg_clkdiv_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      IA => seg_clkdiv_16_CYMUXG2_6513,
      IB => seg_clkdiv_16_FASTCARRY_6514,
      SEL => seg_clkdiv_16_CYAND_6515,
      O => seg_clkdiv_16_CYMUXFAST_6516
    );
  seg_clkdiv_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y90"
    )
    port map (
      IA => seg_clkdiv_16_LOGIC_ZERO_6511,
      IB => seg_clkdiv_16_CYMUXF2_6512,
      SEL => seg_clkdiv_16_CYSELG_6502,
      O => seg_clkdiv_16_CYMUXG2_6513
    );
  seg_clkdiv_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_G,
      O => seg_clkdiv_16_CYSELG_6502
    );
  seg_clkdiv_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_16_SRINV_6500
    );
  seg_clkdiv_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y90",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_16_CLKINV_6499
    );
  seg_clkdiv_18_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_18_SRINV_6555,
      O => seg_clkdiv_18_FFX_RST
    );
  seg_clkdiv_18 : X_FF
    generic map(
      LOC => "SLICE_X55Y91",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_18_DXMUX_6589,
      CE => VCC,
      CLK => seg_clkdiv_18_CLKINV_6554,
      SET => GND,
      RST => seg_clkdiv_18_FFX_RST,
      O => seg_clkdiv(18)
    );
  seg_clkdiv_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y91"
    )
    port map (
      O => seg_clkdiv_18_LOGIC_ZERO_6586
    );
  seg_clkdiv_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_18_XORF_6587,
      O => seg_clkdiv_18_DXMUX_6589
    );
  seg_clkdiv_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y91"
    )
    port map (
      I0 => seg_clkdiv_18_CYINIT_6585,
      I1 => seg_clkdiv_18_F,
      O => seg_clkdiv_18_XORF_6587
    );
  seg_clkdiv_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y91"
    )
    port map (
      IA => seg_clkdiv_18_LOGIC_ZERO_6586,
      IB => seg_clkdiv_18_CYINIT_6585,
      SEL => seg_clkdiv_18_CYSELF_6576,
      O => seg_Mcount_clkdiv_cy_18_Q
    );
  seg_clkdiv_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_16_CYMUXFAST_6516,
      O => seg_clkdiv_18_CYINIT_6585
    );
  seg_clkdiv_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_18_F,
      O => seg_clkdiv_18_CYSELF_6576
    );
  seg_clkdiv_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv_18_XORG_6566,
      O => seg_clkdiv_18_DYMUX_6568
    );
  seg_clkdiv_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y91"
    )
    port map (
      I0 => seg_Mcount_clkdiv_cy_18_Q,
      I1 => seg_clkdiv_19_rt_6563,
      O => seg_clkdiv_18_XORG_6566
    );
  seg_clkdiv_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => seg_clkdiv_18_SRINV_6555
    );
  seg_clkdiv_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => seg_clkdiv_18_CLKINV_6554
    );
  seg_clkdiv_19 : X_FF
    generic map(
      LOC => "SLICE_X55Y91",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_18_DYMUX_6568,
      CE => VCC,
      CLK => seg_clkdiv_18_CLKINV_6554,
      SET => GND,
      RST => seg_clkdiv_18_SRINV_6555,
      O => seg_clkdiv(19)
    );
  seg_clkdiv_19_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y91"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seg_clkdiv(19),
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_19_rt_6563
    );
  dp_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => dp_O,
      O => dp
    );
  a_to_g_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => a_to_g_0_O,
      O => a_to_g(0)
    );
  a_to_g_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => a_to_g_1_O,
      O => a_to_g(1)
    );
  a_to_g_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => a_to_g_2_O,
      O => a_to_g(2)
    );
  a_to_g_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => a_to_g_3_O,
      O => a_to_g(3)
    );
  a_to_g_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => a_to_g_4_O,
      O => a_to_g(4)
    );
  a_to_g_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => a_to_g_5_O,
      O => a_to_g(5)
    );
  a_to_g_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => a_to_g_6_O,
      O => a_to_g(6)
    );
  mclk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD29",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk,
      O => mclk_INBUF
    );
  an_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => an_0_O,
      O => an(0)
    );
  an_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => an_1_O,
      O => an(1)
    );
  an_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => an_2_O,
      O => an(2)
    );
  an_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => an_3_O,
      O => an(3)
    );
  sw_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(0),
      O => sw_0_INBUF
    );
  sw_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_0_INBUF,
      O => sw_0_IBUF_1991
    );
  sw_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(1),
      O => sw_1_INBUF
    );
  sw_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_1_INBUF,
      O => sw_1_IBUF_2061
    );
  sw_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(2),
      O => sw_2_INBUF
    );
  sw_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_2_INBUF,
      O => sw_2_IBUF_2062
    );
  sw_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(3),
      O => sw_3_INBUF
    );
  sw_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_3_INBUF,
      O => sw_3_IBUF_1987
    );
  sw_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(4),
      O => sw_4_INBUF
    );
  sw_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_4_INBUF,
      O => sw_4_IBUF_2174
    );
  sw_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(5),
      O => sw_5_INBUF
    );
  sw_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_5_INBUF,
      O => sw_5_IBUF_2175
    );
  sw_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(6),
      O => sw_6_INBUF
    );
  sw_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_6_INBUF,
      O => sw_6_IBUF_2176
    );
  sw_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(7),
      O => sw_7_INBUF
    );
  sw_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_7_INBUF,
      O => sw_7_IBUF_2177
    );
  btn_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(0),
      O => btn_0_INBUF
    );
  btn_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(1),
      O => btn_1_INBUF
    );
  btn_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_1_INBUF,
      O => btn_1_IBUF_2178
    );
  btn_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(2),
      O => btn_2_INBUF
    );
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_2179
    );
  btn_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(3),
      O => btn_3_INBUF
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_1868
    );
  clkp_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => clkp_BUFG_I0_INV,
      I1 => GND,
      S => clkp_BUFG_S_INVNOT,
      O => clkp
    );
  clkp_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clkp_BUFG_S_INVNOT
    );
  clkp_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp1,
      O => clkp_BUFG_I0_INV
    );
  mclk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => mclk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => mclk_BUFGP_BUFG_S_INVNOT,
      O => mclk_BUFGP
    );
  mclk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => mclk_BUFGP_BUFG_S_INVNOT
    );
  mclk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_INBUF,
      O => mclk_BUFGP_BUFG_I0_INV
    );
  nmux_y_4_1_G : X_LUT4
    generic map(
      INIT => X"B8FC",
      LOC => "SLICE_X64Y28"
    )
    port map (
      ADR0 => f_Mmux_y_39_0,
      ADR1 => N01,
      ADR2 => sw_4_IBUF_2174,
      ADR3 => M_3_Q,
      O => N216
    );
  Treg_q_4_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_4_FFX_RST
    );
  Treg_q_4 : X_FF
    generic map(
      LOC => "SLICE_X64Y28",
      INIT => '0'
    )
    port map (
      I => Treg_q_4_DXMUX_6811,
      CE => Treg_q_4_CEINV_6793,
      CLK => Treg_q_4_CLKINV_6794,
      SET => GND,
      RST => Treg_q_4_FFX_RST,
      O => Treg_q(4)
    );
  Treg_q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_4_F5MUX_6809,
      O => Treg_q_4_DXMUX_6811
    );
  Treg_q_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y28"
    )
    port map (
      IA => N215,
      IB => N216,
      SEL => Treg_q_4_BXINV_6802,
      O => Treg_q_4_F5MUX_6809
    );
  Treg_q_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_49_4229,
      O => Treg_q_4_BXINV_6802
    );
  Treg_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_4_CLKINV_6794
    );
  Treg_q_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_4_CEINV_6793
    );
  nmux_y_4_1_F : X_LUT4
    generic map(
      INIT => X"B830",
      LOC => "SLICE_X64Y28"
    )
    port map (
      ADR0 => M_3_Q,
      ADR1 => N01,
      ADR2 => sw_4_IBUF_2174,
      ADR3 => f_Mmux_y_39_0,
      O => N215
    );
  nmux_y_5_1_G : X_LUT4
    generic map(
      INIT => X"F7A2",
      LOC => "SLICE_X64Y30"
    )
    port map (
      ADR0 => N01,
      ADR1 => M_3_Q,
      ADR2 => f_Mmux_y_310_0,
      ADR3 => sw_5_IBUF_2175,
      O => N214
    );
  Treg_q_5_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_5_FFX_RST
    );
  Treg_q_5 : X_FF
    generic map(
      LOC => "SLICE_X64Y30",
      INIT => '0'
    )
    port map (
      I => Treg_q_5_DXMUX_6850,
      CE => Treg_q_5_CEINV_6832,
      CLK => Treg_q_5_CLKINV_6833,
      SET => GND,
      RST => Treg_q_5_FFX_RST,
      O => Treg_q(5)
    );
  Treg_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_5_F5MUX_6848,
      O => Treg_q_5_DXMUX_6850
    );
  Treg_q_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y30"
    )
    port map (
      IA => N213,
      IB => N214,
      SEL => Treg_q_5_BXINV_6841,
      O => Treg_q_5_F5MUX_6848
    );
  Treg_q_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_410_4197,
      O => Treg_q_5_BXINV_6841
    );
  Treg_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_5_CLKINV_6833
    );
  Treg_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_5_CEINV_6832
    );
  nmux_y_5_1_F : X_LUT4
    generic map(
      INIT => X"D580",
      LOC => "SLICE_X64Y30"
    )
    port map (
      ADR0 => N01,
      ADR1 => M_3_Q,
      ADR2 => f_Mmux_y_310_0,
      ADR3 => sw_5_IBUF_2175,
      O => N213
    );
  nmux_y_6_1_G : X_LUT4
    generic map(
      INIT => X"EEE2",
      LOC => "SLICE_X66Y29"
    )
    port map (
      ADR0 => sw_6_IBUF_2176,
      ADR1 => N01,
      ADR2 => M_3_Q,
      ADR3 => f_Mmux_y_411_0,
      O => N290
    );
  Treg_q_6_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_6_FFX_RST
    );
  Treg_q_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y29",
      INIT => '0'
    )
    port map (
      I => Treg_q_6_DXMUX_6889,
      CE => Treg_q_6_CEINV_6871,
      CLK => Treg_q_6_CLKINV_6872,
      SET => GND,
      RST => Treg_q_6_FFX_RST,
      O => Treg_q(6)
    );
  Treg_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_6_F5MUX_6887,
      O => Treg_q_6_DXMUX_6889
    );
  Treg_q_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y29"
    )
    port map (
      IA => N289,
      IB => N290,
      SEL => Treg_q_6_BXINV_6880,
      O => Treg_q_6_F5MUX_6887
    );
  Treg_q_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_311_3353,
      O => Treg_q_6_BXINV_6880
    );
  Treg_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_6_CLKINV_6872
    );
  Treg_q_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_6_CEINV_6871
    );
  nmux_y_6_1_F : X_LUT4
    generic map(
      INIT => X"2E22",
      LOC => "SLICE_X66Y29"
    )
    port map (
      ADR0 => sw_6_IBUF_2176,
      ADR1 => N01,
      ADR2 => M_3_Q,
      ADR3 => f_Mmux_y_411_0,
      O => N289
    );
  nmux_y_7_1_G : X_LUT4
    generic map(
      INIT => X"FACA",
      LOC => "SLICE_X64Y26"
    )
    port map (
      ADR0 => sw_7_IBUF_2177,
      ADR1 => f_Mmux_y_412_0,
      ADR2 => N01,
      ADR3 => M_3_Q,
      O => N292
    );
  Treg_q_7_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_7_FFX_RST
    );
  Treg_q_7 : X_FF
    generic map(
      LOC => "SLICE_X64Y26",
      INIT => '0'
    )
    port map (
      I => Treg_q_7_DXMUX_6928,
      CE => Treg_q_7_CEINV_6910,
      CLK => Treg_q_7_CLKINV_6911,
      SET => GND,
      RST => Treg_q_7_FFX_RST,
      O => Treg_q(7)
    );
  Treg_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_7_F5MUX_6926,
      O => Treg_q_7_DXMUX_6928
    );
  Treg_q_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y26"
    )
    port map (
      IA => N291,
      IB => N292,
      SEL => Treg_q_7_BXINV_6919,
      O => Treg_q_7_F5MUX_6926
    );
  Treg_q_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_Mmux_y_312_3377,
      O => Treg_q_7_BXINV_6919
    );
  Treg_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_7_CLKINV_6911
    );
  Treg_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_7_CEINV_6910
    );
  nmux_y_7_1_F : X_LUT4
    generic map(
      INIT => X"0ACA",
      LOC => "SLICE_X64Y26"
    )
    port map (
      ADR0 => sw_7_IBUF_2177,
      ADR1 => f_Mmux_y_412_0,
      ADR2 => N01,
      ADR3 => M_3_Q,
      O => N291
    );
  nmux_y_8_1_G : X_LUT4
    generic map(
      INIT => X"8A80",
      LOC => "SLICE_X64Y37"
    )
    port map (
      ADR0 => N01,
      ADR1 => f_fcode_1_14,
      ADR2 => M_1_Q,
      ADR3 => f_Mmux_y_814_0,
      O => N176
    );
  Treg_q_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_8_FFX_RST
    );
  Treg_q_8 : X_FF
    generic map(
      LOC => "SLICE_X64Y37",
      INIT => '0'
    )
    port map (
      I => Treg_q_8_DXMUX_6967,
      CE => Treg_q_8_CEINV_6949,
      CLK => Treg_q_8_CLKINV_6950,
      SET => GND,
      RST => Treg_q_8_FFX_RST,
      O => Treg_q(8)
    );
  Treg_q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_8_F5MUX_6965,
      O => Treg_q_8_DXMUX_6967
    );
  Treg_q_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y37"
    )
    port map (
      IA => N175,
      IB => N176,
      SEL => Treg_q_8_BXINV_6958,
      O => Treg_q_8_F5MUX_6965
    );
  Treg_q_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_8_BXINV_6958
    );
  Treg_q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_8_CLKINV_6950
    );
  Treg_q_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_8_CEINV_6949
    );
  nmux_y_8_1_F : X_LUT4
    generic map(
      INIT => X"88A0",
      LOC => "SLICE_X64Y37"
    )
    port map (
      ADR0 => N01,
      ADR1 => f_Mmux_y_8_f513,
      ADR2 => f_y_addsub0000(8),
      ADR3 => M_1_Q,
      O => N175
    );
  nmux_y_9_1_G : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X50Y41"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => N01,
      ADR2 => f_fcode_1_15,
      ADR3 => f_Mmux_y_815_0,
      O => N174
    );
  Treg_q_9_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X50Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_9_FFX_RST
    );
  Treg_q_9 : X_FF
    generic map(
      LOC => "SLICE_X50Y41",
      INIT => '0'
    )
    port map (
      I => Treg_q_9_DXMUX_7006,
      CE => Treg_q_9_CEINV_6988,
      CLK => Treg_q_9_CLKINV_6989,
      SET => GND,
      RST => Treg_q_9_FFX_RST,
      O => Treg_q(9)
    );
  Treg_q_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_9_F5MUX_7004,
      O => Treg_q_9_DXMUX_7006
    );
  Treg_q_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X50Y41"
    )
    port map (
      IA => N173,
      IB => N174,
      SEL => Treg_q_9_BXINV_6997,
      O => Treg_q_9_F5MUX_7004
    );
  Treg_q_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_9_BXINV_6997
    );
  Treg_q_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_9_CLKINV_6989
    );
  Treg_q_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_9_CEINV_6988
    );
  nmux_y_9_1_F : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X50Y41"
    )
    port map (
      ADR0 => f_Mmux_y_8_f514,
      ADR1 => N01,
      ADR2 => f_y_addsub0000(9),
      ADR3 => M_1_Q,
      O => N173
    );
  seg_digit_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_digit_1_F5MUX_7037,
      O => seg_digit(1)
    );
  seg_digit_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      IA => seg_Mmux_digit_41_7027,
      IB => seg_Mmux_digit_31_7035,
      SEL => seg_digit_1_BXINV_7029,
      O => seg_digit_1_F5MUX_7037
    );
  seg_digit_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv(19),
      O => seg_digit_1_BXINV_7029
    );
  seg_Mmux_digit_41 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => Treg_q(1),
      ADR1 => seg_clkdiv(18),
      ADR2 => VCC,
      ADR3 => Treg_q(5),
      O => seg_Mmux_digit_41_7027
    );
  seg_digit_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_digit_2_F5MUX_7062,
      O => seg_digit(2)
    );
  seg_digit_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y71"
    )
    port map (
      IA => seg_Mmux_digit_42_7052,
      IB => seg_Mmux_digit_32_7060,
      SEL => seg_digit_2_BXINV_7054,
      O => seg_digit_2_F5MUX_7062
    );
  seg_digit_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv(19),
      O => seg_digit_2_BXINV_7054
    );
  seg_digit_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_digit_3_F5MUX_7087,
      O => seg_digit(3)
    );
  seg_digit_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y72"
    )
    port map (
      IA => seg_Mmux_digit_43_7077,
      IB => seg_Mmux_digit_33_7085,
      SEL => seg_digit_3_BXINV_7079,
      O => seg_digit_3_F5MUX_7087
    );
  seg_digit_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y72",
      PATHPULSE => 555 ps
    )
    port map (
      I => seg_clkdiv(19),
      O => seg_digit_3_BXINV_7079
    );
  N166_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N166_F5MUX_7112,
      O => N166
    );
  N166_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y47"
    )
    port map (
      IA => N293,
      IB => N294,
      SEL => N166_BXINV_7105,
      O => N166_F5MUX_7112
    );
  N166_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N117_0,
      O => N166_BXINV_7105
    );
  N167_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N167_F5MUX_7137,
      O => N167
    );
  N167_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y46"
    )
    port map (
      IA => N295,
      IB => N296,
      SEL => N167_BXINV_7128,
      O => N167_F5MUX_7137
    );
  N167_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N117_0,
      O => N167_BXINV_7128
    );
  Treg_q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_10_F5MUX_7168,
      O => Treg_q_10_DXMUX_7170
    );
  Treg_q_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X52Y45"
    )
    port map (
      IA => N171,
      IB => N172,
      SEL => Treg_q_10_BXINV_7161,
      O => Treg_q_10_F5MUX_7168
    );
  Treg_q_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_10_BXINV_7161
    );
  Treg_q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_10_CLKINV_7153
    );
  Treg_q_10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_10_CEINV_7152
    );
  Treg_q_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_11_F5MUX_7207,
      O => Treg_q_11_DXMUX_7209
    );
  Treg_q_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X53Y46"
    )
    port map (
      IA => N169,
      IB => N170,
      SEL => Treg_q_11_BXINV_7200,
      O => Treg_q_11_F5MUX_7207
    );
  Treg_q_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_11_BXINV_7200
    );
  Treg_q_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_11_CLKINV_7192
    );
  Treg_q_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_11_CEINV_7191
    );
  Treg_q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_12_F5MUX_7246,
      O => Treg_q_12_DXMUX_7248
    );
  Treg_q_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y44"
    )
    port map (
      IA => N183,
      IB => N184,
      SEL => Treg_q_12_BXINV_7239,
      O => Treg_q_12_F5MUX_7246
    );
  Treg_q_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_12_BXINV_7239
    );
  Treg_q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_12_CLKINV_7231
    );
  Treg_q_12_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_12_CEINV_7230
    );
  Treg_q_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => Treg_q_13_F5MUX_7285,
      O => Treg_q_13_DXMUX_7287
    );
  Treg_q_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X51Y37"
    )
    port map (
      IA => N181,
      IB => N182,
      SEL => Treg_q_13_BXINV_7278,
      O => Treg_q_13_F5MUX_7285
    );
  Treg_q_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_3_Q,
      O => Treg_q_13_BXINV_7278
    );
  Treg_q_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkp,
      O => Treg_q_13_CLKINV_7270
    );
  Treg_q_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M_6_0,
      O => Treg_q_13_CEINV_7269
    );
  seg_clkdiv_13 : X_FF
    generic map(
      LOC => "SLICE_X55Y88",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_12_DYMUX_6409,
      CE => VCC,
      CLK => seg_clkdiv_12_CLKINV_6387,
      SET => GND,
      RST => seg_clkdiv_12_SRINV_6388,
      O => seg_clkdiv(13)
    );
  nmux_y_14_1_G : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => f_fcode_1_5_0,
      ADR1 => f_Mmux_y_6_f55,
      ADR2 => M_1_Q,
      ADR3 => N01,
      O => N180
    );
  nmux_y_14_1_F : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X47Y36"
    )
    port map (
      ADR0 => f_Mmux_y_8_f54,
      ADR1 => f_y_addsub0000(14),
      ADR2 => M_1_Q,
      ADR3 => N01,
      O => N179
    );
  Treg_q_14 : X_FF
    generic map(
      LOC => "SLICE_X47Y36",
      INIT => '0'
    )
    port map (
      I => Treg_q_14_DXMUX_2211,
      CE => Treg_q_14_CEINV_2193,
      CLK => Treg_q_14_CLKINV_2194,
      SET => GND,
      RST => Treg_q_14_FFX_RSTAND_2217,
      O => Treg_q(14)
    );
  Treg_q_14_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X47Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_14_FFX_RSTAND_2217
    );
  nmux_y_15_1_F : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X53Y51"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_Mmux_y_8_f55,
      ADR2 => N01,
      ADR3 => f_y_addsub0000(15),
      O => N177
    );
  nmux_y_15_1_G : X_LUT4
    generic map(
      INIT => X"E040",
      LOC => "SLICE_X53Y51"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_Mmux_y_6_f56,
      ADR2 => N01,
      ADR3 => f_fcode_1_6_0,
      O => N178
    );
  Treg_q_15 : X_FF
    generic map(
      LOC => "SLICE_X53Y51",
      INIT => '0'
    )
    port map (
      I => Treg_q_15_DXMUX_2250,
      CE => Treg_q_15_CEINV_2232,
      CLK => Treg_q_15_CLKINV_2233,
      SET => GND,
      RST => Treg_q_15_FFX_RSTAND_2256,
      O => Treg_q(15)
    );
  Treg_q_15_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X53Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_15_FFX_RSTAND_2256
    );
  f_Mmux_y_85 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X46Y41"
    )
    port map (
      ADR0 => Treg_q(15),
      ADR1 => M_0_Q,
      ADR2 => Treg_q(13),
      ADR3 => VCC,
      O => f_Mmux_y_85_2272
    );
  f_Mmux_y_75 : X_LUT4
    generic map(
      INIT => X"2E22",
      LOC => "SLICE_X46Y41"
    )
    port map (
      ADR0 => Treg_q(15),
      ADR1 => M_0_Q,
      ADR2 => N277_0,
      ADR3 => f_N01,
      O => f_Mmux_y_75_2279
    );
  f_Mmux_y_86 : X_LUT4
    generic map(
      INIT => X"F080",
      LOC => "SLICE_X52Y47"
    )
    port map (
      ADR0 => pcCounter_count(3),
      ADR1 => pcCounter_count(1),
      ADR2 => Treg_q(14),
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_86_2297
    );
  f_Mmux_y_76 : X_LUT4
    generic map(
      INIT => X"4E44",
      LOC => "SLICE_X52Y47"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(15),
      ADR2 => f_y_or0003_0,
      ADR3 => N149_0,
      O => f_Mmux_y_76_2304
    );
  f_Mmux_y_105 : X_LUT4
    generic map(
      INIT => X"3833",
      LOC => "SLICE_X42Y37"
    )
    port map (
      ADR0 => Nreg_q(14),
      ADR1 => Treg_q(14),
      ADR2 => pcCounter_count(2),
      ADR3 => N233_0,
      O => f_Mmux_y_105_2397
    );
  f_Mmux_y_94 : X_LUT4
    generic map(
      INIT => X"EEE6",
      LOC => "SLICE_X42Y37"
    )
    port map (
      ADR0 => Nreg_q(14),
      ADR1 => Treg_q(14),
      ADR2 => N160_0,
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_94_2404
    );
  f_Mmux_y_106 : X_LUT4
    generic map(
      INIT => X"20DD",
      LOC => "SLICE_X48Y44"
    )
    port map (
      ADR0 => N233_0,
      ADR1 => pcCounter_count(2),
      ADR2 => Nreg_q(15),
      ADR3 => Treg_q(15),
      O => f_Mmux_y_106_2422
    );
  f_Mmux_y_95 : X_LUT4
    generic map(
      INIT => X"EFF0",
      LOC => "SLICE_X48Y44"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => N160_0,
      ADR2 => Nreg_q(15),
      ADR3 => Treg_q(15),
      O => f_Mmux_y_95_2429
    );
  f_Mmux_y_107 : X_LUT4
    generic map(
      INIT => X"3931",
      LOC => "SLICE_X54Y37"
    )
    port map (
      ADR0 => N233_0,
      ADR1 => Treg_q(1),
      ADR2 => pcCounter_count(2),
      ADR3 => Nreg_q(1),
      O => f_Mmux_y_107_2447
    );
  f_Mmux_y_96 : X_LUT4
    generic map(
      INIT => X"FCBC",
      LOC => "SLICE_X54Y37"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => Treg_q(1),
      ADR2 => Nreg_q(1),
      ADR3 => N160_0,
      O => f_Mmux_y_96_2454
    );
  f_Mmux_y_108 : X_LUT4
    generic map(
      INIT => X"3383",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => Treg_q(2),
      ADR2 => N233_0,
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_108_2472
    );
  f_Mmux_y_97 : X_LUT4
    generic map(
      INIT => X"EEE6",
      LOC => "SLICE_X48Y33"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => Treg_q(2),
      ADR2 => pcCounter_count(2),
      ADR3 => N160_0,
      O => f_Mmux_y_97_2479
    );
  f_Mmux_y_109 : X_LUT4
    generic map(
      INIT => X"08F5",
      LOC => "SLICE_X54Y32"
    )
    port map (
      ADR0 => N233_0,
      ADR1 => Nreg_q(3),
      ADR2 => pcCounter_count(2),
      ADR3 => Treg_q(3),
      O => f_Mmux_y_109_2497
    );
  f_Mmux_y_98 : X_LUT4
    generic map(
      INIT => X"FDAA",
      LOC => "SLICE_X54Y32"
    )
    port map (
      ADR0 => Nreg_q(3),
      ADR1 => N160_0,
      ADR2 => pcCounter_count(2),
      ADR3 => Treg_q(3),
      O => f_Mmux_y_98_2504
    );
  f_Mmux_y_1010 : X_LUT4
    generic map(
      INIT => X"C303",
      LOC => "SLICE_X52Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(4),
      ADR2 => M_0_Q,
      ADR3 => Nreg_q(4),
      O => f_Mmux_y_1010_2522
    );
  f_Mmux_y_99 : X_LUT4
    generic map(
      INIT => X"FBCC",
      LOC => "SLICE_X52Y30"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => Treg_q(4),
      ADR2 => N160_0,
      ADR3 => Nreg_q(4),
      O => f_Mmux_y_99_2529
    );
  f_Mmux_y_1011 : X_LUT4
    generic map(
      INIT => X"A00F",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => Nreg_q(5),
      ADR1 => VCC,
      ADR2 => Treg_q(5),
      ADR3 => M_0_Q,
      O => f_Mmux_y_1011_2547
    );
  f_Mmux_y_910 : X_LUT4
    generic map(
      INIT => X"FADA",
      LOC => "SLICE_X46Y35"
    )
    port map (
      ADR0 => Nreg_q(5),
      ADR1 => N160_0,
      ADR2 => Treg_q(5),
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_910_2554
    );
  f_Sh40_F : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => Treg_q(8),
      ADR2 => VCC,
      ADR3 => Treg_q(7),
      O => N203
    );
  f_Sh40_G : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => Nreg_q_0_1_1918,
      ADR2 => VCC,
      ADR3 => Treg_q(6),
      O => N204
    );
  f_Sh41_F : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X55Y38"
    )
    port map (
      ADR0 => Treg_q(8),
      ADR1 => VCC,
      ADR2 => Treg_q(9),
      ADR3 => Nreg_q_0_1_1918,
      O => N201
    );
  f_Sh41_G : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X55Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(6),
      ADR2 => Treg_q(7),
      ADR3 => Nreg_q_0_1_1918,
      O => N202
    );
  f_Sh36_F : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X65Y45"
    )
    port map (
      ADR0 => Treg_q(4),
      ADR1 => Nreg_q_0_1_1918,
      ADR2 => VCC,
      ADR3 => Treg_q(3),
      O => N199
    );
  f_Sh36_G : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X65Y45"
    )
    port map (
      ADR0 => Treg_q(1),
      ADR1 => Nreg_q_0_1_1918,
      ADR2 => VCC,
      ADR3 => Treg_q(2),
      O => N200
    );
  f_Mmux_y_36_F : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X64Y35"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => VCC,
      ADR2 => Treg_q(2),
      ADR3 => Treg_q(0),
      O => N283
    );
  f_Mmux_y_36_G : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X64Y35"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => pcCounter_count(1),
      ADR2 => pcCounter_count(3),
      ADR3 => Treg_q(1),
      O => N284
    );
  f_Mmux_y_37_F : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X65Y33"
    )
    port map (
      ADR0 => Treg_q(3),
      ADR1 => Treg_q(1),
      ADR2 => VCC,
      ADR3 => M_0_Q,
      O => N285
    );
  f_Mmux_y_37_G : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X65Y33"
    )
    port map (
      ADR0 => pcCounter_count(1),
      ADR1 => pcCounter_count(2),
      ADR2 => pcCounter_count(3),
      ADR3 => Treg_q(2),
      O => N286
    );
  f_Mmux_y_38_F : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => Treg_q(2),
      ADR1 => Treg_q(4),
      ADR2 => VCC,
      ADR3 => M_0_Q,
      O => N287
    );
  f_Mmux_y_38_G : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => Treg_q(3),
      ADR1 => pcCounter_count(1),
      ADR2 => pcCounter_count(3),
      ADR3 => pcCounter_count(2),
      O => N288
    );
  seg_Mmux_digit_4 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X66Y68"
    )
    port map (
      ADR0 => seg_clkdiv(18),
      ADR1 => VCC,
      ADR2 => Treg_q(0),
      ADR3 => Treg_q(4),
      O => seg_Mmux_digit_4_2871
    );
  seg_Mmux_digit_3 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X66Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(8),
      ADR2 => seg_clkdiv(18),
      ADR3 => Treg_q(12),
      O => seg_Mmux_digit_3_2879
    );
  f_Mmux_y_1012 : X_LUT4
    generic map(
      INIT => X"3383",
      LOC => "SLICE_X51Y32"
    )
    port map (
      ADR0 => Nreg_q(6),
      ADR1 => Treg_q(6),
      ADR2 => N233_0,
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_1012_2897
    );
  f_Mmux_y_911 : X_LUT4
    generic map(
      INIT => X"EEE6",
      LOC => "SLICE_X51Y32"
    )
    port map (
      ADR0 => Nreg_q(6),
      ADR1 => Treg_q(6),
      ADR2 => N160_0,
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_911_2904
    );
  f_Mmux_y_1013 : X_LUT4
    generic map(
      INIT => X"40AF",
      LOC => "SLICE_X50Y31"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => Nreg_q(7),
      ADR2 => N233_0,
      ADR3 => Treg_q(7),
      O => f_Mmux_y_1013_2922
    );
  f_Mmux_y_912 : X_LUT4
    generic map(
      INIT => X"FBCC",
      LOC => "SLICE_X50Y31"
    )
    port map (
      ADR0 => N160_0,
      ADR1 => Nreg_q(7),
      ADR2 => pcCounter_count(2),
      ADR3 => Treg_q(7),
      O => f_Mmux_y_912_2929
    );
  f_Mmux_y_1014 : X_LUT4
    generic map(
      INIT => X"2D0D",
      LOC => "SLICE_X46Y39"
    )
    port map (
      ADR0 => N233_0,
      ADR1 => pcCounter_count(2),
      ADR2 => Treg_q(8),
      ADR3 => Nreg_q(8),
      O => f_Mmux_y_1014_2947
    );
  f_Mmux_y_913 : X_LUT4
    generic map(
      INIT => X"EFF0",
      LOC => "SLICE_X46Y39"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => N160_0,
      ADR2 => Treg_q(8),
      ADR3 => Nreg_q(8),
      O => f_Mmux_y_913_2954
    );
  f_Mmux_y_1015 : X_LUT4
    generic map(
      INIT => X"08F5",
      LOC => "SLICE_X50Y38"
    )
    port map (
      ADR0 => N233_0,
      ADR1 => Nreg_q(9),
      ADR2 => pcCounter_count(2),
      ADR3 => Treg_q(9),
      O => f_Mmux_y_1015_2972
    );
  f_Mmux_y_914 : X_LUT4
    generic map(
      INIT => X"EFF0",
      LOC => "SLICE_X50Y38"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => N160_0,
      ADR2 => Treg_q(9),
      ADR3 => Nreg_q(9),
      O => f_Mmux_y_914_2979
    );
  f_fcode_1_1212_F : X_LUT4
    generic map(
      INIT => X"0D08",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => N84,
      ADR2 => Nreg_q(3),
      ADR3 => N72_0,
      O => N217
    );
  f_fcode_1_1212_G : X_LUT4
    generic map(
      INIT => X"00E4",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => N78_0,
      ADR2 => N90_0,
      ADR3 => Nreg_q(3),
      O => N218
    );
  f_fcode_1_1376_F : X_LUT4
    generic map(
      INIT => X"FF54",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => f_y_or0003_0,
      ADR1 => f_fcode_1_136_0,
      ADR2 => f_fcode_1_1321_0,
      ADR3 => M_1_Q,
      O => N281
    );
  f_fcode_1_1376_G : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Treg_q(8),
      ADR3 => M_1_Q,
      O => N282
    );
  f_Mmux_y_47 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X64Y32"
    )
    port map (
      ADR0 => f_y_addsub0000(2),
      ADR1 => f_Mmux_y_8_f57,
      ADR2 => VCC,
      ADR3 => M_1_Q,
      O => f_Mmux_y_47_O_pack_1
    );
  nmux_y_2_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X64Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N154_0,
      ADR2 => N155_0,
      ADR3 => f_Mmux_y_47_O,
      O => tin(2)
    );
  Treg_q_2 : X_FF
    generic map(
      LOC => "SLICE_X64Y32",
      INIT => '0'
    )
    port map (
      I => Treg_q_2_DXMUX_3176,
      CE => Treg_q_2_CEINV_3157,
      CLK => Treg_q_2_CLKINV_3158,
      SET => GND,
      RST => Treg_q_2_FFX_RSTAND_3182,
      O => Treg_q(2)
    );
  Treg_q_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_2_FFX_RSTAND_3182
    );
  f_Mmux_y_48 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X64Y33"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => VCC,
      ADR2 => f_y_addsub0000(3),
      ADR3 => f_Mmux_y_8_f58,
      O => f_Mmux_y_48_O_pack_1
    );
  nmux_y_3_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X64Y33"
    )
    port map (
      ADR0 => N151_0,
      ADR1 => N152_0,
      ADR2 => f_Mmux_y_48_O,
      ADR3 => VCC,
      O => tin(3)
    );
  Treg_q_3 : X_FF
    generic map(
      LOC => "SLICE_X64Y33",
      INIT => '0'
    )
    port map (
      I => Treg_q_3_DXMUX_3214,
      CE => Treg_q_3_CEINV_3195,
      CLK => Treg_q_3_CLKINV_3196,
      SET => GND,
      RST => Treg_q_3_FFX_RSTAND_3220,
      O => Treg_q(3)
    );
  Treg_q_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X64Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_3_FFX_RSTAND_3220
    );
  nmux_y_0_110 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => pcCounter_count(1),
      ADR1 => VCC,
      ADR2 => pcCounter_count(3),
      ADR3 => pcCounter_count(2),
      O => N01_pack_1
    );
  f_Mmux_y_2_f5_7_SW1 : X_LUT4
    generic map(
      INIT => X"BFB0",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => f_Mmux_y_38,
      ADR1 => M_3_Q,
      ADR2 => N01,
      ADR3 => sw_3_IBUF_1987,
      O => N152
    );
  f_Mmux_y_10 : X_LUT4
    generic map(
      INIT => X"FADA",
      LOC => "SLICE_X52Y32"
    )
    port map (
      ADR0 => Treg_q(0),
      ADR1 => N160_0,
      ADR2 => Nreg_q(0),
      ADR3 => pcCounter_count(2),
      O => f_Mmux_y_10_O_pack_1
    );
  nmux_y_0_15 : X_LUT4
    generic map(
      INIT => X"3202",
      LOC => "SLICE_X52Y32"
    )
    port map (
      ADR0 => f_y_addsub0000(0),
      ADR1 => M_3_Q,
      ADR2 => M_1_Q,
      ADR3 => f_Mmux_y_10_O,
      O => nmux_y_0_15_3267
    );
  nmux_y_0_0 : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X55Y44"
    )
    port map (
      ADR0 => N167,
      ADR1 => M_3_Q,
      ADR2 => N166,
      ADR3 => N118_0,
      O => nmux_y_0_0_O_pack_1
    );
  nmux_y_0_38 : X_LUT4
    generic map(
      INIT => X"EEE2",
      LOC => "SLICE_X55Y44"
    )
    port map (
      ADR0 => sw_0_IBUF_1991,
      ADR1 => N01,
      ADR2 => nmux_y_0_0_O,
      ADR3 => nmux_y_0_15_0,
      O => tin(0)
    );
  Treg_q_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y44",
      INIT => '0'
    )
    port map (
      I => Treg_q_0_DXMUX_3300,
      CE => Treg_q_0_CEINV_3283,
      CLK => Treg_q_0_CLKINV_3284,
      SET => GND,
      RST => Treg_q_0_FFX_RSTAND_3306,
      O => Treg_q(0)
    );
  Treg_q_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X55Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_0_FFX_RSTAND_3306
    );
  f_fcode_1_1029_SW0 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X65Y30"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => f_Mmux_y_811_0,
      ADR2 => VCC,
      ADR3 => M_1_Q,
      O => f_fcode_1_1029_SW0_O_pack_1
    );
  f_Mmux_y_310 : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X65Y30"
    )
    port map (
      ADR0 => f_fcode_1_1012_0,
      ADR1 => f_fcode_1_1018_0,
      ADR2 => f_fcode_1_1029_SW0_O,
      ADR3 => N133_0,
      O => f_Mmux_y_310_3329
    );
  f_fcode_1_1129_SW0 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => Treg_q(6),
      ADR1 => M_1_Q,
      ADR2 => f_Mmux_y_812_0,
      ADR3 => VCC,
      O => f_fcode_1_1129_SW0_O_pack_1
    );
  f_Mmux_y_311 : X_LUT4
    generic map(
      INIT => X"F780",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => f_fcode_1_1112_0,
      ADR1 => f_fcode_1_1018_0,
      ADR2 => N124_0,
      ADR3 => f_fcode_1_1129_SW0_O,
      O => f_Mmux_y_311_3353
    );
  f_fcode_1_1229_SW0 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => M_1_Q,
      ADR2 => f_Mmux_y_813_0,
      ADR3 => VCC,
      O => f_fcode_1_1229_SW0_O_pack_1
    );
  f_Mmux_y_312 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => N115_0,
      ADR1 => f_fcode_1_1018_0,
      ADR2 => f_fcode_1_1229_SW0_O,
      ADR3 => f_fcode_1_1212,
      O => f_Mmux_y_312_3377
    );
  f_Sh141 : X_LUT4
    generic map(
      INIT => X"00E4",
      LOC => "SLICE_X48Y36"
    )
    port map (
      ADR0 => Nreg_q(0),
      ADR1 => Treg_q(14),
      ADR2 => Treg_q(15),
      ADR3 => Nreg_q(1),
      O => f_Sh141_O_pack_1
    );
  f_Mmux_y_75_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X48Y36"
    )
    port map (
      ADR0 => f_Sh141_O,
      ADR1 => f_y_or00034_2013,
      ADR2 => f_y_or000314_0,
      ADR3 => f_y_or00039_2011,
      O => N277
    );
  f_Sh42_SW0 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X53Y40"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => Treg_q(9),
      ADR2 => VCC,
      ADR3 => Treg_q(10),
      O => N68_pack_1
    );
  f_Sh42 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X53Y40"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => VCC,
      ADR2 => N69_0,
      ADR3 => N68,
      O => f_Sh42_3425
    );
  f_Sh34_SW0 : X_LUT4
    generic map(
      INIT => X"0A5F",
      LOC => "SLICE_X65Y40"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => VCC,
      ADR2 => Treg_q(0),
      ADR3 => Treg_q(2),
      O => N63_pack_2
    );
  f_Sh34 : X_LUT4
    generic map(
      INIT => X"4703",
      LOC => "SLICE_X65Y40"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Nreg_q(0),
      ADR2 => N63,
      ADR3 => Treg_q(1),
      O => f_Sh34_3449
    );
  f_fcode_1_929_SW0 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X65Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M_1_Q,
      ADR2 => f_Mmux_y_810_0,
      ADR3 => Treg_q(4),
      O => f_fcode_1_929_SW0_O_pack_1
    );
  f_Mmux_y_39 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X65Y31"
    )
    port map (
      ADR0 => f_fcode_1_1018_0,
      ADR1 => N130_0,
      ADR2 => f_fcode_1_912_0,
      ADR3 => f_fcode_1_929_SW0_O,
      O => f_Mmux_y_39_3473
    );
  f_y_or00034 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X50Y37"
    )
    port map (
      ADR0 => Nreg_q(10),
      ADR1 => Nreg_q(12),
      ADR2 => Nreg_q(11),
      ADR3 => Nreg_q(13),
      O => f_y_or00034_pack_1
    );
  f_y_or000323 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X50Y37"
    )
    port map (
      ADR0 => f_y_or00039_2011,
      ADR1 => VCC,
      ADR2 => f_y_or00034_2013,
      ADR3 => f_y_or000314_0,
      O => f_y_or0003
    );
  f_Sh1611 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X47Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Nreg_q(2),
      ADR3 => Nreg_q(3),
      O => f_N01_pack_1
    );
  f_y_shift0002_15_1_SW0 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X47Y47"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Treg_q(15),
      ADR2 => Nreg_q(0),
      ADR3 => f_N01,
      O => N149
    );
  f_fcode_1_1112_SW0 : X_LUT4
    generic map(
      INIT => X"FC5C",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => Treg_q(1),
      ADR1 => N63,
      ADR2 => Nreg_q(0),
      ADR3 => Nreg_q(1),
      O => f_fcode_1_1112_SW0_O_pack_1
    );
  f_fcode_1_1112 : X_LUT4
    generic map(
      INIT => X"0544",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => Nreg_q(3),
      ADR1 => f_Sh38,
      ADR2 => f_fcode_1_1112_SW0_O,
      ADR3 => Nreg_q(2),
      O => f_fcode_1_1112_3545
    );
  f_fcode_1_274 : X_LUT4
    generic map(
      INIT => X"CFCA",
      LOC => "SLICE_X54Y45"
    )
    port map (
      ADR0 => f_fcode_1_242_0,
      ADR1 => f_Sh36,
      ADR2 => Nreg_q(3),
      ADR3 => f_fcode_1_227_0,
      O => f_fcode_1_274_O_pack_1
    );
  f_fcode_1_2120 : X_LUT4
    generic map(
      INIT => X"2230",
      LOC => "SLICE_X54Y45"
    )
    port map (
      ADR0 => f_fcode_1_28_0,
      ADR1 => f_y_or0003_0,
      ADR2 => f_fcode_1_274_O,
      ADR3 => Nreg_q(2),
      O => f_fcode_1_2120_3569
    );
  f_Sh331 : X_LUT4
    generic map(
      INIT => X"5410",
      LOC => "SLICE_X55Y39"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(1),
      ADR3 => Treg_q(0),
      O => f_Sh33_pack_1
    );
  f_fcode_1_1421 : X_LUT4
    generic map(
      INIT => X"0E04",
      LOC => "SLICE_X55Y39"
    )
    port map (
      ADR0 => Nreg_q(3),
      ADR1 => f_Sh41,
      ADR2 => Nreg_q(2),
      ADR3 => f_Sh33,
      O => f_fcode_1_1421_3593
    );
  f_fcode_1_38 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X54Y38"
    )
    port map (
      ADR0 => f_Sh33,
      ADR1 => VCC,
      ADR2 => f_Sh41,
      ADR3 => Nreg_q(3),
      O => f_fcode_1_38_O_pack_1
    );
  f_fcode_1_3120 : X_LUT4
    generic map(
      INIT => X"0E04",
      LOC => "SLICE_X54Y38"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => f_fcode_1_374_0,
      ADR2 => f_y_or0003_0,
      ADR3 => f_fcode_1_38_O,
      O => f_fcode_1_3120_3617
    );
  f_fcode_1_4120 : X_LUT4
    generic map(
      INIT => X"00B8",
      LOC => "SLICE_X47Y37"
    )
    port map (
      ADR0 => f_fcode_1_471,
      ADR1 => Nreg_q(2),
      ADR2 => f_fcode_1_474_0,
      ADR3 => f_y_or0003_0,
      O => f_fcode_1_4120_O_pack_1
    );
  f_fcode_1_4164 : X_LUT4
    generic map(
      INIT => X"B3B0",
      LOC => "SLICE_X47Y37"
    )
    port map (
      ADR0 => Treg_q(14),
      ADR1 => M_0_Q,
      ADR2 => M_1_Q,
      ADR3 => f_fcode_1_4120_O,
      O => f_fcode_1_5
    );
  f_fcode_1_5120 : X_LUT4
    generic map(
      INIT => X"0C0A",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => f_fcode_1_574_0,
      ADR1 => f_fcode_1_581,
      ADR2 => f_y_or0003_0,
      ADR3 => Nreg_q(2),
      O => f_fcode_1_5120_O_pack_1
    );
  f_fcode_1_5164 : X_LUT4
    generic map(
      INIT => X"D5D0",
      LOC => "SLICE_X52Y50"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(15),
      ADR2 => M_1_Q,
      ADR3 => f_fcode_1_5120_O,
      O => f_fcode_1_6
    );
  f_Sh37_SW0 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Nreg_q(2),
      ADR2 => Nreg_q(3),
      ADR3 => VCC,
      O => N106_pack_1
    );
  f_fcode_1_136 : X_LUT4
    generic map(
      INIT => X"0A0C",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => N87_0,
      ADR1 => N81_0,
      ADR2 => N106,
      ADR3 => Nreg_q(1),
      O => f_fcode_1_136_3689
    );
  f_Sh37_SW1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => VCC,
      ADR2 => Treg_q(3),
      ADR3 => Treg_q(2),
      O => N84_pack_1
    );
  f_fcode_1_146 : X_LUT4
    generic map(
      INIT => X"2230",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => N84,
      ADR1 => N106,
      ADR2 => N78_0,
      ADR3 => Nreg_q(1),
      O => f_fcode_1_146_3713
    );
  f_fcode_1_327 : X_LUT4
    generic map(
      INIT => X"E200",
      LOC => "SLICE_X54Y39"
    )
    port map (
      ADR0 => Treg_q(12),
      ADR1 => Nreg_q(1),
      ADR2 => Treg_q(10),
      ADR3 => Nreg_q(0),
      O => f_fcode_1_327_O_pack_1
    );
  f_fcode_1_374 : X_LUT4
    generic map(
      INIT => X"FE54",
      LOC => "SLICE_X54Y39"
    )
    port map (
      ADR0 => Nreg_q(3),
      ADR1 => f_fcode_1_342_0,
      ADR2 => f_fcode_1_327_O,
      ADR3 => f_Sh37,
      O => f_fcode_1_374_3737
    );
  f_fcode_1_427 : X_LUT4
    generic map(
      INIT => X"C088",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => Treg_q(13),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(11),
      ADR3 => Nreg_q(1),
      O => f_fcode_1_427_O_pack_1
    );
  f_fcode_1_474 : X_LUT4
    generic map(
      INIT => X"FE54",
      LOC => "SLICE_X46Y37"
    )
    port map (
      ADR0 => Nreg_q(3),
      ADR1 => f_fcode_1_442_0,
      ADR2 => f_fcode_1_427_O,
      ADR3 => f_Sh38,
      O => f_fcode_1_474_3761
    );
  f_fcode_1_527 : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X52Y59"
    )
    port map (
      ADR0 => Treg_q(12),
      ADR1 => Nreg_q(0),
      ADR2 => Nreg_q(1),
      ADR3 => Treg_q(14),
      O => f_fcode_1_527_O_pack_1
    );
  f_fcode_1_574 : X_LUT4
    generic map(
      INIT => X"FE32",
      LOC => "SLICE_X52Y59"
    )
    port map (
      ADR0 => f_fcode_1_527_O,
      ADR1 => Nreg_q(3),
      ADR2 => f_fcode_1_542_0,
      ADR3 => f_Sh39,
      O => f_fcode_1_574_3785
    );
  f_Sh321 : X_LUT4
    generic map(
      INIT => X"0202",
      LOC => "SLICE_X65Y34"
    )
    port map (
      ADR0 => Treg_q(0),
      ADR1 => Nreg_q(0),
      ADR2 => Nreg_q(1),
      ADR3 => VCC,
      O => f_Sh32_pack_1
    );
  f_fcode_1_28 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X65Y34"
    )
    port map (
      ADR0 => f_Sh32,
      ADR1 => VCC,
      ADR2 => Nreg_q(3),
      ADR3 => f_Sh40,
      O => f_fcode_1_28_3809
    );
  f_Sh40_SW1 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X54Y43"
    )
    port map (
      ADR0 => Treg_q(6),
      ADR1 => VCC,
      ADR2 => Nreg_q(0),
      ADR3 => Treg_q(5),
      O => f_Sh40_SW1_O_pack_1
    );
  f_fcode_1_61 : X_LUT4
    generic map(
      INIT => X"00D8",
      LOC => "SLICE_X54Y43"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => N81_0,
      ADR2 => f_Sh40_SW1_O,
      ADR3 => N106,
      O => f_fcode_1_61_3833
    );
  f_y_or00039 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X50Y36"
    )
    port map (
      ADR0 => Nreg_q(9),
      ADR1 => Nreg_q(6),
      ADR2 => Nreg_q(8),
      ADR3 => Nreg_q(7),
      O => f_y_or00039_pack_1
    );
  f_fcode_1_918 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X50Y36"
    )
    port map (
      ADR0 => f_y_or00039_2011,
      ADR1 => f_y_or00034_2013,
      ADR2 => M_0_Q,
      ADR3 => f_y_or000314_0,
      O => f_fcode_1_1018
    );
  f_fcode_1_211 : X_LUT4
    generic map(
      INIT => X"4540",
      LOC => "SLICE_X53Y42"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => f_Sh34_0,
      ADR2 => Nreg_q(3),
      ADR3 => f_Sh42_0,
      O => f_fcode_1_211_O_pack_1
    );
  f_fcode_1_76 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X53Y42"
    )
    port map (
      ADR0 => f_fcode_1_211_O,
      ADR1 => N141_0,
      ADR2 => N142_0,
      ADR3 => f_fcode_1_61_0,
      O => f_fcode_1_1
    );
  pcCounter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X52Y35"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => VCC,
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(0),
      O => Result_2_1
    );
  pcCounter_count_2_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y35",
      INIT => '0'
    )
    port map (
      I => pcCounter_count_2_1_DYMUX_3906,
      CE => VCC,
      CLK => pcCounter_count_2_1_CLKINV_3896,
      SET => GND,
      RST => pcCounter_count_2_1_FFY_RSTAND_3911,
      O => pcCounter_count_2_1_2055
    );
  pcCounter_count_2_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => pcCounter_count_2_1_FFY_RSTAND_3911
    );
  rom_Mrom_M51 : X_LUT4
    generic map(
      INIT => X"3100",
      LOC => "SLICE_X52Y35"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => pcCounter_count(3),
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(0),
      O => M_5_Q
    );
  f_y_shift0003_0_1_SW1 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X54Y46"
    )
    port map (
      ADR0 => pcCounter_count(3),
      ADR1 => pcCounter_count(1),
      ADR2 => Treg_q(0),
      ADR3 => pcCounter_count(2),
      O => N145
    );
  rom_Mrom_M61 : X_LUT4
    generic map(
      INIT => X"5577",
      LOC => "SLICE_X54Y46"
    )
    port map (
      ADR0 => pcCounter_count(3),
      ADR1 => pcCounter_count(1),
      ADR2 => VCC,
      ADR3 => pcCounter_count(2),
      O => M_6_Q
    );
  f_fcode_1_48_SW0 : X_LUT4
    generic map(
      INIT => X"A0F0",
      LOC => "SLICE_X52Y43"
    )
    port map (
      ADR0 => Treg_q(10),
      ADR1 => VCC,
      ADR2 => M_1_Q,
      ADR3 => M_0_Q,
      O => N141
    );
  f_fcode_1_48_SW1 : X_LUT4
    generic map(
      INIT => X"88CF",
      LOC => "SLICE_X52Y43"
    )
    port map (
      ADR0 => Treg_q(10),
      ADR1 => M_1_Q,
      ADR2 => f_y_or0003_0,
      ADR3 => M_0_Q,
      O => N142
    );
  f_fcode_1_929_SW1 : X_LUT4
    generic map(
      INIT => X"FDF8",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(5),
      ADR2 => M_1_Q,
      ADR3 => Treg_q(3),
      O => N130
    );
  f_fcode_1_1129_SW1 : X_LUT4
    generic map(
      INIT => X"FDF8",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(7),
      ADR2 => M_1_Q,
      ADR3 => Treg_q(5),
      O => N124
    );
  seg_an_1_mux000115 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => Treg_q(6),
      ADR2 => Treg_q(9),
      ADR3 => Treg_q(8),
      O => seg_an_1_mux000115_4005
    );
  f_Sh43_SW1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X65Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(9),
      ADR2 => Nreg_q_0_1_1918,
      ADR3 => Treg_q(8),
      O => N66
    );
  seg_an_1_mux000152 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X67Y41"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => Treg_q(14),
      ADR2 => Treg_q(4),
      ADR3 => Treg_q(15),
      O => seg_an_1_mux000152_4029
    );
  f_Sh39_SW1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X67Y41"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => Treg_q(4),
      ADR2 => Nreg_q(0),
      ADR3 => VCC,
      O => N78
    );
  seg_an_3_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X67Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(14),
      ADR2 => Treg_q(12),
      ADR3 => Treg_q(13),
      O => N6_pack_1
    );
  seg_an_3_mux0001 : X_LUT4
    generic map(
      INIT => X"777F",
      LOC => "SLICE_X67Y76"
    )
    port map (
      ADR0 => seg_clkdiv(19),
      ADR1 => seg_clkdiv(18),
      ADR2 => N6,
      ADR3 => Treg_q(15),
      O => an_3_OBUF_4061
    );
  f_Mmux_y_2_f5_5_SW0 : X_LUT4
    generic map(
      INIT => X"A0CC",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => f_Mmux_y_36,
      ADR1 => sw_1_IBUF_2061,
      ADR2 => M_3_Q,
      ADR3 => N01,
      O => N157
    );
  f_Mmux_y_2_f5_5_SW1 : X_LUT4
    generic map(
      INIT => X"E4EE",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => N01,
      ADR1 => sw_1_IBUF_2061,
      ADR2 => f_Mmux_y_36,
      ADR3 => M_3_Q,
      O => N158
    );
  f_Mmux_y_2_f5_6_SW0 : X_LUT4
    generic map(
      INIT => X"88F0",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => M_3_Q,
      ADR1 => f_Mmux_y_37,
      ADR2 => sw_2_IBUF_2062,
      ADR3 => N01,
      O => N154
    );
  f_Mmux_y_2_f5_7_SW0 : X_LUT4
    generic map(
      INIT => X"E222",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => sw_3_IBUF_1987,
      ADR1 => N01,
      ADR2 => M_3_Q,
      ADR3 => f_Mmux_y_38,
      O => N151
    );
  seg_an_2_mux000115 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X55Y66"
    )
    port map (
      ADR0 => Treg_q(13),
      ADR1 => Treg_q(11),
      ADR2 => Treg_q(12),
      ADR3 => Treg_q(10),
      O => seg_an_1_mux000128_pack_1
    );
  seg_an_2_mux000141 : X_LUT4
    generic map(
      INIT => X"FFB3",
      LOC => "SLICE_X55Y66"
    )
    port map (
      ADR0 => seg_an_2_mux000128_0,
      ADR1 => seg_clkdiv(19),
      ADR2 => seg_an_1_mux000128,
      ADR3 => seg_clkdiv(18),
      O => an_2_OBUF_4133
    );
  seg_an_2_mux000128 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X64Y59"
    )
    port map (
      ADR0 => Treg_q(8),
      ADR1 => Treg_q(9),
      ADR2 => Treg_q(14),
      ADR3 => Treg_q(15),
      O => seg_an_2_mux000128_4149
    );
  f_Sh8_SW0 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X64Y59"
    )
    port map (
      ADR0 => Treg_q(8),
      ADR1 => Treg_q(9),
      ADR2 => Nreg_q_0_1_1918,
      ADR3 => VCC,
      O => N22
    );
  M_1_1 : X_LUT4
    generic map(
      INIT => X"0045",
      LOC => "SLICE_X50Y33"
    )
    port map (
      ADR0 => pcCounter_count_2_1_2055,
      ADR1 => pcCounter_count(0),
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(3),
      O => M_1_pack_1
    );
  f_Mmux_y_411 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X50Y33"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => VCC,
      ADR2 => f_Mmux_y_8_f511,
      ADR3 => f_y_addsub0000(6),
      O => f_Mmux_y_411_4181
    );
  f_Mmux_y_410 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X52Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => f_Mmux_y_8_f510,
      ADR2 => f_y_addsub0000(5),
      ADR3 => M_1_Q,
      O => f_Mmux_y_410_4197
    );
  f_y_shift0002_0_116_SW0 : X_LUT4
    generic map(
      INIT => X"F33F",
      LOC => "SLICE_X52Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(1),
      ADR2 => M_0_Q,
      ADR3 => M_1_Q,
      O => N117
    );
  f_Mmux_y_412 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X65Y28"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_y_addsub0000(7),
      ADR2 => f_Mmux_y_8_f512,
      ADR3 => VCC,
      O => f_Mmux_y_412_4221
    );
  f_Mmux_y_49 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X65Y28"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_y_addsub0000(4),
      ADR2 => VCC,
      ADR3 => f_Mmux_y_8_f59,
      O => f_Mmux_y_49_4229
    );
  f_Mmux_y_811 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X64Y29"
    )
    port map (
      ADR0 => Treg_q(4),
      ADR1 => M_0_Q,
      ADR2 => VCC,
      ADR3 => Treg_q(6),
      O => f_Mmux_y_811_4246
    );
  f_fcode_1_1029_SW1 : X_LUT4
    generic map(
      INIT => X"FEF2",
      LOC => "SLICE_X64Y29"
    )
    port map (
      ADR0 => Treg_q(4),
      ADR1 => M_0_Q,
      ADR2 => M_1_Q,
      ADR3 => Treg_q(6),
      O => N133
    );
  f_Mmux_y_812 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => Treg_q(5),
      ADR2 => VCC,
      ADR3 => M_0_Q,
      O => f_Mmux_y_812_4269
    );
  f_Mmux_y_814 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => VCC,
      ADR2 => Treg_q(9),
      ADR3 => M_0_Q,
      O => f_Mmux_y_814_4277
    );
  f_Mmux_y_813 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => VCC,
      ADR2 => Treg_q(8),
      ADR3 => Treg_q(6),
      O => f_Mmux_y_813_4294
    );
  f_fcode_1_1229_SW1 : X_LUT4
    generic map(
      INIT => X"FDF8",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(8),
      ADR2 => M_1_Q,
      ADR3 => Treg_q(6),
      O => N115
    );
  f_Mmux_y_815 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X50Y40"
    )
    port map (
      ADR0 => Treg_q(10),
      ADR1 => Treg_q(8),
      ADR2 => M_0_Q,
      ADR3 => VCC,
      O => f_Mmux_y_815_4317
    );
  f_Mmux_y_82 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X50Y40"
    )
    port map (
      ADR0 => Treg_q(10),
      ADR1 => VCC,
      ADR2 => M_0_Q,
      ADR3 => Treg_q(12),
      O => f_Mmux_y_82_4325
    );
  f_Sh4_SW0 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X65Y42"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => Treg_q(4),
      ADR2 => Treg_q(5),
      ADR3 => VCC,
      O => N51
    );
  f_Sh35_SW1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X65Y42"
    )
    port map (
      ADR0 => Nreg_q_0_1_1918,
      ADR1 => VCC,
      ADR2 => Treg_q(0),
      ADR3 => Treg_q(1),
      O => N90
    );
  f_Sh6_SW0 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => Treg_q(6),
      ADR2 => Nreg_q_0_1_1918,
      ADR3 => VCC,
      O => N45
    );
  f_Sh42_SW1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X65Y43"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => Treg_q(8),
      ADR2 => Nreg_q_0_1_1918,
      ADR3 => VCC,
      O => N69
    );
  f_Sh8_SW1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X65Y63"
    )
    port map (
      ADR0 => Treg_q(10),
      ADR1 => Treg_q(11),
      ADR2 => VCC,
      ADR3 => Nreg_q_0_1_1918,
      O => N23
    );
  f_Sh43_SW0 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X65Y63"
    )
    port map (
      ADR0 => Treg_q(10),
      ADR1 => Treg_q(11),
      ADR2 => VCC,
      ADR3 => Nreg_q_0_1_1918,
      O => N65
    );
  Nreg_q_0_1 : X_FF
    generic map(
      LOC => "SLICE_X66Y41",
      INIT => '0'
    )
    port map (
      I => Nreg_q_0_1_DYMUX_4409,
      CE => Nreg_q_0_1_CEINV_4405,
      CLK => Nreg_q_0_1_CLKINV_4406,
      SET => GND,
      RST => Nreg_q_0_1_FFY_RSTAND_4415,
      O => Nreg_q_0_1_1918
    );
  Nreg_q_0_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Nreg_q_0_1_FFY_RSTAND_4415
    );
  Nreg_q_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y35",
      INIT => '0'
    )
    port map (
      I => Nreg_q_1_DYMUX_4428,
      CE => Nreg_q_1_CEINV_4424,
      CLK => Nreg_q_1_CLKINV_4425,
      SET => GND,
      RST => Nreg_q_1_SRINV_4426,
      O => Nreg_q(0)
    );
  Nreg_q_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y35",
      INIT => '0'
    )
    port map (
      I => Nreg_q_1_DXMUX_4437,
      CE => Nreg_q_1_CEINV_4424,
      CLK => Nreg_q_1_CLKINV_4425,
      SET => GND,
      RST => Nreg_q_1_SRINV_4426,
      O => Nreg_q(1)
    );
  Nreg_q_2 : X_FF
    generic map(
      LOC => "SLICE_X54Y40",
      INIT => '0'
    )
    port map (
      I => Nreg_q_3_DYMUX_4456,
      CE => Nreg_q_3_CEINV_4452,
      CLK => Nreg_q_3_CLKINV_4453,
      SET => GND,
      RST => Nreg_q_3_SRINV_4454,
      O => Nreg_q(2)
    );
  Nreg_q_3 : X_FF
    generic map(
      LOC => "SLICE_X54Y40",
      INIT => '0'
    )
    port map (
      I => Nreg_q_3_DXMUX_4465,
      CE => Nreg_q_3_CEINV_4452,
      CLK => Nreg_q_3_CLKINV_4453,
      SET => GND,
      RST => Nreg_q_3_SRINV_4454,
      O => Nreg_q(3)
    );
  Nreg_q_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y37",
      INIT => '0'
    )
    port map (
      I => Nreg_q_5_DYMUX_4484,
      CE => Nreg_q_5_CEINV_4480,
      CLK => Nreg_q_5_CLKINV_4481,
      SET => GND,
      RST => Nreg_q_5_SRINV_4482,
      O => Nreg_q(4)
    );
  Nreg_q_5 : X_FF
    generic map(
      LOC => "SLICE_X52Y37",
      INIT => '0'
    )
    port map (
      I => Nreg_q_5_DXMUX_4493,
      CE => Nreg_q_5_CEINV_4480,
      CLK => Nreg_q_5_CLKINV_4481,
      SET => GND,
      RST => Nreg_q_5_SRINV_4482,
      O => Nreg_q(5)
    );
  Nreg_q_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => '0'
    )
    port map (
      I => Nreg_q_7_DYMUX_4512,
      CE => Nreg_q_7_CEINV_4508,
      CLK => Nreg_q_7_CLKINV_4509,
      SET => GND,
      RST => Nreg_q_7_SRINV_4510,
      O => Nreg_q(6)
    );
  Nreg_q_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => '0'
    )
    port map (
      I => Nreg_q_7_DXMUX_4521,
      CE => Nreg_q_7_CEINV_4508,
      CLK => Nreg_q_7_CLKINV_4509,
      SET => GND,
      RST => Nreg_q_7_SRINV_4510,
      O => Nreg_q(7)
    );
  Nreg_q_8 : X_FF
    generic map(
      LOC => "SLICE_X49Y38",
      INIT => '0'
    )
    port map (
      I => Nreg_q_9_DYMUX_4540,
      CE => Nreg_q_9_CEINV_4536,
      CLK => Nreg_q_9_CLKINV_4537,
      SET => GND,
      RST => Nreg_q_9_SRINV_4538,
      O => Nreg_q(8)
    );
  Nreg_q_9 : X_FF
    generic map(
      LOC => "SLICE_X49Y38",
      INIT => '0'
    )
    port map (
      I => Nreg_q_9_DXMUX_4549,
      CE => Nreg_q_9_CEINV_4536,
      CLK => Nreg_q_9_CLKINV_4537,
      SET => GND,
      RST => Nreg_q_9_SRINV_4538,
      O => Nreg_q(9)
    );
  f_y_or00011 : X_LUT4
    generic map(
      INIT => X"E8D8",
      LOC => "SLICE_X52Y33"
    )
    port map (
      ADR0 => pcCounter_count_2_1_2055,
      ADR1 => pcCounter_count(3),
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(0),
      O => f_y_or0001
    );
  f_y_or00022 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X52Y33"
    )
    port map (
      ADR0 => pcCounter_count_2_1_2055,
      ADR1 => pcCounter_count(3),
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(0),
      O => f_y_or0002
    );
  f_Mmux_y_99_SW0 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => pcCounter_count(1),
      ADR1 => VCC,
      ADR2 => pcCounter_count(3),
      ADR3 => VCC,
      O => N160
    );
  f_Mmux_y_107_SW0 : X_LUT4
    generic map(
      INIT => X"5F5F",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => pcCounter_count(1),
      ADR1 => VCC,
      ADR2 => pcCounter_count(3),
      ADR3 => VCC,
      O => N233
    );
  seg_Mrom_a_to_g111 : X_LUT4
    generic map(
      INIT => X"200E",
      LOC => "SLICE_X67Y72"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(1),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(3),
      O => a_to_g_1_OBUF_4619
    );
  seg_Mrom_a_to_g61 : X_LUT4
    generic map(
      INIT => X"2812",
      LOC => "SLICE_X67Y72"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(1),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(3),
      O => a_to_g_6_OBUF_4626
    );
  seg_an_0_mux00011 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X66Y70"
    )
    port map (
      ADR0 => seg_clkdiv(19),
      ADR1 => VCC,
      ADR2 => seg_clkdiv(18),
      ADR3 => VCC,
      O => an_0_OBUF_4638
    );
  cp_outp1 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X49Y90"
    )
    port map (
      ADR0 => cp_delay1_2088,
      ADR1 => cp_delay2_2087,
      ADR2 => VCC,
      ADR3 => cp_delay3_2086,
      O => clkp1
    );
  f_Sh12_SW0 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X66Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Treg_q(13),
      ADR2 => Treg_q(12),
      ADR3 => Nreg_q_0_1_1918,
      O => N54
    );
  f_Sh12_SW1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X66Y40"
    )
    port map (
      ADR0 => Treg_q(15),
      ADR1 => VCC,
      ADR2 => Treg_q(14),
      ADR3 => Nreg_q_0_1_1918,
      O => N55
    );
  pcCounter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X53Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(0),
      O => Result_1_1
    );
  pcCounter_count_1 : X_FF
    generic map(
      LOC => "SLICE_X53Y47",
      INIT => '0'
    )
    port map (
      I => pcCounter_count_0_DYMUX_4700,
      CE => VCC,
      CLK => pcCounter_count_0_CLKINV_4689,
      SET => GND,
      RST => pcCounter_count_0_SRINV_4690,
      O => pcCounter_count(1)
    );
  f_fcode_1_176_G : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X53Y47"
    )
    port map (
      ADR0 => Treg_q(11),
      ADR1 => pcCounter_count(2),
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(3),
      O => N212
    );
  pcCounter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X53Y47",
      INIT => '0'
    )
    port map (
      I => pcCounter_count_0_DXMUX_4715,
      CE => VCC,
      CLK => pcCounter_count_0_CLKINV_4689,
      SET => GND,
      RST => pcCounter_count_0_SRINV_4690,
      O => pcCounter_count(0)
    );
  pcCounter_Mcount_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC",
      LOC => "SLICE_X52Y34"
    )
    port map (
      ADR0 => pcCounter_count(2),
      ADR1 => pcCounter_count(3),
      ADR2 => pcCounter_count(1),
      ADR3 => pcCounter_count(0),
      O => Result_3_1
    );
  pcCounter_count_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y34",
      INIT => '0'
    )
    port map (
      I => pcCounter_count_2_DYMUX_4740,
      CE => VCC,
      CLK => pcCounter_count_2_CLKINV_4731,
      SET => GND,
      RST => pcCounter_count_2_SRINV_4732,
      O => pcCounter_count(3)
    );
  pcCounter_count_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y34",
      INIT => '0'
    )
    port map (
      I => pcCounter_count_2_DXMUX_4748,
      CE => VCC,
      CLK => pcCounter_count_2_CLKINV_4731,
      SET => GND,
      RST => pcCounter_count_2_SRINV_4732,
      O => pcCounter_count(2)
    );
  f_Sh41_SW1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => Nreg_q(0),
      ADR1 => Treg_q(6),
      ADR2 => VCC,
      ADR3 => Treg_q(7),
      O => N72
    );
  f_Sh36_SW1 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => Treg_q(2),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(1),
      ADR3 => VCC,
      O => N87
    );
  seg_an_1_mux00012 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X67Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seg_clkdiv(19),
      ADR2 => seg_clkdiv(18),
      ADR3 => VCC,
      O => seg_an_1_mux00012_pack_1
    );
  seg_an_1_mux000172 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X67Y62"
    )
    port map (
      ADR0 => seg_an_1_mux000128,
      ADR1 => seg_an_1_mux000115_0,
      ADR2 => seg_an_1_mux00012_2091,
      ADR3 => seg_an_1_mux000152_0,
      O => an_1_OBUF_4800
    );
  f_Sh38_SW1 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X64Y42"
    )
    port map (
      ADR0 => Treg_q(4),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(3),
      ADR3 => VCC,
      O => N81
    );
  f_y_shift0002_0_21 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X64Y42"
    )
    port map (
      ADR0 => Treg_q(1),
      ADR1 => VCC,
      ADR2 => Treg_q(3),
      ADR3 => Nreg_q(1),
      O => f_y_shift0002_0_21_4824
    );
  f_y_shift0002_0_34 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X64Y44"
    )
    port map (
      ADR0 => Treg_q(2),
      ADR1 => Treg_q(0),
      ADR2 => Nreg_q(1),
      ADR3 => VCC,
      O => f_y_shift0002_0_34_4841
    );
  f_fcode_1_242 : X_LUT4
    generic map(
      INIT => X"3202",
      LOC => "SLICE_X64Y44"
    )
    port map (
      ADR0 => Treg_q(12),
      ADR1 => Nreg_q(0),
      ADR2 => Nreg_q(1),
      ADR3 => Treg_q(10),
      O => f_fcode_1_242_4848
    );
  f_Mmux_y_81 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X52Y46"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(9),
      ADR2 => VCC,
      ADR3 => Treg_q(11),
      O => f_Mmux_y_81_4864
    );
  f_Mmux_y_83 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X52Y46"
    )
    port map (
      ADR0 => M_0_Q,
      ADR1 => Treg_q(13),
      ADR2 => VCC,
      ADR3 => Treg_q(11),
      O => f_Mmux_y_83_4872
    );
  f_Mmux_y_84 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X51Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M_0_Q,
      ADR2 => Treg_q(14),
      ADR3 => Treg_q(12),
      O => f_Mmux_y_84_4889
    );
  f_fcode_1_442 : X_LUT4
    generic map(
      INIT => X"3210",
      LOC => "SLICE_X51Y38"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(14),
      ADR3 => Treg_q(12),
      O => f_fcode_1_442_4896
    );
  Nreg_q_10 : X_FF
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => '0'
    )
    port map (
      I => Nreg_q_11_DYMUX_4910,
      CE => Nreg_q_11_CEINV_4906,
      CLK => Nreg_q_11_CLKINV_4907,
      SET => GND,
      RST => Nreg_q_11_SRINV_4908,
      O => Nreg_q(10)
    );
  Nreg_q_11 : X_FF
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => '0'
    )
    port map (
      I => Nreg_q_11_DXMUX_4919,
      CE => Nreg_q_11_CEINV_4906,
      CLK => Nreg_q_11_CLKINV_4907,
      SET => GND,
      RST => Nreg_q_11_SRINV_4908,
      O => Nreg_q(11)
    );
  Nreg_q_12 : X_FF
    generic map(
      LOC => "SLICE_X48Y37",
      INIT => '0'
    )
    port map (
      I => Nreg_q_13_DYMUX_4938,
      CE => Nreg_q_13_CEINV_4934,
      CLK => Nreg_q_13_CLKINV_4935,
      SET => GND,
      RST => Nreg_q_13_SRINV_4936,
      O => Nreg_q(12)
    );
  Nreg_q_13 : X_FF
    generic map(
      LOC => "SLICE_X48Y37",
      INIT => '0'
    )
    port map (
      I => Nreg_q_13_DXMUX_4947,
      CE => Nreg_q_13_CEINV_4934,
      CLK => Nreg_q_13_CLKINV_4935,
      SET => GND,
      RST => Nreg_q_13_SRINV_4936,
      O => Nreg_q(13)
    );
  Nreg_q_14 : X_FF
    generic map(
      LOC => "SLICE_X47Y38",
      INIT => '0'
    )
    port map (
      I => Nreg_q_15_DYMUX_4966,
      CE => Nreg_q_15_CEINV_4962,
      CLK => Nreg_q_15_CLKINV_4963,
      SET => GND,
      RST => Nreg_q_15_SRINV_4964,
      O => Nreg_q(14)
    );
  Nreg_q_15 : X_FF
    generic map(
      LOC => "SLICE_X47Y38",
      INIT => '0'
    )
    port map (
      I => Nreg_q_15_DXMUX_4975,
      CE => Nreg_q_15_CEINV_4962,
      CLK => Nreg_q_15_CLKINV_4963,
      SET => GND,
      RST => Nreg_q_15_SRINV_4964,
      O => Nreg_q(15)
    );
  seg_Mrom_a_to_g11 : X_LUT4
    generic map(
      INIT => X"2043",
      LOC => "SLICE_X66Y84"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(3),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(1),
      O => a_to_g_0_OBUF_4997
    );
  seg_Mrom_a_to_g31 : X_LUT4
    generic map(
      INIT => X"A412",
      LOC => "SLICE_X66Y84"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(3),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(1),
      O => a_to_g_3_OBUF_5004
    );
  seg_Mrom_a_to_g21 : X_LUT4
    generic map(
      INIT => X"02BA",
      LOC => "SLICE_X67Y75"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(1),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(3),
      O => a_to_g_2_OBUF_5021
    );
  seg_Mrom_a_to_g51 : X_LUT4
    generic map(
      INIT => X"D860",
      LOC => "SLICE_X67Y75"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(1),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(3),
      O => a_to_g_5_OBUF_5028
    );
  seg_Mrom_a_to_g41 : X_LUT4
    generic map(
      INIT => X"C140",
      LOC => "SLICE_X66Y85"
    )
    port map (
      ADR0 => seg_digit(0),
      ADR1 => seg_digit(3),
      ADR2 => seg_digit(2),
      ADR3 => seg_digit(1),
      O => a_to_g_4_OBUF_5040
    );
  f_y_or000314 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X46Y36"
    )
    port map (
      ADR0 => Nreg_q(14),
      ADR1 => Nreg_q(15),
      ADR2 => Nreg_q(4),
      ADR3 => Nreg_q(5),
      O => f_y_or000314_5052
    );
  f_y_shift0002_0_116_SW1 : X_LUT4
    generic map(
      INIT => X"91F7",
      LOC => "SLICE_X55Y45"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => M_0_Q,
      ADR2 => f_y_or0003_0,
      ADR3 => Treg_q(1),
      O => N118
    );
  f_fcode_1_2165 : X_LUT4
    generic map(
      INIT => X"BA32",
      LOC => "SLICE_X55Y45"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => M_0_Q,
      ADR2 => f_fcode_1_2120_0,
      ADR3 => Treg_q(12),
      O => f_fcode_1_3
    );
  rom_Mrom_M11 : X_LUT4
    generic map(
      INIT => X"0707",
      LOC => "SLICE_X52Y31"
    )
    port map (
      ADR0 => pcCounter_count(1),
      ADR1 => pcCounter_count(3),
      ADR2 => pcCounter_count_2_1_2055,
      ADR3 => VCC,
      O => M_0_pack_1
    );
  f_Mmux_y_810 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X52Y31"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => Treg_q(3),
      ADR2 => M_0_Q,
      ADR3 => VCC,
      O => f_Mmux_y_810_5100
    );
  rom_Mrom_M31 : X_LUT4
    generic map(
      INIT => X"063F",
      LOC => "SLICE_X55Y32"
    )
    port map (
      ADR0 => pcCounter_count(0),
      ADR1 => pcCounter_count(2),
      ADR2 => pcCounter_count(3),
      ADR3 => pcCounter_count(1),
      O => M_3_pack_1
    );
  f_Mmux_y_2_f5_6_SW1 : X_LUT4
    generic map(
      INIT => X"CFAA",
      LOC => "SLICE_X55Y32"
    )
    port map (
      ADR0 => sw_2_IBUF_2062,
      ADR1 => f_Mmux_y_37,
      ADR2 => M_3_Q,
      ADR3 => N01,
      O => N155
    );
  cp_delay1 : X_FF
    generic map(
      LOC => "SLICE_X48Y90",
      INIT => '0'
    )
    port map (
      I => cp_delay2_DYMUX_5136,
      CE => VCC,
      CLK => cp_delay2_CLKINV_5133,
      SET => GND,
      RST => cp_delay2_SRINV_5134,
      O => cp_delay1_2088
    );
  cp_delay2 : X_FF
    generic map(
      LOC => "SLICE_X48Y90",
      INIT => '0'
    )
    port map (
      I => cp_delay2_DXMUX_5144,
      CE => VCC,
      CLK => cp_delay2_CLKINV_5133,
      SET => GND,
      RST => cp_delay2_SRINV_5134,
      O => cp_delay2_2087
    );
  cp_delay3 : X_FF
    generic map(
      LOC => "SLICE_X49Y91",
      INIT => '0'
    )
    port map (
      I => cp_delay3_DYMUX_5158,
      CE => VCC,
      CLK => cp_delay3_CLKINV_5155,
      SET => GND,
      RST => cp_delay3_FFY_RSTAND_5163,
      O => cp_delay3_2086
    );
  cp_delay3_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X49Y91",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => cp_delay3_FFY_RSTAND_5163
    );
  f_fcode_1_1012 : X_LUT4
    generic map(
      INIT => X"0D08",
      LOC => "SLICE_X65Y32"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => f_Sh33,
      ADR2 => Nreg_q(3),
      ADR3 => f_Sh37,
      O => f_fcode_1_1012_5179
    );
  f_fcode_1_912 : X_LUT4
    generic map(
      INIT => X"3202",
      LOC => "SLICE_X65Y32"
    )
    port map (
      ADR0 => f_Sh36,
      ADR1 => Nreg_q(3),
      ADR2 => Nreg_q(2),
      ADR3 => f_Sh32,
      O => f_fcode_1_912_5186
    );
  f_fcode_1_1321 : X_LUT4
    generic map(
      INIT => X"5140",
      LOC => "SLICE_X65Y35"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => Nreg_q(3),
      ADR2 => f_Sh32,
      ADR3 => f_Sh40,
      O => f_fcode_1_1321_5198
    );
  f_fcode_1_3165 : X_LUT4
    generic map(
      INIT => X"A0FC",
      LOC => "SLICE_X53Y38"
    )
    port map (
      ADR0 => Treg_q(13),
      ADR1 => f_fcode_1_3120_0,
      ADR2 => M_1_Q,
      ADR3 => M_0_Q,
      O => f_fcode_1_4
    );
  f_fcode_1_342 : X_LUT4
    generic map(
      INIT => X"3202",
      LOC => "SLICE_X53Y38"
    )
    port map (
      ADR0 => Treg_q(13),
      ADR1 => Nreg_q(0),
      ADR2 => Nreg_q(1),
      ADR3 => Treg_q(11),
      O => f_fcode_1_342_5222
    );
  f_fcode_1_227 : X_LUT4
    generic map(
      INIT => X"C480",
      LOC => "SLICE_X53Y44"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(9),
      ADR3 => Treg_q(11),
      O => f_fcode_1_227_5239
    );
  f_fcode_1_542 : X_LUT4
    generic map(
      INIT => X"3210",
      LOC => "SLICE_X53Y44"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Nreg_q(0),
      ADR2 => Treg_q(15),
      ADR3 => Treg_q(13),
      O => f_fcode_1_542_5246
    );
  f_Maddsub_y_addsub0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X53Y30"
    )
    port map (
      ADR0 => Nreg_q(1),
      ADR1 => Treg_q(1),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(1)
    );
  f_Maddsub_y_addsub0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9C63",
      LOC => "SLICE_X53Y30"
    )
    port map (
      ADR0 => Nreg_q(0),
      ADR1 => Treg_q(0),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(0)
    );
  f_Maddsub_y_addsub0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X53Y31"
    )
    port map (
      ADR0 => Treg_q(3),
      ADR1 => Nreg_q(3),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(3)
    );
  f_Maddsub_y_addsub0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X53Y31"
    )
    port map (
      ADR0 => Nreg_q(2),
      ADR1 => Treg_q(2),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(2)
    );
  f_Maddsub_y_addsub0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"965A",
      LOC => "SLICE_X53Y32"
    )
    port map (
      ADR0 => Treg_q(5),
      ADR1 => Nreg_q(5),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(5)
    );
  f_Maddsub_y_addsub0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X53Y32"
    )
    port map (
      ADR0 => Nreg_q(4),
      ADR1 => Treg_q(4),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(4)
    );
  f_Maddsub_y_addsub0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"965A",
      LOC => "SLICE_X53Y33"
    )
    port map (
      ADR0 => Treg_q(7),
      ADR1 => Nreg_q(7),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(7)
    );
  f_Maddsub_y_addsub0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X53Y33"
    )
    port map (
      ADR0 => Nreg_q(6),
      ADR1 => Treg_q(6),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(6)
    );
  f_Maddsub_y_addsub0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X53Y34"
    )
    port map (
      ADR0 => Nreg_q(9),
      ADR1 => Treg_q(9),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(9)
    );
  f_Maddsub_y_addsub0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"965A",
      LOC => "SLICE_X53Y34"
    )
    port map (
      ADR0 => Treg_q(8),
      ADR1 => Nreg_q(8),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(8)
    );
  f_Maddsub_y_addsub0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"965A",
      LOC => "SLICE_X53Y35"
    )
    port map (
      ADR0 => Treg_q(11),
      ADR1 => Nreg_q(11),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(11)
    );
  f_Maddsub_y_addsub0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"963C",
      LOC => "SLICE_X53Y35"
    )
    port map (
      ADR0 => Nreg_q(10),
      ADR1 => Treg_q(10),
      ADR2 => f_y_or0002_0,
      ADR3 => f_y_or0001_0,
      O => f_Maddsub_y_addsub0000_lut(10)
    );
  f_Maddsub_y_addsub0000_lut_13_Q : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X53Y36"
    )
    port map (
      ADR0 => Nreg_q(13),
      ADR1 => Treg_q(13),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(13)
    );
  f_Maddsub_y_addsub0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X53Y36"
    )
    port map (
      ADR0 => Treg_q(12),
      ADR1 => Nreg_q(12),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(12)
    );
  f_Maddsub_y_addsub0000_lut_15_Q : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X53Y37"
    )
    port map (
      ADR0 => Treg_q(15),
      ADR1 => f_y_or0001_0,
      ADR2 => Nreg_q(15),
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(15)
    );
  f_Maddsub_y_addsub0000_lut_14_Q : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X53Y37"
    )
    port map (
      ADR0 => Treg_q(14),
      ADR1 => Nreg_q(14),
      ADR2 => f_y_or0001_0,
      ADR3 => f_y_or0002_0,
      O => f_Maddsub_y_addsub0000_lut(14)
    );
  cd_q_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y80",
      INIT => '0'
    )
    port map (
      I => cd_q_0_DYMUX_5575,
      CE => VCC,
      CLK => cd_q_0_CLKINV_5558,
      SET => GND,
      RST => cd_q_0_SRINV_5559,
      O => cd_q(1)
    );
  cd_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X49Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(0),
      ADR3 => VCC,
      O => cd_Mcount_q_lut(0)
    );
  cd_q_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y80",
      INIT => '0'
    )
    port map (
      I => cd_q_0_DXMUX_5597,
      CE => VCC,
      CLK => cd_q_0_CLKINV_5558,
      SET => GND,
      RST => cd_q_0_SRINV_5559,
      O => cd_q(0)
    );
  cd_q_3 : X_FF
    generic map(
      LOC => "SLICE_X49Y81",
      INIT => '0'
    )
    port map (
      I => cd_q_2_DYMUX_5634,
      CE => VCC,
      CLK => cd_q_2_CLKINV_5612,
      SET => GND,
      RST => cd_q_2_SRINV_5613,
      O => cd_q(3)
    );
  cd_q_2 : X_FF
    generic map(
      LOC => "SLICE_X49Y81",
      INIT => '0'
    )
    port map (
      I => cd_q_2_DXMUX_5653,
      CE => VCC,
      CLK => cd_q_2_CLKINV_5612,
      SET => GND,
      RST => cd_q_2_SRINV_5613,
      O => cd_q(2)
    );
  cd_q_5 : X_FF
    generic map(
      LOC => "SLICE_X49Y82",
      INIT => '0'
    )
    port map (
      I => cd_q_4_DYMUX_5690,
      CE => VCC,
      CLK => cd_q_4_CLKINV_5668,
      SET => GND,
      RST => cd_q_4_SRINV_5669,
      O => cd_q(5)
    );
  cd_q_4 : X_FF
    generic map(
      LOC => "SLICE_X49Y82",
      INIT => '0'
    )
    port map (
      I => cd_q_4_DXMUX_5709,
      CE => VCC,
      CLK => cd_q_4_CLKINV_5668,
      SET => GND,
      RST => cd_q_4_SRINV_5669,
      O => cd_q(4)
    );
  cd_q_7 : X_FF
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => '0'
    )
    port map (
      I => cd_q_6_DYMUX_5746,
      CE => VCC,
      CLK => cd_q_6_CLKINV_5724,
      SET => GND,
      RST => cd_q_6_SRINV_5725,
      O => cd_q(7)
    );
  cd_q_6 : X_FF
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => '0'
    )
    port map (
      I => cd_q_6_DXMUX_5765,
      CE => VCC,
      CLK => cd_q_6_CLKINV_5724,
      SET => GND,
      RST => cd_q_6_SRINV_5725,
      O => cd_q(6)
    );
  cd_q_9 : X_FF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      I => cd_q_8_DYMUX_5802,
      CE => VCC,
      CLK => cd_q_8_CLKINV_5780,
      SET => GND,
      RST => cd_q_8_SRINV_5781,
      O => cd_q(9)
    );
  cd_q_8 : X_FF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      I => cd_q_8_DXMUX_5821,
      CE => VCC,
      CLK => cd_q_8_CLKINV_5780,
      SET => GND,
      RST => cd_q_8_SRINV_5781,
      O => cd_q(8)
    );
  cd_q_11 : X_FF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      I => cd_q_10_DYMUX_5858,
      CE => VCC,
      CLK => cd_q_10_CLKINV_5836,
      SET => GND,
      RST => cd_q_10_SRINV_5837,
      O => cd_q(11)
    );
  cd_q_10 : X_FF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      I => cd_q_10_DXMUX_5877,
      CE => VCC,
      CLK => cd_q_10_CLKINV_5836,
      SET => GND,
      RST => cd_q_10_SRINV_5837,
      O => cd_q(10)
    );
  cd_q_13 : X_FF
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => '0'
    )
    port map (
      I => cd_q_12_DYMUX_5914,
      CE => VCC,
      CLK => cd_q_12_CLKINV_5892,
      SET => GND,
      RST => cd_q_12_SRINV_5893,
      O => cd_q(13)
    );
  cd_q_12 : X_FF
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => '0'
    )
    port map (
      I => cd_q_12_DXMUX_5933,
      CE => VCC,
      CLK => cd_q_12_CLKINV_5892,
      SET => GND,
      RST => cd_q_12_SRINV_5893,
      O => cd_q(12)
    );
  cd_q_15 : X_FF
    generic map(
      LOC => "SLICE_X49Y87",
      INIT => '0'
    )
    port map (
      I => cd_q_14_DYMUX_5970,
      CE => VCC,
      CLK => cd_q_14_CLKINV_5948,
      SET => GND,
      RST => cd_q_14_SRINV_5949,
      O => cd_q(15)
    );
  cd_q_14 : X_FF
    generic map(
      LOC => "SLICE_X49Y87",
      INIT => '0'
    )
    port map (
      I => cd_q_14_DXMUX_5989,
      CE => VCC,
      CLK => cd_q_14_CLKINV_5948,
      SET => GND,
      RST => cd_q_14_SRINV_5949,
      O => cd_q(14)
    );
  cd_q_17_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(17),
      O => cd_q_17_rt_6012
    );
  cd_q_17 : X_FF
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => '0'
    )
    port map (
      I => cd_q_16_DYMUX_6017,
      CE => VCC,
      CLK => cd_q_16_CLKINV_6003,
      SET => GND,
      RST => cd_q_16_SRINV_6004,
      O => cd_q(17)
    );
  cd_q_16 : X_FF
    generic map(
      LOC => "SLICE_X49Y88",
      INIT => '0'
    )
    port map (
      I => cd_q_16_DXMUX_6038,
      CE => VCC,
      CLK => cd_q_16_CLKINV_6003,
      SET => GND,
      RST => cd_q_16_SRINV_6004,
      O => cd_q(16)
    );
  seg_clkdiv_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_0_DYMUX_6070,
      CE => VCC,
      CLK => seg_clkdiv_0_CLKINV_6053,
      SET => GND,
      RST => seg_clkdiv_0_SRINV_6054,
      O => seg_clkdiv(1)
    );
  seg_Mcount_clkdiv_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X55Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seg_clkdiv(0),
      O => seg_Mcount_clkdiv_lut(0)
    );
  seg_clkdiv_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_0_DXMUX_6092,
      CE => VCC,
      CLK => seg_clkdiv_0_CLKINV_6053,
      SET => GND,
      RST => seg_clkdiv_0_SRINV_6054,
      O => seg_clkdiv(0)
    );
  seg_clkdiv_3 : X_FF
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => '0'
    )
    port map (
      I => seg_clkdiv_2_DYMUX_6129,
      CE => VCC,
      CLK => seg_clkdiv_2_CLKINV_6107,
      SET => GND,
      RST => seg_clkdiv_2_SRINV_6108,
      O => seg_clkdiv(3)
    );
  seg_Mmux_digit_31 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => Treg_q(9),
      ADR1 => seg_clkdiv(18),
      ADR2 => VCC,
      ADR3 => Treg_q(13),
      O => seg_Mmux_digit_31_7035
    );
  seg_Mmux_digit_42 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X54Y71"
    )
    port map (
      ADR0 => seg_clkdiv(18),
      ADR1 => Treg_q(2),
      ADR2 => Treg_q(6),
      ADR3 => VCC,
      O => seg_Mmux_digit_42_7052
    );
  seg_Mmux_digit_32 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X54Y71"
    )
    port map (
      ADR0 => seg_clkdiv(18),
      ADR1 => Treg_q(14),
      ADR2 => Treg_q(10),
      ADR3 => VCC,
      O => seg_Mmux_digit_32_7060
    );
  seg_Mmux_digit_43 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X54Y72"
    )
    port map (
      ADR0 => seg_clkdiv(18),
      ADR1 => Treg_q(7),
      ADR2 => VCC,
      ADR3 => Treg_q(3),
      O => seg_Mmux_digit_43_7077
    );
  seg_Mmux_digit_33 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X54Y72"
    )
    port map (
      ADR0 => seg_clkdiv(18),
      ADR1 => Treg_q(15),
      ADR2 => Treg_q(11),
      ADR3 => VCC,
      O => seg_Mmux_digit_33_7085
    );
  f_Mmux_y_8_SW0_F : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X55Y47"
    )
    port map (
      ADR0 => N145_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => M_1_Q,
      O => N293
    );
  f_Mmux_y_8_SW0_G : X_LUT4
    generic map(
      INIT => X"BBB8",
      LOC => "SLICE_X55Y47"
    )
    port map (
      ADR0 => N145_0,
      ADR1 => M_1_Q,
      ADR2 => f_y_shift0002_0_12,
      ADR3 => f_y_shift0002_0_89,
      O => N294
    );
  f_Mmux_y_8_SW1_F : X_LUT4
    generic map(
      INIT => X"888B",
      LOC => "SLICE_X55Y46"
    )
    port map (
      ADR0 => N145_0,
      ADR1 => M_1_Q,
      ADR2 => f_y_shift0002_0_12,
      ADR3 => f_y_shift0002_0_89,
      O => N295
    );
  f_Mmux_y_8_SW1_G : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X55Y46"
    )
    port map (
      ADR0 => N145_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => M_1_Q,
      O => N296
    );
  nmux_y_10_1_F : X_LUT4
    generic map(
      INIT => X"E040",
      LOC => "SLICE_X52Y45"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_y_addsub0000(10),
      ADR2 => N01,
      ADR3 => f_Mmux_y_8_f5,
      O => N171
    );
  nmux_y_10_1_G : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "SLICE_X52Y45"
    )
    port map (
      ADR0 => f_fcode_1_1_0,
      ADR1 => f_Mmux_y_81_0,
      ADR2 => N01,
      ADR3 => M_1_Q,
      O => N172
    );
  Treg_q_10 : X_FF
    generic map(
      LOC => "SLICE_X52Y45",
      INIT => '0'
    )
    port map (
      I => Treg_q_10_DXMUX_7170,
      CE => Treg_q_10_CEINV_7152,
      CLK => Treg_q_10_CLKINV_7153,
      SET => GND,
      RST => Treg_q_10_FFX_RSTAND_7176,
      O => Treg_q(10)
    );
  Treg_q_10_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X52Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_10_FFX_RSTAND_7176
    );
  nmux_y_11_1_F : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X53Y46"
    )
    port map (
      ADR0 => f_Mmux_y_8_f51,
      ADR1 => N01,
      ADR2 => M_1_Q,
      ADR3 => f_y_addsub0000(11),
      O => N169
    );
  nmux_y_11_1_G : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X53Y46"
    )
    port map (
      ADR0 => N212_0,
      ADR1 => N01,
      ADR2 => M_1_Q,
      ADR3 => f_Mmux_y_82_0,
      O => N170
    );
  Treg_q_11 : X_FF
    generic map(
      LOC => "SLICE_X53Y46",
      INIT => '0'
    )
    port map (
      I => Treg_q_11_DXMUX_7209,
      CE => Treg_q_11_CEINV_7191,
      CLK => Treg_q_11_CLKINV_7192,
      SET => GND,
      RST => Treg_q_11_FFX_RSTAND_7215,
      O => Treg_q(11)
    );
  Treg_q_11_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X53Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_11_FFX_RSTAND_7215
    );
  nmux_y_12_1_F : X_LUT4
    generic map(
      INIT => X"C0A0",
      LOC => "SLICE_X54Y44"
    )
    port map (
      ADR0 => f_y_addsub0000(12),
      ADR1 => f_Mmux_y_8_f52,
      ADR2 => N01,
      ADR3 => M_1_Q,
      O => N183
    );
  nmux_y_12_1_G : X_LUT4
    generic map(
      INIT => X"E020",
      LOC => "SLICE_X54Y44"
    )
    port map (
      ADR0 => f_Mmux_y_83_0,
      ADR1 => M_1_Q,
      ADR2 => N01,
      ADR3 => f_fcode_1_3_0,
      O => N184
    );
  Treg_q_12 : X_FF
    generic map(
      LOC => "SLICE_X54Y44",
      INIT => '0'
    )
    port map (
      I => Treg_q_12_DXMUX_7248,
      CE => Treg_q_12_CEINV_7230,
      CLK => Treg_q_12_CLKINV_7231,
      SET => GND,
      RST => Treg_q_12_FFX_RSTAND_7254,
      O => Treg_q(12)
    );
  Treg_q_12_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X54Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_12_FFX_RSTAND_7254
    );
  nmux_y_13_1_F : X_LUT4
    generic map(
      INIT => X"E040",
      LOC => "SLICE_X51Y37"
    )
    port map (
      ADR0 => M_1_Q,
      ADR1 => f_y_addsub0000(13),
      ADR2 => N01,
      ADR3 => f_Mmux_y_8_f53,
      O => N181
    );
  nmux_y_13_1_G : X_LUT4
    generic map(
      INIT => X"A820",
      LOC => "SLICE_X51Y37"
    )
    port map (
      ADR0 => N01,
      ADR1 => M_1_Q,
      ADR2 => f_Mmux_y_84_0,
      ADR3 => f_fcode_1_4_0,
      O => N182
    );
  Treg_q_13 : X_FF
    generic map(
      LOC => "SLICE_X51Y37",
      INIT => '0'
    )
    port map (
      I => Treg_q_13_DXMUX_7287,
      CE => Treg_q_13_CEINV_7269,
      CLK => Treg_q_13_CLKINV_7270,
      SET => GND,
      RST => Treg_q_13_FFX_RSTAND_7293,
      O => Treg_q(13)
    );
  Treg_q_13_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X51Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_1868,
      O => Treg_q_13_FFX_RSTAND_7293
    );
  cd_q_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y80"
    )
    port map (
      ADR0 => cd_q(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_0_G
    );
  cd_q_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X49Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_2_F
    );
  cd_q_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(3),
      O => cd_q_2_G
    );
  cd_q_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(4),
      ADR3 => VCC,
      O => cd_q_4_F
    );
  cd_q_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y82"
    )
    port map (
      ADR0 => cd_q(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_4_G
    );
  cd_q_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X49Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_6_F
    );
  cd_q_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(7),
      O => cd_q_6_G
    );
  cd_q_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(8),
      ADR3 => VCC,
      O => cd_q_8_F
    );
  cd_q_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y84"
    )
    port map (
      ADR0 => cd_q(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_8_G
    );
  cd_q_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X49Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_10_F
    );
  cd_q_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(11),
      O => cd_q_10_G
    );
  cd_q_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cd_q(12),
      ADR3 => VCC,
      O => cd_q_12_F
    );
  cd_q_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y86"
    )
    port map (
      ADR0 => cd_q(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_12_G
    );
  cd_q_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X49Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cd_q(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_14_F
    );
  cd_q_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cd_q(15),
      O => cd_q_14_G
    );
  cd_q_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y88"
    )
    port map (
      ADR0 => cd_q(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cd_q_16_F
    );
  seg_clkdiv_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seg_clkdiv(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_0_G
    );
  seg_clkdiv_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y83"
    )
    port map (
      ADR0 => seg_clkdiv(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_2_F
    );
  seg_clkdiv_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seg_clkdiv(3),
      O => seg_clkdiv_2_G
    );
  seg_clkdiv_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seg_clkdiv(4),
      ADR3 => VCC,
      O => seg_clkdiv_4_F
    );
  seg_clkdiv_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seg_clkdiv(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_4_G
    );
  seg_clkdiv_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y85"
    )
    port map (
      ADR0 => seg_clkdiv(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_6_F
    );
  seg_clkdiv_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seg_clkdiv(7),
      O => seg_clkdiv_6_G
    );
  seg_clkdiv_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seg_clkdiv(8),
      ADR3 => VCC,
      O => seg_clkdiv_8_F
    );
  seg_clkdiv_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seg_clkdiv(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_8_G
    );
  seg_clkdiv_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y87"
    )
    port map (
      ADR0 => seg_clkdiv(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_10_F
    );
  seg_clkdiv_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seg_clkdiv(11),
      O => seg_clkdiv_10_G
    );
  seg_clkdiv_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => seg_clkdiv(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_12_F
    );
  seg_clkdiv_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y88"
    )
    port map (
      ADR0 => seg_clkdiv(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_12_G
    );
  seg_clkdiv_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seg_clkdiv(14),
      O => seg_clkdiv_14_F
    );
  seg_clkdiv_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seg_clkdiv(15),
      ADR3 => VCC,
      O => seg_clkdiv_14_G
    );
  seg_clkdiv_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y90"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => seg_clkdiv(16),
      O => seg_clkdiv_16_F
    );
  seg_clkdiv_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y90"
    )
    port map (
      ADR0 => seg_clkdiv(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => seg_clkdiv_16_G
    );
  seg_clkdiv_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y91"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => seg_clkdiv(18),
      ADR3 => VCC,
      O => seg_clkdiv_18_F
    );
  dp_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => dp_OUTPUT_OFF_O1INV_6603,
      O => dp_O
    );
  dp_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => dp_OUTPUT_OFF_O1INV_6603
    );
  a_to_g_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_0_OBUF_4997,
      O => a_to_g_0_O
    );
  a_to_g_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_1_OBUF_4619,
      O => a_to_g_1_O
    );
  a_to_g_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_2_OBUF_5021,
      O => a_to_g_2_O
    );
  a_to_g_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_3_OBUF_5004,
      O => a_to_g_3_O
    );
  a_to_g_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_4_OBUF_5040,
      O => a_to_g_4_O
    );
  a_to_g_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_5_OBUF_5028,
      O => a_to_g_5_O
    );
  a_to_g_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_6_OBUF_4626,
      O => a_to_g_6_O
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_0_OBUF_4638,
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_4800,
      O => an_1_O
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_2_OBUF_4133,
      O => an_2_O
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_4061,
      O => an_3_O
    );
  NlwBlock_calc_top2_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_calc_top2_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

