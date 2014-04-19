--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Sat Apr 19 18:22:51 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf vga_bsprite2a_top.pcf -tpw 0 -rpw 100 -s 5 -ar Structure -insert_pp_buffers true vga_bsprite2a_top.ncd time_sim.vhd 
-- Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: vga_bsprite2a_top.ncd
-- Output file	: time_sim.vhd
-- # of Entities	: 1
-- Design Name	: vga_bsprite2a_top
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

entity vga_bsprite2a_top is
  port (
    vsync : out STD_LOGIC; 
    dp : out STD_LOGIC; 
    upBTN : in STD_LOGIC := 'X'; 
    aBTN : in STD_LOGIC := 'X'; 
    rightBTN : in STD_LOGIC := 'X'; 
    leftBTN : in STD_LOGIC := 'X'; 
    ja1 : in STD_LOGIC := 'X'; 
    ja2 : out STD_LOGIC; 
    ja3 : out STD_LOGIC; 
    downBTN : in STD_LOGIC := 'X'; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end vga_bsprite2a_top;

architecture Structure of vga_bsprite2a_top is
  signal nes_up_reg_4814 : STD_LOGIC; 
  signal U3_tank1_angle_calc_not0001_0 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and0000_0 : STD_LOGIC; 
  signal U3_tank1_angle_calc_mux0004_7_16_0 : STD_LOGIC; 
  signal U3_tank1_angle_calc_mux0004_7_4_0 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc_cy_1_Q : STD_LOGIC; 
  signal U3_N63_0 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc_cy_3_Q : STD_LOGIC; 
  signal N168_0 : STD_LOGIC; 
  signal N160_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal N155_0 : STD_LOGIC; 
  signal N166_0 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_7_0 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000 : STD_LOGIC; 
  signal U3_spriteon2f_add0002_4_0 : STD_LOGIC; 
  signal U3_spriteon2_addsub0000_5_0 : STD_LOGIC; 
  signal U3_N16 : STD_LOGIC; 
  signal U3_spriteon2_addsub0000_8_0 : STD_LOGIC; 
  signal U3_spriteon2_addsub0000_9_0 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000 : STD_LOGIC; 
  signal nes_left_reg_4884 : STD_LOGIC; 
  signal U3_C1_not0001_0 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_1_Q : STD_LOGIC; 
  signal U3_Mcount_C1_cy_3_Q : STD_LOGIC; 
  signal U3_Mcount_C1_cy_5_Q : STD_LOGIC; 
  signal U3_C2_not0001_0 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_1_Q : STD_LOGIC; 
  signal U3_Mcount_C2_cy_3_Q : STD_LOGIC; 
  signal U3_Mcount_C2_cy_5_Q : STD_LOGIC; 
  signal U3_tank2_angle_calc_not0001_0 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and0000_0 : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_7_16_0 : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_7_4_0 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc_cy_1_Q : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_4_0 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc_cy_3_Q : STD_LOGIC; 
  signal N162_0 : STD_LOGIC; 
  signal N170_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N153_0 : STD_LOGIC; 
  signal N164_0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_7_0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_bdd0 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_1_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_3_Q : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_5_Q : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal btn_3_IBUF_4959 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_1_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_3_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_5_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_7_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_9_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_11_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_13_Q : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_15_Q : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_cy_5_0 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_0 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q : STD_LOGIC; 
  signal U3_N15 : STD_LOGIC; 
  signal U3_spriteon1_addsub0001_8_0 : STD_LOGIC; 
  signal U3_spriteon1_addsub0001_9_0 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_1_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_3_Q : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_5_Q : STD_LOGIC; 
  signal U2_Result_0_1 : STD_LOGIC; 
  signal U2_Result_1_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_1_Q : STD_LOGIC; 
  signal U2_Result_2_1 : STD_LOGIC; 
  signal U2_Result_3_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_3_Q : STD_LOGIC; 
  signal U2_Result_4_1 : STD_LOGIC; 
  signal U2_Result_5_1 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_5_Q : STD_LOGIC; 
  signal U2_Result_6_1 : STD_LOGIC; 
  signal U2_Result_7_1 : STD_LOGIC; 
  signal U2_Result_8_1 : STD_LOGIC; 
  signal U2_Result_9_1 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_1_Q : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_3_Q : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_5_Q : STD_LOGIC; 
  signal U3_Q_0_5080 : STD_LOGIC; 
  signal U3_Q_1_5081 : STD_LOGIC; 
  signal U3_Mcount_q_cy_1_Q : STD_LOGIC; 
  signal U3_Q_2_5083 : STD_LOGIC; 
  signal U3_Q_3_5084 : STD_LOGIC; 
  signal U3_Mcount_q_cy_3_Q : STD_LOGIC; 
  signal U3_Q_4_5086 : STD_LOGIC; 
  signal U3_Q_5_5087 : STD_LOGIC; 
  signal U3_Mcount_q_cy_5_Q : STD_LOGIC; 
  signal U3_Q_6_5089 : STD_LOGIC; 
  signal U3_Q_7_5090 : STD_LOGIC; 
  signal U3_Mcount_q_cy_7_Q : STD_LOGIC; 
  signal U3_Q_8_5092 : STD_LOGIC; 
  signal U3_Q_9_5093 : STD_LOGIC; 
  signal U3_Mcount_q_cy_9_Q : STD_LOGIC; 
  signal U3_Q_10_5095 : STD_LOGIC; 
  signal U3_Q_11_5096 : STD_LOGIC; 
  signal U3_Mcount_q_cy_11_Q : STD_LOGIC; 
  signal U3_Q_12_5098 : STD_LOGIC; 
  signal U3_Q_13_5099 : STD_LOGIC; 
  signal U3_Mcount_q_cy_13_Q : STD_LOGIC; 
  signal U3_Q_14_5101 : STD_LOGIC; 
  signal U3_Q_15_5102 : STD_LOGIC; 
  signal U3_Q_16_5104 : STD_LOGIC; 
  signal U3_q_171 : STD_LOGIC; 
  signal rom1_addr_4_0 : STD_LOGIC; 
  signal M1a_1_7_0 : STD_LOGIC; 
  signal M1a_1_21_0 : STD_LOGIC; 
  signal M2a_28_Q : STD_LOGIC; 
  signal M2a_29_Q : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f6 : STD_LOGIC; 
  signal M1a_4_bdd0_0 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_3_f7 : STD_LOGIC; 
  signal M1a_14_bdd0_0 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal M2a_12_Q : STD_LOGIC; 
  signal M2a_13_Q : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f61 : STD_LOGIC; 
  signal M2a_10_Q : STD_LOGIC; 
  signal M1a_20_Q : STD_LOGIC; 
  signal M2a_8_0 : STD_LOGIC; 
  signal M2a_9_0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_4_f7 : STD_LOGIC; 
  signal M2a_22_Q : STD_LOGIC; 
  signal M1a_8_Q : STD_LOGIC; 
  signal M2a_20_Q : STD_LOGIC; 
  signal M1a_10_Q : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f5 : STD_LOGIC; 
  signal M2a_18_Q : STD_LOGIC; 
  signal M2a_19_0 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal U3_M2a_mux0000 : STD_LOGIC; 
  signal M2a_6_Q : STD_LOGIC; 
  signal M2a_7_0 : STD_LOGIC; 
  signal M2a_4_0 : STD_LOGIC; 
  signal M2a_5_0 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5 : STD_LOGIC; 
  signal M2a_2_0 : STD_LOGIC; 
  signal M2a_3_Q : STD_LOGIC; 
  signal M2a_1_63_0 : STD_LOGIC; 
  signal M2a_1_36_0 : STD_LOGIC; 
  signal M1_1_Q : STD_LOGIC; 
  signal M1_0_0 : STD_LOGIC; 
  signal M2_28_0 : STD_LOGIC; 
  signal M1_2_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f6 : STD_LOGIC; 
  signal M2_24_1_0 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal M1_4_Q : STD_LOGIC; 
  signal M2_25_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_3_f7 : STD_LOGIC; 
  signal M1_18_2_0 : STD_LOGIC; 
  signal N244_0 : STD_LOGIC; 
  signal M2_12_Q : STD_LOGIC; 
  signal M1_18_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f61 : STD_LOGIC; 
  signal M2_10_Q : STD_LOGIC; 
  signal M2_11_Q : STD_LOGIC; 
  signal M2_8_Q : STD_LOGIC; 
  signal M2_9_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_4_f7 : STD_LOGIC; 
  signal M2_22_Q : STD_LOGIC; 
  signal M1_8_Q : STD_LOGIC; 
  signal M1_11_Q : STD_LOGIC; 
  signal M2_21_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f5 : STD_LOGIC; 
  signal M2_18_Q : STD_LOGIC; 
  signal M2_19_Q : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal U3_M2_mux0000 : STD_LOGIC; 
  signal M2_6_0 : STD_LOGIC; 
  signal M2_7_Q : STD_LOGIC; 
  signal M2_4_Q : STD_LOGIC; 
  signal M2_5_Q : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5 : STD_LOGIC; 
  signal M2_2_0 : STD_LOGIC; 
  signal M2_3_0 : STD_LOGIC; 
  signal M2_0_Q : STD_LOGIC; 
  signal M2_1_0 : STD_LOGIC; 
  signal M1_30_Q : STD_LOGIC; 
  signal M1_31_Q : STD_LOGIC; 
  signal M1_28_0 : STD_LOGIC; 
  signal M1_29_0_5202 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f6 : STD_LOGIC; 
  signal M1_26_Q : STD_LOGIC; 
  signal M1_27_Q : STD_LOGIC; 
  signal M1_24_Q : STD_LOGIC; 
  signal M1_25_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_3_f7 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal M1_12_Q : STD_LOGIC; 
  signal M1_13_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f61 : STD_LOGIC; 
  signal M1_10_Q : STD_LOGIC; 
  signal M1_9_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_4_f7 : STD_LOGIC; 
  signal M1_22_Q : STD_LOGIC; 
  signal M1_23_Q : STD_LOGIC; 
  signal M1_20_Q : STD_LOGIC; 
  signal M1_21_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f5 : STD_LOGIC; 
  signal M1_19_Q : STD_LOGIC; 
  signal N238_0 : STD_LOGIC; 
  signal U3_M1_mux0000 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal M1_5_Q : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5 : STD_LOGIC; 
  signal M1_3_Q : STD_LOGIC; 
  signal M1a_29_51_0 : STD_LOGIC; 
  signal M1a_30_36_0 : STD_LOGIC; 
  signal M1a_28_Q : STD_LOGIC; 
  signal M1a_29_0 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f6 : STD_LOGIC; 
  signal M1a_26_0 : STD_LOGIC; 
  signal M1a_27_0 : STD_LOGIC; 
  signal M1a_24_0 : STD_LOGIC; 
  signal M1a_25_Q : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f6 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_3_f7 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal M1a_12_bdd1_0 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f61 : STD_LOGIC; 
  signal M1a_11_0 : STD_LOGIC; 
  signal M1a_9_Q : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f6 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_4_f7 : STD_LOGIC; 
  signal M1a_22_0 : STD_LOGIC; 
  signal M1a_23_0 : STD_LOGIC; 
  signal M1a_21_Q : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f5 : STD_LOGIC; 
  signal M1a_18_Q : STD_LOGIC; 
  signal M1a_19_Q : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal U3_M1a_mux0000 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5 : STD_LOGIC; 
  signal M1a_2_Q : STD_LOGIC; 
  signal M1a_3_0 : STD_LOGIC; 
  signal ja1_IBUF_5274 : STD_LOGIC; 
  signal sw_0_IBUF_5291 : STD_LOGIC; 
  signal sw_1_IBUF_5292 : STD_LOGIC; 
  signal sw_2_IBUF_5293 : STD_LOGIC; 
  signal sw_3_IBUF_5294 : STD_LOGIC; 
  signal sw_4_IBUF_5295 : STD_LOGIC; 
  signal sw_5_IBUF_5296 : STD_LOGIC; 
  signal sw_6_IBUF_5297 : STD_LOGIC; 
  signal sw_7_IBUF_5298 : STD_LOGIC; 
  signal btn_0_IBUF_5301 : STD_LOGIC; 
  signal btn_1_IBUF_5302 : STD_LOGIC; 
  signal btn_2_IBUF_5303 : STD_LOGIC; 
  signal red_1_OBUF_5305 : STD_LOGIC; 
  signal U1_q_01 : STD_LOGIC; 
  signal N230_0 : STD_LOGIC; 
  signal U3_spriteonB5_and000081 : STD_LOGIC; 
  signal M1a_27_139 : STD_LOGIC; 
  signal M1a_11_1_5317 : STD_LOGIC; 
  signal M1a_11_2_0 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000217 : STD_LOGIC; 
  signal M2a_18_2_0 : STD_LOGIC; 
  signal M1a_3_1_5321 : STD_LOGIC; 
  signal M1a_3_2_0 : STD_LOGIC; 
  signal M1_21_bdd5_0 : STD_LOGIC; 
  signal M1_22_bdd9_0 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal U3_spriteonGrnd_0 : STD_LOGIC; 
  signal U3_N35 : STD_LOGIC; 
  signal U3_N41 : STD_LOGIC; 
  signal U3_blue_and0003_0 : STD_LOGIC; 
  signal U3_N13_0 : STD_LOGIC; 
  signal N212_0 : STD_LOGIC; 
  signal M1a_24_bdd1 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal M1_25_351 : STD_LOGIC; 
  signal M1_25_35 : STD_LOGIC; 
  signal M1_24_bdd0_0 : STD_LOGIC; 
  signal N338_0 : STD_LOGIC; 
  signal U3_N71 : STD_LOGIC; 
  signal M1_25_bdd0 : STD_LOGIC; 
  signal M1_10_bdd5_0 : STD_LOGIC; 
  signal M1_25_75_0 : STD_LOGIC; 
  signal M1_25_bdd1_0 : STD_LOGIC; 
  signal M1_27_102 : STD_LOGIC; 
  signal M1_26_58_0 : STD_LOGIC; 
  signal M1_26_30_0 : STD_LOGIC; 
  signal M1_26_bdd0_0 : STD_LOGIC; 
  signal M1_27_192_0 : STD_LOGIC; 
  signal M1_27_127_0 : STD_LOGIC; 
  signal M1_27_bdd0_0 : STD_LOGIC; 
  signal M2_3_124 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal M1_27_bdd4 : STD_LOGIC; 
  signal M1_30_49 : STD_LOGIC; 
  signal M1_24_39_0 : STD_LOGIC; 
  signal N398_0 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N354_0 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal U3_spriteonB5_and000017 : STD_LOGIC; 
  signal U2_vidon_and000026 : STD_LOGIC; 
  signal U2_vidon_and000065 : STD_LOGIC; 
  signal M1a_12_bdd0 : STD_LOGIC; 
  signal N352_0 : STD_LOGIC; 
  signal N350_0 : STD_LOGIC; 
  signal M1_28_120 : STD_LOGIC; 
  signal N390_0 : STD_LOGIC; 
  signal N358_0 : STD_LOGIC; 
  signal N400_0 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N360_0 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal M1_29_126 : STD_LOGIC; 
  signal M1a_23_54 : STD_LOGIC; 
  signal N256_0 : STD_LOGIC; 
  signal M1_22_11_0 : STD_LOGIC; 
  signal M1_22_35 : STD_LOGIC; 
  signal M1_10_bdd4_0 : STD_LOGIC; 
  signal M1_22_bdd0 : STD_LOGIC; 
  signal M1_23_bdd1_0 : STD_LOGIC; 
  signal M1_23_20_0 : STD_LOGIC; 
  signal M1_23_29_0 : STD_LOGIC; 
  signal N214_0 : STD_LOGIC; 
  signal M1_23_bdd3_0 : STD_LOGIC; 
  signal N262_0 : STD_LOGIC; 
  signal M2_0_bdd6_0 : STD_LOGIC; 
  signal M2_0_bdd13_0 : STD_LOGIC; 
  signal M2_4_105 : STD_LOGIC; 
  signal M2_4_116_0 : STD_LOGIC; 
  signal M2_4_bdd0_0 : STD_LOGIC; 
  signal M2_5_58_0 : STD_LOGIC; 
  signal M2_5_30_0 : STD_LOGIC; 
  signal M2_5_bdd0_0 : STD_LOGIC; 
  signal M1_12_bdd3_0 : STD_LOGIC; 
  signal M2_7_44 : STD_LOGIC; 
  signal M2_7_bdd0_0 : STD_LOGIC; 
  signal M1_3_1 : STD_LOGIC; 
  signal M1_3_2_0 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N392_0 : STD_LOGIC; 
  signal N356_0 : STD_LOGIC; 
  signal M2_6_bdd0_0 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal M2_0_bdd1 : STD_LOGIC; 
  signal N218_0 : STD_LOGIC; 
  signal M2_0_bdd3 : STD_LOGIC; 
  signal M2_1_49 : STD_LOGIC; 
  signal M2_4_29 : STD_LOGIC; 
  signal M2_9_9_0 : STD_LOGIC; 
  signal M2_9_35 : STD_LOGIC; 
  signal M2_8_bdd1_0 : STD_LOGIC; 
  signal M2_8_20_0 : STD_LOGIC; 
  signal M2_8_29_0 : STD_LOGIC; 
  signal M2_9_bdd0 : STD_LOGIC; 
  signal N216_0 : STD_LOGIC; 
  signal M2a_6_bdd1 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal U3_C1_not00015_0 : STD_LOGIC; 
  signal U3_C1_not000110_0 : STD_LOGIC; 
  signal U3_C1_not00014_O : STD_LOGIC; 
  signal U3_C1_not000127_0 : STD_LOGIC; 
  signal nes_N01 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_5427 : STD_LOGIC; 
  signal U3_C1_not0001105_0 : STD_LOGIC; 
  signal U3_C1_not000183_O : STD_LOGIC; 
  signal U3_C1_not000147_0 : STD_LOGIC; 
  signal N157_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000 : STD_LOGIC; 
  signal nes_N11_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_0 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_0 : STD_LOGIC; 
  signal nes_counter_reg_not0001_0 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_5437 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_5438 : STD_LOGIC; 
  signal nes_right_reg_5439 : STD_LOGIC; 
  signal U3_C2_not000150_O : STD_LOGIC; 
  signal U3_C2_not000164_0 : STD_LOGIC; 
  signal U3_C2_not000123_O : STD_LOGIC; 
  signal U3_C2_not000113_0 : STD_LOGIC; 
  signal U3_C2_not00016_0 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000011_0 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000023_0 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000046_O : STD_LOGIC; 
  signal U2_vsenable_5448 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_5449 : STD_LOGIC; 
  signal U2_N2_0 : STD_LOGIC; 
  signal N151_0 : STD_LOGIC; 
  signal U3_C2_not00011_O : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000014_O : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000027_0 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000051_0 : STD_LOGIC; 
  signal nes_down_reg_5456 : STD_LOGIC; 
  signal U2_hcs_cmp_eq000010_5457 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_5458 : STD_LOGIC; 
  signal U3_N94 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_0 : STD_LOGIC; 
  signal x7_an_1_mux00012_0 : STD_LOGIC; 
  signal U3_blue_0_27_0 : STD_LOGIC; 
  signal U3_N102_0 : STD_LOGIC; 
  signal U3_N98 : STD_LOGIC; 
  signal U3_N40_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal x7_an_1_mux000115_0 : STD_LOGIC; 
  signal x7_an_1_mux000128 : STD_LOGIC; 
  signal x7_an_1_mux000152_5471 : STD_LOGIC; 
  signal U3_N42 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000110_0 : STD_LOGIC; 
  signal N202_0 : STD_LOGIC; 
  signal U3_N101 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N302_0 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002128_0 : STD_LOGIC; 
  signal U3_spriteonB1_0 : STD_LOGIC; 
  signal U3_blue_0_9_5481 : STD_LOGIC; 
  signal U3_spriteonB2 : STD_LOGIC; 
  signal U3_spriteonB3_0 : STD_LOGIC; 
  signal U3_spriteonB5_0 : STD_LOGIC; 
  signal U3_spriteonB4_0 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000232_5486 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000_0 : STD_LOGIC; 
  signal M1_21_bdd8 : STD_LOGIC; 
  signal M1a_22_bdd0_0 : STD_LOGIC; 
  signal M1a_23_10_0 : STD_LOGIC; 
  signal U3_spriteonB5_and00006_0 : STD_LOGIC; 
  signal U3_spriteonB5_and000034_5492 : STD_LOGIC; 
  signal U3_red_0_15_0 : STD_LOGIC; 
  signal vidon_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000015_5495 : STD_LOGIC; 
  signal N372_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000064_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000034_5498 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000091_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000046_0 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000051_5501 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002112_0 : STD_LOGIC; 
  signal x7_an_2_mux000128_0 : STD_LOGIC; 
  signal M1a_10_bdd0 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal nes_nes_clk31_0 : STD_LOGIC; 
  signal U3_spriteonB4_and00009_0 : STD_LOGIC; 
  signal U2_vidon_and00006_0 : STD_LOGIC; 
  signal U2_vidon_and000018_0 : STD_LOGIC; 
  signal U2_vidon_and00000_5512 : STD_LOGIC; 
  signal U2_vidon_and000039_0 : STD_LOGIC; 
  signal U3_spriteonB1_and000018_0 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal M1a_27_52_0 : STD_LOGIC; 
  signal nes_a_reg_5517 : STD_LOGIC; 
  signal M1_22_bdd12 : STD_LOGIC; 
  signal M1a_27_82_0 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal M1_29_bdd5_0 : STD_LOGIC; 
  signal U3_N25 : STD_LOGIC; 
  signal U3_spriteonB4_and000061_0 : STD_LOGIC; 
  signal U3_spriteonB4_and000089_0 : STD_LOGIC; 
  signal M2_3_bdd6 : STD_LOGIC; 
  signal M2_0_bdd9 : STD_LOGIC; 
  signal M2_0_bdd10_0 : STD_LOGIC; 
  signal U2_vidon_and000013 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_5529 : STD_LOGIC; 
  signal N300_0 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal M2_3_69_0 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal U2_vidon_and000080_0 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal U3_spriteonB1_and000010_0 : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal U3_spriteonB1_and000049_0 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal M2a_4_82_0 : STD_LOGIC; 
  signal M2a_4_52_0 : STD_LOGIC; 
  signal M1a_22_18_0 : STD_LOGIC; 
  signal M1a_23_14_5546 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal M1_28_65_0 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal M1_29_75_0 : STD_LOGIC; 
  signal M1_21_bdd3 : STD_LOGIC; 
  signal M1_22_bdd7 : STD_LOGIC; 
  signal M1_28_2_0 : STD_LOGIC; 
  signal M1_28_12_0 : STD_LOGIC; 
  signal M1_23_bdd6 : STD_LOGIC; 
  signal M1_30_96_0 : STD_LOGIC; 
  signal M1_25_138_0 : STD_LOGIC; 
  signal M1_27_40_5558 : STD_LOGIC; 
  signal M2_10_bdd14 : STD_LOGIC; 
  signal M2_2_75_0 : STD_LOGIC; 
  signal M1_28_28_5561 : STD_LOGIC; 
  signal M1_29_0_0 : STD_LOGIC; 
  signal M1_29_14_5563 : STD_LOGIC; 
  signal M1_0_bdd2_0 : STD_LOGIC; 
  signal M1_29_35_0 : STD_LOGIC; 
  signal M1_29_60_5566 : STD_LOGIC; 
  signal M2_6_108_5567 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal U3_N95_0 : STD_LOGIC; 
  signal U3_spriteonB1_and000060_5571 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_5574 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal U3_spriteonB3_and000013_0 : STD_LOGIC; 
  signal U3_spriteonB2_and000019_5577 : STD_LOGIC; 
  signal N370_0 : STD_LOGIC; 
  signal M2_3_12_0 : STD_LOGIC; 
  signal M2a_6_bdd0_0 : STD_LOGIC; 
  signal M2a_8_10_0 : STD_LOGIC; 
  signal M2a_8_14_5582 : STD_LOGIC; 
  signal M2a_9_18_0 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal M2_2_bdd5_0 : STD_LOGIC; 
  signal M2_0_bdd16 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal M1_0_bdd0 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal M2_1_115_0 : STD_LOGIC; 
  signal M2_1_60_5592 : STD_LOGIC; 
  signal M2_2_14_5593 : STD_LOGIC; 
  signal M2_2_35_0 : STD_LOGIC; 
  signal M2_2_60_5595 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal M2_3_30_5597 : STD_LOGIC; 
  signal M2_3_bdd9 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal U2_vidon_and0000117_5600 : STD_LOGIC; 
  signal U2_vidon_and0000105_0 : STD_LOGIC; 
  signal U3_spriteonB3_and000025_0 : STD_LOGIC; 
  signal U3_spriteonB3_and000032_5603 : STD_LOGIC; 
  signal U3_spriteonB3_and000041_0 : STD_LOGIC; 
  signal U3_spriteonB3_and000059_5605 : STD_LOGIC; 
  signal U3_spriteonB4_and000023_5606 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_DXMUX_5654 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_XORF_5652 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_CYINIT_5651 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_CYSELF_5645 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_DYMUX_5637 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_XORG_5635 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_CYMUXG_5634 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc_cy_0_Q : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_LOGIC_ONE_5632 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_CYSELG_5625 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_SRINV_5623 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_CLKINV_5622 : STD_LOGIC; 
  signal U3_tank1_angle_calc_0_CEINV_5621 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_DXMUX_5710 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_XORF_5708 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYINIT_5707 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_DYMUX_5695 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_XORG_5693 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc_cy_2_Q : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYSELF_5691 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYMUXFAST_5690 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYAND_5689 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_FASTCARRY_5688 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYMUXG2_5687 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYMUXF2_5686 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_LOGIC_ONE_5685 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CYSELG_5678 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_SRINV_5676 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CLKINV_5675 : STD_LOGIC; 
  signal U3_tank1_angle_calc_2_CEINV_5674 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_DXMUX_5766 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_XORF_5764 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYINIT_5763 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_DYMUX_5751 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_XORG_5749 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc_cy_4_Q : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYSELF_5747 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYMUXFAST_5746 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYAND_5745 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_FASTCARRY_5744 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYMUXG2_5743 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYMUXF2_5742 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_LOGIC_ONE_5741 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CYSELG_5735 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_SRINV_5733 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CLKINV_5732 : STD_LOGIC; 
  signal U3_tank1_angle_calc_4_CEINV_5731 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_DXMUX_5815 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_XORF_5813 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_LOGIC_ONE_5812 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_CYINIT_5811 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_CYSELF_5805 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_DYMUX_5798 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_XORG_5796 : STD_LOGIC; 
  signal U3_Mcount_tank1_angle_calc_cy_6_Q : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_SRINV_5788 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_CLKINV_5787 : STD_LOGIC; 
  signal U3_tank1_angle_calc_6_CEINV_5786 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT_5850 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F_5849 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF_5841 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV_5839 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG_5838 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G_5836 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG_5828 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5881 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5872 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST_5871 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND_5870 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY_5869 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2_5868 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2_5867 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G_5866 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5858 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5912 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5903 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST_5902 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND_5901 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY_5900 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2_5899 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2_5898 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G_5897 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5890 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5943 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5936 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST_5935 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND_5934 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY_5933 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2_5932 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2_5931 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G_5930 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5922 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CY0F_5974 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYSELF_5966 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYMUXFAST_5965 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYAND_5964 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_FASTCARRY_5963 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYMUXG2_5962 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYMUXF2_5961 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CY0G_5960 : STD_LOGIC; 
  signal U3_spriteon1_cmp_ge0000_CYSELG_5954 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT_6004 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F_6003 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF_5995 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV_5993 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG_5992 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G_5990 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG_5982 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_6035 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_6026 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST_6025 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND_6024 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY_6023 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2_6022 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2_6021 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G_6020 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_6012 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_6066 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_6058 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST_6057 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND_6056 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY_6055 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2_6054 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2_6053 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G_6052 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_6046 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_6101 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_6093 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST_6092 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND_6091 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY_6090 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2_6089 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2_6088 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G_6087 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_6081 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CY0F_6132 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYSELF_6123 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYMUXFAST_6122 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYAND_6121 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_FASTCARRY_6120 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYMUXG2_6119 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYMUXF2_6118 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CY0G_6117 : STD_LOGIC; 
  signal U3_spriteon2f_cmp_le0000_CYSELG_6109 : STD_LOGIC; 
  signal U3_C1_0_DXMUX_6178 : STD_LOGIC; 
  signal U3_C1_0_XORF_6176 : STD_LOGIC; 
  signal U3_C1_0_CYINIT_6175 : STD_LOGIC; 
  signal U3_C1_0_CY0F_6174 : STD_LOGIC; 
  signal U3_C1_0_CYSELF_6166 : STD_LOGIC; 
  signal U3_C1_0_DYMUX_6159 : STD_LOGIC; 
  signal U3_C1_0_XORG_6157 : STD_LOGIC; 
  signal U3_C1_0_CYMUXG_6156 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_0_Q : STD_LOGIC; 
  signal U3_C1_0_CY0G_6154 : STD_LOGIC; 
  signal U3_C1_0_CYSELG_6146 : STD_LOGIC; 
  signal U3_C1_0_CLKINV_6144 : STD_LOGIC; 
  signal U3_C1_0_CEINV_6143 : STD_LOGIC; 
  signal U3_C1_2_DXMUX_6231 : STD_LOGIC; 
  signal U3_C1_2_XORF_6229 : STD_LOGIC; 
  signal U3_C1_2_CYINIT_6228 : STD_LOGIC; 
  signal U3_C1_2_CY0F_6227 : STD_LOGIC; 
  signal U3_C1_2_DYMUX_6214 : STD_LOGIC; 
  signal U3_C1_2_XORG_6212 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_2_Q : STD_LOGIC; 
  signal U3_C1_2_CYSELF_6210 : STD_LOGIC; 
  signal U3_C1_2_CYMUXFAST_6209 : STD_LOGIC; 
  signal U3_C1_2_CYAND_6208 : STD_LOGIC; 
  signal U3_C1_2_FASTCARRY_6207 : STD_LOGIC; 
  signal U3_C1_2_CYMUXG2_6206 : STD_LOGIC; 
  signal U3_C1_2_CYMUXF2_6205 : STD_LOGIC; 
  signal U3_C1_2_CY0G_6204 : STD_LOGIC; 
  signal U3_C1_2_CYSELG_6196 : STD_LOGIC; 
  signal U3_C1_2_CLKINV_6194 : STD_LOGIC; 
  signal U3_C1_2_CEINV_6193 : STD_LOGIC; 
  signal U3_C1_4_DXMUX_6284 : STD_LOGIC; 
  signal U3_C1_4_XORF_6282 : STD_LOGIC; 
  signal U3_C1_4_CYINIT_6281 : STD_LOGIC; 
  signal U3_C1_4_CY0F_6280 : STD_LOGIC; 
  signal U3_C1_4_DYMUX_6267 : STD_LOGIC; 
  signal U3_C1_4_XORG_6265 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_4_Q : STD_LOGIC; 
  signal U3_C1_4_CYSELF_6263 : STD_LOGIC; 
  signal U3_C1_4_CYMUXFAST_6262 : STD_LOGIC; 
  signal U3_C1_4_CYAND_6261 : STD_LOGIC; 
  signal U3_C1_4_FASTCARRY_6260 : STD_LOGIC; 
  signal U3_C1_4_CYMUXG2_6259 : STD_LOGIC; 
  signal U3_C1_4_CYMUXF2_6258 : STD_LOGIC; 
  signal U3_C1_4_CY0G_6257 : STD_LOGIC; 
  signal U3_C1_4_CYSELG_6249 : STD_LOGIC; 
  signal U3_C1_4_CLKINV_6247 : STD_LOGIC; 
  signal U3_C1_4_CEINV_6246 : STD_LOGIC; 
  signal U3_C1_6_DXMUX_6337 : STD_LOGIC; 
  signal U3_C1_6_XORF_6335 : STD_LOGIC; 
  signal U3_C1_6_CYINIT_6334 : STD_LOGIC; 
  signal U3_C1_6_CY0F_6333 : STD_LOGIC; 
  signal U3_C1_6_DYMUX_6320 : STD_LOGIC; 
  signal U3_C1_6_XORG_6318 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_6_Q : STD_LOGIC; 
  signal U3_C1_6_CYSELF_6316 : STD_LOGIC; 
  signal U3_C1_6_CYMUXFAST_6315 : STD_LOGIC; 
  signal U3_C1_6_CYAND_6314 : STD_LOGIC; 
  signal U3_C1_6_FASTCARRY_6313 : STD_LOGIC; 
  signal U3_C1_6_CYMUXG2_6312 : STD_LOGIC; 
  signal U3_C1_6_CYMUXF2_6311 : STD_LOGIC; 
  signal U3_C1_6_CY0G_6310 : STD_LOGIC; 
  signal U3_C1_6_CYSELG_6302 : STD_LOGIC; 
  signal U3_C1_6_CLKINV_6300 : STD_LOGIC; 
  signal U3_C1_6_CEINV_6299 : STD_LOGIC; 
  signal U3_C1_8_DXMUX_6382 : STD_LOGIC; 
  signal U3_C1_8_XORF_6380 : STD_LOGIC; 
  signal U3_C1_8_CYINIT_6379 : STD_LOGIC; 
  signal U3_C1_8_CY0F_6378 : STD_LOGIC; 
  signal U3_C1_8_CYSELF_6370 : STD_LOGIC; 
  signal U3_C1_8_DYMUX_6364 : STD_LOGIC; 
  signal U3_C1_8_XORG_6362 : STD_LOGIC; 
  signal U3_Mcount_C1_cy_8_Q : STD_LOGIC; 
  signal U3_C1_8_CLKINV_6352 : STD_LOGIC; 
  signal U3_C1_8_CEINV_6351 : STD_LOGIC; 
  signal U3_C2_0_DXMUX_6432 : STD_LOGIC; 
  signal U3_C2_0_XORF_6430 : STD_LOGIC; 
  signal U3_C2_0_CYINIT_6429 : STD_LOGIC; 
  signal U3_C2_0_CY0F_6428 : STD_LOGIC; 
  signal U3_C2_0_CYSELF_6420 : STD_LOGIC; 
  signal U3_C2_0_DYMUX_6413 : STD_LOGIC; 
  signal U3_C2_0_XORG_6411 : STD_LOGIC; 
  signal U3_C2_0_CYMUXG_6410 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_0_Q : STD_LOGIC; 
  signal U3_C2_0_CY0G_6408 : STD_LOGIC; 
  signal U3_C2_0_CYSELG_6400 : STD_LOGIC; 
  signal U3_C2_0_CLKINV_6398 : STD_LOGIC; 
  signal U3_C2_0_CEINV_6397 : STD_LOGIC; 
  signal U3_C2_2_DXMUX_6485 : STD_LOGIC; 
  signal U3_C2_2_XORF_6483 : STD_LOGIC; 
  signal U3_C2_2_CYINIT_6482 : STD_LOGIC; 
  signal U3_C2_2_CY0F_6481 : STD_LOGIC; 
  signal U3_C2_2_DYMUX_6468 : STD_LOGIC; 
  signal U3_C2_2_XORG_6466 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_2_Q : STD_LOGIC; 
  signal U3_C2_2_CYSELF_6464 : STD_LOGIC; 
  signal U3_C2_2_CYMUXFAST_6463 : STD_LOGIC; 
  signal U3_C2_2_CYAND_6462 : STD_LOGIC; 
  signal U3_C2_2_FASTCARRY_6461 : STD_LOGIC; 
  signal U3_C2_2_CYMUXG2_6460 : STD_LOGIC; 
  signal U3_C2_2_CYMUXF2_6459 : STD_LOGIC; 
  signal U3_C2_2_CY0G_6458 : STD_LOGIC; 
  signal U3_C2_2_CYSELG_6450 : STD_LOGIC; 
  signal U3_C2_2_CLKINV_6448 : STD_LOGIC; 
  signal U3_C2_2_CEINV_6447 : STD_LOGIC; 
  signal U3_C2_4_DXMUX_6538 : STD_LOGIC; 
  signal U3_C2_4_XORF_6536 : STD_LOGIC; 
  signal U3_C2_4_CYINIT_6535 : STD_LOGIC; 
  signal U3_C2_4_CY0F_6534 : STD_LOGIC; 
  signal U3_C2_4_DYMUX_6521 : STD_LOGIC; 
  signal U3_C2_4_XORG_6519 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_4_Q : STD_LOGIC; 
  signal U3_C2_4_CYSELF_6517 : STD_LOGIC; 
  signal U3_C2_4_CYMUXFAST_6516 : STD_LOGIC; 
  signal U3_C2_4_CYAND_6515 : STD_LOGIC; 
  signal U3_C2_4_FASTCARRY_6514 : STD_LOGIC; 
  signal U3_C2_4_CYMUXG2_6513 : STD_LOGIC; 
  signal U3_C2_4_CYMUXF2_6512 : STD_LOGIC; 
  signal U3_C2_4_CY0G_6511 : STD_LOGIC; 
  signal U3_C2_4_CYSELG_6503 : STD_LOGIC; 
  signal U3_C2_4_CLKINV_6501 : STD_LOGIC; 
  signal U3_C2_4_CEINV_6500 : STD_LOGIC; 
  signal U3_C2_6_DXMUX_6591 : STD_LOGIC; 
  signal U3_C2_6_XORF_6589 : STD_LOGIC; 
  signal U3_C2_6_CYINIT_6588 : STD_LOGIC; 
  signal U3_C2_6_CY0F_6587 : STD_LOGIC; 
  signal U3_C2_6_DYMUX_6574 : STD_LOGIC; 
  signal U3_C2_6_XORG_6572 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_6_Q : STD_LOGIC; 
  signal U3_C2_6_CYSELF_6570 : STD_LOGIC; 
  signal U3_C2_6_CYMUXFAST_6569 : STD_LOGIC; 
  signal U3_C2_6_CYAND_6568 : STD_LOGIC; 
  signal U3_C2_6_FASTCARRY_6567 : STD_LOGIC; 
  signal U3_C2_6_CYMUXG2_6566 : STD_LOGIC; 
  signal U3_C2_6_CYMUXF2_6565 : STD_LOGIC; 
  signal U3_C2_6_CY0G_6564 : STD_LOGIC; 
  signal U3_C2_6_CYSELG_6556 : STD_LOGIC; 
  signal U3_C2_6_CLKINV_6554 : STD_LOGIC; 
  signal U3_C2_6_CEINV_6553 : STD_LOGIC; 
  signal U3_C2_8_DXMUX_6636 : STD_LOGIC; 
  signal U3_C2_8_XORF_6634 : STD_LOGIC; 
  signal U3_C2_8_CYINIT_6633 : STD_LOGIC; 
  signal U3_C2_8_CY0F_6632 : STD_LOGIC; 
  signal U3_C2_8_CYSELF_6624 : STD_LOGIC; 
  signal U3_C2_8_DYMUX_6618 : STD_LOGIC; 
  signal U3_C2_8_XORG_6616 : STD_LOGIC; 
  signal U3_Mcount_C2_cy_8_Q : STD_LOGIC; 
  signal U3_C2_8_CLKINV_6606 : STD_LOGIC; 
  signal U3_C2_8_CEINV_6605 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_DXMUX_6688 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_XORF_6686 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_CYINIT_6685 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_CYSELF_6679 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_DYMUX_6671 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_XORG_6669 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_CYMUXG_6668 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc_cy_0_Q : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_LOGIC_ONE_6666 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_CYSELG_6659 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_SRINV_6657 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_CLKINV_6656 : STD_LOGIC; 
  signal U3_tank2_angle_calc_0_CEINV_6655 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_DXMUX_6744 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_XORF_6742 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYINIT_6741 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_DYMUX_6729 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_XORG_6727 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc_cy_2_Q : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYSELF_6725 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYMUXFAST_6724 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYAND_6723 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_FASTCARRY_6722 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYMUXG2_6721 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYMUXF2_6720 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_LOGIC_ONE_6719 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CYSELG_6712 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_SRINV_6710 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CLKINV_6709 : STD_LOGIC; 
  signal U3_tank2_angle_calc_2_CEINV_6708 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_DXMUX_6800 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_XORF_6798 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYINIT_6797 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_DYMUX_6785 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_XORG_6783 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc_cy_4_Q : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYSELF_6781 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYMUXFAST_6780 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYAND_6779 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_FASTCARRY_6778 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYMUXG2_6777 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYMUXF2_6776 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_LOGIC_ONE_6775 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CYSELG_6769 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_SRINV_6767 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CLKINV_6766 : STD_LOGIC; 
  signal U3_tank2_angle_calc_4_CEINV_6765 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_DXMUX_6849 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_XORF_6847 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_LOGIC_ONE_6846 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_CYINIT_6845 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_CYSELF_6839 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_DYMUX_6832 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_XORG_6830 : STD_LOGIC; 
  signal U3_Mcount_tank2_angle_calc_cy_6_Q : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_SRINV_6822 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_CLKINV_6821 : STD_LOGIC; 
  signal U3_tank2_angle_calc_6_CEINV_6820 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT_6884 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F_6883 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF_6875 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV_6873 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG_6872 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G_6870 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG_6862 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6915 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6906 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST_6905 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND_6904 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY_6903 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2_6902 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2_6901 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G_6900 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6892 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6946 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6937 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST_6936 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND_6935 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY_6934 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2_6933 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2_6932 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G_6931 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6924 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6977 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6970 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST_6969 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND_6968 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY_6967 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2_6966 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2_6965 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G_6964 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6956 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CY0F_7008 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYSELF_7000 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYMUXFAST_6999 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYAND_6998 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_FASTCARRY_6997 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYMUXG2_6996 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYMUXF2_6995 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CY0G_6994 : STD_LOGIC; 
  signal U3_spriteon2_cmp_ge0000_CYSELG_6988 : STD_LOGIC; 
  signal U2_Result_0_XORF_7043 : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ONE_7042 : STD_LOGIC; 
  signal U2_Result_0_CYINIT_7041 : STD_LOGIC; 
  signal U2_Result_0_CYSELF_7032 : STD_LOGIC; 
  signal U2_Result_0_BXINV_7030 : STD_LOGIC; 
  signal U2_Result_0_XORG_7028 : STD_LOGIC; 
  signal U2_Result_0_CYMUXG_7027 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_LOGIC_ZERO_7025 : STD_LOGIC; 
  signal U2_Result_0_CYSELG_7016 : STD_LOGIC; 
  signal U2_Result_0_G : STD_LOGIC; 
  signal U2_Result_2_XORF_7081 : STD_LOGIC; 
  signal U2_Result_2_CYINIT_7080 : STD_LOGIC; 
  signal U2_Result_2_F : STD_LOGIC; 
  signal U2_Result_2_XORG_7069 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_CYSELF_7067 : STD_LOGIC; 
  signal U2_Result_2_CYMUXFAST_7066 : STD_LOGIC; 
  signal U2_Result_2_CYAND_7065 : STD_LOGIC; 
  signal U2_Result_2_FASTCARRY_7064 : STD_LOGIC; 
  signal U2_Result_2_CYMUXG2_7063 : STD_LOGIC; 
  signal U2_Result_2_CYMUXF2_7062 : STD_LOGIC; 
  signal U2_Result_2_LOGIC_ZERO_7061 : STD_LOGIC; 
  signal U2_Result_2_CYSELG_7052 : STD_LOGIC; 
  signal U2_Result_2_G : STD_LOGIC; 
  signal U2_Result_4_XORF_7119 : STD_LOGIC; 
  signal U2_Result_4_CYINIT_7118 : STD_LOGIC; 
  signal U2_Result_4_F : STD_LOGIC; 
  signal U2_Result_4_XORG_7107 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_CYSELF_7105 : STD_LOGIC; 
  signal U2_Result_4_CYMUXFAST_7104 : STD_LOGIC; 
  signal U2_Result_4_CYAND_7103 : STD_LOGIC; 
  signal U2_Result_4_FASTCARRY_7102 : STD_LOGIC; 
  signal U2_Result_4_CYMUXG2_7101 : STD_LOGIC; 
  signal U2_Result_4_CYMUXF2_7100 : STD_LOGIC; 
  signal U2_Result_4_LOGIC_ZERO_7099 : STD_LOGIC; 
  signal U2_Result_4_CYSELG_7090 : STD_LOGIC; 
  signal U2_Result_4_G : STD_LOGIC; 
  signal U2_Result_6_XORF_7157 : STD_LOGIC; 
  signal U2_Result_6_CYINIT_7156 : STD_LOGIC; 
  signal U2_Result_6_F : STD_LOGIC; 
  signal U2_Result_6_XORG_7145 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_CYSELF_7143 : STD_LOGIC; 
  signal U2_Result_6_CYMUXFAST_7142 : STD_LOGIC; 
  signal U2_Result_6_CYAND_7141 : STD_LOGIC; 
  signal U2_Result_6_FASTCARRY_7140 : STD_LOGIC; 
  signal U2_Result_6_CYMUXG2_7139 : STD_LOGIC; 
  signal U2_Result_6_CYMUXF2_7138 : STD_LOGIC; 
  signal U2_Result_6_LOGIC_ZERO_7137 : STD_LOGIC; 
  signal U2_Result_6_CYSELG_7128 : STD_LOGIC; 
  signal U2_Result_6_G : STD_LOGIC; 
  signal U2_Result_8_XORF_7188 : STD_LOGIC; 
  signal U2_Result_8_LOGIC_ZERO_7187 : STD_LOGIC; 
  signal U2_Result_8_CYINIT_7186 : STD_LOGIC; 
  signal U2_Result_8_CYSELF_7177 : STD_LOGIC; 
  signal U2_Result_8_F : STD_LOGIC; 
  signal U2_Result_8_XORG_7174 : STD_LOGIC; 
  signal U2_Mcount_vcs_cy_8_Q : STD_LOGIC; 
  signal U2_vcs_9_rt_7171 : STD_LOGIC; 
  signal U3_xpix1_0_XORF_7224 : STD_LOGIC; 
  signal U3_xpix1_0_CYINIT_7223 : STD_LOGIC; 
  signal U3_xpix1_0_CY0F_7222 : STD_LOGIC; 
  signal U3_xpix1_0_CYSELF_7214 : STD_LOGIC; 
  signal U3_xpix1_0_BXINV_7212 : STD_LOGIC; 
  signal U3_xpix1_0_XORG_7210 : STD_LOGIC; 
  signal U3_xpix1_0_CYMUXG_7209 : STD_LOGIC; 
  signal U3_xpix1_0_CY0G_7207 : STD_LOGIC; 
  signal U3_xpix1_0_CYSELG_7199 : STD_LOGIC; 
  signal U3_xpix1_2_XORF_7263 : STD_LOGIC; 
  signal U3_xpix1_2_CYINIT_7262 : STD_LOGIC; 
  signal U3_xpix1_2_CY0F_7261 : STD_LOGIC; 
  signal U3_xpix1_2_XORG_7251 : STD_LOGIC; 
  signal U3_xpix1_2_CYSELF_7249 : STD_LOGIC; 
  signal U3_xpix1_2_CYMUXFAST_7248 : STD_LOGIC; 
  signal U3_xpix1_2_CYAND_7247 : STD_LOGIC; 
  signal U3_xpix1_2_FASTCARRY_7246 : STD_LOGIC; 
  signal U3_xpix1_2_CYMUXG2_7245 : STD_LOGIC; 
  signal U3_xpix1_2_CYMUXF2_7244 : STD_LOGIC; 
  signal U3_xpix1_2_CY0G_7243 : STD_LOGIC; 
  signal U3_xpix1_2_CYSELG_7235 : STD_LOGIC; 
  signal U3_xpix1_4_XORF_7290 : STD_LOGIC; 
  signal U3_xpix1_4_CYINIT_7289 : STD_LOGIC; 
  signal U3_Madd_spriteon1_addsub0001_lut_8_bdd0 : STD_LOGIC; 
  signal x7_clkdiv_0_DXMUX_7339 : STD_LOGIC; 
  signal x7_clkdiv_0_XORF_7337 : STD_LOGIC; 
  signal x7_clkdiv_0_LOGIC_ONE_7336 : STD_LOGIC; 
  signal x7_clkdiv_0_CYINIT_7335 : STD_LOGIC; 
  signal x7_clkdiv_0_CYSELF_7326 : STD_LOGIC; 
  signal x7_clkdiv_0_BXINV_7324 : STD_LOGIC; 
  signal x7_clkdiv_0_DYMUX_7317 : STD_LOGIC; 
  signal x7_clkdiv_0_XORG_7315 : STD_LOGIC; 
  signal x7_clkdiv_0_CYMUXG_7314 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_0_Q : STD_LOGIC; 
  signal x7_clkdiv_0_LOGIC_ZERO_7312 : STD_LOGIC; 
  signal x7_clkdiv_0_CYSELG_7303 : STD_LOGIC; 
  signal x7_clkdiv_0_G : STD_LOGIC; 
  signal x7_clkdiv_0_SRINV_7301 : STD_LOGIC; 
  signal x7_clkdiv_0_CLKINV_7300 : STD_LOGIC; 
  signal x7_clkdiv_2_DXMUX_7395 : STD_LOGIC; 
  signal x7_clkdiv_2_XORF_7393 : STD_LOGIC; 
  signal x7_clkdiv_2_CYINIT_7392 : STD_LOGIC; 
  signal x7_clkdiv_2_F : STD_LOGIC; 
  signal x7_clkdiv_2_DYMUX_7376 : STD_LOGIC; 
  signal x7_clkdiv_2_XORG_7374 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_2_Q : STD_LOGIC; 
  signal x7_clkdiv_2_CYSELF_7372 : STD_LOGIC; 
  signal x7_clkdiv_2_CYMUXFAST_7371 : STD_LOGIC; 
  signal x7_clkdiv_2_CYAND_7370 : STD_LOGIC; 
  signal x7_clkdiv_2_FASTCARRY_7369 : STD_LOGIC; 
  signal x7_clkdiv_2_CYMUXG2_7368 : STD_LOGIC; 
  signal x7_clkdiv_2_CYMUXF2_7367 : STD_LOGIC; 
  signal x7_clkdiv_2_LOGIC_ZERO_7366 : STD_LOGIC; 
  signal x7_clkdiv_2_CYSELG_7357 : STD_LOGIC; 
  signal x7_clkdiv_2_G : STD_LOGIC; 
  signal x7_clkdiv_2_SRINV_7355 : STD_LOGIC; 
  signal x7_clkdiv_2_CLKINV_7354 : STD_LOGIC; 
  signal x7_clkdiv_4_DXMUX_7451 : STD_LOGIC; 
  signal x7_clkdiv_4_XORF_7449 : STD_LOGIC; 
  signal x7_clkdiv_4_CYINIT_7448 : STD_LOGIC; 
  signal x7_clkdiv_4_F : STD_LOGIC; 
  signal x7_clkdiv_4_DYMUX_7432 : STD_LOGIC; 
  signal x7_clkdiv_4_XORG_7430 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_4_Q : STD_LOGIC; 
  signal x7_clkdiv_4_CYSELF_7428 : STD_LOGIC; 
  signal x7_clkdiv_4_CYMUXFAST_7427 : STD_LOGIC; 
  signal x7_clkdiv_4_CYAND_7426 : STD_LOGIC; 
  signal x7_clkdiv_4_FASTCARRY_7425 : STD_LOGIC; 
  signal x7_clkdiv_4_CYMUXG2_7424 : STD_LOGIC; 
  signal x7_clkdiv_4_CYMUXF2_7423 : STD_LOGIC; 
  signal x7_clkdiv_4_LOGIC_ZERO_7422 : STD_LOGIC; 
  signal x7_clkdiv_4_CYSELG_7413 : STD_LOGIC; 
  signal x7_clkdiv_4_G : STD_LOGIC; 
  signal x7_clkdiv_4_SRINV_7411 : STD_LOGIC; 
  signal x7_clkdiv_4_CLKINV_7410 : STD_LOGIC; 
  signal x7_clkdiv_6_DXMUX_7507 : STD_LOGIC; 
  signal x7_clkdiv_6_XORF_7505 : STD_LOGIC; 
  signal x7_clkdiv_6_CYINIT_7504 : STD_LOGIC; 
  signal x7_clkdiv_6_F : STD_LOGIC; 
  signal x7_clkdiv_6_DYMUX_7488 : STD_LOGIC; 
  signal x7_clkdiv_6_XORG_7486 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_6_Q : STD_LOGIC; 
  signal x7_clkdiv_6_CYSELF_7484 : STD_LOGIC; 
  signal x7_clkdiv_6_CYMUXFAST_7483 : STD_LOGIC; 
  signal x7_clkdiv_6_CYAND_7482 : STD_LOGIC; 
  signal x7_clkdiv_6_FASTCARRY_7481 : STD_LOGIC; 
  signal x7_clkdiv_6_CYMUXG2_7480 : STD_LOGIC; 
  signal x7_clkdiv_6_CYMUXF2_7479 : STD_LOGIC; 
  signal x7_clkdiv_6_LOGIC_ZERO_7478 : STD_LOGIC; 
  signal x7_clkdiv_6_CYSELG_7469 : STD_LOGIC; 
  signal x7_clkdiv_6_G : STD_LOGIC; 
  signal x7_clkdiv_6_SRINV_7467 : STD_LOGIC; 
  signal x7_clkdiv_6_CLKINV_7466 : STD_LOGIC; 
  signal x7_clkdiv_8_DXMUX_7563 : STD_LOGIC; 
  signal x7_clkdiv_8_XORF_7561 : STD_LOGIC; 
  signal x7_clkdiv_8_CYINIT_7560 : STD_LOGIC; 
  signal x7_clkdiv_8_F : STD_LOGIC; 
  signal x7_clkdiv_8_DYMUX_7544 : STD_LOGIC; 
  signal x7_clkdiv_8_XORG_7542 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_8_Q : STD_LOGIC; 
  signal x7_clkdiv_8_CYSELF_7540 : STD_LOGIC; 
  signal x7_clkdiv_8_CYMUXFAST_7539 : STD_LOGIC; 
  signal x7_clkdiv_8_CYAND_7538 : STD_LOGIC; 
  signal x7_clkdiv_8_FASTCARRY_7537 : STD_LOGIC; 
  signal x7_clkdiv_8_CYMUXG2_7536 : STD_LOGIC; 
  signal x7_clkdiv_8_CYMUXF2_7535 : STD_LOGIC; 
  signal x7_clkdiv_8_LOGIC_ZERO_7534 : STD_LOGIC; 
  signal x7_clkdiv_8_CYSELG_7525 : STD_LOGIC; 
  signal x7_clkdiv_8_G : STD_LOGIC; 
  signal x7_clkdiv_8_SRINV_7523 : STD_LOGIC; 
  signal x7_clkdiv_8_CLKINV_7522 : STD_LOGIC; 
  signal x7_clkdiv_10_DXMUX_7619 : STD_LOGIC; 
  signal x7_clkdiv_10_XORF_7617 : STD_LOGIC; 
  signal x7_clkdiv_10_CYINIT_7616 : STD_LOGIC; 
  signal x7_clkdiv_10_F : STD_LOGIC; 
  signal x7_clkdiv_10_DYMUX_7600 : STD_LOGIC; 
  signal x7_clkdiv_10_XORG_7598 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_10_Q : STD_LOGIC; 
  signal x7_clkdiv_10_CYSELF_7596 : STD_LOGIC; 
  signal x7_clkdiv_10_CYMUXFAST_7595 : STD_LOGIC; 
  signal x7_clkdiv_10_CYAND_7594 : STD_LOGIC; 
  signal x7_clkdiv_10_FASTCARRY_7593 : STD_LOGIC; 
  signal x7_clkdiv_10_CYMUXG2_7592 : STD_LOGIC; 
  signal x7_clkdiv_10_CYMUXF2_7591 : STD_LOGIC; 
  signal x7_clkdiv_10_LOGIC_ZERO_7590 : STD_LOGIC; 
  signal x7_clkdiv_10_CYSELG_7581 : STD_LOGIC; 
  signal x7_clkdiv_10_G : STD_LOGIC; 
  signal x7_clkdiv_10_SRINV_7579 : STD_LOGIC; 
  signal x7_clkdiv_10_CLKINV_7578 : STD_LOGIC; 
  signal x7_clkdiv_12_DXMUX_7675 : STD_LOGIC; 
  signal x7_clkdiv_12_XORF_7673 : STD_LOGIC; 
  signal x7_clkdiv_12_CYINIT_7672 : STD_LOGIC; 
  signal x7_clkdiv_12_F : STD_LOGIC; 
  signal x7_clkdiv_12_DYMUX_7656 : STD_LOGIC; 
  signal x7_clkdiv_12_XORG_7654 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_12_Q : STD_LOGIC; 
  signal x7_clkdiv_12_CYSELF_7652 : STD_LOGIC; 
  signal x7_clkdiv_12_CYMUXFAST_7651 : STD_LOGIC; 
  signal x7_clkdiv_12_CYAND_7650 : STD_LOGIC; 
  signal x7_clkdiv_12_FASTCARRY_7649 : STD_LOGIC; 
  signal x7_clkdiv_12_CYMUXG2_7648 : STD_LOGIC; 
  signal x7_clkdiv_12_CYMUXF2_7647 : STD_LOGIC; 
  signal x7_clkdiv_12_LOGIC_ZERO_7646 : STD_LOGIC; 
  signal x7_clkdiv_12_CYSELG_7637 : STD_LOGIC; 
  signal x7_clkdiv_12_G : STD_LOGIC; 
  signal x7_clkdiv_12_SRINV_7635 : STD_LOGIC; 
  signal x7_clkdiv_12_CLKINV_7634 : STD_LOGIC; 
  signal x7_clkdiv_14_DXMUX_7731 : STD_LOGIC; 
  signal x7_clkdiv_14_XORF_7729 : STD_LOGIC; 
  signal x7_clkdiv_14_CYINIT_7728 : STD_LOGIC; 
  signal x7_clkdiv_14_F : STD_LOGIC; 
  signal x7_clkdiv_14_DYMUX_7712 : STD_LOGIC; 
  signal x7_clkdiv_14_XORG_7710 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_14_Q : STD_LOGIC; 
  signal x7_clkdiv_14_CYSELF_7708 : STD_LOGIC; 
  signal x7_clkdiv_14_CYMUXFAST_7707 : STD_LOGIC; 
  signal x7_clkdiv_14_CYAND_7706 : STD_LOGIC; 
  signal x7_clkdiv_14_FASTCARRY_7705 : STD_LOGIC; 
  signal x7_clkdiv_14_CYMUXG2_7704 : STD_LOGIC; 
  signal x7_clkdiv_14_CYMUXF2_7703 : STD_LOGIC; 
  signal x7_clkdiv_14_LOGIC_ZERO_7702 : STD_LOGIC; 
  signal x7_clkdiv_14_CYSELG_7693 : STD_LOGIC; 
  signal x7_clkdiv_14_G : STD_LOGIC; 
  signal x7_clkdiv_14_SRINV_7691 : STD_LOGIC; 
  signal x7_clkdiv_14_CLKINV_7690 : STD_LOGIC; 
  signal x7_clkdiv_16_DXMUX_7787 : STD_LOGIC; 
  signal x7_clkdiv_16_XORF_7785 : STD_LOGIC; 
  signal x7_clkdiv_16_CYINIT_7784 : STD_LOGIC; 
  signal x7_clkdiv_16_F : STD_LOGIC; 
  signal x7_clkdiv_16_DYMUX_7768 : STD_LOGIC; 
  signal x7_clkdiv_16_XORG_7766 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_16_Q : STD_LOGIC; 
  signal x7_clkdiv_16_CYSELF_7764 : STD_LOGIC; 
  signal x7_clkdiv_16_CYMUXFAST_7763 : STD_LOGIC; 
  signal x7_clkdiv_16_CYAND_7762 : STD_LOGIC; 
  signal x7_clkdiv_16_FASTCARRY_7761 : STD_LOGIC; 
  signal x7_clkdiv_16_CYMUXG2_7760 : STD_LOGIC; 
  signal x7_clkdiv_16_CYMUXF2_7759 : STD_LOGIC; 
  signal x7_clkdiv_16_LOGIC_ZERO_7758 : STD_LOGIC; 
  signal x7_clkdiv_16_CYSELG_7749 : STD_LOGIC; 
  signal x7_clkdiv_16_G : STD_LOGIC; 
  signal x7_clkdiv_16_SRINV_7747 : STD_LOGIC; 
  signal x7_clkdiv_16_CLKINV_7746 : STD_LOGIC; 
  signal x7_clkdiv_18_DXMUX_7836 : STD_LOGIC; 
  signal x7_clkdiv_18_XORF_7834 : STD_LOGIC; 
  signal x7_clkdiv_18_LOGIC_ZERO_7833 : STD_LOGIC; 
  signal x7_clkdiv_18_CYINIT_7832 : STD_LOGIC; 
  signal x7_clkdiv_18_CYSELF_7823 : STD_LOGIC; 
  signal x7_clkdiv_18_F : STD_LOGIC; 
  signal x7_clkdiv_18_DYMUX_7815 : STD_LOGIC; 
  signal x7_clkdiv_18_XORG_7813 : STD_LOGIC; 
  signal x7_Mcount_clkdiv_cy_18_Q : STD_LOGIC; 
  signal x7_clkdiv_19_rt_7810 : STD_LOGIC; 
  signal x7_clkdiv_18_SRINV_7802 : STD_LOGIC; 
  signal x7_clkdiv_18_CLKINV_7801 : STD_LOGIC; 
  signal U3_xpix2_0_XORF_7877 : STD_LOGIC; 
  signal U3_xpix2_0_CYINIT_7876 : STD_LOGIC; 
  signal U3_xpix2_0_CY0F_7875 : STD_LOGIC; 
  signal U3_xpix2_0_CYSELF_7867 : STD_LOGIC; 
  signal U3_xpix2_0_BXINV_7865 : STD_LOGIC; 
  signal U3_xpix2_0_XORG_7863 : STD_LOGIC; 
  signal U3_xpix2_0_CYMUXG_7862 : STD_LOGIC; 
  signal U3_xpix2_0_CY0G_7860 : STD_LOGIC; 
  signal U3_xpix2_0_CYSELG_7852 : STD_LOGIC; 
  signal U3_xpix2_2_XORF_7916 : STD_LOGIC; 
  signal U3_xpix2_2_CYINIT_7915 : STD_LOGIC; 
  signal U3_xpix2_2_CY0F_7914 : STD_LOGIC; 
  signal U3_xpix2_2_XORG_7904 : STD_LOGIC; 
  signal U3_xpix2_2_CYSELF_7902 : STD_LOGIC; 
  signal U3_xpix2_2_CYMUXFAST_7901 : STD_LOGIC; 
  signal U3_xpix2_2_CYAND_7900 : STD_LOGIC; 
  signal U3_xpix2_2_FASTCARRY_7899 : STD_LOGIC; 
  signal U3_xpix2_2_CYMUXG2_7898 : STD_LOGIC; 
  signal U3_xpix2_2_CYMUXF2_7897 : STD_LOGIC; 
  signal U3_xpix2_2_CY0G_7896 : STD_LOGIC; 
  signal U3_xpix2_2_CYSELG_7888 : STD_LOGIC; 
  signal U3_xpix2_4_XORF_7943 : STD_LOGIC; 
  signal U3_xpix2_4_CYINIT_7942 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT_7974 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F_7973 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF_7965 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV_7963 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG_7962 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G_7960 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG_7952 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_8005 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7996 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST_7995 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND_7994 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY_7993 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2_7992 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2_7991 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G_7990 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7982 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_8036 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_8028 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST_8027 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND_8026 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY_8025 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2_8024 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2_8023 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G_8022 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_8016 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_8069 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_8061 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST_8060 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND_8059 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY_8058 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2_8057 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2_8056 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G_8055 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_8047 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_8102 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_8095 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST_8094 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND_8093 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY_8092 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2_8091 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2_8090 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G_8089 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_8083 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT_8132 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F_8131 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF_8123 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV_8121 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG_8120 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G_8118 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG_8110 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_8163 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_8154 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST_8153 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND_8152 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY_8151 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2_8150 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2_8149 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G_8148 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_8140 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_8194 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_8185 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST_8184 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND_8183 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY_8182 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2_8181 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2_8180 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G_8179 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_8172 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_8225 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_8218 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST_8217 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND_8216 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY_8215 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2_8214 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2_8213 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G_8212 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_8206 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_8256 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_8247 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST_8246 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND_8245 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY_8244 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2_8243 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2_8242 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G_8241 : STD_LOGIC; 
  signal U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_8233 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT_8286 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F_8285 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF_8277 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV_8275 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG_8274 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G_8272 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG_8264 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_8317 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_8308 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST_8307 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND_8306 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY_8305 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2_8304 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2_8303 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G_8302 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_8294 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_8348 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_8339 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST_8338 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND_8337 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY_8336 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2_8335 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2_8334 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G_8333 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_8326 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_8379 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_8372 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST_8371 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND_8370 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY_8369 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2_8368 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2_8367 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G_8366 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_8360 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_8410 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_8401 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST_8400 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND_8399 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY_8398 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2_8397 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2_8396 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G_8395 : STD_LOGIC; 
  signal U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_8387 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_XORF_8445 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_LOGIC_ONE_8444 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYINIT_8443 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYSELF_8434 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_BXINV_8432 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_XORG_8430 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYMUXG_8429 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_0_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_LOGIC_ZERO_8427 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_CYSELG_8418 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_0_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_XORF_8483 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYINIT_8482 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_XORG_8471 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_2_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYSELF_8469 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXFAST_8468 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYAND_8467 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_FASTCARRY_8466 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXG2_8465 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYMUXF2_8464 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_LOGIC_ZERO_8463 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_CYSELG_8454 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_2_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_XORF_8521 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYINIT_8520 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_XORG_8509 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_4_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYSELF_8507 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXFAST_8506 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYAND_8505 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_FASTCARRY_8504 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXG2_8503 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYMUXF2_8502 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_LOGIC_ZERO_8501 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_CYSELG_8492 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_4_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_XORF_8559 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYINIT_8558 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_XORG_8547 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_6_Q : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYSELF_8545 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXFAST_8544 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYAND_8543 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_FASTCARRY_8542 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXG2_8541 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYMUXF2_8540 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_LOGIC_ZERO_8539 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_CYSELG_8530 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_6_G : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_XORF_8590 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_LOGIC_ZERO_8589 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_CYINIT_8588 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_CYSELF_8579 : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_F : STD_LOGIC; 
  signal nes_scalar_next_addsub0000_8_XORG_8576 : STD_LOGIC; 
  signal nes_Madd_scalar_next_addsub0000_cy_8_Q : STD_LOGIC; 
  signal nes_scalar_reg_9_rt_8573 : STD_LOGIC; 
  signal U2_Result_0_1_XORF_8626 : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ONE_8625 : STD_LOGIC; 
  signal U2_Result_0_1_CYINIT_8624 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELF_8615 : STD_LOGIC; 
  signal U2_Result_0_1_BXINV_8613 : STD_LOGIC; 
  signal U2_Result_0_1_XORG_8611 : STD_LOGIC; 
  signal U2_Result_0_1_CYMUXG_8610 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_0_Q : STD_LOGIC; 
  signal U2_Result_0_1_LOGIC_ZERO_8608 : STD_LOGIC; 
  signal U2_Result_0_1_CYSELG_8599 : STD_LOGIC; 
  signal U2_Result_0_1_G : STD_LOGIC; 
  signal U2_Result_2_1_XORF_8664 : STD_LOGIC; 
  signal U2_Result_2_1_CYINIT_8663 : STD_LOGIC; 
  signal U2_Result_2_1_F : STD_LOGIC; 
  signal U2_Result_2_1_XORG_8652 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_2_Q : STD_LOGIC; 
  signal U2_Result_2_1_CYSELF_8650 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXFAST_8649 : STD_LOGIC; 
  signal U2_Result_2_1_CYAND_8648 : STD_LOGIC; 
  signal U2_Result_2_1_FASTCARRY_8647 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXG2_8646 : STD_LOGIC; 
  signal U2_Result_2_1_CYMUXF2_8645 : STD_LOGIC; 
  signal U2_Result_2_1_LOGIC_ZERO_8644 : STD_LOGIC; 
  signal U2_Result_2_1_CYSELG_8635 : STD_LOGIC; 
  signal U2_Result_2_1_G : STD_LOGIC; 
  signal U2_Result_4_1_XORF_8702 : STD_LOGIC; 
  signal U2_Result_4_1_CYINIT_8701 : STD_LOGIC; 
  signal U2_Result_4_1_F : STD_LOGIC; 
  signal U2_Result_4_1_XORG_8690 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_4_Q : STD_LOGIC; 
  signal U2_Result_4_1_CYSELF_8688 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXFAST_8687 : STD_LOGIC; 
  signal U2_Result_4_1_CYAND_8686 : STD_LOGIC; 
  signal U2_Result_4_1_FASTCARRY_8685 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXG2_8684 : STD_LOGIC; 
  signal U2_Result_4_1_CYMUXF2_8683 : STD_LOGIC; 
  signal U2_Result_4_1_LOGIC_ZERO_8682 : STD_LOGIC; 
  signal U2_Result_4_1_CYSELG_8673 : STD_LOGIC; 
  signal U2_Result_4_1_G : STD_LOGIC; 
  signal U2_Result_6_1_XORF_8740 : STD_LOGIC; 
  signal U2_Result_6_1_CYINIT_8739 : STD_LOGIC; 
  signal U2_Result_6_1_F : STD_LOGIC; 
  signal U2_Result_6_1_XORG_8728 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_6_Q : STD_LOGIC; 
  signal U2_Result_6_1_CYSELF_8726 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXFAST_8725 : STD_LOGIC; 
  signal U2_Result_6_1_CYAND_8724 : STD_LOGIC; 
  signal U2_Result_6_1_FASTCARRY_8723 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXG2_8722 : STD_LOGIC; 
  signal U2_Result_6_1_CYMUXF2_8721 : STD_LOGIC; 
  signal U2_Result_6_1_LOGIC_ZERO_8720 : STD_LOGIC; 
  signal U2_Result_6_1_CYSELG_8711 : STD_LOGIC; 
  signal U2_Result_6_1_G : STD_LOGIC; 
  signal U2_Result_8_1_XORF_8771 : STD_LOGIC; 
  signal U2_Result_8_1_LOGIC_ZERO_8770 : STD_LOGIC; 
  signal U2_Result_8_1_CYINIT_8769 : STD_LOGIC; 
  signal U2_Result_8_1_CYSELF_8760 : STD_LOGIC; 
  signal U2_Result_8_1_F : STD_LOGIC; 
  signal U2_Result_8_1_XORG_8757 : STD_LOGIC; 
  signal U2_Mcount_hcs_cy_8_Q : STD_LOGIC; 
  signal U2_hcs_9_rt_8754 : STD_LOGIC; 
  signal nes_Result_0_XORF_8807 : STD_LOGIC; 
  signal nes_Result_0_LOGIC_ONE_8806 : STD_LOGIC; 
  signal nes_Result_0_CYINIT_8805 : STD_LOGIC; 
  signal nes_Result_0_CYSELF_8796 : STD_LOGIC; 
  signal nes_Result_0_BXINV_8794 : STD_LOGIC; 
  signal nes_Result_0_XORG_8792 : STD_LOGIC; 
  signal nes_Result_0_CYMUXG_8791 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_0_Q : STD_LOGIC; 
  signal nes_Result_0_LOGIC_ZERO_8789 : STD_LOGIC; 
  signal nes_Result_0_CYSELG_8780 : STD_LOGIC; 
  signal nes_Result_0_G : STD_LOGIC; 
  signal nes_Result_2_XORF_8845 : STD_LOGIC; 
  signal nes_Result_2_CYINIT_8844 : STD_LOGIC; 
  signal nes_Result_2_F : STD_LOGIC; 
  signal nes_Result_2_XORG_8833 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_2_Q : STD_LOGIC; 
  signal nes_Result_2_CYSELF_8831 : STD_LOGIC; 
  signal nes_Result_2_CYMUXFAST_8830 : STD_LOGIC; 
  signal nes_Result_2_CYAND_8829 : STD_LOGIC; 
  signal nes_Result_2_FASTCARRY_8828 : STD_LOGIC; 
  signal nes_Result_2_CYMUXG2_8827 : STD_LOGIC; 
  signal nes_Result_2_CYMUXF2_8826 : STD_LOGIC; 
  signal nes_Result_2_LOGIC_ZERO_8825 : STD_LOGIC; 
  signal nes_Result_2_CYSELG_8816 : STD_LOGIC; 
  signal nes_Result_2_G : STD_LOGIC; 
  signal nes_Result_4_XORF_8883 : STD_LOGIC; 
  signal nes_Result_4_CYINIT_8882 : STD_LOGIC; 
  signal nes_Result_4_F : STD_LOGIC; 
  signal nes_Result_4_XORG_8871 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_4_Q : STD_LOGIC; 
  signal nes_Result_4_CYSELF_8869 : STD_LOGIC; 
  signal nes_Result_4_CYMUXFAST_8868 : STD_LOGIC; 
  signal nes_Result_4_CYAND_8867 : STD_LOGIC; 
  signal nes_Result_4_FASTCARRY_8866 : STD_LOGIC; 
  signal nes_Result_4_CYMUXG2_8865 : STD_LOGIC; 
  signal nes_Result_4_CYMUXF2_8864 : STD_LOGIC; 
  signal nes_Result_4_LOGIC_ZERO_8863 : STD_LOGIC; 
  signal nes_Result_4_CYSELG_8854 : STD_LOGIC; 
  signal nes_Result_4_G : STD_LOGIC; 
  signal nes_Result_6_XORF_8921 : STD_LOGIC; 
  signal nes_Result_6_CYINIT_8920 : STD_LOGIC; 
  signal nes_Result_6_F : STD_LOGIC; 
  signal nes_Result_6_XORG_8909 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_6_Q : STD_LOGIC; 
  signal nes_Result_6_CYSELF_8907 : STD_LOGIC; 
  signal nes_Result_6_CYMUXFAST_8906 : STD_LOGIC; 
  signal nes_Result_6_CYAND_8905 : STD_LOGIC; 
  signal nes_Result_6_FASTCARRY_8904 : STD_LOGIC; 
  signal nes_Result_6_CYMUXG2_8903 : STD_LOGIC; 
  signal nes_Result_6_CYMUXF2_8902 : STD_LOGIC; 
  signal nes_Result_6_LOGIC_ZERO_8901 : STD_LOGIC; 
  signal nes_Result_6_CYSELG_8892 : STD_LOGIC; 
  signal nes_Result_6_G : STD_LOGIC; 
  signal nes_Result_8_XORF_8952 : STD_LOGIC; 
  signal nes_Result_8_LOGIC_ZERO_8951 : STD_LOGIC; 
  signal nes_Result_8_CYINIT_8950 : STD_LOGIC; 
  signal nes_Result_8_CYSELF_8941 : STD_LOGIC; 
  signal nes_Result_8_F : STD_LOGIC; 
  signal nes_Result_8_XORG_8938 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_cy_8_Q : STD_LOGIC; 
  signal nes_counter_reg_9_rt_8935 : STD_LOGIC; 
  signal U3_Q_0_FFY_RST : STD_LOGIC; 
  signal U3_Q_0_FFX_RST : STD_LOGIC; 
  signal U3_Q_0_DXMUX_9001 : STD_LOGIC; 
  signal U3_Q_0_XORF_8999 : STD_LOGIC; 
  signal U3_Q_0_LOGIC_ONE_8998 : STD_LOGIC; 
  signal U3_Q_0_CYINIT_8997 : STD_LOGIC; 
  signal U3_Q_0_CYSELF_8988 : STD_LOGIC; 
  signal U3_Q_0_BXINV_8986 : STD_LOGIC; 
  signal U3_Q_0_DYMUX_8979 : STD_LOGIC; 
  signal U3_Q_0_XORG_8977 : STD_LOGIC; 
  signal U3_Q_0_CYMUXG_8976 : STD_LOGIC; 
  signal U3_Mcount_q_cy_0_Q : STD_LOGIC; 
  signal U3_Q_0_LOGIC_ZERO_8974 : STD_LOGIC; 
  signal U3_Q_0_CYSELG_8965 : STD_LOGIC; 
  signal U3_Q_0_G : STD_LOGIC; 
  signal U3_Q_0_SRINV_8963 : STD_LOGIC; 
  signal U3_Q_0_CLKINV_8962 : STD_LOGIC; 
  signal U3_Q_2_FFY_RST : STD_LOGIC; 
  signal U3_Q_2_FFX_RST : STD_LOGIC; 
  signal U3_Q_2_DXMUX_9057 : STD_LOGIC; 
  signal U3_Q_2_XORF_9055 : STD_LOGIC; 
  signal U3_Q_2_CYINIT_9054 : STD_LOGIC; 
  signal U3_Q_2_F : STD_LOGIC; 
  signal U3_Q_2_DYMUX_9038 : STD_LOGIC; 
  signal U3_Q_2_XORG_9036 : STD_LOGIC; 
  signal U3_Mcount_q_cy_2_Q : STD_LOGIC; 
  signal U3_Q_2_CYSELF_9034 : STD_LOGIC; 
  signal U3_Q_2_CYMUXFAST_9033 : STD_LOGIC; 
  signal U3_Q_2_CYAND_9032 : STD_LOGIC; 
  signal U3_Q_2_FASTCARRY_9031 : STD_LOGIC; 
  signal U3_Q_2_CYMUXG2_9030 : STD_LOGIC; 
  signal U3_Q_2_CYMUXF2_9029 : STD_LOGIC; 
  signal U3_Q_2_LOGIC_ZERO_9028 : STD_LOGIC; 
  signal U3_Q_2_CYSELG_9019 : STD_LOGIC; 
  signal U3_Q_2_G : STD_LOGIC; 
  signal U3_Q_2_SRINV_9017 : STD_LOGIC; 
  signal U3_Q_2_CLKINV_9016 : STD_LOGIC; 
  signal U3_Q_4_FFY_RST : STD_LOGIC; 
  signal U3_Q_4_FFX_RST : STD_LOGIC; 
  signal U3_Q_4_DXMUX_9113 : STD_LOGIC; 
  signal U3_Q_4_XORF_9111 : STD_LOGIC; 
  signal U3_Q_4_CYINIT_9110 : STD_LOGIC; 
  signal U3_Q_4_F : STD_LOGIC; 
  signal U3_Q_4_DYMUX_9094 : STD_LOGIC; 
  signal U3_Q_4_XORG_9092 : STD_LOGIC; 
  signal U3_Mcount_q_cy_4_Q : STD_LOGIC; 
  signal U3_Q_4_CYSELF_9090 : STD_LOGIC; 
  signal U3_Q_4_CYMUXFAST_9089 : STD_LOGIC; 
  signal U3_Q_4_CYAND_9088 : STD_LOGIC; 
  signal U3_Q_4_FASTCARRY_9087 : STD_LOGIC; 
  signal U3_Q_4_CYMUXG2_9086 : STD_LOGIC; 
  signal U3_Q_4_CYMUXF2_9085 : STD_LOGIC; 
  signal U3_Q_4_LOGIC_ZERO_9084 : STD_LOGIC; 
  signal U3_Q_4_CYSELG_9075 : STD_LOGIC; 
  signal U3_Q_4_G : STD_LOGIC; 
  signal U3_Q_4_SRINV_9073 : STD_LOGIC; 
  signal U3_Q_4_CLKINV_9072 : STD_LOGIC; 
  signal U3_Q_6_FFY_RST : STD_LOGIC; 
  signal U3_Q_6_FFX_RST : STD_LOGIC; 
  signal U3_Q_6_DXMUX_9169 : STD_LOGIC; 
  signal U3_Q_6_XORF_9167 : STD_LOGIC; 
  signal U3_Q_6_CYINIT_9166 : STD_LOGIC; 
  signal U3_Q_6_F : STD_LOGIC; 
  signal U3_Q_6_DYMUX_9150 : STD_LOGIC; 
  signal U3_Q_6_XORG_9148 : STD_LOGIC; 
  signal U3_Mcount_q_cy_6_Q : STD_LOGIC; 
  signal U3_Q_6_CYSELF_9146 : STD_LOGIC; 
  signal U3_Q_6_CYMUXFAST_9145 : STD_LOGIC; 
  signal U3_Q_6_CYAND_9144 : STD_LOGIC; 
  signal U3_Q_6_FASTCARRY_9143 : STD_LOGIC; 
  signal U3_Q_6_CYMUXG2_9142 : STD_LOGIC; 
  signal U3_Q_6_CYMUXF2_9141 : STD_LOGIC; 
  signal U3_Q_6_LOGIC_ZERO_9140 : STD_LOGIC; 
  signal U3_Q_6_CYSELG_9131 : STD_LOGIC; 
  signal U3_Q_6_G : STD_LOGIC; 
  signal U3_Q_6_SRINV_9129 : STD_LOGIC; 
  signal U3_Q_6_CLKINV_9128 : STD_LOGIC; 
  signal U3_Q_8_FFY_RST : STD_LOGIC; 
  signal U3_Q_8_FFX_RST : STD_LOGIC; 
  signal U3_Q_8_DXMUX_9225 : STD_LOGIC; 
  signal U3_Q_8_XORF_9223 : STD_LOGIC; 
  signal U3_Q_8_CYINIT_9222 : STD_LOGIC; 
  signal U3_Q_8_F : STD_LOGIC; 
  signal U3_Q_8_DYMUX_9206 : STD_LOGIC; 
  signal U3_Q_8_XORG_9204 : STD_LOGIC; 
  signal U3_Mcount_q_cy_8_Q : STD_LOGIC; 
  signal U3_Q_8_CYSELF_9202 : STD_LOGIC; 
  signal U3_Q_8_CYMUXFAST_9201 : STD_LOGIC; 
  signal U3_Q_8_CYAND_9200 : STD_LOGIC; 
  signal U3_Q_8_FASTCARRY_9199 : STD_LOGIC; 
  signal U3_Q_8_CYMUXG2_9198 : STD_LOGIC; 
  signal U3_Q_8_CYMUXF2_9197 : STD_LOGIC; 
  signal U3_Q_8_LOGIC_ZERO_9196 : STD_LOGIC; 
  signal U3_Q_8_CYSELG_9187 : STD_LOGIC; 
  signal U3_Q_8_G : STD_LOGIC; 
  signal U3_Q_8_SRINV_9185 : STD_LOGIC; 
  signal U3_Q_8_CLKINV_9184 : STD_LOGIC; 
  signal U3_Q_10_FFY_RST : STD_LOGIC; 
  signal U3_Q_10_FFX_RST : STD_LOGIC; 
  signal U3_Q_10_DXMUX_9281 : STD_LOGIC; 
  signal U3_Q_10_XORF_9279 : STD_LOGIC; 
  signal U3_Q_10_CYINIT_9278 : STD_LOGIC; 
  signal U3_Q_10_F : STD_LOGIC; 
  signal U3_Q_10_DYMUX_9262 : STD_LOGIC; 
  signal U3_Q_10_XORG_9260 : STD_LOGIC; 
  signal U3_Mcount_q_cy_10_Q : STD_LOGIC; 
  signal U3_Q_10_CYSELF_9258 : STD_LOGIC; 
  signal U3_Q_10_CYMUXFAST_9257 : STD_LOGIC; 
  signal U3_Q_10_CYAND_9256 : STD_LOGIC; 
  signal U3_Q_10_FASTCARRY_9255 : STD_LOGIC; 
  signal U3_Q_10_CYMUXG2_9254 : STD_LOGIC; 
  signal U3_Q_10_CYMUXF2_9253 : STD_LOGIC; 
  signal U3_Q_10_LOGIC_ZERO_9252 : STD_LOGIC; 
  signal U3_Q_10_CYSELG_9243 : STD_LOGIC; 
  signal U3_Q_10_G : STD_LOGIC; 
  signal U3_Q_10_SRINV_9241 : STD_LOGIC; 
  signal U3_Q_10_CLKINV_9240 : STD_LOGIC; 
  signal U3_Q_12_FFY_RST : STD_LOGIC; 
  signal U3_Q_12_FFX_RST : STD_LOGIC; 
  signal U3_Q_12_DXMUX_9337 : STD_LOGIC; 
  signal U3_Q_12_XORF_9335 : STD_LOGIC; 
  signal U3_Q_12_CYINIT_9334 : STD_LOGIC; 
  signal U3_Q_12_F : STD_LOGIC; 
  signal U3_Q_12_DYMUX_9318 : STD_LOGIC; 
  signal U3_Q_12_XORG_9316 : STD_LOGIC; 
  signal U3_Mcount_q_cy_12_Q : STD_LOGIC; 
  signal U3_Q_12_CYSELF_9314 : STD_LOGIC; 
  signal U3_Q_12_CYMUXFAST_9313 : STD_LOGIC; 
  signal U3_Q_12_CYAND_9312 : STD_LOGIC; 
  signal U3_Q_12_FASTCARRY_9311 : STD_LOGIC; 
  signal U3_Q_12_CYMUXG2_9310 : STD_LOGIC; 
  signal U3_Q_12_CYMUXF2_9309 : STD_LOGIC; 
  signal U3_Q_12_LOGIC_ZERO_9308 : STD_LOGIC; 
  signal U3_Q_12_CYSELG_9299 : STD_LOGIC; 
  signal U3_Q_12_G : STD_LOGIC; 
  signal U3_Q_12_SRINV_9297 : STD_LOGIC; 
  signal U3_Q_12_CLKINV_9296 : STD_LOGIC; 
  signal U3_Q_14_FFY_RST : STD_LOGIC; 
  signal U3_Q_14_FFX_RST : STD_LOGIC; 
  signal U3_Q_14_DXMUX_9393 : STD_LOGIC; 
  signal U3_Q_14_XORF_9391 : STD_LOGIC; 
  signal U3_Q_14_CYINIT_9390 : STD_LOGIC; 
  signal U3_Q_14_F : STD_LOGIC; 
  signal U3_Q_14_DYMUX_9374 : STD_LOGIC; 
  signal U3_Q_14_XORG_9372 : STD_LOGIC; 
  signal U3_Mcount_q_cy_14_Q : STD_LOGIC; 
  signal U3_Q_14_CYSELF_9370 : STD_LOGIC; 
  signal U3_Q_14_CYMUXFAST_9369 : STD_LOGIC; 
  signal U3_Q_14_CYAND_9368 : STD_LOGIC; 
  signal U3_Q_14_FASTCARRY_9367 : STD_LOGIC; 
  signal U3_Q_14_CYMUXG2_9366 : STD_LOGIC; 
  signal U3_Q_14_CYMUXF2_9365 : STD_LOGIC; 
  signal U3_Q_14_LOGIC_ZERO_9364 : STD_LOGIC; 
  signal U3_Q_14_CYSELG_9355 : STD_LOGIC; 
  signal U3_Q_14_G : STD_LOGIC; 
  signal U3_Q_14_SRINV_9353 : STD_LOGIC; 
  signal U3_Q_14_CLKINV_9352 : STD_LOGIC; 
  signal U3_Q_16_FFX_RST : STD_LOGIC; 
  signal U3_Q_16_DXMUX_9442 : STD_LOGIC; 
  signal U3_Q_16_XORF_9440 : STD_LOGIC; 
  signal U3_Q_16_LOGIC_ZERO_9439 : STD_LOGIC; 
  signal U3_Q_16_CYINIT_9438 : STD_LOGIC; 
  signal U3_Q_16_CYSELF_9429 : STD_LOGIC; 
  signal U3_Q_16_F : STD_LOGIC; 
  signal U3_Q_16_DYMUX_9421 : STD_LOGIC; 
  signal U3_Q_16_XORG_9419 : STD_LOGIC; 
  signal U3_Mcount_q_cy_16_Q : STD_LOGIC; 
  signal U3_q_171_rt_9416 : STD_LOGIC; 
  signal U3_Q_16_SRINV_9408 : STD_LOGIC; 
  signal U3_Q_16_CLKINV_9407 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_F5MUX_9478 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_9476 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_BXINV_9471 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_F6MUX_9470 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_9468 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_5_f5_BYINV_9462 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_F5MUX_9508 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_71_9506 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_BXINV_9500 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_F6MUX_9499 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_9497 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f5_BYINV_9491 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_F5MUX_9538 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_73_9536 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_BXINV_9530 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_F6MUX_9529 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_83_9527 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f52_BYINV_9521 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_F5MUX_9568 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_84_9566 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_BXINV_9560 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_F6MUX_9559 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_91_9557 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f51_BYINV_9551 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_F5MUX_9598 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_72_9596 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_BXINV_9590 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_F6MUX_9589 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_81_9587 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_6_f51_BYINV_9581 : STD_LOGIC; 
  signal U3_M2a_mux0000_F5MUX_9629 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_82_9627 : STD_LOGIC; 
  signal U3_M2a_mux0000_BXINV_9621 : STD_LOGIC; 
  signal U3_M2a_mux0000_F6MUX_9619 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_9_9617 : STD_LOGIC; 
  signal U3_M2a_mux0000_BYINV_9611 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_F5MUX_9659 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_85_9657 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_BXINV_9651 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_F6MUX_9650 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_92_9648 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_7_f52_BYINV_9642 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_F5MUX_9683 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_93_9681 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_8_f5_BXINV_9675 : STD_LOGIC; 
  signal U3_Mmux_M2a_mux0000_10_9673 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_F5MUX_9713 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_9711 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_BXINV_9705 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_F6MUX_9704 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_9702 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_5_f5_BYINV_9696 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_F5MUX_9743 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_71_9741 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_BXINV_9735 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_F6MUX_9734 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_9732 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f5_BYINV_9726 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_F5MUX_9773 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_73_9771 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_BXINV_9765 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_F6MUX_9764 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_83_9762 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f52_BYINV_9756 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_F5MUX_9803 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_84_9801 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_BXINV_9795 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_F6MUX_9794 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_91_9792 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f51_BYINV_9786 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_F5MUX_9833 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_72_9831 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_BXINV_9825 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_F6MUX_9824 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_81_9822 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_6_f51_BYINV_9816 : STD_LOGIC; 
  signal U3_M2_mux0000_F5MUX_9864 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_82_9862 : STD_LOGIC; 
  signal U3_M2_mux0000_BXINV_9856 : STD_LOGIC; 
  signal U3_M2_mux0000_F6MUX_9854 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_9_9852 : STD_LOGIC; 
  signal U3_M2_mux0000_BYINV_9846 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_F5MUX_9894 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_85_9892 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_BXINV_9886 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_F6MUX_9885 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_92_9883 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_7_f52_BYINV_9877 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_F5MUX_9918 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_93_9916 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_8_f5_BXINV_9910 : STD_LOGIC; 
  signal U3_Mmux_M2_mux0000_10_9908 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_F5MUX_9948 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_9946 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_BXINV_9940 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_F6MUX_9939 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_9937 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_5_f5_BYINV_9931 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_F5MUX_9978 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_71_9976 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_BXINV_9970 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_F6MUX_9969 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_9967 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f5_BYINV_9961 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_F5MUX_10008 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_73_10006 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_BXINV_10000 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_F6MUX_9999 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_83_9997 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f52_BYINV_9991 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_F5MUX_10038 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_84_10036 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_BXINV_10030 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_F6MUX_10029 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_91_10027 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f51_BYINV_10021 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_F5MUX_10068 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_72_10066 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_BXINV_10060 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_F6MUX_10059 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_81_10057 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_6_f51_BYINV_10051 : STD_LOGIC; 
  signal U3_M1_mux0000_F5MUX_10099 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_82_10097 : STD_LOGIC; 
  signal U3_M1_mux0000_BXINV_10091 : STD_LOGIC; 
  signal U3_M1_mux0000_F6MUX_10089 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_9_10087 : STD_LOGIC; 
  signal U3_M1_mux0000_BYINV_10081 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_F5MUX_10129 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_85_10127 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_BXINV_10121 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_F6MUX_10120 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_92_10118 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_7_f52_BYINV_10112 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_F5MUX_10153 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_93_10151 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_8_f5_BXINV_10145 : STD_LOGIC; 
  signal U3_Mmux_M1_mux0000_10_10143 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_F5MUX_10183 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_10181 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_BXINV_10176 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_F6MUX_10175 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_10173 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_5_f5_BYINV_10167 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_F5MUX_10213 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_71_10211 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_BXINV_10205 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_F6MUX_10204 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_10202 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f5_BYINV_10196 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_F5MUX_10243 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_73_10241 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_BXINV_10235 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_F6MUX_10234 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_83_10232 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f52_BYINV_10226 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_F5MUX_10273 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_84_10271 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_BXINV_10265 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_F6MUX_10264 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_91_10262 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f51_BYINV_10256 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_F5MUX_10303 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_72_10301 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_BXINV_10295 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_F6MUX_10294 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_81_10292 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_6_f51_BYINV_10286 : STD_LOGIC; 
  signal U3_M1a_mux0000_F5MUX_10334 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_82_10332 : STD_LOGIC; 
  signal U3_M1a_mux0000_BXINV_10326 : STD_LOGIC; 
  signal U3_M1a_mux0000_F6MUX_10324 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_9_10322 : STD_LOGIC; 
  signal U3_M1a_mux0000_BYINV_10316 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_F5MUX_10364 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_85_10362 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_BXINV_10356 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_F6MUX_10355 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_92_10353 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_7_f52_BYINV_10347 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_F5MUX_10388 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_93_10386 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_8_f5_BXINV_10380 : STD_LOGIC; 
  signal U3_Mmux_M1a_mux0000_10_10378 : STD_LOGIC; 
  signal dp_O : STD_LOGIC; 
  signal ja1_INBUF : STD_LOGIC; 
  signal ja2_O : STD_LOGIC; 
  signal ja3_O : STD_LOGIC; 
  signal a_to_g_0_O : STD_LOGIC; 
  signal a_to_g_1_O : STD_LOGIC; 
  signal a_to_g_2_O : STD_LOGIC; 
  signal a_to_g_3_O : STD_LOGIC; 
  signal a_to_g_4_O : STD_LOGIC; 
  signal a_to_g_5_O : STD_LOGIC; 
  signal a_to_g_6_O : STD_LOGIC; 
  signal mclk_INBUF : STD_LOGIC; 
  signal blue_0_O : STD_LOGIC; 
  signal blue_1_O : STD_LOGIC; 
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
  signal hsync_O : STD_LOGIC; 
  signal vsync_O : STD_LOGIC; 
  signal btn_0_INBUF : STD_LOGIC; 
  signal btn_1_INBUF : STD_LOGIC; 
  signal btn_2_INBUF : STD_LOGIC; 
  signal btn_3_INBUF : STD_LOGIC; 
  signal red_0_O : STD_LOGIC; 
  signal red_1_O : STD_LOGIC; 
  signal red_2_O : STD_LOGIC; 
  signal green_0_O : STD_LOGIC; 
  signal green_1_O : STD_LOGIC; 
  signal green_2_O : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal mclk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal U1_q_0_BUFG_S_INVNOT : STD_LOGIC; 
  signal U1_q_0_BUFG_I0_INV : STD_LOGIC; 
  signal U3_q_17_BUFG_S_INVNOT : STD_LOGIC; 
  signal U3_q_17_BUFG_I0_INV : STD_LOGIC; 
  signal x7_digit_1_F5MUX_10703 : STD_LOGIC; 
  signal x7_Mmux_digit_31_10701 : STD_LOGIC; 
  signal x7_digit_1_BXINV_10695 : STD_LOGIC; 
  signal x7_Mmux_digit_41_10693 : STD_LOGIC; 
  signal x7_digit_2_F5MUX_10728 : STD_LOGIC; 
  signal x7_Mmux_digit_32_10726 : STD_LOGIC; 
  signal x7_digit_2_BXINV_10720 : STD_LOGIC; 
  signal x7_Mmux_digit_42_10718 : STD_LOGIC; 
  signal x7_digit_3_F5MUX_10753 : STD_LOGIC; 
  signal x7_Mmux_digit_33_10751 : STD_LOGIC; 
  signal x7_digit_3_BXINV_10745 : STD_LOGIC; 
  signal x7_Mmux_digit_43_10743 : STD_LOGIC; 
  signal U3_spriteonB5_and000081_F5MUX_10778 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal U3_spriteonB5_and000081_BXINV_10771 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N240_F5MUX_10803 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N240_BXINV_10796 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N384_F5MUX_10828 : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal N384_BXINV_10820 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal M1a_27_139_F5MUX_10853 : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal M1a_27_139_BXINV_10846 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal N324_F5MUX_10878 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N324_BXINV_10871 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N192_F5MUX_10903 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N192_BXINV_10896 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N328_F5MUX_10928 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N328_BXINV_10920 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N326_F5MUX_10953 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N326_BXINV_10945 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal M2a_20_F5MUX_10980 : STD_LOGIC; 
  signal M1a_11_1_rt_10978 : STD_LOGIC; 
  signal M2a_20_BXINV_10970 : STD_LOGIC; 
  signal M1a_11_2_10967 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000217_F5MUX_11005 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt00002171_11003 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000217_BXINV_10998 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000217_G : STD_LOGIC; 
  signal M1a_8_F5MUX_11030 : STD_LOGIC; 
  signal M1a_8_1 : STD_LOGIC; 
  signal M1a_8_BXINV_11023 : STD_LOGIC; 
  signal M1a_8_11_11021 : STD_LOGIC; 
  signal M2a_18_F5MUX_11057 : STD_LOGIC; 
  signal M2a_18_1_11055 : STD_LOGIC; 
  signal M2a_18_BXINV_11050 : STD_LOGIC; 
  signal M2a_18_2 : STD_LOGIC; 
  signal M1_5_F5MUX_11082 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal M1_5_BXINV_11075 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal M1_9_F5MUX_11107 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal M1_9_BXINV_11100 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal M2a_28_F5MUX_11134 : STD_LOGIC; 
  signal M1a_3_1_rt_11132 : STD_LOGIC; 
  signal M2a_28_BXINV_11124 : STD_LOGIC; 
  signal M1a_3_2_11121 : STD_LOGIC; 
  signal N274_F5MUX_11159 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal N274_BXINV_11152 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N322_F5MUX_11184 : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal N322_BXINV_11176 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal red_1_OBUF_F5MUX_11209 : STD_LOGIC; 
  signal red_1_OBUF_BXINV_11201 : STD_LOGIC; 
  signal U3_red_2_1_11199 : STD_LOGIC; 
  signal N254_F5MUX_11234 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N254_BXINV_11227 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal M1_25_35_F5MUX_11259 : STD_LOGIC; 
  signal M1_25_351_rt_11257 : STD_LOGIC; 
  signal M1_25_35_BXINV_11249 : STD_LOGIC; 
  signal M1_25_352_11247 : STD_LOGIC; 
  signal M1_24_F5MUX_11284 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal M1_24_BXINV_11277 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal M1_25_F5MUX_11309 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal M1_25_BXINV_11302 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal M1_27_102_F5MUX_11334 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal M1_27_102_BXINV_11327 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal M1_26_F5MUX_11359 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal M1_26_BXINV_11352 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal M1_27_F5MUX_11384 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal M1_27_BXINV_11377 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal M1_18_F5MUX_11411 : STD_LOGIC; 
  signal M1_18_1_11409 : STD_LOGIC; 
  signal M1_18_BXINV_11404 : STD_LOGIC; 
  signal M1_18_2 : STD_LOGIC; 
  signal M2_21_F5MUX_11436 : STD_LOGIC; 
  signal M1_10_1_11434 : STD_LOGIC; 
  signal M2_21_BXINV_11429 : STD_LOGIC; 
  signal M1_10_2_11427 : STD_LOGIC; 
  signal M2_22_F5MUX_11461 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal M2_22_BXINV_11454 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal M1_4_F5MUX_11488 : STD_LOGIC; 
  signal M2_24_Q : STD_LOGIC; 
  signal M1_4_BXINV_11481 : STD_LOGIC; 
  signal M2_24_1_11478 : STD_LOGIC; 
  signal M2_3_124_F5MUX_11513 : STD_LOGIC; 
  signal M2_3_1241_11511 : STD_LOGIC; 
  signal M2_3_124_BXINV_11506 : STD_LOGIC; 
  signal M2_3_1242_11504 : STD_LOGIC; 
  signal N402_F5MUX_11538 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N402_BXINV_11531 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal M1_11_F5MUX_11563 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal M1_11_BXINV_11556 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal M1_12_F5MUX_11588 : STD_LOGIC; 
  signal N553 : STD_LOGIC; 
  signal M1_12_BXINV_11581 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal M1_20_F5MUX_11613 : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal M1_20_BXINV_11606 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal M1_13_F5MUX_11638 : STD_LOGIC; 
  signal N559 : STD_LOGIC; 
  signal M1_13_BXINV_11631 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal M1_19_F5MUX_11663 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal M1_19_BXINV_11656 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal M2_11_F5MUX_11688 : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal M2_11_BXINV_11681 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal M1_2_F5MUX_11713 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal M1_2_BXINV_11706 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal M1_8_F5MUX_11738 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal M1_8_BXINV_11731 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal M2_25_F5MUX_11763 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal M2_25_BXINV_11756 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal M2_19_F5MUX_11788 : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal M2_19_BXINV_11781 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal M1a_2_F5MUX_11813 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal M1a_2_BXINV_11806 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N158_F5MUX_11838 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N158_BXINV_11829 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal M1_30_F5MUX_11863 : STD_LOGIC; 
  signal M1_30_116 : STD_LOGIC; 
  signal M1_30_BXINV_11856 : STD_LOGIC; 
  signal M1_30_1161_11854 : STD_LOGIC; 
  signal N198_F5MUX_11888 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N198_BXINV_11881 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N248_F5MUX_11913 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal N248_BXINV_11904 : STD_LOGIC; 
  signal N554 : STD_LOGIC; 
  signal N330_F5MUX_11938 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N330_BXINV_11931 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal U3_spriteonB5_and000017_F5MUX_11963 : STD_LOGIC; 
  signal U3_spriteonB5_and0000171_11961 : STD_LOGIC; 
  signal U3_spriteonB5_and000017_BXINV_11956 : STD_LOGIC; 
  signal U3_spriteonB5_and000017_G : STD_LOGIC; 
  signal U2_vidon_and000026_F5MUX_11988 : STD_LOGIC; 
  signal U2_vidon_and0000261_11986 : STD_LOGIC; 
  signal U2_vidon_and000026_BXINV_11981 : STD_LOGIC; 
  signal U2_vidon_and000026_G : STD_LOGIC; 
  signal U2_vidon_and000065_F5MUX_12013 : STD_LOGIC; 
  signal U2_vidon_and0000651_12011 : STD_LOGIC; 
  signal U2_vidon_and000065_BXINV_12006 : STD_LOGIC; 
  signal U2_vidon_and000065_G : STD_LOGIC; 
  signal M1a_10_F5MUX_12038 : STD_LOGIC; 
  signal N561 : STD_LOGIC; 
  signal M1a_10_BXINV_12031 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal M1a_21_F5MUX_12063 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal M1a_21_BXINV_12056 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal M1a_25_F5MUX_12088 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal M1a_25_BXINV_12081 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal M1a_18_F5MUX_12113 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal M1a_18_BXINV_12106 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal M1a_19_F5MUX_12138 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal M1a_19_BXINV_12131 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal M1_28_120_F5MUX_12163 : STD_LOGIC; 
  signal M1_28_1201_12161 : STD_LOGIC; 
  signal M1_28_120_BXINV_12156 : STD_LOGIC; 
  signal M1_28_1202_12154 : STD_LOGIC; 
  signal M1a_28_F5MUX_12188 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal M1a_28_BXINV_12181 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal M2a_10_F5MUX_12213 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal M2a_10_BXINV_12206 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal M2a_12_F5MUX_12238 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal M2a_12_BXINV_12231 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal M2a_22_F5MUX_12263 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal M2a_22_BXINV_12256 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal M2a_29_F5MUX_12288 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal M2a_29_BXINV_12281 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N200_F5MUX_12313 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N200_BXINV_12306 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal M1_29_126_F5MUX_12338 : STD_LOGIC; 
  signal M1_29_1261_12336 : STD_LOGIC; 
  signal M1_29_126_BXINV_12331 : STD_LOGIC; 
  signal M1_29_1262_12329 : STD_LOGIC; 
  signal M1a_23_54_F5MUX_12363 : STD_LOGIC; 
  signal M1a_23_541_12361 : STD_LOGIC; 
  signal M1a_23_54_BXINV_12355 : STD_LOGIC; 
  signal M1a_23_542_12353 : STD_LOGIC; 
  signal M1_21_F5MUX_12388 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal M1_21_BXINV_12381 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal M1_22_35_F5MUX_12413 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal M1_22_35_BXINV_12405 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal M1_22_F5MUX_12438 : STD_LOGIC; 
  signal N435 : STD_LOGIC; 
  signal M1_22_BXINV_12431 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal M1_30_49_F5MUX_12463 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal M1_30_49_BXINV_12456 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal M1_23_F5MUX_12488 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal M1_23_BXINV_12481 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal M1_31_F5MUX_12513 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal M1_31_BXINV_12506 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal M2_10_F5MUX_12538 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal M2_10_BXINV_12531 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal M2_12_F5MUX_12563 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal M2_12_BXINV_12556 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal M1_10_F5MUX_12588 : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal M1_10_BXINV_12581 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal M2_18_F5MUX_12613 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal M2_18_BXINV_12606 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal M2_4_105_F5MUX_12638 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal M2_4_105_BXINV_12631 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal M2_4_F5MUX_12663 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal M2_4_BXINV_12656 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal M2_5_F5MUX_12688 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal M2_5_BXINV_12681 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal M2_7_F5MUX_12713 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal M2_7_BXINV_12706 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal M1_3_F5MUX_12740 : STD_LOGIC; 
  signal M1_3_1_rt_12738 : STD_LOGIC; 
  signal M1_3_BXINV_12730 : STD_LOGIC; 
  signal M1_3_2 : STD_LOGIC; 
  signal N246_F5MUX_12765 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N246_BXINV_12758 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N332_F5MUX_12790 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N332_BXINV_12782 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal M2_7_44_F5MUX_12815 : STD_LOGIC; 
  signal M2_7_441_12813 : STD_LOGIC; 
  signal M2_7_44_BXINV_12808 : STD_LOGIC; 
  signal M2_7_442_12806 : STD_LOGIC; 
  signal N318_F5MUX_12840 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N318_BXINV_12833 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal x7_digit_0_F5MUX_12865 : STD_LOGIC; 
  signal x7_Mmux_digit_3_12863 : STD_LOGIC; 
  signal x7_digit_0_BXINV_12857 : STD_LOGIC; 
  signal x7_Mmux_digit_4_12855 : STD_LOGIC; 
  signal N226_F5MUX_12890 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW0 : STD_LOGIC; 
  signal N226_BXINV_12881 : STD_LOGIC; 
  signal U3_spriteonB2_and000056_SW01_12879 : STD_LOGIC; 
  signal M1a_9_F5MUX_12915 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal M1a_9_BXINV_12908 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal M2a_3_F5MUX_12940 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal M2a_3_BXINV_12933 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal M2a_6_F5MUX_12965 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal M2a_6_BXINV_12958 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N298_F5MUX_12990 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N298_BXINV_12983 : STD_LOGIC; 
  signal N478 : STD_LOGIC; 
  signal M1_1_F5MUX_13015 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal M1_1_BXINV_13008 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal M2_0_F5MUX_13040 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal M2_0_BXINV_13033 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal M2_1_49_F5MUX_13065 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal M2_1_49_BXINV_13058 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal M2_4_29_F5MUX_13090 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal M2_4_29_BXINV_13082 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal M2_9_35_F5MUX_13115 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal M2_9_35_BXINV_13107 : STD_LOGIC; 
  signal N476 : STD_LOGIC; 
  signal M2_8_F5MUX_13140 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal M2_8_BXINV_13133 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal M2_9_F5MUX_13165 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal M2_9_BXINV_13158 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N260_F5MUX_13190 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N260_BXINV_13183 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N294_F5MUX_13215 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal N294_BXINV_13208 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal M1a_20_F5MUX_13240 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal M1a_20_BXINV_13233 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal M2a_13_F5MUX_13265 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal M2a_13_BXINV_13258 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal U3_C1_not000127_13288 : STD_LOGIC; 
  signal U3_C1_not00014_O_pack_1 : STD_LOGIC; 
  signal nes_right_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_N01_pack_1 : STD_LOGIC; 
  signal U3_C1_not0001 : STD_LOGIC; 
  signal U3_C1_not000183_O_pack_1 : STD_LOGIC; 
  signal nes_counter_reg_not0001 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal nes_N11 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000125_pack_1 : STD_LOGIC; 
  signal U3_C2_not000164_13408 : STD_LOGIC; 
  signal U3_C2_not000150_O_pack_1 : STD_LOGIC; 
  signal U3_C2_not0001 : STD_LOGIC; 
  signal U3_C2_not000123_O_pack_1 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000046_O_pack_1 : STD_LOGIC; 
  signal U2_vcs_5_DXMUX_13489 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_5 : STD_LOGIC; 
  signal U2_vcs_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal U2_vcs_5_CLKINV_13471 : STD_LOGIC; 
  signal U2_vcs_5_CEINV_13470 : STD_LOGIC; 
  signal U3_C2_not00016_13518 : STD_LOGIC; 
  signal U3_C2_not00011_O_pack_1 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and0000 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000014_O_pack_1 : STD_LOGIC; 
  signal U2_hcs_1_DXMUX_13573 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_1 : STD_LOGIC; 
  signal U2_hcs_cmp_eq000010_pack_1 : STD_LOGIC; 
  signal U2_hcs_1_CLKINV_13556 : STD_LOGIC; 
  signal U2_vsenable_DXMUX_13608 : STD_LOGIC; 
  signal U2_hcs_cmp_eq0000 : STD_LOGIC; 
  signal U2_hcs_cmp_eq00005_pack_1 : STD_LOGIC; 
  signal U2_vsenable_CLKINV_13591 : STD_LOGIC; 
  signal U2_vsenable_CEINVNOT : STD_LOGIC; 
  signal nes_counter_reg_1_DXMUX_13651 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_1 : STD_LOGIC; 
  signal nes_counter_reg_1_DYMUX_13636 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_0 : STD_LOGIC; 
  signal nes_counter_reg_1_SRINV_13628 : STD_LOGIC; 
  signal nes_counter_reg_1_CLKINV_13627 : STD_LOGIC; 
  signal nes_counter_reg_1_CEINV_13626 : STD_LOGIC; 
  signal nes_counter_reg_3_DXMUX_13697 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_3 : STD_LOGIC; 
  signal nes_counter_reg_3_DYMUX_13682 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_2 : STD_LOGIC; 
  signal nes_counter_reg_3_SRINV_13674 : STD_LOGIC; 
  signal nes_counter_reg_3_CLKINV_13673 : STD_LOGIC; 
  signal nes_counter_reg_3_CEINV_13672 : STD_LOGIC; 
  signal nes_counter_reg_5_DXMUX_13743 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_5 : STD_LOGIC; 
  signal nes_counter_reg_5_DYMUX_13728 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_4 : STD_LOGIC; 
  signal nes_counter_reg_5_SRINV_13720 : STD_LOGIC; 
  signal nes_counter_reg_5_CLKINV_13719 : STD_LOGIC; 
  signal nes_counter_reg_5_CEINV_13718 : STD_LOGIC; 
  signal nes_counter_reg_7_FFX_RST : STD_LOGIC; 
  signal nes_counter_reg_7_DXMUX_13789 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_7 : STD_LOGIC; 
  signal nes_counter_reg_7_DYMUX_13774 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_6 : STD_LOGIC; 
  signal nes_counter_reg_7_SRINV_13766 : STD_LOGIC; 
  signal nes_counter_reg_7_CLKINV_13765 : STD_LOGIC; 
  signal nes_counter_reg_7_CEINV_13764 : STD_LOGIC; 
  signal nes_counter_reg_9_FFY_RST : STD_LOGIC; 
  signal nes_counter_reg_9_DXMUX_13835 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_9 : STD_LOGIC; 
  signal nes_counter_reg_9_DYMUX_13820 : STD_LOGIC; 
  signal nes_Mcount_counter_reg_eqn_8 : STD_LOGIC; 
  signal nes_counter_reg_9_SRINV_13812 : STD_LOGIC; 
  signal nes_counter_reg_9_CLKINV_13811 : STD_LOGIC; 
  signal nes_counter_reg_9_CEINV_13810 : STD_LOGIC; 
  signal U1_q_01_DXMUX_13863 : STD_LOGIC; 
  signal U1_q_01_XORF_13861 : STD_LOGIC; 
  signal U1_q_01_CYINIT_13860 : STD_LOGIC; 
  signal U1_Mcount_q_lut_0_rt_13858 : STD_LOGIC; 
  signal U1_q_01_BXINV_13850 : STD_LOGIC; 
  signal U1_q_01_CLKINV_13848 : STD_LOGIC; 
  signal U2_hcs_0_DYMUX_13886 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_0 : STD_LOGIC; 
  signal U2_hcs_0_CLKINV_13876 : STD_LOGIC; 
  signal U2_hcs_3_DXMUX_13928 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_3 : STD_LOGIC; 
  signal U2_hcs_3_DYMUX_13913 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_2 : STD_LOGIC; 
  signal U2_hcs_3_SRINV_13904 : STD_LOGIC; 
  signal U2_hcs_3_CLKINV_13903 : STD_LOGIC; 
  signal U2_hcs_5_DXMUX_13970 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_5 : STD_LOGIC; 
  signal U2_hcs_5_DYMUX_13955 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_4 : STD_LOGIC; 
  signal U2_hcs_5_SRINV_13946 : STD_LOGIC; 
  signal U2_hcs_5_CLKINV_13945 : STD_LOGIC; 
  signal U2_hcs_7_FFX_RST : STD_LOGIC; 
  signal U2_hcs_7_DXMUX_14012 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_7 : STD_LOGIC; 
  signal U2_hcs_7_DYMUX_13997 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_6 : STD_LOGIC; 
  signal U2_hcs_7_SRINV_13988 : STD_LOGIC; 
  signal U2_hcs_7_CLKINV_13987 : STD_LOGIC; 
  signal U2_hcs_9_FFY_RST : STD_LOGIC; 
  signal U2_hcs_9_DXMUX_14054 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_9 : STD_LOGIC; 
  signal U2_hcs_9_DYMUX_14039 : STD_LOGIC; 
  signal U2_Mcount_hcs_eqn_8 : STD_LOGIC; 
  signal U2_hcs_9_SRINV_14030 : STD_LOGIC; 
  signal U2_hcs_9_CLKINV_14029 : STD_LOGIC; 
  signal U2_vcs_1_DXMUX_14099 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_1 : STD_LOGIC; 
  signal U2_vcs_1_DYMUX_14082 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_0 : STD_LOGIC; 
  signal U2_vcs_1_SRINV_14072 : STD_LOGIC; 
  signal U2_vcs_1_CLKINV_14071 : STD_LOGIC; 
  signal U2_vcs_1_CEINV_14070 : STD_LOGIC; 
  signal U2_vcs_3_DXMUX_14145 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_3 : STD_LOGIC; 
  signal U2_vcs_3_DYMUX_14128 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_2 : STD_LOGIC; 
  signal U2_vcs_3_SRINV_14118 : STD_LOGIC; 
  signal U2_vcs_3_CLKINV_14117 : STD_LOGIC; 
  signal U2_vcs_3_CEINV_14116 : STD_LOGIC; 
  signal U2_vcs_4_DYMUX_14171 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_4 : STD_LOGIC; 
  signal U2_vcs_4_CLKINV_14160 : STD_LOGIC; 
  signal U2_vcs_4_CEINV_14159 : STD_LOGIC; 
  signal U2_vcs_7_DXMUX_14217 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_7 : STD_LOGIC; 
  signal U2_vcs_7_DYMUX_14200 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_6 : STD_LOGIC; 
  signal U2_vcs_7_SRINV_14190 : STD_LOGIC; 
  signal U2_vcs_7_CLKINV_14189 : STD_LOGIC; 
  signal U2_vcs_7_CEINV_14188 : STD_LOGIC; 
  signal U2_vcs_9_FFX_RST : STD_LOGIC; 
  signal U2_vcs_9_DXMUX_14263 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_9 : STD_LOGIC; 
  signal U2_vcs_9_DYMUX_14246 : STD_LOGIC; 
  signal U2_Mcount_vcs_eqn_8 : STD_LOGIC; 
  signal U2_vcs_9_SRINV_14236 : STD_LOGIC; 
  signal U2_vcs_9_CLKINV_14235 : STD_LOGIC; 
  signal U2_vcs_9_CEINV_14234 : STD_LOGIC; 
  signal nes_scalar_reg_1_FFY_RST : STD_LOGIC; 
  signal nes_scalar_reg_1_DXMUX_14306 : STD_LOGIC; 
  signal nes_scalar_reg_1_DYMUX_14290 : STD_LOGIC; 
  signal nes_scalar_reg_1_SRINV_14280 : STD_LOGIC; 
  signal nes_scalar_reg_1_CLKINV_14279 : STD_LOGIC; 
  signal nes_scalar_reg_3_DXMUX_14348 : STD_LOGIC; 
  signal nes_scalar_reg_3_DYMUX_14332 : STD_LOGIC; 
  signal nes_scalar_reg_3_SRINV_14322 : STD_LOGIC; 
  signal nes_scalar_reg_3_CLKINV_14321 : STD_LOGIC; 
  signal nes_scalar_reg_5_DXMUX_14390 : STD_LOGIC; 
  signal nes_scalar_reg_5_DYMUX_14374 : STD_LOGIC; 
  signal nes_scalar_reg_5_SRINV_14364 : STD_LOGIC; 
  signal nes_scalar_reg_5_CLKINV_14363 : STD_LOGIC; 
  signal nes_scalar_reg_7_DXMUX_14432 : STD_LOGIC; 
  signal nes_scalar_reg_7_DYMUX_14416 : STD_LOGIC; 
  signal nes_scalar_reg_7_SRINV_14406 : STD_LOGIC; 
  signal nes_scalar_reg_7_CLKINV_14405 : STD_LOGIC; 
  signal nes_scalar_reg_9_DXMUX_14474 : STD_LOGIC; 
  signal nes_scalar_reg_9_DYMUX_14458 : STD_LOGIC; 
  signal nes_scalar_reg_9_SRINV_14448 : STD_LOGIC; 
  signal nes_scalar_reg_9_CLKINV_14447 : STD_LOGIC; 
  signal nes_a_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_left_reg_cmp_eq0000 : STD_LOGIC; 
  signal an_0_OBUF_14526 : STD_LOGIC; 
  signal x7_an_1_mux00012_14517 : STD_LOGIC; 
  signal U3_C1_not000147_14550 : STD_LOGIC; 
  signal U3_C1_not000110_14541 : STD_LOGIC; 
  signal blue_0_OBUF_14574 : STD_LOGIC; 
  signal U3_N98_pack_1 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal an_3_OBUF_14622 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal x7_an_1_mux000115_14638 : STD_LOGIC; 
  signal an_1_OBUF_14670 : STD_LOGIC; 
  signal x7_an_1_mux000152_pack_1 : STD_LOGIC; 
  signal U3_spriteonGrnd_and0000110_14694 : STD_LOGIC; 
  signal U3_N42_pack_1 : STD_LOGIC; 
  signal U3_C1_not00015_14718 : STD_LOGIC; 
  signal U3_C1_not0001105_14709 : STD_LOGIC; 
  signal U3_N40 : STD_LOGIC; 
  signal U3_N101_pack_1 : STD_LOGIC; 
  signal M2_0_bdd13 : STD_LOGIC; 
  signal N137_pack_1 : STD_LOGIC; 
  signal U2_N2 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal M2_0_bdd6 : STD_LOGIC; 
  signal N139_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002128_14838 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal green_2_OBUF_14862 : STD_LOGIC; 
  signal blue_1_OBUF_14855 : STD_LOGIC; 
  signal U3_blue_0_27_14886 : STD_LOGIC; 
  signal U3_blue_0_9_pack_1 : STD_LOGIC; 
  signal U3_N16_pack_1 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000 : STD_LOGIC; 
  signal U3_spriteonB1_cmp_lt0000232_pack_1 : STD_LOGIC; 
  signal M1_23_bdd3 : STD_LOGIC; 
  signal rom1_addr_2_pack_1 : STD_LOGIC; 
  signal M1a_23_10_15006 : STD_LOGIC; 
  signal rom1_addr_3_pack_2 : STD_LOGIC; 
  signal M1a_1_7_15030 : STD_LOGIC; 
  signal ja2_OBUF_15054 : STD_LOGIC; 
  signal nes_counter_reg_cmp_eq0000112_pack_1 : STD_LOGIC; 
  signal U3_spriteonB5 : STD_LOGIC; 
  signal U3_spriteonB5_and000034_pack_1 : STD_LOGIC; 
  signal red_0_OBUF_15102 : STD_LOGIC; 
  signal U3_N35_pack_1 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000015_pack_1 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000091_15150 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000034_pack_3 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000064_15174 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000051_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3_cmp_le00002112_15198 : STD_LOGIC; 
  signal U3_spriteonGrnd_and000046_15191 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal U3_N63 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000051_15246 : STD_LOGIC; 
  signal U3_tank1_angle_calc_mux0004_7_16_15239 : STD_LOGIC; 
  signal U3_C2_not000113_15261 : STD_LOGIC; 
  signal an_2_OBUF_15294 : STD_LOGIC; 
  signal x7_an_1_mux000128_pack_1 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal x7_an_2_mux000128_15311 : STD_LOGIC; 
  signal M2a_5_Q : STD_LOGIC; 
  signal M1a_26_Q : STD_LOGIC; 
  signal U3_N15_pack_1 : STD_LOGIC; 
  signal ja3_OBUF_15390 : STD_LOGIC; 
  signal N220_pack_1 : STD_LOGIC; 
  signal U3_spriteonB4_and00009_15414 : STD_LOGIC; 
  signal U3_N71_pack_1 : STD_LOGIC; 
  signal nes_up_reg_cmp_eq0000 : STD_LOGIC; 
  signal nes_down_reg_cmp_eq0000 : STD_LOGIC; 
  signal U3_Madd_spriteon2_addsub0000_lut_8_bdd0_pack_1 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal U3_tank2_angle_calc_not0001 : STD_LOGIC; 
  signal U3_tank1_angle_calc_not0001 : STD_LOGIC; 
  signal a_to_g_6_OBUF_15582 : STD_LOGIC; 
  signal a_to_g_0_OBUF_15575 : STD_LOGIC; 
  signal a_to_g_3_OBUF_15606 : STD_LOGIC; 
  signal a_to_g_2_OBUF_15599 : STD_LOGIC; 
  signal a_to_g_5_OBUF_15630 : STD_LOGIC; 
  signal a_to_g_4_OBUF_15623 : STD_LOGIC; 
  signal U2_vidon_and000039_15654 : STD_LOGIC; 
  signal U2_vidon_and00000_pack_1 : STD_LOGIC; 
  signal U3_spriteonB1_and000018_15678 : STD_LOGIC; 
  signal U2_vidon_and00006_15671 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000011_15718 : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_7_4_15750 : STD_LOGIC; 
  signal U3_tank2_angle_calc_and000023_15742 : STD_LOGIC; 
  signal M1_22_bdd9 : STD_LOGIC; 
  signal N128_pack_1 : STD_LOGIC; 
  signal M1a_27_52_15798 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal nes_a_reg_DYMUX_15832 : STD_LOGIC; 
  signal nes_a_reg_CLKINV_15830 : STD_LOGIC; 
  signal nes_a_reg_CEINV_15829 : STD_LOGIC; 
  signal M1_26_58_15858 : STD_LOGIC; 
  signal M1_22_11_15851 : STD_LOGIC; 
  signal M1a_27_82_15882 : STD_LOGIC; 
  signal M1_25_351_pack_2 : STD_LOGIC; 
  signal M1_27_192_15894 : STD_LOGIC; 
  signal M1_26_bdd0 : STD_LOGIC; 
  signal N366_pack_2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal nes_nes_clk31_15935 : STD_LOGIC; 
  signal M1a_29_Q : STD_LOGIC; 
  signal N308_pack_1 : STD_LOGIC; 
  signal U3_spriteonB4_and000089_15990 : STD_LOGIC; 
  signal U3_N25_pack_1 : STD_LOGIC; 
  signal M2_8_20_16014 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal U2_vidon_and000018_16038 : STD_LOGIC; 
  signal U2_vidon_and000013_pack_1 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal U3_spriteonB2_and00005_pack_1 : STD_LOGIC; 
  signal M2_3_69_16110 : STD_LOGIC; 
  signal N364_pack_1 : STD_LOGIC; 
  signal a_to_g_1_OBUF_16122 : STD_LOGIC; 
  signal U3_spriteonB4_and000061_16158 : STD_LOGIC; 
  signal N304_pack_1 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal U2_vidon_and000080_16175 : STD_LOGIC; 
  signal U3_spriteonGrnd : STD_LOGIC; 
  signal N264_pack_1 : STD_LOGIC; 
  signal nes_right_reg_DYMUX_16216 : STD_LOGIC; 
  signal nes_right_reg_CLKINV_16214 : STD_LOGIC; 
  signal nes_right_reg_CEINV_16213 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal U3_spriteonB1_and000010_16266 : STD_LOGIC; 
  signal N222_pack_1 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal U3_blue_and0003 : STD_LOGIC; 
  signal U3_spriteonB1_and000049_16362 : STD_LOGIC; 
  signal N224_pack_1 : STD_LOGIC; 
  signal M1a_27_Q : STD_LOGIC; 
  signal N232_pack_1 : STD_LOGIC; 
  signal hsync_OBUF_16410 : STD_LOGIC; 
  signal U3_spriteonB5_and00006_16402 : STD_LOGIC; 
  signal U3_N102 : STD_LOGIC; 
  signal U3_N41_pack_1 : STD_LOGIC; 
  signal U3_tank1_angle_calc_and000027_16458 : STD_LOGIC; 
  signal U3_tank1_angle_calc_mux0004_7_4_16449 : STD_LOGIC; 
  signal M2a_4_Q : STD_LOGIC; 
  signal N234_pack_1 : STD_LOGIC; 
  signal M1a_22_Q : STD_LOGIC; 
  signal M1a_10_bdd0_pack_1 : STD_LOGIC; 
  signal M2a_19_Q_16530 : STD_LOGIC; 
  signal M1a_12_bdd0_pack_1 : STD_LOGIC; 
  signal M1a_12_bdd1 : STD_LOGIC; 
  signal M1a_14_bdd0 : STD_LOGIC; 
  signal M1_25_bdd1 : STD_LOGIC; 
  signal M1a_22_bdd0 : STD_LOGIC; 
  signal M1a_23_Q : STD_LOGIC; 
  signal M1a_23_14_pack_1 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal M1a_24_bdd1_pack_1 : STD_LOGIC; 
  signal M2a_7_Q : STD_LOGIC; 
  signal M1a_24_Q : STD_LOGIC; 
  signal M1_28_65_16674 : STD_LOGIC; 
  signal N362_pack_1 : STD_LOGIC; 
  signal nes_left_reg_DYMUX_16684 : STD_LOGIC; 
  signal nes_left_reg_CLKINV_16682 : STD_LOGIC; 
  signal nes_left_reg_CEINV_16681 : STD_LOGIC; 
  signal nes_down_reg_DYMUX_16696 : STD_LOGIC; 
  signal nes_down_reg_CLKINV_16694 : STD_LOGIC; 
  signal nes_down_reg_CEINV_16693 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000010_16710 : STD_LOGIC; 
  signal nes_scalar_next_cmp_eq000021_16722 : STD_LOGIC; 
  signal M1_10_bdd5 : STD_LOGIC; 
  signal M1_21_bdd5 : STD_LOGIC; 
  signal N126_pack_1 : STD_LOGIC; 
  signal M1a_22_18_16782 : STD_LOGIC; 
  signal M1_22_bdd0_pack_3 : STD_LOGIC; 
  signal M1_29_75_16806 : STD_LOGIC; 
  signal M1_21_bdd8_pack_2 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal M1_21_bdd3_pack_1 : STD_LOGIC; 
  signal M1a_30_36_16854 : STD_LOGIC; 
  signal M1_22_bdd7_pack_2 : STD_LOGIC; 
  signal M1_28_12_16878 : STD_LOGIC; 
  signal M1_23_20_16871 : STD_LOGIC; 
  signal M1_24_39_16902 : STD_LOGIC; 
  signal M1_22_bdd12_pack_2 : STD_LOGIC; 
  signal M1_23_bdd1 : STD_LOGIC; 
  signal M1_23_bdd6_pack_3 : STD_LOGIC; 
  signal M1_26_30_16950 : STD_LOGIC; 
  signal M1_24_bdd0 : STD_LOGIC; 
  signal M1_23_29_16962 : STD_LOGIC; 
  signal M1_30_96_16974 : STD_LOGIC; 
  signal M1_25_138_16998 : STD_LOGIC; 
  signal M1_25_bdd0_pack_1 : STD_LOGIC; 
  signal M1_12_bdd3 : STD_LOGIC; 
  signal M1_29_bdd5 : STD_LOGIC; 
  signal M1_27_bdd0 : STD_LOGIC; 
  signal M2_4_116_17058 : STD_LOGIC; 
  signal M1_25_75_17051 : STD_LOGIC; 
  signal M1a_29_51_17082 : STD_LOGIC; 
  signal M1_27_bdd4_pack_2 : STD_LOGIC; 
  signal M1_27_127_17106 : STD_LOGIC; 
  signal M1_27_40_pack_1 : STD_LOGIC; 
  signal M2_2_75_17130 : STD_LOGIC; 
  signal M2_10_bdd14_pack_2 : STD_LOGIC; 
  signal M1_10_bdd4 : STD_LOGIC; 
  signal M1_28_Q : STD_LOGIC; 
  signal M1_28_28_pack_1 : STD_LOGIC; 
  signal M1_29_35_17190 : STD_LOGIC; 
  signal M1_29_14_pack_1 : STD_LOGIC; 
  signal M1_29_Q : STD_LOGIC; 
  signal M1_29_60_pack_1 : STD_LOGIC; 
  signal M2a_4_82_17238 : STD_LOGIC; 
  signal M2_3_bdd6_pack_2 : STD_LOGIC; 
  signal U3_tank2_angle_calc_mux0004_7_16_17255 : STD_LOGIC; 
  signal M2_6_Q : STD_LOGIC; 
  signal M2_6_108_pack_1 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N94_pack_1 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N92_pack_1 : STD_LOGIC; 
  signal U3_spriteonB1 : STD_LOGIC; 
  signal U3_spriteonB1_and000060_pack_1 : STD_LOGIC; 
  signal nes_up_reg_DYMUX_17368 : STD_LOGIC; 
  signal nes_up_reg_CLKINV_17366 : STD_LOGIC; 
  signal nes_up_reg_CEINV_17365 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N334_pack_2 : STD_LOGIC; 
  signal N63_pack_1 : STD_LOGIC; 
  signal M2_5_bdd0 : STD_LOGIC; 
  signal N368_pack_2 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_DXMUX_17470 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_DYMUX_17463 : STD_LOGIC; 
  signal who_present_state_FSM_FFd2_In : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_SRINV_17454 : STD_LOGIC; 
  signal who_present_state_FSM_FFd1_CLKINV_17453 : STD_LOGIC; 
  signal U3_spriteonB3_and000013_17498 : STD_LOGIC; 
  signal N228_pack_1 : STD_LOGIC; 
  signal M1a_11_Q : STD_LOGIC; 
  signal M1a_11_1_pack_1 : STD_LOGIC; 
  signal M1a_1_21_17534 : STD_LOGIC; 
  signal M1a_4_bdd0 : STD_LOGIC; 
  signal U3_N95 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal U3_spriteonB2_and000019_pack_1 : STD_LOGIC; 
  signal U3_N13 : STD_LOGIC; 
  signal U3_spriteonB2_pack_1 : STD_LOGIC; 
  signal M2_3_12_17630 : STD_LOGIC; 
  signal M2a_1_63_17623 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal M2a_4_52_17647 : STD_LOGIC; 
  signal M2_6_bdd0 : STD_LOGIC; 
  signal M2a_6_bdd0 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal M2a_6_bdd1_pack_1 : STD_LOGIC; 
  signal M2a_8_10_17714 : STD_LOGIC; 
  signal M2a_8_Q : STD_LOGIC; 
  signal M2a_8_14_pack_1 : STD_LOGIC; 
  signal M2a_9_Q : STD_LOGIC; 
  signal M2a_2_Q : STD_LOGIC; 
  signal N310_pack_1 : STD_LOGIC; 
  signal N46_pack_1 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal vsync_OBUF_17846 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal M1_0_Q : STD_LOGIC; 
  signal M1_0_bdd0_pack_1 : STD_LOGIC; 
  signal M1_0_bdd2 : STD_LOGIC; 
  signal M1_28_2_17894 : STD_LOGIC; 
  signal M1_29_0_17906 : STD_LOGIC; 
  signal green_0_OBUF_17930 : STD_LOGIC; 
  signal N130_pack_1 : STD_LOGIC; 
  signal M2_1_115_17954 : STD_LOGIC; 
  signal M2_0_bdd1_pack_1 : STD_LOGIC; 
  signal M2_5_58_17978 : STD_LOGIC; 
  signal M2_0_bdd10 : STD_LOGIC; 
  signal M2a_1_36_18002 : STD_LOGIC; 
  signal M2_0_bdd9_pack_2 : STD_LOGIC; 
  signal M2_8_29_18026 : STD_LOGIC; 
  signal M2_0_bdd3_pack_1 : STD_LOGIC; 
  signal M2_9_9_18050 : STD_LOGIC; 
  signal M2_0_bdd16_pack_2 : STD_LOGIC; 
  signal M2_1_Q : STD_LOGIC; 
  signal M2_1_60_pack_1 : STD_LOGIC; 
  signal M2_28_Q : STD_LOGIC; 
  signal M1_3_1_pack_1 : STD_LOGIC; 
  signal M2_2_35_18122 : STD_LOGIC; 
  signal M2_2_14_pack_1 : STD_LOGIC; 
  signal M2_5_30_18146 : STD_LOGIC; 
  signal M2_2_bdd5 : STD_LOGIC; 
  signal M2_2_Q : STD_LOGIC; 
  signal M2_2_60_pack_1 : STD_LOGIC; 
  signal green_1_OBUF_18194 : STD_LOGIC; 
  signal N316_pack_1 : STD_LOGIC; 
  signal M2_3_Q : STD_LOGIC; 
  signal M2_3_30_pack_1 : STD_LOGIC; 
  signal M2_8_bdd1 : STD_LOGIC; 
  signal M2_3_bdd9_pack_3 : STD_LOGIC; 
  signal M2_7_bdd0 : STD_LOGIC; 
  signal M2_4_bdd0 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal M2a_9_18_18302 : STD_LOGIC; 
  signal M2_9_bdd0_pack_3 : STD_LOGIC; 
  signal U3_red_0_15_18326 : STD_LOGIC; 
  signal N236_pack_1 : STD_LOGIC; 
  signal vidon : STD_LOGIC; 
  signal U2_vidon_and0000117_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3_and000041_18374 : STD_LOGIC; 
  signal U3_spriteonB3_and000032_pack_1 : STD_LOGIC; 
  signal M1a_3_Q : STD_LOGIC; 
  signal M1a_3_1_pack_1 : STD_LOGIC; 
  signal U3_spriteonB3_and000025_18410 : STD_LOGIC; 
  signal U3_spriteonB3 : STD_LOGIC; 
  signal U3_spriteonB3_and000059_pack_1 : STD_LOGIC; 
  signal U2_vidon_and0000105_18458 : STD_LOGIC; 
  signal U3_N94_pack_1 : STD_LOGIC; 
  signal U3_spriteonB4 : STD_LOGIC; 
  signal U3_spriteonB4_and000023_pack_1 : STD_LOGIC; 
  signal U2_vcs_5_FFX_RSTAND_13495 : STD_LOGIC; 
  signal U2_hcs_1_FFX_RSTAND_13578 : STD_LOGIC; 
  signal U1_q_01_FFX_RSTAND_13868 : STD_LOGIC; 
  signal U2_hcs_0_FFY_RSTAND_13891 : STD_LOGIC; 
  signal U2_vcs_4_FFY_RSTAND_14177 : STD_LOGIC; 
  signal dp_OUTPUT_OFF_O1INV_10396 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal U3_q : STD_LOGIC_VECTOR ( 17 downto 17 ); 
  signal U3_tank1_angle_calc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_hcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_C2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_tank2_angle_calc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_xpix1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_xpix1_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal x7_clkdiv : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U3_xpix2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_Msub_xpix2_Madd_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal nes_scalar_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_scalar_next_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal rom1_addr : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal U1_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal x7_digit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U3_Mcount_tank1_angle_calc_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_le0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2f_cmp_le0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcount_C1_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_C2_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcount_tank2_angle_calc_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Msub_xpix1_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal x7_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Msub_xpix2_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U3_spriteon2f_add0002 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U3_Mcompar_spriteon2f_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Mcompar_spriteon2_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal nes_Madd_scalar_next_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_hcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal nes_Mcount_counter_reg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_red : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal nes_scalar_next : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U3_Madd_spriteon2_addsub0000_cy : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal U3_spriteon2_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal U3_Madd_spriteon2_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 6 ); 
  signal U3_spriteon1_addsub0001 : STD_LOGIC_VECTOR ( 9 downto 8 ); 
  signal U1_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U3_Madd_spriteon1_addsub0001_lut : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal U3_tank2_angle_calc_mux0004 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
begin
  U3_tank1_angle_calc_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      O => U3_tank1_angle_calc_0_LOGIC_ONE_5632
    );
  U3_tank1_angle_calc_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_0_XORF_5652,
      O => U3_tank1_angle_calc_0_DXMUX_5654
    );
  U3_tank1_angle_calc_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => U3_tank1_angle_calc_0_CYINIT_5651,
      I1 => U3_Mcount_tank1_angle_calc_lut(0),
      O => U3_tank1_angle_calc_0_XORF_5652
    );
  U3_tank1_angle_calc_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => U3_tank1_angle_calc_0_LOGIC_ONE_5632,
      IB => U3_tank1_angle_calc_0_CYINIT_5651,
      SEL => U3_tank1_angle_calc_0_CYSELF_5645,
      O => U3_Mcount_tank1_angle_calc_cy_0_Q
    );
  U3_tank1_angle_calc_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_up_reg_4814,
      O => U3_tank1_angle_calc_0_CYINIT_5651
    );
  U3_tank1_angle_calc_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(0),
      O => U3_tank1_angle_calc_0_CYSELF_5645
    );
  U3_tank1_angle_calc_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_0_XORG_5635,
      O => U3_tank1_angle_calc_0_DYMUX_5637
    );
  U3_tank1_angle_calc_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => U3_Mcount_tank1_angle_calc_cy_0_Q,
      I1 => U3_Mcount_tank1_angle_calc_lut(1),
      O => U3_tank1_angle_calc_0_XORG_5635
    );
  U3_tank1_angle_calc_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_0_CYMUXG_5634,
      O => U3_Mcount_tank1_angle_calc_cy_1_Q
    );
  U3_tank1_angle_calc_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => U3_tank1_angle_calc_0_LOGIC_ONE_5632,
      IB => U3_Mcount_tank1_angle_calc_cy_0_Q,
      SEL => U3_tank1_angle_calc_0_CYSELG_5625,
      O => U3_tank1_angle_calc_0_CYMUXG_5634
    );
  U3_tank1_angle_calc_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(1),
      O => U3_tank1_angle_calc_0_CYSELG_5625
    );
  U3_tank1_angle_calc_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and0000_0,
      O => U3_tank1_angle_calc_0_SRINV_5623
    );
  U3_tank1_angle_calc_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank1_angle_calc_0_CLKINV_5622
    );
  U3_tank1_angle_calc_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_not0001_0,
      O => U3_tank1_angle_calc_0_CEINV_5621
    );
  U3_tank1_angle_calc_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      O => U3_tank1_angle_calc_2_LOGIC_ONE_5685
    );
  U3_tank1_angle_calc_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_2_XORF_5708,
      O => U3_tank1_angle_calc_2_DXMUX_5710
    );
  U3_tank1_angle_calc_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => U3_tank1_angle_calc_2_CYINIT_5707,
      I1 => U3_Mcount_tank1_angle_calc_lut(2),
      O => U3_tank1_angle_calc_2_XORF_5708
    );
  U3_tank1_angle_calc_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => U3_tank1_angle_calc_2_LOGIC_ONE_5685,
      IB => U3_tank1_angle_calc_2_CYINIT_5707,
      SEL => U3_tank1_angle_calc_2_CYSELF_5691,
      O => U3_Mcount_tank1_angle_calc_cy_2_Q
    );
  U3_tank1_angle_calc_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => U3_tank1_angle_calc_2_LOGIC_ONE_5685,
      IB => U3_tank1_angle_calc_2_LOGIC_ONE_5685,
      SEL => U3_tank1_angle_calc_2_CYSELF_5691,
      O => U3_tank1_angle_calc_2_CYMUXF2_5686
    );
  U3_tank1_angle_calc_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_cy_1_Q,
      O => U3_tank1_angle_calc_2_CYINIT_5707
    );
  U3_tank1_angle_calc_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(2),
      O => U3_tank1_angle_calc_2_CYSELF_5691
    );
  U3_tank1_angle_calc_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_2_XORG_5693,
      O => U3_tank1_angle_calc_2_DYMUX_5695
    );
  U3_tank1_angle_calc_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => U3_Mcount_tank1_angle_calc_cy_2_Q,
      I1 => U3_Mcount_tank1_angle_calc_lut(3),
      O => U3_tank1_angle_calc_2_XORG_5693
    );
  U3_tank1_angle_calc_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_2_CYMUXFAST_5690,
      O => U3_Mcount_tank1_angle_calc_cy_3_Q
    );
  U3_tank1_angle_calc_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_cy_1_Q,
      O => U3_tank1_angle_calc_2_FASTCARRY_5688
    );
  U3_tank1_angle_calc_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => U3_tank1_angle_calc_2_CYSELG_5678,
      I1 => U3_tank1_angle_calc_2_CYSELF_5691,
      O => U3_tank1_angle_calc_2_CYAND_5689
    );
  U3_tank1_angle_calc_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => U3_tank1_angle_calc_2_CYMUXG2_5687,
      IB => U3_tank1_angle_calc_2_FASTCARRY_5688,
      SEL => U3_tank1_angle_calc_2_CYAND_5689,
      O => U3_tank1_angle_calc_2_CYMUXFAST_5690
    );
  U3_tank1_angle_calc_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => U3_tank1_angle_calc_2_LOGIC_ONE_5685,
      IB => U3_tank1_angle_calc_2_CYMUXF2_5686,
      SEL => U3_tank1_angle_calc_2_CYSELG_5678,
      O => U3_tank1_angle_calc_2_CYMUXG2_5687
    );
  U3_tank1_angle_calc_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(3),
      O => U3_tank1_angle_calc_2_CYSELG_5678
    );
  U3_tank1_angle_calc_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and0000_0,
      O => U3_tank1_angle_calc_2_SRINV_5676
    );
  U3_tank1_angle_calc_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank1_angle_calc_2_CLKINV_5675
    );
  U3_tank1_angle_calc_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_not0001_0,
      O => U3_tank1_angle_calc_2_CEINV_5674
    );
  U3_tank1_angle_calc_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      O => U3_tank1_angle_calc_4_LOGIC_ONE_5741
    );
  U3_tank1_angle_calc_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_4_XORF_5764,
      O => U3_tank1_angle_calc_4_DXMUX_5766
    );
  U3_tank1_angle_calc_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      I0 => U3_tank1_angle_calc_4_CYINIT_5763,
      I1 => U3_Mcount_tank1_angle_calc_lut(4),
      O => U3_tank1_angle_calc_4_XORF_5764
    );
  U3_tank1_angle_calc_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => U3_tank1_angle_calc_4_LOGIC_ONE_5741,
      IB => U3_tank1_angle_calc_4_CYINIT_5763,
      SEL => U3_tank1_angle_calc_4_CYSELF_5747,
      O => U3_Mcount_tank1_angle_calc_cy_4_Q
    );
  U3_tank1_angle_calc_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => U3_tank1_angle_calc_4_LOGIC_ONE_5741,
      IB => U3_tank1_angle_calc_4_LOGIC_ONE_5741,
      SEL => U3_tank1_angle_calc_4_CYSELF_5747,
      O => U3_tank1_angle_calc_4_CYMUXF2_5742
    );
  U3_tank1_angle_calc_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_cy_3_Q,
      O => U3_tank1_angle_calc_4_CYINIT_5763
    );
  U3_tank1_angle_calc_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(4),
      O => U3_tank1_angle_calc_4_CYSELF_5747
    );
  U3_tank1_angle_calc_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_4_XORG_5749,
      O => U3_tank1_angle_calc_4_DYMUX_5751
    );
  U3_tank1_angle_calc_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      I0 => U3_Mcount_tank1_angle_calc_cy_4_Q,
      I1 => U3_Mcount_tank1_angle_calc_lut(5),
      O => U3_tank1_angle_calc_4_XORG_5749
    );
  U3_tank1_angle_calc_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_cy_3_Q,
      O => U3_tank1_angle_calc_4_FASTCARRY_5744
    );
  U3_tank1_angle_calc_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      I0 => U3_tank1_angle_calc_4_CYSELG_5735,
      I1 => U3_tank1_angle_calc_4_CYSELF_5747,
      O => U3_tank1_angle_calc_4_CYAND_5745
    );
  U3_tank1_angle_calc_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => U3_tank1_angle_calc_4_CYMUXG2_5743,
      IB => U3_tank1_angle_calc_4_FASTCARRY_5744,
      SEL => U3_tank1_angle_calc_4_CYAND_5745,
      O => U3_tank1_angle_calc_4_CYMUXFAST_5746
    );
  U3_tank1_angle_calc_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => U3_tank1_angle_calc_4_LOGIC_ONE_5741,
      IB => U3_tank1_angle_calc_4_CYMUXF2_5742,
      SEL => U3_tank1_angle_calc_4_CYSELG_5735,
      O => U3_tank1_angle_calc_4_CYMUXG2_5743
    );
  U3_tank1_angle_calc_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(5),
      O => U3_tank1_angle_calc_4_CYSELG_5735
    );
  U3_tank1_angle_calc_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and0000_0,
      O => U3_tank1_angle_calc_4_SRINV_5733
    );
  U3_tank1_angle_calc_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank1_angle_calc_4_CLKINV_5732
    );
  U3_tank1_angle_calc_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_not0001_0,
      O => U3_tank1_angle_calc_4_CEINV_5731
    );
  U3_tank1_angle_calc_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y71"
    )
    port map (
      O => U3_tank1_angle_calc_6_LOGIC_ONE_5812
    );
  U3_tank1_angle_calc_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_6_XORF_5813,
      O => U3_tank1_angle_calc_6_DXMUX_5815
    );
  U3_tank1_angle_calc_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y71"
    )
    port map (
      I0 => U3_tank1_angle_calc_6_CYINIT_5811,
      I1 => U3_Mcount_tank1_angle_calc_lut(6),
      O => U3_tank1_angle_calc_6_XORF_5813
    );
  U3_tank1_angle_calc_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y71"
    )
    port map (
      IA => U3_tank1_angle_calc_6_LOGIC_ONE_5812,
      IB => U3_tank1_angle_calc_6_CYINIT_5811,
      SEL => U3_tank1_angle_calc_6_CYSELF_5805,
      O => U3_Mcount_tank1_angle_calc_cy_6_Q
    );
  U3_tank1_angle_calc_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_4_CYMUXFAST_5746,
      O => U3_tank1_angle_calc_6_CYINIT_5811
    );
  U3_tank1_angle_calc_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank1_angle_calc_lut(6),
      O => U3_tank1_angle_calc_6_CYSELF_5805
    );
  U3_tank1_angle_calc_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_6_XORG_5796,
      O => U3_tank1_angle_calc_6_DYMUX_5798
    );
  U3_tank1_angle_calc_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y71"
    )
    port map (
      I0 => U3_Mcount_tank1_angle_calc_cy_6_Q,
      I1 => U3_Mcount_tank1_angle_calc_lut(7),
      O => U3_tank1_angle_calc_6_XORG_5796
    );
  U3_tank1_angle_calc_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and0000_0,
      O => U3_tank1_angle_calc_6_SRINV_5788
    );
  U3_tank1_angle_calc_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank1_angle_calc_6_CLKINV_5787
    );
  U3_tank1_angle_calc_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_not0001_0,
      O => U3_tank1_angle_calc_6_CEINV_5786
    );
  U3_tank1_angle_calc_6 : X_SFF
    generic map(
      LOC => "SLICE_X53Y71",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_6_DXMUX_5815,
      CE => U3_tank1_angle_calc_6_CEINV_5786,
      CLK => U3_tank1_angle_calc_6_CLKINV_5787,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_6_SRINV_5788,
      O => U3_tank1_angle_calc(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X3Y34"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F_5849,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT_5850,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF_5841,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV_5839,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYINIT_5850
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0F_5849
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELF_5841
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_BXINV_5839
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G_5836,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy(0),
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG_5828,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG_5838
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CY0G_5836
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYSELG_5828
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X3Y34"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(1),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X3Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => U3_C1(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5881,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5881,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5872,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2_5867
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0F_5881
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5872
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_1_CYMUXG_5838,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY_5869
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5858,
      I1 => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELF_5872,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND_5870
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2_5868,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_FASTCARRY_5869,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYAND_5870,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST_5871
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G_5866,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXF2_5867,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5858,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXG2_5868
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CY0G_5866
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYSELG_5858
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X3Y35"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U3_C1(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X3Y36"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U2_hcs(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5912,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5912,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5903,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2_5898
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0F_5912
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5903
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_3_CYMUXFAST_5871,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY_5900
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5890,
      I1 => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELF_5903,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND_5901
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2_5899,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_FASTCARRY_5900,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYAND_5901,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST_5902
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G_5897,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXF2_5898,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5890,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXG2_5899
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CY0G_5897
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYSELG_5890
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X3Y36"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U2_hcs(5),
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5943,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5943,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5936,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2_5931
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0F_5943
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5936
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_5_CYMUXFAST_5902,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY_5933
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5922,
      I1 => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELF_5936,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND_5934
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2_5932,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_FASTCARRY_5933,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYAND_5934,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST_5935
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G_5930,
      IB => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXF2_5931,
      SEL => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5922,
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXG2_5932
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CY0G_5930
    );
  U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYSELG_5922
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X3Y37"
    )
    port map (
      ADR0 => U3_Madd_spriteon1_addsub0001_lut_7_0,
      ADR1 => U2_hcs(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(7)
    );
  U3_spriteon1_cmp_ge0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => U3_spriteon1_cmp_ge0000_CY0F_5974,
      IB => U3_spriteon1_cmp_ge0000_CY0F_5974,
      SEL => U3_spriteon1_cmp_ge0000_CYSELF_5966,
      O => U3_spriteon1_cmp_ge0000_CYMUXF2_5961
    );
  U3_spriteon1_cmp_ge0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_spriteon1_cmp_ge0000_CY0F_5974
    );
  U3_spriteon1_cmp_ge0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(8),
      O => U3_spriteon1_cmp_ge0000_CYSELF_5966
    );
  U3_spriteon1_cmp_ge0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon1_cmp_ge0000_CYMUXFAST_5965,
      O => U3_spriteon1_cmp_ge0000
    );
  U3_spriteon1_cmp_ge0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_cy_7_CYMUXFAST_5935,
      O => U3_spriteon1_cmp_ge0000_FASTCARRY_5963
    );
  U3_spriteon1_cmp_ge0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      I0 => U3_spriteon1_cmp_ge0000_CYSELG_5954,
      I1 => U3_spriteon1_cmp_ge0000_CYSELF_5966,
      O => U3_spriteon1_cmp_ge0000_CYAND_5964
    );
  U3_spriteon1_cmp_ge0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => U3_spriteon1_cmp_ge0000_CYMUXG2_5962,
      IB => U3_spriteon1_cmp_ge0000_FASTCARRY_5963,
      SEL => U3_spriteon1_cmp_ge0000_CYAND_5964,
      O => U3_spriteon1_cmp_ge0000_CYMUXFAST_5965
    );
  U3_spriteon1_cmp_ge0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => U3_spriteon1_cmp_ge0000_CY0G_5960,
      IB => U3_spriteon1_cmp_ge0000_CYMUXF2_5961,
      SEL => U3_spriteon1_cmp_ge0000_CYSELG_5954,
      O => U3_spriteon1_cmp_ge0000_CYMUXG2_5962
    );
  U3_spriteon1_cmp_ge0000_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_spriteon1_cmp_ge0000_CY0G_5960
    );
  U3_spriteon1_cmp_ge0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_ge0000_lut(9),
      O => U3_spriteon1_cmp_ge0000_CYSELG_5954
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F_6003,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT_6004,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF_5995,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy(0)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV_5993,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYINIT_6004
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(0),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0F_6003
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(0),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELF_5995
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_BXINV_5993
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G_5990,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy(0),
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG_5982,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG_5992
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CY0G_5990
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYSELG_5982
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_6035,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_6035,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_6026,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2_6021
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(2),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0F_6035
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(2),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_6026
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_1_CYMUXG_5992,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY_6023
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_6012,
      I1 => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELF_6026,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND_6024
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2_6022,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_FASTCARRY_6023,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYAND_6024,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST_6025
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y23"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G_6020,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXF2_6021,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_6012,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXG2_6022
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(3),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CY0G_6020
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(3),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYSELG_6012
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_6066,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_6066,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_6058,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2_6053
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_add0002_4_0,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0F_6066
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(4),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_6058
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_3_CYMUXFAST_6025,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY_6055
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_6046,
      I1 => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELF_6058,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND_6056
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2_6054,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_FASTCARRY_6055,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYAND_6056,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST_6057
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y24"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G_6052,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXF2_6053,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_6046,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXG2_6054
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000_5_0,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CY0G_6052
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYSELG_6046
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_6101,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_6101,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_6093,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2_6088
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(6),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0F_6101
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_6093
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_5_CYMUXFAST_6057,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY_6090
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_6081,
      I1 => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELF_6093,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND_6091
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2_6089,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_FASTCARRY_6090,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYAND_6091,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST_6092
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y25"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G_6087,
      IB => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXF2_6088,
      SEL => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_6081,
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXG2_6089
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CY0G_6087
    );
  U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYSELG_6081
    );
  U3_spriteon2f_cmp_le0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => U3_spriteon2f_cmp_le0000_CY0F_6132,
      IB => U3_spriteon2f_cmp_le0000_CY0F_6132,
      SEL => U3_spriteon2f_cmp_le0000_CYSELF_6123,
      O => U3_spriteon2f_cmp_le0000_CYMUXF2_6118
    );
  U3_spriteon2f_cmp_le0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000_8_0,
      O => U3_spriteon2f_cmp_le0000_CY0F_6132
    );
  U3_spriteon2f_cmp_le0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(8),
      O => U3_spriteon2f_cmp_le0000_CYSELF_6123
    );
  U3_spriteon2f_cmp_le0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_cmp_le0000_CYMUXFAST_6122,
      O => U3_spriteon2f_cmp_le0000
    );
  U3_spriteon2f_cmp_le0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_cy_7_CYMUXFAST_6092,
      O => U3_spriteon2f_cmp_le0000_FASTCARRY_6120
    );
  U3_spriteon2f_cmp_le0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      I0 => U3_spriteon2f_cmp_le0000_CYSELG_6109,
      I1 => U3_spriteon2f_cmp_le0000_CYSELF_6123,
      O => U3_spriteon2f_cmp_le0000_CYAND_6121
    );
  U3_spriteon2f_cmp_le0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => U3_spriteon2f_cmp_le0000_CYMUXG2_6119,
      IB => U3_spriteon2f_cmp_le0000_FASTCARRY_6120,
      SEL => U3_spriteon2f_cmp_le0000_CYAND_6121,
      O => U3_spriteon2f_cmp_le0000_CYMUXFAST_6122
    );
  U3_spriteon2f_cmp_le0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y26"
    )
    port map (
      IA => U3_spriteon2f_cmp_le0000_CY0G_6117,
      IB => U3_spriteon2f_cmp_le0000_CYMUXF2_6118,
      SEL => U3_spriteon2f_cmp_le0000_CYSELG_6109,
      O => U3_spriteon2f_cmp_le0000_CYMUXG2_6119
    );
  U3_spriteon2f_cmp_le0000_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000_9_0,
      O => U3_spriteon2f_cmp_le0000_CY0G_6117
    );
  U3_spriteon2f_cmp_le0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_le0000_lut(9),
      O => U3_spriteon2f_cmp_le0000_CYSELG_6109
    );
  U3_C1_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_0_XORF_6176,
      O => U3_C1_0_DXMUX_6178
    );
  U3_C1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y45"
    )
    port map (
      I0 => U3_C1_0_CYINIT_6175,
      I1 => U3_Mcount_C1_lut(0),
      O => U3_C1_0_XORF_6176
    );
  U3_C1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y45"
    )
    port map (
      IA => U3_C1_0_CY0F_6174,
      IB => U3_C1_0_CYINIT_6175,
      SEL => U3_C1_0_CYSELF_6166,
      O => U3_Mcount_C1_cy_0_Q
    );
  U3_C1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_4884,
      O => U3_C1_0_CYINIT_6175
    );
  U3_C1_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(0),
      O => U3_C1_0_CY0F_6174
    );
  U3_C1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(0),
      O => U3_C1_0_CYSELF_6166
    );
  U3_C1_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_0_XORG_6157,
      O => U3_C1_0_DYMUX_6159
    );
  U3_C1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y45"
    )
    port map (
      I0 => U3_Mcount_C1_cy_0_Q,
      I1 => U3_Mcount_C1_lut(1),
      O => U3_C1_0_XORG_6157
    );
  U3_C1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_0_CYMUXG_6156,
      O => U3_Mcount_C1_cy_1_Q
    );
  U3_C1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X1Y45"
    )
    port map (
      IA => U3_C1_0_CY0G_6154,
      IB => U3_Mcount_C1_cy_0_Q,
      SEL => U3_C1_0_CYSELG_6146,
      O => U3_C1_0_CYMUXG_6156
    );
  U3_C1_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(1),
      O => U3_C1_0_CY0G_6154
    );
  U3_C1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(1),
      O => U3_C1_0_CYSELG_6146
    );
  U3_C1_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_0_CLKINV_6144
    );
  U3_C1_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_0_CEINV_6143
    );
  U3_C1_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_2_XORF_6229,
      O => U3_C1_2_DXMUX_6231
    );
  U3_C1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      I0 => U3_C1_2_CYINIT_6228,
      I1 => U3_Mcount_C1_lut(2),
      O => U3_C1_2_XORF_6229
    );
  U3_C1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      IA => U3_C1_2_CY0F_6227,
      IB => U3_C1_2_CYINIT_6228,
      SEL => U3_C1_2_CYSELF_6210,
      O => U3_Mcount_C1_cy_2_Q
    );
  U3_C1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      IA => U3_C1_2_CY0F_6227,
      IB => U3_C1_2_CY0F_6227,
      SEL => U3_C1_2_CYSELF_6210,
      O => U3_C1_2_CYMUXF2_6205
    );
  U3_C1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_1_Q,
      O => U3_C1_2_CYINIT_6228
    );
  U3_C1_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(2),
      O => U3_C1_2_CY0F_6227
    );
  U3_C1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(2),
      O => U3_C1_2_CYSELF_6210
    );
  U3_C1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_2_XORG_6212,
      O => U3_C1_2_DYMUX_6214
    );
  U3_C1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      I0 => U3_Mcount_C1_cy_2_Q,
      I1 => U3_Mcount_C1_lut(3),
      O => U3_C1_2_XORG_6212
    );
  U3_C1_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_2_CYMUXFAST_6209,
      O => U3_Mcount_C1_cy_3_Q
    );
  U3_C1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_1_Q,
      O => U3_C1_2_FASTCARRY_6207
    );
  U3_C1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      I0 => U3_C1_2_CYSELG_6196,
      I1 => U3_C1_2_CYSELF_6210,
      O => U3_C1_2_CYAND_6208
    );
  U3_C1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      IA => U3_C1_2_CYMUXG2_6206,
      IB => U3_C1_2_FASTCARRY_6207,
      SEL => U3_C1_2_CYAND_6208,
      O => U3_C1_2_CYMUXFAST_6209
    );
  U3_C1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y46"
    )
    port map (
      IA => U3_C1_2_CY0G_6204,
      IB => U3_C1_2_CYMUXF2_6205,
      SEL => U3_C1_2_CYSELG_6196,
      O => U3_C1_2_CYMUXG2_6206
    );
  U3_C1_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(3),
      O => U3_C1_2_CY0G_6204
    );
  U3_C1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(3),
      O => U3_C1_2_CYSELG_6196
    );
  U3_C1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_2_CLKINV_6194
    );
  U3_C1_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_2_CEINV_6193
    );
  U3_C1_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_4_XORF_6282,
      O => U3_C1_4_DXMUX_6284
    );
  U3_C1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      I0 => U3_C1_4_CYINIT_6281,
      I1 => U3_Mcount_C1_lut(4),
      O => U3_C1_4_XORF_6282
    );
  U3_C1_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      IA => U3_C1_4_CY0F_6280,
      IB => U3_C1_4_CYINIT_6281,
      SEL => U3_C1_4_CYSELF_6263,
      O => U3_Mcount_C1_cy_4_Q
    );
  U3_C1_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      IA => U3_C1_4_CY0F_6280,
      IB => U3_C1_4_CY0F_6280,
      SEL => U3_C1_4_CYSELF_6263,
      O => U3_C1_4_CYMUXF2_6258
    );
  U3_C1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_3_Q,
      O => U3_C1_4_CYINIT_6281
    );
  U3_C1_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(4),
      O => U3_C1_4_CY0F_6280
    );
  U3_C1_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(4),
      O => U3_C1_4_CYSELF_6263
    );
  U3_C1_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_4_XORG_6265,
      O => U3_C1_4_DYMUX_6267
    );
  U3_C1_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      I0 => U3_Mcount_C1_cy_4_Q,
      I1 => U3_Mcount_C1_lut(5),
      O => U3_C1_4_XORG_6265
    );
  U3_C1_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_4_CYMUXFAST_6262,
      O => U3_Mcount_C1_cy_5_Q
    );
  U3_C1_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_3_Q,
      O => U3_C1_4_FASTCARRY_6260
    );
  U3_C1_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      I0 => U3_C1_4_CYSELG_6249,
      I1 => U3_C1_4_CYSELF_6263,
      O => U3_C1_4_CYAND_6261
    );
  U3_C1_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      IA => U3_C1_4_CYMUXG2_6259,
      IB => U3_C1_4_FASTCARRY_6260,
      SEL => U3_C1_4_CYAND_6261,
      O => U3_C1_4_CYMUXFAST_6262
    );
  U3_C1_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y47"
    )
    port map (
      IA => U3_C1_4_CY0G_6257,
      IB => U3_C1_4_CYMUXF2_6258,
      SEL => U3_C1_4_CYSELG_6249,
      O => U3_C1_4_CYMUXG2_6259
    );
  U3_C1_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(5),
      O => U3_C1_4_CY0G_6257
    );
  U3_C1_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(5),
      O => U3_C1_4_CYSELG_6249
    );
  U3_C1_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_4_CLKINV_6247
    );
  U3_C1_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_4_CEINV_6246
    );
  U3_C1_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_6_XORF_6335,
      O => U3_C1_6_DXMUX_6337
    );
  U3_C1_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      I0 => U3_C1_6_CYINIT_6334,
      I1 => U3_Mcount_C1_lut(6),
      O => U3_C1_6_XORF_6335
    );
  U3_C1_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      IA => U3_C1_6_CY0F_6333,
      IB => U3_C1_6_CYINIT_6334,
      SEL => U3_C1_6_CYSELF_6316,
      O => U3_Mcount_C1_cy_6_Q
    );
  U3_C1_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      IA => U3_C1_6_CY0F_6333,
      IB => U3_C1_6_CY0F_6333,
      SEL => U3_C1_6_CYSELF_6316,
      O => U3_C1_6_CYMUXF2_6311
    );
  U3_C1_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_5_Q,
      O => U3_C1_6_CYINIT_6334
    );
  U3_C1_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(6),
      O => U3_C1_6_CY0F_6333
    );
  U3_C1_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(6),
      O => U3_C1_6_CYSELF_6316
    );
  U3_C1_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_6_XORG_6318,
      O => U3_C1_6_DYMUX_6320
    );
  U3_C1_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      I0 => U3_Mcount_C1_cy_6_Q,
      I1 => U3_Mcount_C1_lut(7),
      O => U3_C1_6_XORG_6318
    );
  U3_C1_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_cy_5_Q,
      O => U3_C1_6_FASTCARRY_6313
    );
  U3_C1_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      I0 => U3_C1_6_CYSELG_6302,
      I1 => U3_C1_6_CYSELF_6316,
      O => U3_C1_6_CYAND_6314
    );
  U3_C1_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      IA => U3_C1_6_CYMUXG2_6312,
      IB => U3_C1_6_FASTCARRY_6313,
      SEL => U3_C1_6_CYAND_6314,
      O => U3_C1_6_CYMUXFAST_6315
    );
  U3_C1_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y48"
    )
    port map (
      IA => U3_C1_6_CY0G_6310,
      IB => U3_C1_6_CYMUXF2_6311,
      SEL => U3_C1_6_CYSELG_6302,
      O => U3_C1_6_CYMUXG2_6312
    );
  U3_C1_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(7),
      O => U3_C1_6_CY0G_6310
    );
  U3_C1_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(7),
      O => U3_C1_6_CYSELG_6302
    );
  U3_C1_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_6_CLKINV_6300
    );
  U3_C1_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_6_CEINV_6299
    );
  U3_C1_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_8_XORF_6380,
      O => U3_C1_8_DXMUX_6382
    );
  U3_C1_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X1Y49"
    )
    port map (
      I0 => U3_C1_8_CYINIT_6379,
      I1 => U3_Mcount_C1_lut(8),
      O => U3_C1_8_XORF_6380
    );
  U3_C1_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y49"
    )
    port map (
      IA => U3_C1_8_CY0F_6378,
      IB => U3_C1_8_CYINIT_6379,
      SEL => U3_C1_8_CYSELF_6370,
      O => U3_Mcount_C1_cy_8_Q
    );
  U3_C1_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_6_CYMUXFAST_6315,
      O => U3_C1_8_CYINIT_6379
    );
  U3_C1_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(8),
      O => U3_C1_8_CY0F_6378
    );
  U3_C1_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C1_lut(8),
      O => U3_C1_8_CYSELF_6370
    );
  U3_C1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_8_XORG_6362,
      O => U3_C1_8_DYMUX_6364
    );
  U3_C1_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X1Y49"
    )
    port map (
      I0 => U3_Mcount_C1_cy_8_Q,
      I1 => U3_Mcount_C1_lut(9),
      O => U3_C1_8_XORG_6362
    );
  U3_C1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C1_8_CLKINV_6352
    );
  U3_C1_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001_0,
      O => U3_C1_8_CEINV_6351
    );
  U3_C2_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_0_XORF_6430,
      O => U3_C2_0_DXMUX_6432
    );
  U3_C2_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y30"
    )
    port map (
      I0 => U3_C2_0_CYINIT_6429,
      I1 => U3_Mcount_C2_lut(0),
      O => U3_C2_0_XORF_6430
    );
  U3_C2_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y30"
    )
    port map (
      IA => U3_C2_0_CY0F_6428,
      IB => U3_C2_0_CYINIT_6429,
      SEL => U3_C2_0_CYSELF_6420,
      O => U3_Mcount_C2_cy_0_Q
    );
  U3_C2_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_4884,
      O => U3_C2_0_CYINIT_6429
    );
  U3_C2_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(0),
      O => U3_C2_0_CY0F_6428
    );
  U3_C2_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(0),
      O => U3_C2_0_CYSELF_6420
    );
  U3_C2_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_0_XORG_6411,
      O => U3_C2_0_DYMUX_6413
    );
  U3_C2_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y30"
    )
    port map (
      I0 => U3_Mcount_C2_cy_0_Q,
      I1 => U3_Mcount_C2_lut(1),
      O => U3_C2_0_XORG_6411
    );
  U3_C2_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_0_CYMUXG_6410,
      O => U3_Mcount_C2_cy_1_Q
    );
  U3_C2_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X2Y30"
    )
    port map (
      IA => U3_C2_0_CY0G_6408,
      IB => U3_Mcount_C2_cy_0_Q,
      SEL => U3_C2_0_CYSELG_6400,
      O => U3_C2_0_CYMUXG_6410
    );
  U3_C2_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(1),
      O => U3_C2_0_CY0G_6408
    );
  U3_C2_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(1),
      O => U3_C2_0_CYSELG_6400
    );
  U3_C2_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_0_CLKINV_6398
    );
  U3_C2_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_0_CEINV_6397
    );
  U3_C2_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_2_XORF_6483,
      O => U3_C2_2_DXMUX_6485
    );
  U3_C2_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      I0 => U3_C2_2_CYINIT_6482,
      I1 => U3_Mcount_C2_lut(2),
      O => U3_C2_2_XORF_6483
    );
  U3_C2_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => U3_C2_2_CY0F_6481,
      IB => U3_C2_2_CYINIT_6482,
      SEL => U3_C2_2_CYSELF_6464,
      O => U3_Mcount_C2_cy_2_Q
    );
  U3_C2_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => U3_C2_2_CY0F_6481,
      IB => U3_C2_2_CY0F_6481,
      SEL => U3_C2_2_CYSELF_6464,
      O => U3_C2_2_CYMUXF2_6459
    );
  U3_C2_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_1_Q,
      O => U3_C2_2_CYINIT_6482
    );
  U3_C2_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(2),
      O => U3_C2_2_CY0F_6481
    );
  U3_C2_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(2),
      O => U3_C2_2_CYSELF_6464
    );
  U3_C2_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_2_XORG_6466,
      O => U3_C2_2_DYMUX_6468
    );
  U3_C2_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      I0 => U3_Mcount_C2_cy_2_Q,
      I1 => U3_Mcount_C2_lut(3),
      O => U3_C2_2_XORG_6466
    );
  U3_C2_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_2_CYMUXFAST_6463,
      O => U3_Mcount_C2_cy_3_Q
    );
  U3_C2_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_1_Q,
      O => U3_C2_2_FASTCARRY_6461
    );
  U3_C2_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      I0 => U3_C2_2_CYSELG_6450,
      I1 => U3_C2_2_CYSELF_6464,
      O => U3_C2_2_CYAND_6462
    );
  U3_C2_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => U3_C2_2_CYMUXG2_6460,
      IB => U3_C2_2_FASTCARRY_6461,
      SEL => U3_C2_2_CYAND_6462,
      O => U3_C2_2_CYMUXFAST_6463
    );
  U3_C2_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => U3_C2_2_CY0G_6458,
      IB => U3_C2_2_CYMUXF2_6459,
      SEL => U3_C2_2_CYSELG_6450,
      O => U3_C2_2_CYMUXG2_6460
    );
  U3_C2_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(3),
      O => U3_C2_2_CY0G_6458
    );
  U3_C2_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(3),
      O => U3_C2_2_CYSELG_6450
    );
  U3_C2_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_2_CLKINV_6448
    );
  U3_C2_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_2_CEINV_6447
    );
  U3_C2_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_4_XORF_6536,
      O => U3_C2_4_DXMUX_6538
    );
  U3_C2_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      I0 => U3_C2_4_CYINIT_6535,
      I1 => U3_Mcount_C2_lut(4),
      O => U3_C2_4_XORF_6536
    );
  U3_C2_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      IA => U3_C2_4_CY0F_6534,
      IB => U3_C2_4_CYINIT_6535,
      SEL => U3_C2_4_CYSELF_6517,
      O => U3_Mcount_C2_cy_4_Q
    );
  U3_C2_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      IA => U3_C2_4_CY0F_6534,
      IB => U3_C2_4_CY0F_6534,
      SEL => U3_C2_4_CYSELF_6517,
      O => U3_C2_4_CYMUXF2_6512
    );
  U3_C2_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_3_Q,
      O => U3_C2_4_CYINIT_6535
    );
  U3_C2_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(4),
      O => U3_C2_4_CY0F_6534
    );
  U3_C2_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(4),
      O => U3_C2_4_CYSELF_6517
    );
  U3_C2_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_4_XORG_6519,
      O => U3_C2_4_DYMUX_6521
    );
  U3_C2_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      I0 => U3_Mcount_C2_cy_4_Q,
      I1 => U3_Mcount_C2_lut(5),
      O => U3_C2_4_XORG_6519
    );
  U3_C2_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_4_CYMUXFAST_6516,
      O => U3_Mcount_C2_cy_5_Q
    );
  U3_C2_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_3_Q,
      O => U3_C2_4_FASTCARRY_6514
    );
  U3_C2_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      I0 => U3_C2_4_CYSELG_6503,
      I1 => U3_C2_4_CYSELF_6517,
      O => U3_C2_4_CYAND_6515
    );
  U3_C2_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      IA => U3_C2_4_CYMUXG2_6513,
      IB => U3_C2_4_FASTCARRY_6514,
      SEL => U3_C2_4_CYAND_6515,
      O => U3_C2_4_CYMUXFAST_6516
    );
  U3_C2_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y32"
    )
    port map (
      IA => U3_C2_4_CY0G_6511,
      IB => U3_C2_4_CYMUXF2_6512,
      SEL => U3_C2_4_CYSELG_6503,
      O => U3_C2_4_CYMUXG2_6513
    );
  U3_C2_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(5),
      O => U3_C2_4_CY0G_6511
    );
  U3_C2_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(5),
      O => U3_C2_4_CYSELG_6503
    );
  U3_C2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_4_CLKINV_6501
    );
  U3_C2_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_4_CEINV_6500
    );
  U3_C2_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_6_XORF_6589,
      O => U3_C2_6_DXMUX_6591
    );
  U3_C2_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      I0 => U3_C2_6_CYINIT_6588,
      I1 => U3_Mcount_C2_lut(6),
      O => U3_C2_6_XORF_6589
    );
  U3_C2_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      IA => U3_C2_6_CY0F_6587,
      IB => U3_C2_6_CYINIT_6588,
      SEL => U3_C2_6_CYSELF_6570,
      O => U3_Mcount_C2_cy_6_Q
    );
  U3_C2_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      IA => U3_C2_6_CY0F_6587,
      IB => U3_C2_6_CY0F_6587,
      SEL => U3_C2_6_CYSELF_6570,
      O => U3_C2_6_CYMUXF2_6565
    );
  U3_C2_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_5_Q,
      O => U3_C2_6_CYINIT_6588
    );
  U3_C2_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(6),
      O => U3_C2_6_CY0F_6587
    );
  U3_C2_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(6),
      O => U3_C2_6_CYSELF_6570
    );
  U3_C2_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_6_XORG_6572,
      O => U3_C2_6_DYMUX_6574
    );
  U3_C2_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      I0 => U3_Mcount_C2_cy_6_Q,
      I1 => U3_Mcount_C2_lut(7),
      O => U3_C2_6_XORG_6572
    );
  U3_C2_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_cy_5_Q,
      O => U3_C2_6_FASTCARRY_6567
    );
  U3_C2_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      I0 => U3_C2_6_CYSELG_6556,
      I1 => U3_C2_6_CYSELF_6570,
      O => U3_C2_6_CYAND_6568
    );
  U3_C2_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      IA => U3_C2_6_CYMUXG2_6566,
      IB => U3_C2_6_FASTCARRY_6567,
      SEL => U3_C2_6_CYAND_6568,
      O => U3_C2_6_CYMUXFAST_6569
    );
  U3_C2_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y33"
    )
    port map (
      IA => U3_C2_6_CY0G_6564,
      IB => U3_C2_6_CYMUXF2_6565,
      SEL => U3_C2_6_CYSELG_6556,
      O => U3_C2_6_CYMUXG2_6566
    );
  U3_C2_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(7),
      O => U3_C2_6_CY0G_6564
    );
  U3_C2_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(7),
      O => U3_C2_6_CYSELG_6556
    );
  U3_C2_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_6_CLKINV_6554
    );
  U3_C2_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_6_CEINV_6553
    );
  U3_C2_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_8_XORF_6634,
      O => U3_C2_8_DXMUX_6636
    );
  U3_C2_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y34"
    )
    port map (
      I0 => U3_C2_8_CYINIT_6633,
      I1 => U3_Mcount_C2_lut(8),
      O => U3_C2_8_XORF_6634
    );
  U3_C2_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y34"
    )
    port map (
      IA => U3_C2_8_CY0F_6632,
      IB => U3_C2_8_CYINIT_6633,
      SEL => U3_C2_8_CYSELF_6624,
      O => U3_Mcount_C2_cy_8_Q
    );
  U3_C2_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_6_CYMUXFAST_6569,
      O => U3_C2_8_CYINIT_6633
    );
  U3_C2_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(8),
      O => U3_C2_8_CY0F_6632
    );
  U3_C2_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_C2_lut(8),
      O => U3_C2_8_CYSELF_6624
    );
  U3_C2_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_8_XORG_6616,
      O => U3_C2_8_DYMUX_6618
    );
  U3_C2_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y34"
    )
    port map (
      I0 => U3_Mcount_C2_cy_8_Q,
      I1 => U3_Mcount_C2_lut(9),
      O => U3_C2_8_XORG_6616
    );
  U3_C2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_C2_8_CLKINV_6606
    );
  U3_C2_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001_0,
      O => U3_C2_8_CEINV_6605
    );
  U3_tank2_angle_calc_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y64"
    )
    port map (
      O => U3_tank2_angle_calc_0_LOGIC_ONE_6666
    );
  U3_tank2_angle_calc_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_0_XORF_6686,
      O => U3_tank2_angle_calc_0_DXMUX_6688
    );
  U3_tank2_angle_calc_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y64"
    )
    port map (
      I0 => U3_tank2_angle_calc_0_CYINIT_6685,
      I1 => U3_Mcount_tank2_angle_calc_lut(0),
      O => U3_tank2_angle_calc_0_XORF_6686
    );
  U3_tank2_angle_calc_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y64"
    )
    port map (
      IA => U3_tank2_angle_calc_0_LOGIC_ONE_6666,
      IB => U3_tank2_angle_calc_0_CYINIT_6685,
      SEL => U3_tank2_angle_calc_0_CYSELF_6679,
      O => U3_Mcount_tank2_angle_calc_cy_0_Q
    );
  U3_tank2_angle_calc_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_up_reg_4814,
      O => U3_tank2_angle_calc_0_CYINIT_6685
    );
  U3_tank2_angle_calc_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(0),
      O => U3_tank2_angle_calc_0_CYSELF_6679
    );
  U3_tank2_angle_calc_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_0_XORG_6669,
      O => U3_tank2_angle_calc_0_DYMUX_6671
    );
  U3_tank2_angle_calc_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y64"
    )
    port map (
      I0 => U3_Mcount_tank2_angle_calc_cy_0_Q,
      I1 => U3_Mcount_tank2_angle_calc_lut(1),
      O => U3_tank2_angle_calc_0_XORG_6669
    );
  U3_tank2_angle_calc_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_0_CYMUXG_6668,
      O => U3_Mcount_tank2_angle_calc_cy_1_Q
    );
  U3_tank2_angle_calc_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X49Y64"
    )
    port map (
      IA => U3_tank2_angle_calc_0_LOGIC_ONE_6666,
      IB => U3_Mcount_tank2_angle_calc_cy_0_Q,
      SEL => U3_tank2_angle_calc_0_CYSELG_6659,
      O => U3_tank2_angle_calc_0_CYMUXG_6668
    );
  U3_tank2_angle_calc_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(1),
      O => U3_tank2_angle_calc_0_CYSELG_6659
    );
  U3_tank2_angle_calc_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and0000_0,
      O => U3_tank2_angle_calc_0_SRINV_6657
    );
  U3_tank2_angle_calc_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank2_angle_calc_0_CLKINV_6656
    );
  U3_tank2_angle_calc_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_not0001_0,
      O => U3_tank2_angle_calc_0_CEINV_6655
    );
  U3_tank2_angle_calc_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      O => U3_tank2_angle_calc_2_LOGIC_ONE_6719
    );
  U3_tank2_angle_calc_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_2_XORF_6742,
      O => U3_tank2_angle_calc_2_DXMUX_6744
    );
  U3_tank2_angle_calc_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      I0 => U3_tank2_angle_calc_2_CYINIT_6741,
      I1 => U3_Mcount_tank2_angle_calc_lut(2),
      O => U3_tank2_angle_calc_2_XORF_6742
    );
  U3_tank2_angle_calc_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      IA => U3_tank2_angle_calc_2_LOGIC_ONE_6719,
      IB => U3_tank2_angle_calc_2_CYINIT_6741,
      SEL => U3_tank2_angle_calc_2_CYSELF_6725,
      O => U3_Mcount_tank2_angle_calc_cy_2_Q
    );
  U3_tank2_angle_calc_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      IA => U3_tank2_angle_calc_2_LOGIC_ONE_6719,
      IB => U3_tank2_angle_calc_2_LOGIC_ONE_6719,
      SEL => U3_tank2_angle_calc_2_CYSELF_6725,
      O => U3_tank2_angle_calc_2_CYMUXF2_6720
    );
  U3_tank2_angle_calc_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_cy_1_Q,
      O => U3_tank2_angle_calc_2_CYINIT_6741
    );
  U3_tank2_angle_calc_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(2),
      O => U3_tank2_angle_calc_2_CYSELF_6725
    );
  U3_tank2_angle_calc_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_2_XORG_6727,
      O => U3_tank2_angle_calc_2_DYMUX_6729
    );
  U3_tank2_angle_calc_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      I0 => U3_Mcount_tank2_angle_calc_cy_2_Q,
      I1 => U3_Mcount_tank2_angle_calc_lut(3),
      O => U3_tank2_angle_calc_2_XORG_6727
    );
  U3_tank2_angle_calc_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_2_CYMUXFAST_6724,
      O => U3_Mcount_tank2_angle_calc_cy_3_Q
    );
  U3_tank2_angle_calc_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_cy_1_Q,
      O => U3_tank2_angle_calc_2_FASTCARRY_6722
    );
  U3_tank2_angle_calc_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      I0 => U3_tank2_angle_calc_2_CYSELG_6712,
      I1 => U3_tank2_angle_calc_2_CYSELF_6725,
      O => U3_tank2_angle_calc_2_CYAND_6723
    );
  U3_tank2_angle_calc_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      IA => U3_tank2_angle_calc_2_CYMUXG2_6721,
      IB => U3_tank2_angle_calc_2_FASTCARRY_6722,
      SEL => U3_tank2_angle_calc_2_CYAND_6723,
      O => U3_tank2_angle_calc_2_CYMUXFAST_6724
    );
  U3_tank2_angle_calc_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y65"
    )
    port map (
      IA => U3_tank2_angle_calc_2_LOGIC_ONE_6719,
      IB => U3_tank2_angle_calc_2_CYMUXF2_6720,
      SEL => U3_tank2_angle_calc_2_CYSELG_6712,
      O => U3_tank2_angle_calc_2_CYMUXG2_6721
    );
  U3_tank2_angle_calc_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(3),
      O => U3_tank2_angle_calc_2_CYSELG_6712
    );
  U3_tank2_angle_calc_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and0000_0,
      O => U3_tank2_angle_calc_2_SRINV_6710
    );
  U3_tank2_angle_calc_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank2_angle_calc_2_CLKINV_6709
    );
  U3_tank2_angle_calc_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_not0001_0,
      O => U3_tank2_angle_calc_2_CEINV_6708
    );
  U3_tank2_angle_calc_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      O => U3_tank2_angle_calc_4_LOGIC_ONE_6775
    );
  U3_tank2_angle_calc_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_4_XORF_6798,
      O => U3_tank2_angle_calc_4_DXMUX_6800
    );
  U3_tank2_angle_calc_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      I0 => U3_tank2_angle_calc_4_CYINIT_6797,
      I1 => U3_Mcount_tank2_angle_calc_lut(4),
      O => U3_tank2_angle_calc_4_XORF_6798
    );
  U3_tank2_angle_calc_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      IA => U3_tank2_angle_calc_4_LOGIC_ONE_6775,
      IB => U3_tank2_angle_calc_4_CYINIT_6797,
      SEL => U3_tank2_angle_calc_4_CYSELF_6781,
      O => U3_Mcount_tank2_angle_calc_cy_4_Q
    );
  U3_tank2_angle_calc_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      IA => U3_tank2_angle_calc_4_LOGIC_ONE_6775,
      IB => U3_tank2_angle_calc_4_LOGIC_ONE_6775,
      SEL => U3_tank2_angle_calc_4_CYSELF_6781,
      O => U3_tank2_angle_calc_4_CYMUXF2_6776
    );
  U3_tank2_angle_calc_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_cy_3_Q,
      O => U3_tank2_angle_calc_4_CYINIT_6797
    );
  U3_tank2_angle_calc_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(4),
      O => U3_tank2_angle_calc_4_CYSELF_6781
    );
  U3_tank2_angle_calc_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_4_XORG_6783,
      O => U3_tank2_angle_calc_4_DYMUX_6785
    );
  U3_tank2_angle_calc_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      I0 => U3_Mcount_tank2_angle_calc_cy_4_Q,
      I1 => U3_Mcount_tank2_angle_calc_lut(5),
      O => U3_tank2_angle_calc_4_XORG_6783
    );
  U3_tank2_angle_calc_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_cy_3_Q,
      O => U3_tank2_angle_calc_4_FASTCARRY_6778
    );
  U3_tank2_angle_calc_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      I0 => U3_tank2_angle_calc_4_CYSELG_6769,
      I1 => U3_tank2_angle_calc_4_CYSELF_6781,
      O => U3_tank2_angle_calc_4_CYAND_6779
    );
  U3_tank2_angle_calc_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      IA => U3_tank2_angle_calc_4_CYMUXG2_6777,
      IB => U3_tank2_angle_calc_4_FASTCARRY_6778,
      SEL => U3_tank2_angle_calc_4_CYAND_6779,
      O => U3_tank2_angle_calc_4_CYMUXFAST_6780
    );
  U3_tank2_angle_calc_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y66"
    )
    port map (
      IA => U3_tank2_angle_calc_4_LOGIC_ONE_6775,
      IB => U3_tank2_angle_calc_4_CYMUXF2_6776,
      SEL => U3_tank2_angle_calc_4_CYSELG_6769,
      O => U3_tank2_angle_calc_4_CYMUXG2_6777
    );
  U3_tank2_angle_calc_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(5),
      O => U3_tank2_angle_calc_4_CYSELG_6769
    );
  U3_tank2_angle_calc_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and0000_0,
      O => U3_tank2_angle_calc_4_SRINV_6767
    );
  U3_tank2_angle_calc_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank2_angle_calc_4_CLKINV_6766
    );
  U3_tank2_angle_calc_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_not0001_0,
      O => U3_tank2_angle_calc_4_CEINV_6765
    );
  U3_tank2_angle_calc_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y67"
    )
    port map (
      O => U3_tank2_angle_calc_6_LOGIC_ONE_6846
    );
  U3_tank2_angle_calc_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_6_XORF_6847,
      O => U3_tank2_angle_calc_6_DXMUX_6849
    );
  U3_tank2_angle_calc_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y67"
    )
    port map (
      I0 => U3_tank2_angle_calc_6_CYINIT_6845,
      I1 => U3_Mcount_tank2_angle_calc_lut(6),
      O => U3_tank2_angle_calc_6_XORF_6847
    );
  U3_tank2_angle_calc_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y67"
    )
    port map (
      IA => U3_tank2_angle_calc_6_LOGIC_ONE_6846,
      IB => U3_tank2_angle_calc_6_CYINIT_6845,
      SEL => U3_tank2_angle_calc_6_CYSELF_6839,
      O => U3_Mcount_tank2_angle_calc_cy_6_Q
    );
  U3_tank2_angle_calc_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_4_CYMUXFAST_6780,
      O => U3_tank2_angle_calc_6_CYINIT_6845
    );
  U3_tank2_angle_calc_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_tank2_angle_calc_lut(6),
      O => U3_tank2_angle_calc_6_CYSELF_6839
    );
  U3_tank2_angle_calc_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_6_XORG_6830,
      O => U3_tank2_angle_calc_6_DYMUX_6832
    );
  U3_tank2_angle_calc_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y67"
    )
    port map (
      I0 => U3_Mcount_tank2_angle_calc_cy_6_Q,
      I1 => U3_Mcount_tank2_angle_calc_lut(7),
      O => U3_tank2_angle_calc_6_XORG_6830
    );
  U3_tank2_angle_calc_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and0000_0,
      O => U3_tank2_angle_calc_6_SRINV_6822
    );
  U3_tank2_angle_calc_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q(17),
      O => U3_tank2_angle_calc_6_CLKINV_6821
    );
  U3_tank2_angle_calc_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_not0001_0,
      O => U3_tank2_angle_calc_6_CEINV_6820
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y17"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F_6883,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT_6884,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF_6875,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy(0)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV_6873,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYINIT_6884
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0F_6883
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(0),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELF_6875
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_BXINV_6873
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X1Y17"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G_6870,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy(0),
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG_6862,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG_6872
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CY0G_6870
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(1),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYSELG_6862
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6915,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6915,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6906,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2_6901
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0F_6915
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6906
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_1_CYMUXG_6872,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY_6903
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6892,
      I1 => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELF_6906,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND_6904
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2_6902,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_FASTCARRY_6903,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYAND_6904,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST_6905
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y18"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G_6900,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXF2_6901,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6892,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXG2_6902
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CY0G_6900
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(3),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYSELG_6892
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6946,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6946,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6937,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2_6932
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0F_6946
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6937
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_3_CYMUXFAST_6905,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY_6934
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6924,
      I1 => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELF_6937,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND_6935
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2_6933,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_FASTCARRY_6934,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYAND_6935,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST_6936
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y19"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G_6931,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXF2_6932,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6924,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXG2_6933
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CY0G_6931
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYSELG_6924
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6977,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6977,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6970,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2_6965
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0F_6977
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(6),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6970
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_5_CYMUXFAST_6936,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY_6967
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6956,
      I1 => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELF_6970,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND_6968
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2_6966,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_FASTCARRY_6967,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYAND_6968,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST_6969
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y20"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G_6964,
      IB => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXF2_6965,
      SEL => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6956,
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXG2_6966
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CY0G_6964
    );
  U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYSELG_6956
    );
  U3_spriteon2_cmp_ge0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => U3_spriteon2_cmp_ge0000_CY0F_7008,
      IB => U3_spriteon2_cmp_ge0000_CY0F_7008,
      SEL => U3_spriteon2_cmp_ge0000_CYSELF_7000,
      O => U3_spriteon2_cmp_ge0000_CYMUXF2_6995
    );
  U3_spriteon2_cmp_ge0000_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_spriteon2_cmp_ge0000_CY0F_7008
    );
  U3_spriteon2_cmp_ge0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(8),
      O => U3_spriteon2_cmp_ge0000_CYSELF_7000
    );
  U3_spriteon2_cmp_ge0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_cmp_ge0000_CYMUXFAST_6999,
      O => U3_spriteon2_cmp_ge0000
    );
  U3_spriteon2_cmp_ge0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_cy_7_CYMUXFAST_6969,
      O => U3_spriteon2_cmp_ge0000_FASTCARRY_6997
    );
  U3_spriteon2_cmp_ge0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      I0 => U3_spriteon2_cmp_ge0000_CYSELG_6988,
      I1 => U3_spriteon2_cmp_ge0000_CYSELF_7000,
      O => U3_spriteon2_cmp_ge0000_CYAND_6998
    );
  U3_spriteon2_cmp_ge0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => U3_spriteon2_cmp_ge0000_CYMUXG2_6996,
      IB => U3_spriteon2_cmp_ge0000_FASTCARRY_6997,
      SEL => U3_spriteon2_cmp_ge0000_CYAND_6998,
      O => U3_spriteon2_cmp_ge0000_CYMUXFAST_6999
    );
  U3_spriteon2_cmp_ge0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => U3_spriteon2_cmp_ge0000_CY0G_6994,
      IB => U3_spriteon2_cmp_ge0000_CYMUXF2_6995,
      SEL => U3_spriteon2_cmp_ge0000_CYSELG_6988,
      O => U3_spriteon2_cmp_ge0000_CYMUXG2_6996
    );
  U3_spriteon2_cmp_ge0000_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_spriteon2_cmp_ge0000_CY0G_6994
    );
  U3_spriteon2_cmp_ge0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_ge0000_lut(9),
      O => U3_spriteon2_cmp_ge0000_CYSELG_6988
    );
  U2_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y4"
    )
    port map (
      O => U2_Result_0_LOGIC_ZERO_7025
    );
  U2_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X15Y4"
    )
    port map (
      O => U2_Result_0_LOGIC_ONE_7042
    );
  U2_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORF_7043,
      O => U2_Result(0)
    );
  U2_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y4"
    )
    port map (
      I0 => U2_Result_0_CYINIT_7041,
      I1 => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_XORF_7043
    );
  U2_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y4"
    )
    port map (
      IA => U2_Result_0_LOGIC_ONE_7042,
      IB => U2_Result_0_CYINIT_7041,
      SEL => U2_Result_0_CYSELF_7032,
      O => U2_Mcount_vcs_cy_0_Q
    );
  U2_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_BXINV_7030,
      O => U2_Result_0_CYINIT_7041
    );
  U2_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_lut(0),
      O => U2_Result_0_CYSELF_7032
    );
  U2_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_BXINV_7030
    );
  U2_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_XORG_7028,
      O => U2_Result(1)
    );
  U2_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y4"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_0_Q,
      I1 => U2_Result_0_G,
      O => U2_Result_0_XORG_7028
    );
  U2_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_CYMUXG_7027,
      O => U2_Mcount_vcs_cy_1_Q
    );
  U2_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X15Y4"
    )
    port map (
      IA => U2_Result_0_LOGIC_ZERO_7025,
      IB => U2_Mcount_vcs_cy_0_Q,
      SEL => U2_Result_0_CYSELG_7016,
      O => U2_Result_0_CYMUXG_7027
    );
  U2_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_G,
      O => U2_Result_0_CYSELG_7016
    );
  U2_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      O => U2_Result_2_LOGIC_ZERO_7061
    );
  U2_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORF_7081,
      O => U2_Result(2)
    );
  U2_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      I0 => U2_Result_2_CYINIT_7080,
      I1 => U2_Result_2_F,
      O => U2_Result_2_XORF_7081
    );
  U2_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_7061,
      IB => U2_Result_2_CYINIT_7080,
      SEL => U2_Result_2_CYSELF_7067,
      O => U2_Mcount_vcs_cy_2_Q
    );
  U2_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_7061,
      IB => U2_Result_2_LOGIC_ZERO_7061,
      SEL => U2_Result_2_CYSELF_7067,
      O => U2_Result_2_CYMUXF2_7062
    );
  U2_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_CYINIT_7080
    );
  U2_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_F,
      O => U2_Result_2_CYSELF_7067
    );
  U2_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_XORG_7069,
      O => U2_Result(3)
    );
  U2_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_2_Q,
      I1 => U2_Result_2_G,
      O => U2_Result_2_XORG_7069
    );
  U2_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_CYMUXFAST_7066,
      O => U2_Mcount_vcs_cy_3_Q
    );
  U2_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_1_Q,
      O => U2_Result_2_FASTCARRY_7064
    );
  U2_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      I0 => U2_Result_2_CYSELG_7052,
      I1 => U2_Result_2_CYSELF_7067,
      O => U2_Result_2_CYAND_7065
    );
  U2_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      IA => U2_Result_2_CYMUXG2_7063,
      IB => U2_Result_2_FASTCARRY_7064,
      SEL => U2_Result_2_CYAND_7065,
      O => U2_Result_2_CYMUXFAST_7066
    );
  U2_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y5"
    )
    port map (
      IA => U2_Result_2_LOGIC_ZERO_7061,
      IB => U2_Result_2_CYMUXF2_7062,
      SEL => U2_Result_2_CYSELG_7052,
      O => U2_Result_2_CYMUXG2_7063
    );
  U2_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_G,
      O => U2_Result_2_CYSELG_7052
    );
  U2_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      O => U2_Result_4_LOGIC_ZERO_7099
    );
  U2_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORF_7119,
      O => U2_Result(4)
    );
  U2_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      I0 => U2_Result_4_CYINIT_7118,
      I1 => U2_Result_4_F,
      O => U2_Result_4_XORF_7119
    );
  U2_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_7099,
      IB => U2_Result_4_CYINIT_7118,
      SEL => U2_Result_4_CYSELF_7105,
      O => U2_Mcount_vcs_cy_4_Q
    );
  U2_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_7099,
      IB => U2_Result_4_LOGIC_ZERO_7099,
      SEL => U2_Result_4_CYSELF_7105,
      O => U2_Result_4_CYMUXF2_7100
    );
  U2_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_CYINIT_7118
    );
  U2_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_F,
      O => U2_Result_4_CYSELF_7105
    );
  U2_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_XORG_7107,
      O => U2_Result(5)
    );
  U2_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_4_Q,
      I1 => U2_Result_4_G,
      O => U2_Result_4_XORG_7107
    );
  U2_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_CYMUXFAST_7104,
      O => U2_Mcount_vcs_cy_5_Q
    );
  U2_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_3_Q,
      O => U2_Result_4_FASTCARRY_7102
    );
  U2_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      I0 => U2_Result_4_CYSELG_7090,
      I1 => U2_Result_4_CYSELF_7105,
      O => U2_Result_4_CYAND_7103
    );
  U2_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      IA => U2_Result_4_CYMUXG2_7101,
      IB => U2_Result_4_FASTCARRY_7102,
      SEL => U2_Result_4_CYAND_7103,
      O => U2_Result_4_CYMUXFAST_7104
    );
  U2_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y6"
    )
    port map (
      IA => U2_Result_4_LOGIC_ZERO_7099,
      IB => U2_Result_4_CYMUXF2_7100,
      SEL => U2_Result_4_CYSELG_7090,
      O => U2_Result_4_CYMUXG2_7101
    );
  U2_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_G,
      O => U2_Result_4_CYSELG_7090
    );
  U2_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      O => U2_Result_6_LOGIC_ZERO_7137
    );
  U2_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORF_7157,
      O => U2_Result(6)
    );
  U2_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      I0 => U2_Result_6_CYINIT_7156,
      I1 => U2_Result_6_F,
      O => U2_Result_6_XORF_7157
    );
  U2_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_7137,
      IB => U2_Result_6_CYINIT_7156,
      SEL => U2_Result_6_CYSELF_7143,
      O => U2_Mcount_vcs_cy_6_Q
    );
  U2_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_7137,
      IB => U2_Result_6_LOGIC_ZERO_7137,
      SEL => U2_Result_6_CYSELF_7143,
      O => U2_Result_6_CYMUXF2_7138
    );
  U2_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_CYINIT_7156
    );
  U2_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_F,
      O => U2_Result_6_CYSELF_7143
    );
  U2_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_XORG_7145,
      O => U2_Result(7)
    );
  U2_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_6_Q,
      I1 => U2_Result_6_G,
      O => U2_Result_6_XORG_7145
    );
  U2_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_cy_5_Q,
      O => U2_Result_6_FASTCARRY_7140
    );
  U2_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      I0 => U2_Result_6_CYSELG_7128,
      I1 => U2_Result_6_CYSELF_7143,
      O => U2_Result_6_CYAND_7141
    );
  U2_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      IA => U2_Result_6_CYMUXG2_7139,
      IB => U2_Result_6_FASTCARRY_7140,
      SEL => U2_Result_6_CYAND_7141,
      O => U2_Result_6_CYMUXFAST_7142
    );
  U2_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y7"
    )
    port map (
      IA => U2_Result_6_LOGIC_ZERO_7137,
      IB => U2_Result_6_CYMUXF2_7138,
      SEL => U2_Result_6_CYSELG_7128,
      O => U2_Result_6_CYMUXG2_7139
    );
  U2_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_G,
      O => U2_Result_6_CYSELG_7128
    );
  U2_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y8"
    )
    port map (
      O => U2_Result_8_LOGIC_ZERO_7187
    );
  U2_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORF_7188,
      O => U2_Result(8)
    );
  U2_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y8"
    )
    port map (
      I0 => U2_Result_8_CYINIT_7186,
      I1 => U2_Result_8_F,
      O => U2_Result_8_XORF_7188
    );
  U2_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y8"
    )
    port map (
      IA => U2_Result_8_LOGIC_ZERO_7187,
      IB => U2_Result_8_CYINIT_7186,
      SEL => U2_Result_8_CYSELF_7177,
      O => U2_Mcount_vcs_cy_8_Q
    );
  U2_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_CYMUXFAST_7142,
      O => U2_Result_8_CYINIT_7186
    );
  U2_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_F,
      O => U2_Result_8_CYSELF_7177
    );
  U2_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_XORG_7174,
      O => U2_Result(9)
    );
  U2_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y8"
    )
    port map (
      I0 => U2_Mcount_vcs_cy_8_Q,
      I1 => U2_vcs_9_rt_7171,
      O => U2_Result_8_XORG_7174
    );
  U3_xpix1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_XORF_7224,
      O => U3_xpix1(0)
    );
  U3_xpix1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y34"
    )
    port map (
      I0 => U3_xpix1_0_CYINIT_7223,
      I1 => U3_Msub_xpix1_Madd_lut(0),
      O => U3_xpix1_0_XORF_7224
    );
  U3_xpix1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y34"
    )
    port map (
      IA => U3_xpix1_0_CY0F_7222,
      IB => U3_xpix1_0_CYINIT_7223,
      SEL => U3_xpix1_0_CYSELF_7214,
      O => U3_Msub_xpix1_Madd_cy(0)
    );
  U3_xpix1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_BXINV_7212,
      O => U3_xpix1_0_CYINIT_7223
    );
  U3_xpix1_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_xpix1_0_CY0F_7222
    );
  U3_xpix1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(0),
      O => U3_xpix1_0_CYSELF_7214
    );
  U3_xpix1_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_xpix1_0_BXINV_7212
    );
  U3_xpix1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_XORG_7210,
      O => U3_xpix1(1)
    );
  U3_xpix1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y34"
    )
    port map (
      I0 => U3_Msub_xpix1_Madd_cy(0),
      I1 => U3_Msub_xpix1_Madd_lut(1),
      O => U3_xpix1_0_XORG_7210
    );
  U3_xpix1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_0_CYMUXG_7209,
      O => U3_Msub_xpix1_Madd_cy(1)
    );
  U3_xpix1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X15Y34"
    )
    port map (
      IA => U3_xpix1_0_CY0G_7207,
      IB => U3_Msub_xpix1_Madd_cy(0),
      SEL => U3_xpix1_0_CYSELG_7199,
      O => U3_xpix1_0_CYMUXG_7209
    );
  U3_xpix1_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_xpix1_0_CY0G_7207
    );
  U3_xpix1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(1),
      O => U3_xpix1_0_CYSELG_7199
    );
  U3_xpix1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_2_XORF_7263,
      O => U3_xpix1(2)
    );
  U3_xpix1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      I0 => U3_xpix1_2_CYINIT_7262,
      I1 => U3_Msub_xpix1_Madd_lut(2),
      O => U3_xpix1_2_XORF_7263
    );
  U3_xpix1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      IA => U3_xpix1_2_CY0F_7261,
      IB => U3_xpix1_2_CYINIT_7262,
      SEL => U3_xpix1_2_CYSELF_7249,
      O => U3_Msub_xpix1_Madd_cy(2)
    );
  U3_xpix1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      IA => U3_xpix1_2_CY0F_7261,
      IB => U3_xpix1_2_CY0F_7261,
      SEL => U3_xpix1_2_CYSELF_7249,
      O => U3_xpix1_2_CYMUXF2_7244
    );
  U3_xpix1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_cy(1),
      O => U3_xpix1_2_CYINIT_7262
    );
  U3_xpix1_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_xpix1_2_CY0F_7261
    );
  U3_xpix1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(2),
      O => U3_xpix1_2_CYSELF_7249
    );
  U3_xpix1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_2_XORG_7251,
      O => U3_xpix1(3)
    );
  U3_xpix1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      I0 => U3_Msub_xpix1_Madd_cy(2),
      I1 => U3_Msub_xpix1_Madd_lut(3),
      O => U3_xpix1_2_XORG_7251
    );
  U3_xpix1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_cy(1),
      O => U3_xpix1_2_FASTCARRY_7246
    );
  U3_xpix1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      I0 => U3_xpix1_2_CYSELG_7235,
      I1 => U3_xpix1_2_CYSELF_7249,
      O => U3_xpix1_2_CYAND_7247
    );
  U3_xpix1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      IA => U3_xpix1_2_CYMUXG2_7245,
      IB => U3_xpix1_2_FASTCARRY_7246,
      SEL => U3_xpix1_2_CYAND_7247,
      O => U3_xpix1_2_CYMUXFAST_7248
    );
  U3_xpix1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y35"
    )
    port map (
      IA => U3_xpix1_2_CY0G_7243,
      IB => U3_xpix1_2_CYMUXF2_7244,
      SEL => U3_xpix1_2_CYSELG_7235,
      O => U3_xpix1_2_CYMUXG2_7245
    );
  U3_xpix1_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_xpix1_2_CY0G_7243
    );
  U3_xpix1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix1_Madd_lut(3),
      O => U3_xpix1_2_CYSELG_7235
    );
  U3_xpix1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_4_XORF_7290,
      O => U3_xpix1(4)
    );
  U3_xpix1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y36"
    )
    port map (
      I0 => U3_xpix1_4_CYINIT_7289,
      I1 => U3_Msub_xpix1_Madd_lut(4),
      O => U3_xpix1_4_XORF_7290
    );
  U3_xpix1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1_2_CYMUXFAST_7248,
      O => U3_xpix1_4_CYINIT_7289
    );
  U3_xpix1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon1_addsub0001_lut_8_bdd0,
      O => U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0
    );
  x7_clkdiv_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      O => x7_clkdiv_0_LOGIC_ZERO_7312
    );
  x7_clkdiv_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      O => x7_clkdiv_0_LOGIC_ONE_7336
    );
  x7_clkdiv_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_XORF_7337,
      O => x7_clkdiv_0_DXMUX_7339
    );
  x7_clkdiv_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      I0 => x7_clkdiv_0_CYINIT_7335,
      I1 => x7_Mcount_clkdiv_lut(0),
      O => x7_clkdiv_0_XORF_7337
    );
  x7_clkdiv_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      IA => x7_clkdiv_0_LOGIC_ONE_7336,
      IB => x7_clkdiv_0_CYINIT_7335,
      SEL => x7_clkdiv_0_CYSELF_7326,
      O => x7_Mcount_clkdiv_cy_0_Q
    );
  x7_clkdiv_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_BXINV_7324,
      O => x7_clkdiv_0_CYINIT_7335
    );
  x7_clkdiv_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_lut(0),
      O => x7_clkdiv_0_CYSELF_7326
    );
  x7_clkdiv_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => x7_clkdiv_0_BXINV_7324
    );
  x7_clkdiv_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_XORG_7315,
      O => x7_clkdiv_0_DYMUX_7317
    );
  x7_clkdiv_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_0_Q,
      I1 => x7_clkdiv_0_G,
      O => x7_clkdiv_0_XORG_7315
    );
  x7_clkdiv_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_CYMUXG_7314,
      O => x7_Mcount_clkdiv_cy_1_Q
    );
  x7_clkdiv_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X55Y74"
    )
    port map (
      IA => x7_clkdiv_0_LOGIC_ZERO_7312,
      IB => x7_Mcount_clkdiv_cy_0_Q,
      SEL => x7_clkdiv_0_CYSELG_7303,
      O => x7_clkdiv_0_CYMUXG_7314
    );
  x7_clkdiv_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_0_G,
      O => x7_clkdiv_0_CYSELG_7303
    );
  x7_clkdiv_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_0_SRINV_7301
    );
  x7_clkdiv_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y74",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_0_CLKINV_7300
    );
  x7_clkdiv_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      O => x7_clkdiv_2_LOGIC_ZERO_7366
    );
  x7_clkdiv_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_XORF_7393,
      O => x7_clkdiv_2_DXMUX_7395
    );
  x7_clkdiv_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      I0 => x7_clkdiv_2_CYINIT_7392,
      I1 => x7_clkdiv_2_F,
      O => x7_clkdiv_2_XORF_7393
    );
  x7_clkdiv_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_2_LOGIC_ZERO_7366,
      IB => x7_clkdiv_2_CYINIT_7392,
      SEL => x7_clkdiv_2_CYSELF_7372,
      O => x7_Mcount_clkdiv_cy_2_Q
    );
  x7_clkdiv_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_2_LOGIC_ZERO_7366,
      IB => x7_clkdiv_2_LOGIC_ZERO_7366,
      SEL => x7_clkdiv_2_CYSELF_7372,
      O => x7_clkdiv_2_CYMUXF2_7367
    );
  x7_clkdiv_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_1_Q,
      O => x7_clkdiv_2_CYINIT_7392
    );
  x7_clkdiv_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_F,
      O => x7_clkdiv_2_CYSELF_7372
    );
  x7_clkdiv_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_XORG_7374,
      O => x7_clkdiv_2_DYMUX_7376
    );
  x7_clkdiv_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_2_Q,
      I1 => x7_clkdiv_2_G,
      O => x7_clkdiv_2_XORG_7374
    );
  x7_clkdiv_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_CYMUXFAST_7371,
      O => x7_Mcount_clkdiv_cy_3_Q
    );
  x7_clkdiv_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_1_Q,
      O => x7_clkdiv_2_FASTCARRY_7369
    );
  x7_clkdiv_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      I0 => x7_clkdiv_2_CYSELG_7357,
      I1 => x7_clkdiv_2_CYSELF_7372,
      O => x7_clkdiv_2_CYAND_7370
    );
  x7_clkdiv_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_2_CYMUXG2_7368,
      IB => x7_clkdiv_2_FASTCARRY_7369,
      SEL => x7_clkdiv_2_CYAND_7370,
      O => x7_clkdiv_2_CYMUXFAST_7371
    );
  x7_clkdiv_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y75"
    )
    port map (
      IA => x7_clkdiv_2_LOGIC_ZERO_7366,
      IB => x7_clkdiv_2_CYMUXF2_7367,
      SEL => x7_clkdiv_2_CYSELG_7357,
      O => x7_clkdiv_2_CYMUXG2_7368
    );
  x7_clkdiv_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_2_G,
      O => x7_clkdiv_2_CYSELG_7357
    );
  x7_clkdiv_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_2_SRINV_7355
    );
  x7_clkdiv_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_2_CLKINV_7354
    );
  x7_clkdiv_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      O => x7_clkdiv_4_LOGIC_ZERO_7422
    );
  x7_clkdiv_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_XORF_7449,
      O => x7_clkdiv_4_DXMUX_7451
    );
  x7_clkdiv_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      I0 => x7_clkdiv_4_CYINIT_7448,
      I1 => x7_clkdiv_4_F,
      O => x7_clkdiv_4_XORF_7449
    );
  x7_clkdiv_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_4_LOGIC_ZERO_7422,
      IB => x7_clkdiv_4_CYINIT_7448,
      SEL => x7_clkdiv_4_CYSELF_7428,
      O => x7_Mcount_clkdiv_cy_4_Q
    );
  x7_clkdiv_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_4_LOGIC_ZERO_7422,
      IB => x7_clkdiv_4_LOGIC_ZERO_7422,
      SEL => x7_clkdiv_4_CYSELF_7428,
      O => x7_clkdiv_4_CYMUXF2_7423
    );
  x7_clkdiv_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_3_Q,
      O => x7_clkdiv_4_CYINIT_7448
    );
  x7_clkdiv_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_F,
      O => x7_clkdiv_4_CYSELF_7428
    );
  x7_clkdiv_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_XORG_7430,
      O => x7_clkdiv_4_DYMUX_7432
    );
  x7_clkdiv_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_4_Q,
      I1 => x7_clkdiv_4_G,
      O => x7_clkdiv_4_XORG_7430
    );
  x7_clkdiv_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_CYMUXFAST_7427,
      O => x7_Mcount_clkdiv_cy_5_Q
    );
  x7_clkdiv_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_3_Q,
      O => x7_clkdiv_4_FASTCARRY_7425
    );
  x7_clkdiv_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      I0 => x7_clkdiv_4_CYSELG_7413,
      I1 => x7_clkdiv_4_CYSELF_7428,
      O => x7_clkdiv_4_CYAND_7426
    );
  x7_clkdiv_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_4_CYMUXG2_7424,
      IB => x7_clkdiv_4_FASTCARRY_7425,
      SEL => x7_clkdiv_4_CYAND_7426,
      O => x7_clkdiv_4_CYMUXFAST_7427
    );
  x7_clkdiv_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y76"
    )
    port map (
      IA => x7_clkdiv_4_LOGIC_ZERO_7422,
      IB => x7_clkdiv_4_CYMUXF2_7423,
      SEL => x7_clkdiv_4_CYSELG_7413,
      O => x7_clkdiv_4_CYMUXG2_7424
    );
  x7_clkdiv_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_4_G,
      O => x7_clkdiv_4_CYSELG_7413
    );
  x7_clkdiv_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_4_SRINV_7411
    );
  x7_clkdiv_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_4_CLKINV_7410
    );
  x7_clkdiv_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      O => x7_clkdiv_6_LOGIC_ZERO_7478
    );
  x7_clkdiv_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_XORF_7505,
      O => x7_clkdiv_6_DXMUX_7507
    );
  x7_clkdiv_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => x7_clkdiv_6_CYINIT_7504,
      I1 => x7_clkdiv_6_F,
      O => x7_clkdiv_6_XORF_7505
    );
  x7_clkdiv_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_6_LOGIC_ZERO_7478,
      IB => x7_clkdiv_6_CYINIT_7504,
      SEL => x7_clkdiv_6_CYSELF_7484,
      O => x7_Mcount_clkdiv_cy_6_Q
    );
  x7_clkdiv_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_6_LOGIC_ZERO_7478,
      IB => x7_clkdiv_6_LOGIC_ZERO_7478,
      SEL => x7_clkdiv_6_CYSELF_7484,
      O => x7_clkdiv_6_CYMUXF2_7479
    );
  x7_clkdiv_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_5_Q,
      O => x7_clkdiv_6_CYINIT_7504
    );
  x7_clkdiv_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_F,
      O => x7_clkdiv_6_CYSELF_7484
    );
  x7_clkdiv_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_XORG_7486,
      O => x7_clkdiv_6_DYMUX_7488
    );
  x7_clkdiv_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_6_Q,
      I1 => x7_clkdiv_6_G,
      O => x7_clkdiv_6_XORG_7486
    );
  x7_clkdiv_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_CYMUXFAST_7483,
      O => x7_Mcount_clkdiv_cy_7_Q
    );
  x7_clkdiv_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_5_Q,
      O => x7_clkdiv_6_FASTCARRY_7481
    );
  x7_clkdiv_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      I0 => x7_clkdiv_6_CYSELG_7469,
      I1 => x7_clkdiv_6_CYSELF_7484,
      O => x7_clkdiv_6_CYAND_7482
    );
  x7_clkdiv_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_6_CYMUXG2_7480,
      IB => x7_clkdiv_6_FASTCARRY_7481,
      SEL => x7_clkdiv_6_CYAND_7482,
      O => x7_clkdiv_6_CYMUXFAST_7483
    );
  x7_clkdiv_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y77"
    )
    port map (
      IA => x7_clkdiv_6_LOGIC_ZERO_7478,
      IB => x7_clkdiv_6_CYMUXF2_7479,
      SEL => x7_clkdiv_6_CYSELG_7469,
      O => x7_clkdiv_6_CYMUXG2_7480
    );
  x7_clkdiv_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_6_G,
      O => x7_clkdiv_6_CYSELG_7469
    );
  x7_clkdiv_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_6_SRINV_7467
    );
  x7_clkdiv_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_6_CLKINV_7466
    );
  x7_clkdiv_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      O => x7_clkdiv_8_LOGIC_ZERO_7534
    );
  x7_clkdiv_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_XORF_7561,
      O => x7_clkdiv_8_DXMUX_7563
    );
  x7_clkdiv_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => x7_clkdiv_8_CYINIT_7560,
      I1 => x7_clkdiv_8_F,
      O => x7_clkdiv_8_XORF_7561
    );
  x7_clkdiv_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_8_LOGIC_ZERO_7534,
      IB => x7_clkdiv_8_CYINIT_7560,
      SEL => x7_clkdiv_8_CYSELF_7540,
      O => x7_Mcount_clkdiv_cy_8_Q
    );
  x7_clkdiv_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_8_LOGIC_ZERO_7534,
      IB => x7_clkdiv_8_LOGIC_ZERO_7534,
      SEL => x7_clkdiv_8_CYSELF_7540,
      O => x7_clkdiv_8_CYMUXF2_7535
    );
  x7_clkdiv_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_7_Q,
      O => x7_clkdiv_8_CYINIT_7560
    );
  x7_clkdiv_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_F,
      O => x7_clkdiv_8_CYSELF_7540
    );
  x7_clkdiv_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_XORG_7542,
      O => x7_clkdiv_8_DYMUX_7544
    );
  x7_clkdiv_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_8_Q,
      I1 => x7_clkdiv_8_G,
      O => x7_clkdiv_8_XORG_7542
    );
  x7_clkdiv_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_CYMUXFAST_7539,
      O => x7_Mcount_clkdiv_cy_9_Q
    );
  x7_clkdiv_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_7_Q,
      O => x7_clkdiv_8_FASTCARRY_7537
    );
  x7_clkdiv_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      I0 => x7_clkdiv_8_CYSELG_7525,
      I1 => x7_clkdiv_8_CYSELF_7540,
      O => x7_clkdiv_8_CYAND_7538
    );
  x7_clkdiv_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_8_CYMUXG2_7536,
      IB => x7_clkdiv_8_FASTCARRY_7537,
      SEL => x7_clkdiv_8_CYAND_7538,
      O => x7_clkdiv_8_CYMUXFAST_7539
    );
  x7_clkdiv_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y78"
    )
    port map (
      IA => x7_clkdiv_8_LOGIC_ZERO_7534,
      IB => x7_clkdiv_8_CYMUXF2_7535,
      SEL => x7_clkdiv_8_CYSELG_7525,
      O => x7_clkdiv_8_CYMUXG2_7536
    );
  x7_clkdiv_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_8_G,
      O => x7_clkdiv_8_CYSELG_7525
    );
  x7_clkdiv_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_8_SRINV_7523
    );
  x7_clkdiv_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_8_CLKINV_7522
    );
  x7_clkdiv_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      O => x7_clkdiv_10_LOGIC_ZERO_7590
    );
  x7_clkdiv_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_XORF_7617,
      O => x7_clkdiv_10_DXMUX_7619
    );
  x7_clkdiv_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => x7_clkdiv_10_CYINIT_7616,
      I1 => x7_clkdiv_10_F,
      O => x7_clkdiv_10_XORF_7617
    );
  x7_clkdiv_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_10_LOGIC_ZERO_7590,
      IB => x7_clkdiv_10_CYINIT_7616,
      SEL => x7_clkdiv_10_CYSELF_7596,
      O => x7_Mcount_clkdiv_cy_10_Q
    );
  x7_clkdiv_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_10_LOGIC_ZERO_7590,
      IB => x7_clkdiv_10_LOGIC_ZERO_7590,
      SEL => x7_clkdiv_10_CYSELF_7596,
      O => x7_clkdiv_10_CYMUXF2_7591
    );
  x7_clkdiv_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_9_Q,
      O => x7_clkdiv_10_CYINIT_7616
    );
  x7_clkdiv_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_F,
      O => x7_clkdiv_10_CYSELF_7596
    );
  x7_clkdiv_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_XORG_7598,
      O => x7_clkdiv_10_DYMUX_7600
    );
  x7_clkdiv_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_10_Q,
      I1 => x7_clkdiv_10_G,
      O => x7_clkdiv_10_XORG_7598
    );
  x7_clkdiv_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_CYMUXFAST_7595,
      O => x7_Mcount_clkdiv_cy_11_Q
    );
  x7_clkdiv_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_9_Q,
      O => x7_clkdiv_10_FASTCARRY_7593
    );
  x7_clkdiv_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      I0 => x7_clkdiv_10_CYSELG_7581,
      I1 => x7_clkdiv_10_CYSELF_7596,
      O => x7_clkdiv_10_CYAND_7594
    );
  x7_clkdiv_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_10_CYMUXG2_7592,
      IB => x7_clkdiv_10_FASTCARRY_7593,
      SEL => x7_clkdiv_10_CYAND_7594,
      O => x7_clkdiv_10_CYMUXFAST_7595
    );
  x7_clkdiv_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y79"
    )
    port map (
      IA => x7_clkdiv_10_LOGIC_ZERO_7590,
      IB => x7_clkdiv_10_CYMUXF2_7591,
      SEL => x7_clkdiv_10_CYSELG_7581,
      O => x7_clkdiv_10_CYMUXG2_7592
    );
  x7_clkdiv_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_10_G,
      O => x7_clkdiv_10_CYSELG_7581
    );
  x7_clkdiv_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_10_SRINV_7579
    );
  x7_clkdiv_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_10_CLKINV_7578
    );
  x7_clkdiv_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      O => x7_clkdiv_12_LOGIC_ZERO_7646
    );
  x7_clkdiv_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_XORF_7673,
      O => x7_clkdiv_12_DXMUX_7675
    );
  x7_clkdiv_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => x7_clkdiv_12_CYINIT_7672,
      I1 => x7_clkdiv_12_F,
      O => x7_clkdiv_12_XORF_7673
    );
  x7_clkdiv_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => x7_clkdiv_12_LOGIC_ZERO_7646,
      IB => x7_clkdiv_12_CYINIT_7672,
      SEL => x7_clkdiv_12_CYSELF_7652,
      O => x7_Mcount_clkdiv_cy_12_Q
    );
  x7_clkdiv_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => x7_clkdiv_12_LOGIC_ZERO_7646,
      IB => x7_clkdiv_12_LOGIC_ZERO_7646,
      SEL => x7_clkdiv_12_CYSELF_7652,
      O => x7_clkdiv_12_CYMUXF2_7647
    );
  x7_clkdiv_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_11_Q,
      O => x7_clkdiv_12_CYINIT_7672
    );
  x7_clkdiv_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_F,
      O => x7_clkdiv_12_CYSELF_7652
    );
  x7_clkdiv_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_XORG_7654,
      O => x7_clkdiv_12_DYMUX_7656
    );
  x7_clkdiv_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_12_Q,
      I1 => x7_clkdiv_12_G,
      O => x7_clkdiv_12_XORG_7654
    );
  x7_clkdiv_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_CYMUXFAST_7651,
      O => x7_Mcount_clkdiv_cy_13_Q
    );
  x7_clkdiv_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_11_Q,
      O => x7_clkdiv_12_FASTCARRY_7649
    );
  x7_clkdiv_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      I0 => x7_clkdiv_12_CYSELG_7637,
      I1 => x7_clkdiv_12_CYSELF_7652,
      O => x7_clkdiv_12_CYAND_7650
    );
  x7_clkdiv_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => x7_clkdiv_12_CYMUXG2_7648,
      IB => x7_clkdiv_12_FASTCARRY_7649,
      SEL => x7_clkdiv_12_CYAND_7650,
      O => x7_clkdiv_12_CYMUXFAST_7651
    );
  x7_clkdiv_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y80"
    )
    port map (
      IA => x7_clkdiv_12_LOGIC_ZERO_7646,
      IB => x7_clkdiv_12_CYMUXF2_7647,
      SEL => x7_clkdiv_12_CYSELG_7637,
      O => x7_clkdiv_12_CYMUXG2_7648
    );
  x7_clkdiv_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_12_G,
      O => x7_clkdiv_12_CYSELG_7637
    );
  x7_clkdiv_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_12_SRINV_7635
    );
  x7_clkdiv_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_12_CLKINV_7634
    );
  x7_clkdiv_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      O => x7_clkdiv_14_LOGIC_ZERO_7702
    );
  x7_clkdiv_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_XORF_7729,
      O => x7_clkdiv_14_DXMUX_7731
    );
  x7_clkdiv_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      I0 => x7_clkdiv_14_CYINIT_7728,
      I1 => x7_clkdiv_14_F,
      O => x7_clkdiv_14_XORF_7729
    );
  x7_clkdiv_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => x7_clkdiv_14_LOGIC_ZERO_7702,
      IB => x7_clkdiv_14_CYINIT_7728,
      SEL => x7_clkdiv_14_CYSELF_7708,
      O => x7_Mcount_clkdiv_cy_14_Q
    );
  x7_clkdiv_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => x7_clkdiv_14_LOGIC_ZERO_7702,
      IB => x7_clkdiv_14_LOGIC_ZERO_7702,
      SEL => x7_clkdiv_14_CYSELF_7708,
      O => x7_clkdiv_14_CYMUXF2_7703
    );
  x7_clkdiv_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_13_Q,
      O => x7_clkdiv_14_CYINIT_7728
    );
  x7_clkdiv_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_F,
      O => x7_clkdiv_14_CYSELF_7708
    );
  x7_clkdiv_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_XORG_7710,
      O => x7_clkdiv_14_DYMUX_7712
    );
  x7_clkdiv_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_14_Q,
      I1 => x7_clkdiv_14_G,
      O => x7_clkdiv_14_XORG_7710
    );
  x7_clkdiv_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_CYMUXFAST_7707,
      O => x7_Mcount_clkdiv_cy_15_Q
    );
  x7_clkdiv_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_13_Q,
      O => x7_clkdiv_14_FASTCARRY_7705
    );
  x7_clkdiv_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      I0 => x7_clkdiv_14_CYSELG_7693,
      I1 => x7_clkdiv_14_CYSELF_7708,
      O => x7_clkdiv_14_CYAND_7706
    );
  x7_clkdiv_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => x7_clkdiv_14_CYMUXG2_7704,
      IB => x7_clkdiv_14_FASTCARRY_7705,
      SEL => x7_clkdiv_14_CYAND_7706,
      O => x7_clkdiv_14_CYMUXFAST_7707
    );
  x7_clkdiv_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y81"
    )
    port map (
      IA => x7_clkdiv_14_LOGIC_ZERO_7702,
      IB => x7_clkdiv_14_CYMUXF2_7703,
      SEL => x7_clkdiv_14_CYSELG_7693,
      O => x7_clkdiv_14_CYMUXG2_7704
    );
  x7_clkdiv_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_14_G,
      O => x7_clkdiv_14_CYSELG_7693
    );
  x7_clkdiv_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_14_SRINV_7691
    );
  x7_clkdiv_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_14_CLKINV_7690
    );
  x7_clkdiv_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      O => x7_clkdiv_16_LOGIC_ZERO_7758
    );
  x7_clkdiv_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_XORF_7785,
      O => x7_clkdiv_16_DXMUX_7787
    );
  x7_clkdiv_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => x7_clkdiv_16_CYINIT_7784,
      I1 => x7_clkdiv_16_F,
      O => x7_clkdiv_16_XORF_7785
    );
  x7_clkdiv_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => x7_clkdiv_16_LOGIC_ZERO_7758,
      IB => x7_clkdiv_16_CYINIT_7784,
      SEL => x7_clkdiv_16_CYSELF_7764,
      O => x7_Mcount_clkdiv_cy_16_Q
    );
  x7_clkdiv_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => x7_clkdiv_16_LOGIC_ZERO_7758,
      IB => x7_clkdiv_16_LOGIC_ZERO_7758,
      SEL => x7_clkdiv_16_CYSELF_7764,
      O => x7_clkdiv_16_CYMUXF2_7759
    );
  x7_clkdiv_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_15_Q,
      O => x7_clkdiv_16_CYINIT_7784
    );
  x7_clkdiv_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_F,
      O => x7_clkdiv_16_CYSELF_7764
    );
  x7_clkdiv_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_XORG_7766,
      O => x7_clkdiv_16_DYMUX_7768
    );
  x7_clkdiv_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_16_Q,
      I1 => x7_clkdiv_16_G,
      O => x7_clkdiv_16_XORG_7766
    );
  x7_clkdiv_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_Mcount_clkdiv_cy_15_Q,
      O => x7_clkdiv_16_FASTCARRY_7761
    );
  x7_clkdiv_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      I0 => x7_clkdiv_16_CYSELG_7749,
      I1 => x7_clkdiv_16_CYSELF_7764,
      O => x7_clkdiv_16_CYAND_7762
    );
  x7_clkdiv_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => x7_clkdiv_16_CYMUXG2_7760,
      IB => x7_clkdiv_16_FASTCARRY_7761,
      SEL => x7_clkdiv_16_CYAND_7762,
      O => x7_clkdiv_16_CYMUXFAST_7763
    );
  x7_clkdiv_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y82"
    )
    port map (
      IA => x7_clkdiv_16_LOGIC_ZERO_7758,
      IB => x7_clkdiv_16_CYMUXF2_7759,
      SEL => x7_clkdiv_16_CYSELG_7749,
      O => x7_clkdiv_16_CYMUXG2_7760
    );
  x7_clkdiv_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_G,
      O => x7_clkdiv_16_CYSELG_7749
    );
  x7_clkdiv_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_16_SRINV_7747
    );
  x7_clkdiv_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_16_CLKINV_7746
    );
  x7_clkdiv_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      O => x7_clkdiv_18_LOGIC_ZERO_7833
    );
  x7_clkdiv_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_18_XORF_7834,
      O => x7_clkdiv_18_DXMUX_7836
    );
  x7_clkdiv_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => x7_clkdiv_18_CYINIT_7832,
      I1 => x7_clkdiv_18_F,
      O => x7_clkdiv_18_XORF_7834
    );
  x7_clkdiv_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      IA => x7_clkdiv_18_LOGIC_ZERO_7833,
      IB => x7_clkdiv_18_CYINIT_7832,
      SEL => x7_clkdiv_18_CYSELF_7823,
      O => x7_Mcount_clkdiv_cy_18_Q
    );
  x7_clkdiv_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_16_CYMUXFAST_7763,
      O => x7_clkdiv_18_CYINIT_7832
    );
  x7_clkdiv_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_18_F,
      O => x7_clkdiv_18_CYSELF_7823
    );
  x7_clkdiv_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv_18_XORG_7813,
      O => x7_clkdiv_18_DYMUX_7815
    );
  x7_clkdiv_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X55Y83"
    )
    port map (
      I0 => x7_Mcount_clkdiv_cy_18_Q,
      I1 => x7_clkdiv_19_rt_7810,
      O => x7_clkdiv_18_XORG_7813
    );
  x7_clkdiv_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => x7_clkdiv_18_SRINV_7802
    );
  x7_clkdiv_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => x7_clkdiv_18_CLKINV_7801
    );
  U3_xpix2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_XORF_7877,
      O => U3_xpix2(0)
    );
  U3_xpix2_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X21Y32"
    )
    port map (
      I0 => U3_xpix2_0_CYINIT_7876,
      I1 => U3_Msub_xpix2_Madd_lut(0),
      O => U3_xpix2_0_XORF_7877
    );
  U3_xpix2_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X21Y32"
    )
    port map (
      IA => U3_xpix2_0_CY0F_7875,
      IB => U3_xpix2_0_CYINIT_7876,
      SEL => U3_xpix2_0_CYSELF_7867,
      O => U3_Msub_xpix2_Madd_cy(0)
    );
  U3_xpix2_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_BXINV_7865,
      O => U3_xpix2_0_CYINIT_7876
    );
  U3_xpix2_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_xpix2_0_CY0F_7875
    );
  U3_xpix2_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(0),
      O => U3_xpix2_0_CYSELF_7867
    );
  U3_xpix2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_xpix2_0_BXINV_7865
    );
  U3_xpix2_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_XORG_7863,
      O => U3_xpix2(1)
    );
  U3_xpix2_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X21Y32"
    )
    port map (
      I0 => U3_Msub_xpix2_Madd_cy(0),
      I1 => U3_Msub_xpix2_Madd_lut(1),
      O => U3_xpix2_0_XORG_7863
    );
  U3_xpix2_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_0_CYMUXG_7862,
      O => U3_Msub_xpix2_Madd_cy(1)
    );
  U3_xpix2_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X21Y32"
    )
    port map (
      IA => U3_xpix2_0_CY0G_7860,
      IB => U3_Msub_xpix2_Madd_cy(0),
      SEL => U3_xpix2_0_CYSELG_7852,
      O => U3_xpix2_0_CYMUXG_7862
    );
  U3_xpix2_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_xpix2_0_CY0G_7860
    );
  U3_xpix2_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(1),
      O => U3_xpix2_0_CYSELG_7852
    );
  U3_xpix2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_2_XORF_7916,
      O => U3_xpix2(2)
    );
  U3_xpix2_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      I0 => U3_xpix2_2_CYINIT_7915,
      I1 => U3_Msub_xpix2_Madd_lut(2),
      O => U3_xpix2_2_XORF_7916
    );
  U3_xpix2_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      IA => U3_xpix2_2_CY0F_7914,
      IB => U3_xpix2_2_CYINIT_7915,
      SEL => U3_xpix2_2_CYSELF_7902,
      O => U3_Msub_xpix2_Madd_cy(2)
    );
  U3_xpix2_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      IA => U3_xpix2_2_CY0F_7914,
      IB => U3_xpix2_2_CY0F_7914,
      SEL => U3_xpix2_2_CYSELF_7902,
      O => U3_xpix2_2_CYMUXF2_7897
    );
  U3_xpix2_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_cy(1),
      O => U3_xpix2_2_CYINIT_7915
    );
  U3_xpix2_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_xpix2_2_CY0F_7914
    );
  U3_xpix2_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(2),
      O => U3_xpix2_2_CYSELF_7902
    );
  U3_xpix2_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_2_XORG_7904,
      O => U3_xpix2(3)
    );
  U3_xpix2_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      I0 => U3_Msub_xpix2_Madd_cy(2),
      I1 => U3_Msub_xpix2_Madd_lut(3),
      O => U3_xpix2_2_XORG_7904
    );
  U3_xpix2_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_cy(1),
      O => U3_xpix2_2_FASTCARRY_7899
    );
  U3_xpix2_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      I0 => U3_xpix2_2_CYSELG_7888,
      I1 => U3_xpix2_2_CYSELF_7902,
      O => U3_xpix2_2_CYAND_7900
    );
  U3_xpix2_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      IA => U3_xpix2_2_CYMUXG2_7898,
      IB => U3_xpix2_2_FASTCARRY_7899,
      SEL => U3_xpix2_2_CYAND_7900,
      O => U3_xpix2_2_CYMUXFAST_7901
    );
  U3_xpix2_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y33"
    )
    port map (
      IA => U3_xpix2_2_CY0G_7896,
      IB => U3_xpix2_2_CYMUXF2_7897,
      SEL => U3_xpix2_2_CYSELG_7888,
      O => U3_xpix2_2_CYMUXG2_7898
    );
  U3_xpix2_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_xpix2_2_CY0G_7896
    );
  U3_xpix2_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Msub_xpix2_Madd_lut(3),
      O => U3_xpix2_2_CYSELG_7888
    );
  U3_xpix2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_4_XORF_7943,
      O => U3_xpix2(4)
    );
  U3_xpix2_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X21Y34"
    )
    port map (
      I0 => U3_xpix2_4_CYINIT_7942,
      I1 => U3_Msub_xpix2_Madd_lut(4),
      O => U3_xpix2_4_XORF_7943
    );
  U3_xpix2_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2_2_CYMUXFAST_7901,
      O => U3_xpix2_4_CYINIT_7942
    );
  U3_xpix2_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_add0002(4),
      O => U3_spriteon2f_add0002_4_0
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y24"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F_7973,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT_7974,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF_7965,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV_7963,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYINIT_7974
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(0),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0F_7973
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(0),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELF_7965
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_BXINV_7963
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X3Y24"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G_7960,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG_7952,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG_7962
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CY0G_7960
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYSELG_7952
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y25"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_8005,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_8005,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7996,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2_7991
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(2),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0F_8005
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(2),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7996
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_1_CYMUXG_7962,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY_7993
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y25"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7982,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELF_7996,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND_7994
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y25"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2_7992,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_FASTCARRY_7993,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYAND_7994,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST_7995
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y25"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G_7990,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXF2_7991,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7982,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXG2_7992
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2(3),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CY0G_7990
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(3),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYSELG_7982
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y26"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_8036,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_8036,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_8028,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2_8023
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2f_add0002_4_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0F_8036
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_8028
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_3_CYMUXFAST_7995,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY_8025
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y26"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_8016,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELF_8028,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND_8026
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y26"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2_8024,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_FASTCARRY_8025,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYAND_8026,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST_8027
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y26"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G_8022,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXF2_8023,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_8016,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXG2_8024
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_cy_5_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CY0G_8022
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYSELG_8016
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_8069,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_8069,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_8061,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2_8056
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0F_8069
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_8061
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_5_CYMUXFAST_8027,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY_8058
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_8047,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELF_8061,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND_8059
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2_8057,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_FASTCARRY_8058,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYAND_8059,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST_8060
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G_8055,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXF2_8056,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_8047,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXG2_8057
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut_7_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CY0G_8055
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(7),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYSELG_8047
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_8102,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_8102,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_8095,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2_8090
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut_8_0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0F_8102
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_8095
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST_8094,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_cy_7_CYMUXFAST_8060,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY_8092
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      I0 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_8083,
      I1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELF_8095,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND_8093
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2_8091,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_FASTCARRY_8092,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYAND_8093,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXFAST_8094
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G_8089,
      IB => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXF2_8090,
      SEL => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_8083,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYMUXG2_8091
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(9),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CY0G_8089
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_CYSELG_8083
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F_8131,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT_8132,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF_8123,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV_8121,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYINIT_8132
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0F_8131
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELF_8123
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_BXINV_8121
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G_8118,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG_8110,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG_8120
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CY0G_8118
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYSELG_8110
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_8163,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_8163,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_8154,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2_8149
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0F_8163
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_8154
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_1_CYMUXG_8120,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY_8151
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_8140,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELF_8154,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND_8152
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2_8150,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_FASTCARRY_8151,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYAND_8152,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST_8153
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G_8148,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXF2_8149,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_8140,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXG2_8150
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CY0G_8148
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYSELG_8140
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_8194,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_8194,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_8185,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2_8180
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0F_8194
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_8185
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_3_CYMUXFAST_8153,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY_8182
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_8172,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELF_8185,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND_8183
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2_8181,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_FASTCARRY_8182,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYAND_8183,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST_8184
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G_8179,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXF2_8180,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_8172,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXG2_8181
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CY0G_8179
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYSELG_8172
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_8225,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_8225,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_8218,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2_8213
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0F_8225
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_8218
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_5_CYMUXFAST_8184,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY_8215
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y37"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_8206,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELF_8218,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND_8216
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2_8214,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_FASTCARRY_8215,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYAND_8216,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST_8217
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y37"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G_8212,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXF2_8213,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_8206,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXG2_8214
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CY0G_8212
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYSELG_8206
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_8256,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_8256,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_8247,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2_8242
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X1Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0F_8256
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_8247
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST_8246,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_cy_7_CYMUXFAST_8217,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY_8244
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y38"
    )
    port map (
      I0 => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_8233,
      I1 => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELF_8247,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND_8245
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2_8243,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_FASTCARRY_8244,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYAND_8245,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXFAST_8246
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y38"
    )
    port map (
      IA => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G_8241,
      IB => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXF2_8242,
      SEL => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_8233,
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYMUXG2_8243
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X1Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CY0G_8241
    );
  U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon1_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_CYSELG_8233
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y19"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F_8285,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT_8286,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF_8277,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV_8275,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYINIT_8286
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0F_8285
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(0),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELF_8277
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_BXINV_8275
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X3Y19"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G_8272,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_0_Q,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG_8264,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG_8274
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(1),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CY0G_8272
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(1),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYSELG_8264
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_8317,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_8317,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_8308,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2_8303
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0F_8317
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_8308
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_1_CYMUXG_8274,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY_8305
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_8294,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELF_8308,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND_8306
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2_8304,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_FASTCARRY_8305,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYAND_8306,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST_8307
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y20"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G_8302,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXF2_8303,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_8294,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXG2_8304
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CY0G_8302
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(3),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYSELG_8294
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_8348,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_8348,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_8339,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2_8334
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0F_8348
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(4),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_8339
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_3_CYMUXFAST_8307,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY_8336
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_8326,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELF_8339,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND_8337
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2_8335,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_FASTCARRY_8336,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYAND_8337,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST_8338
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y21"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G_8333,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXF2_8334,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_8326,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXG2_8335
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CY0G_8333
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYSELG_8326
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_8379,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_8379,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_8372,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2_8367
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0F_8379
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_8372
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_5_CYMUXFAST_8338,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY_8369
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_8360,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELF_8372,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND_8370
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2_8368,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_FASTCARRY_8369,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYAND_8370,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST_8371
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G_8366,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXF2_8367,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_8360,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXG2_8368
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CY0G_8366
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(7),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYSELG_8360
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_8410,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_8410,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_8401,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2_8396
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(8),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0F_8410
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(8),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_8401
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST_8400,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_cy_7_CYMUXFAST_8371,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY_8398
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      I0 => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_8387,
      I1 => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELF_8401,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND_8399
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2_8397,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_FASTCARRY_8398,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYAND_8399,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXFAST_8400
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G_8395,
      IB => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXF2_8396,
      SEL => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_8387,
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYMUXG2_8397
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(9),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CY0G_8395
    );
  U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcompar_spriteon2_cmp_lt0000_lut(9),
      O => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_CYSELG_8387
    );
  nes_scalar_next_addsub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X51Y9"
    )
    port map (
      O => nes_scalar_next_addsub0000_0_LOGIC_ZERO_8427
    );
  nes_scalar_next_addsub0000_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X51Y9"
    )
    port map (
      O => nes_scalar_next_addsub0000_0_LOGIC_ONE_8444
    );
  nes_scalar_next_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_XORF_8445,
      O => nes_scalar_next_addsub0000(0)
    );
  nes_scalar_next_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y9"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_0_CYINIT_8443,
      I1 => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000_0_XORF_8445
    );
  nes_scalar_next_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y9"
    )
    port map (
      IA => nes_scalar_next_addsub0000_0_LOGIC_ONE_8444,
      IB => nes_scalar_next_addsub0000_0_CYINIT_8443,
      SEL => nes_scalar_next_addsub0000_0_CYSELF_8434,
      O => nes_Madd_scalar_next_addsub0000_cy_0_Q
    );
  nes_scalar_next_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_BXINV_8432,
      O => nes_scalar_next_addsub0000_0_CYINIT_8443
    );
  nes_scalar_next_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_lut(0),
      O => nes_scalar_next_addsub0000_0_CYSELF_8434
    );
  nes_scalar_next_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => nes_scalar_next_addsub0000_0_BXINV_8432
    );
  nes_scalar_next_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_XORG_8430,
      O => nes_scalar_next_addsub0000(1)
    );
  nes_scalar_next_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y9"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_0_Q,
      I1 => nes_scalar_next_addsub0000_0_G,
      O => nes_scalar_next_addsub0000_0_XORG_8430
    );
  nes_scalar_next_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_CYMUXG_8429,
      O => nes_Madd_scalar_next_addsub0000_cy_1_Q
    );
  nes_scalar_next_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X51Y9"
    )
    port map (
      IA => nes_scalar_next_addsub0000_0_LOGIC_ZERO_8427,
      IB => nes_Madd_scalar_next_addsub0000_cy_0_Q,
      SEL => nes_scalar_next_addsub0000_0_CYSELG_8418,
      O => nes_scalar_next_addsub0000_0_CYMUXG_8429
    );
  nes_scalar_next_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_0_G,
      O => nes_scalar_next_addsub0000_0_CYSELG_8418
    );
  nes_scalar_next_addsub0000_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      O => nes_scalar_next_addsub0000_2_LOGIC_ZERO_8463
    );
  nes_scalar_next_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_XORF_8483,
      O => nes_scalar_next_addsub0000(2)
    );
  nes_scalar_next_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_2_CYINIT_8482,
      I1 => nes_scalar_next_addsub0000_2_F,
      O => nes_scalar_next_addsub0000_2_XORF_8483
    );
  nes_scalar_next_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_8463,
      IB => nes_scalar_next_addsub0000_2_CYINIT_8482,
      SEL => nes_scalar_next_addsub0000_2_CYSELF_8469,
      O => nes_Madd_scalar_next_addsub0000_cy_2_Q
    );
  nes_scalar_next_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_8463,
      IB => nes_scalar_next_addsub0000_2_LOGIC_ZERO_8463,
      SEL => nes_scalar_next_addsub0000_2_CYSELF_8469,
      O => nes_scalar_next_addsub0000_2_CYMUXF2_8464
    );
  nes_scalar_next_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_1_Q,
      O => nes_scalar_next_addsub0000_2_CYINIT_8482
    );
  nes_scalar_next_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_F,
      O => nes_scalar_next_addsub0000_2_CYSELF_8469
    );
  nes_scalar_next_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_XORG_8471,
      O => nes_scalar_next_addsub0000(3)
    );
  nes_scalar_next_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_2_Q,
      I1 => nes_scalar_next_addsub0000_2_G,
      O => nes_scalar_next_addsub0000_2_XORG_8471
    );
  nes_scalar_next_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_CYMUXFAST_8468,
      O => nes_Madd_scalar_next_addsub0000_cy_3_Q
    );
  nes_scalar_next_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_1_Q,
      O => nes_scalar_next_addsub0000_2_FASTCARRY_8466
    );
  nes_scalar_next_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_2_CYSELG_8454,
      I1 => nes_scalar_next_addsub0000_2_CYSELF_8469,
      O => nes_scalar_next_addsub0000_2_CYAND_8467
    );
  nes_scalar_next_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_CYMUXG2_8465,
      IB => nes_scalar_next_addsub0000_2_FASTCARRY_8466,
      SEL => nes_scalar_next_addsub0000_2_CYAND_8467,
      O => nes_scalar_next_addsub0000_2_CYMUXFAST_8468
    );
  nes_scalar_next_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y10"
    )
    port map (
      IA => nes_scalar_next_addsub0000_2_LOGIC_ZERO_8463,
      IB => nes_scalar_next_addsub0000_2_CYMUXF2_8464,
      SEL => nes_scalar_next_addsub0000_2_CYSELG_8454,
      O => nes_scalar_next_addsub0000_2_CYMUXG2_8465
    );
  nes_scalar_next_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_2_G,
      O => nes_scalar_next_addsub0000_2_CYSELG_8454
    );
  nes_scalar_next_addsub0000_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      O => nes_scalar_next_addsub0000_4_LOGIC_ZERO_8501
    );
  nes_scalar_next_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_XORF_8521,
      O => nes_scalar_next_addsub0000(4)
    );
  nes_scalar_next_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_4_CYINIT_8520,
      I1 => nes_scalar_next_addsub0000_4_F,
      O => nes_scalar_next_addsub0000_4_XORF_8521
    );
  nes_scalar_next_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_8501,
      IB => nes_scalar_next_addsub0000_4_CYINIT_8520,
      SEL => nes_scalar_next_addsub0000_4_CYSELF_8507,
      O => nes_Madd_scalar_next_addsub0000_cy_4_Q
    );
  nes_scalar_next_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_8501,
      IB => nes_scalar_next_addsub0000_4_LOGIC_ZERO_8501,
      SEL => nes_scalar_next_addsub0000_4_CYSELF_8507,
      O => nes_scalar_next_addsub0000_4_CYMUXF2_8502
    );
  nes_scalar_next_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_3_Q,
      O => nes_scalar_next_addsub0000_4_CYINIT_8520
    );
  nes_scalar_next_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_F,
      O => nes_scalar_next_addsub0000_4_CYSELF_8507
    );
  nes_scalar_next_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_XORG_8509,
      O => nes_scalar_next_addsub0000(5)
    );
  nes_scalar_next_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_4_Q,
      I1 => nes_scalar_next_addsub0000_4_G,
      O => nes_scalar_next_addsub0000_4_XORG_8509
    );
  nes_scalar_next_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_CYMUXFAST_8506,
      O => nes_Madd_scalar_next_addsub0000_cy_5_Q
    );
  nes_scalar_next_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_3_Q,
      O => nes_scalar_next_addsub0000_4_FASTCARRY_8504
    );
  nes_scalar_next_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_4_CYSELG_8492,
      I1 => nes_scalar_next_addsub0000_4_CYSELF_8507,
      O => nes_scalar_next_addsub0000_4_CYAND_8505
    );
  nes_scalar_next_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_CYMUXG2_8503,
      IB => nes_scalar_next_addsub0000_4_FASTCARRY_8504,
      SEL => nes_scalar_next_addsub0000_4_CYAND_8505,
      O => nes_scalar_next_addsub0000_4_CYMUXFAST_8506
    );
  nes_scalar_next_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y11"
    )
    port map (
      IA => nes_scalar_next_addsub0000_4_LOGIC_ZERO_8501,
      IB => nes_scalar_next_addsub0000_4_CYMUXF2_8502,
      SEL => nes_scalar_next_addsub0000_4_CYSELG_8492,
      O => nes_scalar_next_addsub0000_4_CYMUXG2_8503
    );
  nes_scalar_next_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_4_G,
      O => nes_scalar_next_addsub0000_4_CYSELG_8492
    );
  nes_scalar_next_addsub0000_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      O => nes_scalar_next_addsub0000_6_LOGIC_ZERO_8539
    );
  nes_scalar_next_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_XORF_8559,
      O => nes_scalar_next_addsub0000(6)
    );
  nes_scalar_next_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_6_CYINIT_8558,
      I1 => nes_scalar_next_addsub0000_6_F,
      O => nes_scalar_next_addsub0000_6_XORF_8559
    );
  nes_scalar_next_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_8539,
      IB => nes_scalar_next_addsub0000_6_CYINIT_8558,
      SEL => nes_scalar_next_addsub0000_6_CYSELF_8545,
      O => nes_Madd_scalar_next_addsub0000_cy_6_Q
    );
  nes_scalar_next_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_8539,
      IB => nes_scalar_next_addsub0000_6_LOGIC_ZERO_8539,
      SEL => nes_scalar_next_addsub0000_6_CYSELF_8545,
      O => nes_scalar_next_addsub0000_6_CYMUXF2_8540
    );
  nes_scalar_next_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_5_Q,
      O => nes_scalar_next_addsub0000_6_CYINIT_8558
    );
  nes_scalar_next_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_F,
      O => nes_scalar_next_addsub0000_6_CYSELF_8545
    );
  nes_scalar_next_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_XORG_8547,
      O => nes_scalar_next_addsub0000(7)
    );
  nes_scalar_next_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_6_Q,
      I1 => nes_scalar_next_addsub0000_6_G,
      O => nes_scalar_next_addsub0000_6_XORG_8547
    );
  nes_scalar_next_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Madd_scalar_next_addsub0000_cy_5_Q,
      O => nes_scalar_next_addsub0000_6_FASTCARRY_8542
    );
  nes_scalar_next_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_6_CYSELG_8530,
      I1 => nes_scalar_next_addsub0000_6_CYSELF_8545,
      O => nes_scalar_next_addsub0000_6_CYAND_8543
    );
  nes_scalar_next_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_CYMUXG2_8541,
      IB => nes_scalar_next_addsub0000_6_FASTCARRY_8542,
      SEL => nes_scalar_next_addsub0000_6_CYAND_8543,
      O => nes_scalar_next_addsub0000_6_CYMUXFAST_8544
    );
  nes_scalar_next_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X51Y12"
    )
    port map (
      IA => nes_scalar_next_addsub0000_6_LOGIC_ZERO_8539,
      IB => nes_scalar_next_addsub0000_6_CYMUXF2_8540,
      SEL => nes_scalar_next_addsub0000_6_CYSELG_8530,
      O => nes_scalar_next_addsub0000_6_CYMUXG2_8541
    );
  nes_scalar_next_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X51Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_G,
      O => nes_scalar_next_addsub0000_6_CYSELG_8530
    );
  nes_scalar_next_addsub0000_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X51Y13"
    )
    port map (
      O => nes_scalar_next_addsub0000_8_LOGIC_ZERO_8589
    );
  nes_scalar_next_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_XORF_8590,
      O => nes_scalar_next_addsub0000(8)
    );
  nes_scalar_next_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X51Y13"
    )
    port map (
      I0 => nes_scalar_next_addsub0000_8_CYINIT_8588,
      I1 => nes_scalar_next_addsub0000_8_F,
      O => nes_scalar_next_addsub0000_8_XORF_8590
    );
  nes_scalar_next_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X51Y13"
    )
    port map (
      IA => nes_scalar_next_addsub0000_8_LOGIC_ZERO_8589,
      IB => nes_scalar_next_addsub0000_8_CYINIT_8588,
      SEL => nes_scalar_next_addsub0000_8_CYSELF_8579,
      O => nes_Madd_scalar_next_addsub0000_cy_8_Q
    );
  nes_scalar_next_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X51Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_6_CYMUXFAST_8544,
      O => nes_scalar_next_addsub0000_8_CYINIT_8588
    );
  nes_scalar_next_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X51Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_F,
      O => nes_scalar_next_addsub0000_8_CYSELF_8579
    );
  nes_scalar_next_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_addsub0000_8_XORG_8576,
      O => nes_scalar_next_addsub0000(9)
    );
  nes_scalar_next_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X51Y13"
    )
    port map (
      I0 => nes_Madd_scalar_next_addsub0000_cy_8_Q,
      I1 => nes_scalar_reg_9_rt_8573,
      O => nes_scalar_next_addsub0000_8_XORG_8576
    );
  nes_scalar_reg_9_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X51Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_reg(9),
      ADR3 => VCC,
      O => nes_scalar_reg_9_rt_8573
    );
  U2_Mcount_hcs_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X3Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(0),
      O => U2_Mcount_hcs_lut(0)
    );
  U2_Result_0_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ZERO_8608
    );
  U2_Result_0_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      O => U2_Result_0_1_LOGIC_ONE_8625
    );
  U2_Result_0_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORF_8626,
      O => U2_Result_0_1
    );
  U2_Result_0_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      I0 => U2_Result_0_1_CYINIT_8624,
      I1 => U2_Mcount_hcs_lut(0),
      O => U2_Result_0_1_XORF_8626
    );
  U2_Result_0_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ONE_8625,
      IB => U2_Result_0_1_CYINIT_8624,
      SEL => U2_Result_0_1_CYSELF_8615,
      O => U2_Mcount_hcs_cy_0_Q
    );
  U2_Result_0_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_BXINV_8613,
      O => U2_Result_0_1_CYINIT_8624
    );
  U2_Result_0_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_lut(0),
      O => U2_Result_0_1_CYSELF_8615
    );
  U2_Result_0_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U2_Result_0_1_BXINV_8613
    );
  U2_Result_0_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_XORG_8611,
      O => U2_Result_1_1
    );
  U2_Result_0_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_0_Q,
      I1 => U2_Result_0_1_G,
      O => U2_Result_0_1_XORG_8611
    );
  U2_Result_0_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_CYMUXG_8610,
      O => U2_Mcount_hcs_cy_1_Q
    );
  U2_Result_0_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      IA => U2_Result_0_1_LOGIC_ZERO_8608,
      IB => U2_Mcount_hcs_cy_0_Q,
      SEL => U2_Result_0_1_CYSELG_8599,
      O => U2_Result_0_1_CYMUXG_8610
    );
  U2_Result_0_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_0_1_G,
      O => U2_Result_0_1_CYSELG_8599
    );
  U2_Result_2_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      O => U2_Result_2_1_LOGIC_ZERO_8644
    );
  U2_Result_2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORF_8664,
      O => U2_Result_2_1
    );
  U2_Result_2_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      I0 => U2_Result_2_1_CYINIT_8663,
      I1 => U2_Result_2_1_F,
      O => U2_Result_2_1_XORF_8664
    );
  U2_Result_2_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_8644,
      IB => U2_Result_2_1_CYINIT_8663,
      SEL => U2_Result_2_1_CYSELF_8650,
      O => U2_Mcount_hcs_cy_2_Q
    );
  U2_Result_2_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_8644,
      IB => U2_Result_2_1_LOGIC_ZERO_8644,
      SEL => U2_Result_2_1_CYSELF_8650,
      O => U2_Result_2_1_CYMUXF2_8645
    );
  U2_Result_2_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_1_Q,
      O => U2_Result_2_1_CYINIT_8663
    );
  U2_Result_2_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_F,
      O => U2_Result_2_1_CYSELF_8650
    );
  U2_Result_2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_XORG_8652,
      O => U2_Result_3_1
    );
  U2_Result_2_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_2_Q,
      I1 => U2_Result_2_1_G,
      O => U2_Result_2_1_XORG_8652
    );
  U2_Result_2_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_CYMUXFAST_8649,
      O => U2_Mcount_hcs_cy_3_Q
    );
  U2_Result_2_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_1_Q,
      O => U2_Result_2_1_FASTCARRY_8647
    );
  U2_Result_2_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      I0 => U2_Result_2_1_CYSELG_8635,
      I1 => U2_Result_2_1_CYSELF_8650,
      O => U2_Result_2_1_CYAND_8648
    );
  U2_Result_2_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      IA => U2_Result_2_1_CYMUXG2_8646,
      IB => U2_Result_2_1_FASTCARRY_8647,
      SEL => U2_Result_2_1_CYAND_8648,
      O => U2_Result_2_1_CYMUXFAST_8649
    );
  U2_Result_2_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y11"
    )
    port map (
      IA => U2_Result_2_1_LOGIC_ZERO_8644,
      IB => U2_Result_2_1_CYMUXF2_8645,
      SEL => U2_Result_2_1_CYSELG_8635,
      O => U2_Result_2_1_CYMUXG2_8646
    );
  U2_Result_2_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_2_1_G,
      O => U2_Result_2_1_CYSELG_8635
    );
  U2_Result_4_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      O => U2_Result_4_1_LOGIC_ZERO_8682
    );
  U2_Result_4_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORF_8702,
      O => U2_Result_4_1
    );
  U2_Result_4_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      I0 => U2_Result_4_1_CYINIT_8701,
      I1 => U2_Result_4_1_F,
      O => U2_Result_4_1_XORF_8702
    );
  U2_Result_4_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_8682,
      IB => U2_Result_4_1_CYINIT_8701,
      SEL => U2_Result_4_1_CYSELF_8688,
      O => U2_Mcount_hcs_cy_4_Q
    );
  U2_Result_4_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_8682,
      IB => U2_Result_4_1_LOGIC_ZERO_8682,
      SEL => U2_Result_4_1_CYSELF_8688,
      O => U2_Result_4_1_CYMUXF2_8683
    );
  U2_Result_4_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_3_Q,
      O => U2_Result_4_1_CYINIT_8701
    );
  U2_Result_4_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_F,
      O => U2_Result_4_1_CYSELF_8688
    );
  U2_Result_4_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_XORG_8690,
      O => U2_Result_5_1
    );
  U2_Result_4_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_4_Q,
      I1 => U2_Result_4_1_G,
      O => U2_Result_4_1_XORG_8690
    );
  U2_Result_4_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_CYMUXFAST_8687,
      O => U2_Mcount_hcs_cy_5_Q
    );
  U2_Result_4_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_3_Q,
      O => U2_Result_4_1_FASTCARRY_8685
    );
  U2_Result_4_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      I0 => U2_Result_4_1_CYSELG_8673,
      I1 => U2_Result_4_1_CYSELF_8688,
      O => U2_Result_4_1_CYAND_8686
    );
  U2_Result_4_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      IA => U2_Result_4_1_CYMUXG2_8684,
      IB => U2_Result_4_1_FASTCARRY_8685,
      SEL => U2_Result_4_1_CYAND_8686,
      O => U2_Result_4_1_CYMUXFAST_8687
    );
  U2_Result_4_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y12"
    )
    port map (
      IA => U2_Result_4_1_LOGIC_ZERO_8682,
      IB => U2_Result_4_1_CYMUXF2_8683,
      SEL => U2_Result_4_1_CYSELG_8673,
      O => U2_Result_4_1_CYMUXG2_8684
    );
  U2_Result_4_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_4_1_G,
      O => U2_Result_4_1_CYSELG_8673
    );
  U2_Result_6_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      O => U2_Result_6_1_LOGIC_ZERO_8720
    );
  U2_Result_6_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORF_8740,
      O => U2_Result_6_1
    );
  U2_Result_6_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      I0 => U2_Result_6_1_CYINIT_8739,
      I1 => U2_Result_6_1_F,
      O => U2_Result_6_1_XORF_8740
    );
  U2_Result_6_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_8720,
      IB => U2_Result_6_1_CYINIT_8739,
      SEL => U2_Result_6_1_CYSELF_8726,
      O => U2_Mcount_hcs_cy_6_Q
    );
  U2_Result_6_1_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_8720,
      IB => U2_Result_6_1_LOGIC_ZERO_8720,
      SEL => U2_Result_6_1_CYSELF_8726,
      O => U2_Result_6_1_CYMUXF2_8721
    );
  U2_Result_6_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_5_Q,
      O => U2_Result_6_1_CYINIT_8739
    );
  U2_Result_6_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_F,
      O => U2_Result_6_1_CYSELF_8726
    );
  U2_Result_6_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_XORG_8728,
      O => U2_Result_7_1
    );
  U2_Result_6_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_6_Q,
      I1 => U2_Result_6_1_G,
      O => U2_Result_6_1_XORG_8728
    );
  U2_Result_6_1_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_cy_5_Q,
      O => U2_Result_6_1_FASTCARRY_8723
    );
  U2_Result_6_1_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      I0 => U2_Result_6_1_CYSELG_8711,
      I1 => U2_Result_6_1_CYSELF_8726,
      O => U2_Result_6_1_CYAND_8724
    );
  U2_Result_6_1_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      IA => U2_Result_6_1_CYMUXG2_8722,
      IB => U2_Result_6_1_FASTCARRY_8723,
      SEL => U2_Result_6_1_CYAND_8724,
      O => U2_Result_6_1_CYMUXFAST_8725
    );
  U2_Result_6_1_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      IA => U2_Result_6_1_LOGIC_ZERO_8720,
      IB => U2_Result_6_1_CYMUXF2_8721,
      SEL => U2_Result_6_1_CYSELG_8711,
      O => U2_Result_6_1_CYMUXG2_8722
    );
  U2_Result_6_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_G,
      O => U2_Result_6_1_CYSELG_8711
    );
  U2_Result_8_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y14"
    )
    port map (
      O => U2_Result_8_1_LOGIC_ZERO_8770
    );
  U2_Result_8_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORF_8771,
      O => U2_Result_8_1
    );
  U2_Result_8_1_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y14"
    )
    port map (
      I0 => U2_Result_8_1_CYINIT_8769,
      I1 => U2_Result_8_1_F,
      O => U2_Result_8_1_XORF_8771
    );
  U2_Result_8_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y14"
    )
    port map (
      IA => U2_Result_8_1_LOGIC_ZERO_8770,
      IB => U2_Result_8_1_CYINIT_8769,
      SEL => U2_Result_8_1_CYSELF_8760,
      O => U2_Mcount_hcs_cy_8_Q
    );
  U2_Result_8_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_6_1_CYMUXFAST_8725,
      O => U2_Result_8_1_CYINIT_8769
    );
  U2_Result_8_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_F,
      O => U2_Result_8_1_CYSELF_8760
    );
  U2_Result_8_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Result_8_1_XORG_8757,
      O => U2_Result_9_1
    );
  U2_Result_8_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y14"
    )
    port map (
      I0 => U2_Mcount_hcs_cy_8_Q,
      I1 => U2_hcs_9_rt_8754,
      O => U2_Result_8_1_XORG_8757
    );
  U2_hcs_9_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(9),
      O => U2_hcs_9_rt_8754
    );
  nes_Mcount_counter_reg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X53Y27"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Mcount_counter_reg_lut(0)
    );
  nes_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y27"
    )
    port map (
      O => nes_Result_0_LOGIC_ZERO_8789
    );
  nes_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y27"
    )
    port map (
      O => nes_Result_0_LOGIC_ONE_8806
    );
  nes_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_XORF_8807,
      O => nes_Result(0)
    );
  nes_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y27"
    )
    port map (
      I0 => nes_Result_0_CYINIT_8805,
      I1 => nes_Mcount_counter_reg_lut(0),
      O => nes_Result_0_XORF_8807
    );
  nes_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y27"
    )
    port map (
      IA => nes_Result_0_LOGIC_ONE_8806,
      IB => nes_Result_0_CYINIT_8805,
      SEL => nes_Result_0_CYSELF_8796,
      O => nes_Mcount_counter_reg_cy_0_Q
    );
  nes_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_BXINV_8794,
      O => nes_Result_0_CYINIT_8805
    );
  nes_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_lut(0),
      O => nes_Result_0_CYSELF_8796
    );
  nes_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => nes_Result_0_BXINV_8794
    );
  nes_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_XORG_8792,
      O => nes_Result(1)
    );
  nes_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y27"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_0_Q,
      I1 => nes_Result_0_G,
      O => nes_Result_0_XORG_8792
    );
  nes_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_CYMUXG_8791,
      O => nes_Mcount_counter_reg_cy_1_Q
    );
  nes_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y27"
    )
    port map (
      IA => nes_Result_0_LOGIC_ZERO_8789,
      IB => nes_Mcount_counter_reg_cy_0_Q,
      SEL => nes_Result_0_CYSELG_8780,
      O => nes_Result_0_CYMUXG_8791
    );
  nes_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_0_G,
      O => nes_Result_0_CYSELG_8780
    );
  nes_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      O => nes_Result_2_LOGIC_ZERO_8825
    );
  nes_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_XORF_8845,
      O => nes_Result(2)
    );
  nes_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      I0 => nes_Result_2_CYINIT_8844,
      I1 => nes_Result_2_F,
      O => nes_Result_2_XORF_8845
    );
  nes_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_8825,
      IB => nes_Result_2_CYINIT_8844,
      SEL => nes_Result_2_CYSELF_8831,
      O => nes_Mcount_counter_reg_cy_2_Q
    );
  nes_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_8825,
      IB => nes_Result_2_LOGIC_ZERO_8825,
      SEL => nes_Result_2_CYSELF_8831,
      O => nes_Result_2_CYMUXF2_8826
    );
  nes_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_1_Q,
      O => nes_Result_2_CYINIT_8844
    );
  nes_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_F,
      O => nes_Result_2_CYSELF_8831
    );
  nes_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_XORG_8833,
      O => nes_Result(3)
    );
  nes_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_2_Q,
      I1 => nes_Result_2_G,
      O => nes_Result_2_XORG_8833
    );
  nes_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_CYMUXFAST_8830,
      O => nes_Mcount_counter_reg_cy_3_Q
    );
  nes_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_1_Q,
      O => nes_Result_2_FASTCARRY_8828
    );
  nes_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      I0 => nes_Result_2_CYSELG_8816,
      I1 => nes_Result_2_CYSELF_8831,
      O => nes_Result_2_CYAND_8829
    );
  nes_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      IA => nes_Result_2_CYMUXG2_8827,
      IB => nes_Result_2_FASTCARRY_8828,
      SEL => nes_Result_2_CYAND_8829,
      O => nes_Result_2_CYMUXFAST_8830
    );
  nes_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y28"
    )
    port map (
      IA => nes_Result_2_LOGIC_ZERO_8825,
      IB => nes_Result_2_CYMUXF2_8826,
      SEL => nes_Result_2_CYSELG_8816,
      O => nes_Result_2_CYMUXG2_8827
    );
  nes_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_2_G,
      O => nes_Result_2_CYSELG_8816
    );
  nes_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      O => nes_Result_4_LOGIC_ZERO_8863
    );
  nes_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_XORF_8883,
      O => nes_Result(4)
    );
  nes_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      I0 => nes_Result_4_CYINIT_8882,
      I1 => nes_Result_4_F,
      O => nes_Result_4_XORF_8883
    );
  nes_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_8863,
      IB => nes_Result_4_CYINIT_8882,
      SEL => nes_Result_4_CYSELF_8869,
      O => nes_Mcount_counter_reg_cy_4_Q
    );
  nes_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_8863,
      IB => nes_Result_4_LOGIC_ZERO_8863,
      SEL => nes_Result_4_CYSELF_8869,
      O => nes_Result_4_CYMUXF2_8864
    );
  nes_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_3_Q,
      O => nes_Result_4_CYINIT_8882
    );
  nes_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_F,
      O => nes_Result_4_CYSELF_8869
    );
  nes_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_XORG_8871,
      O => nes_Result(5)
    );
  nes_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_4_Q,
      I1 => nes_Result_4_G,
      O => nes_Result_4_XORG_8871
    );
  nes_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_CYMUXFAST_8868,
      O => nes_Mcount_counter_reg_cy_5_Q
    );
  nes_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_3_Q,
      O => nes_Result_4_FASTCARRY_8866
    );
  nes_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      I0 => nes_Result_4_CYSELG_8854,
      I1 => nes_Result_4_CYSELF_8869,
      O => nes_Result_4_CYAND_8867
    );
  nes_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => nes_Result_4_CYMUXG2_8865,
      IB => nes_Result_4_FASTCARRY_8866,
      SEL => nes_Result_4_CYAND_8867,
      O => nes_Result_4_CYMUXFAST_8868
    );
  nes_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y29"
    )
    port map (
      IA => nes_Result_4_LOGIC_ZERO_8863,
      IB => nes_Result_4_CYMUXF2_8864,
      SEL => nes_Result_4_CYSELG_8854,
      O => nes_Result_4_CYMUXG2_8865
    );
  nes_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_4_G,
      O => nes_Result_4_CYSELG_8854
    );
  nes_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      O => nes_Result_6_LOGIC_ZERO_8901
    );
  nes_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_XORF_8921,
      O => nes_Result(6)
    );
  nes_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      I0 => nes_Result_6_CYINIT_8920,
      I1 => nes_Result_6_F,
      O => nes_Result_6_XORF_8921
    );
  nes_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_8901,
      IB => nes_Result_6_CYINIT_8920,
      SEL => nes_Result_6_CYSELF_8907,
      O => nes_Mcount_counter_reg_cy_6_Q
    );
  nes_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_8901,
      IB => nes_Result_6_LOGIC_ZERO_8901,
      SEL => nes_Result_6_CYSELF_8907,
      O => nes_Result_6_CYMUXF2_8902
    );
  nes_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_5_Q,
      O => nes_Result_6_CYINIT_8920
    );
  nes_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_F,
      O => nes_Result_6_CYSELF_8907
    );
  nes_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_XORG_8909,
      O => nes_Result(7)
    );
  nes_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_6_Q,
      I1 => nes_Result_6_G,
      O => nes_Result_6_XORG_8909
    );
  nes_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_cy_5_Q,
      O => nes_Result_6_FASTCARRY_8904
    );
  nes_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      I0 => nes_Result_6_CYSELG_8892,
      I1 => nes_Result_6_CYSELF_8907,
      O => nes_Result_6_CYAND_8905
    );
  nes_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => nes_Result_6_CYMUXG2_8903,
      IB => nes_Result_6_FASTCARRY_8904,
      SEL => nes_Result_6_CYAND_8905,
      O => nes_Result_6_CYMUXFAST_8906
    );
  nes_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y30"
    )
    port map (
      IA => nes_Result_6_LOGIC_ZERO_8901,
      IB => nes_Result_6_CYMUXF2_8902,
      SEL => nes_Result_6_CYSELG_8892,
      O => nes_Result_6_CYMUXG2_8903
    );
  nes_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_G,
      O => nes_Result_6_CYSELG_8892
    );
  nes_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      O => nes_Result_8_LOGIC_ZERO_8951
    );
  nes_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_XORF_8952,
      O => nes_Result(8)
    );
  nes_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      I0 => nes_Result_8_CYINIT_8950,
      I1 => nes_Result_8_F,
      O => nes_Result_8_XORF_8952
    );
  nes_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      IA => nes_Result_8_LOGIC_ZERO_8951,
      IB => nes_Result_8_CYINIT_8950,
      SEL => nes_Result_8_CYSELF_8941,
      O => nes_Mcount_counter_reg_cy_8_Q
    );
  nes_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_6_CYMUXFAST_8906,
      O => nes_Result_8_CYINIT_8950
    );
  nes_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_F,
      O => nes_Result_8_CYSELF_8941
    );
  nes_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Result_8_XORG_8938,
      O => nes_Result(9)
    );
  nes_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y31"
    )
    port map (
      I0 => nes_Mcount_counter_reg_cy_8_Q,
      I1 => nes_counter_reg_9_rt_8935,
      O => nes_Result_8_XORG_8938
    );
  nes_counter_reg_9_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y31"
    )
    port map (
      ADR0 => nes_counter_reg(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_counter_reg_9_rt_8935
    );
  U3_Q_0_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_SRINV_8963,
      O => U3_Q_0_FFY_RST
    );
  U3_q_1 : X_FF
    generic map(
      LOC => "SLICE_X37Y75",
      INIT => '0'
    )
    port map (
      I => U3_Q_0_DYMUX_8979,
      CE => VCC,
      CLK => U3_Q_0_CLKINV_8962,
      SET => GND,
      RST => U3_Q_0_FFY_RST,
      O => U3_Q_1_5081
    );
  U3_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X37Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_Q_0_5080,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_q_lut(0)
    );
  U3_Q_0_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_SRINV_8963,
      O => U3_Q_0_FFX_RST
    );
  U3_q_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y75",
      INIT => '0'
    )
    port map (
      I => U3_Q_0_DXMUX_9001,
      CE => VCC,
      CLK => U3_Q_0_CLKINV_8962,
      SET => GND,
      RST => U3_Q_0_FFX_RST,
      O => U3_Q_0_5080
    );
  U3_Q_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y75"
    )
    port map (
      O => U3_Q_0_LOGIC_ZERO_8974
    );
  U3_Q_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X37Y75"
    )
    port map (
      O => U3_Q_0_LOGIC_ONE_8998
    );
  U3_Q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_XORF_8999,
      O => U3_Q_0_DXMUX_9001
    );
  U3_Q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y75"
    )
    port map (
      I0 => U3_Q_0_CYINIT_8997,
      I1 => U3_Mcount_q_lut(0),
      O => U3_Q_0_XORF_8999
    );
  U3_Q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y75"
    )
    port map (
      IA => U3_Q_0_LOGIC_ONE_8998,
      IB => U3_Q_0_CYINIT_8997,
      SEL => U3_Q_0_CYSELF_8988,
      O => U3_Mcount_q_cy_0_Q
    );
  U3_Q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_BXINV_8986,
      O => U3_Q_0_CYINIT_8997
    );
  U3_Q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_lut(0),
      O => U3_Q_0_CYSELF_8988
    );
  U3_Q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U3_Q_0_BXINV_8986
    );
  U3_Q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_XORG_8977,
      O => U3_Q_0_DYMUX_8979
    );
  U3_Q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y75"
    )
    port map (
      I0 => U3_Mcount_q_cy_0_Q,
      I1 => U3_Q_0_G,
      O => U3_Q_0_XORG_8977
    );
  U3_Q_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_CYMUXG_8976,
      O => U3_Mcount_q_cy_1_Q
    );
  U3_Q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X37Y75"
    )
    port map (
      IA => U3_Q_0_LOGIC_ZERO_8974,
      IB => U3_Mcount_q_cy_0_Q,
      SEL => U3_Q_0_CYSELG_8965,
      O => U3_Q_0_CYMUXG_8976
    );
  U3_Q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_0_G,
      O => U3_Q_0_CYSELG_8965
    );
  U3_Q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_0_SRINV_8963
    );
  U3_Q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y75",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_0_CLKINV_8962
    );
  U3_Q_2_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_SRINV_9017,
      O => U3_Q_2_FFY_RST
    );
  U3_q_3 : X_FF
    generic map(
      LOC => "SLICE_X37Y76",
      INIT => '0'
    )
    port map (
      I => U3_Q_2_DYMUX_9038,
      CE => VCC,
      CLK => U3_Q_2_CLKINV_9016,
      SET => GND,
      RST => U3_Q_2_FFY_RST,
      O => U3_Q_3_5084
    );
  U3_Q_2_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_SRINV_9017,
      O => U3_Q_2_FFX_RST
    );
  U3_q_2 : X_FF
    generic map(
      LOC => "SLICE_X37Y76",
      INIT => '0'
    )
    port map (
      I => U3_Q_2_DXMUX_9057,
      CE => VCC,
      CLK => U3_Q_2_CLKINV_9016,
      SET => GND,
      RST => U3_Q_2_FFX_RST,
      O => U3_Q_2_5083
    );
  U3_Q_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      O => U3_Q_2_LOGIC_ZERO_9028
    );
  U3_Q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_XORF_9055,
      O => U3_Q_2_DXMUX_9057
    );
  U3_Q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      I0 => U3_Q_2_CYINIT_9054,
      I1 => U3_Q_2_F,
      O => U3_Q_2_XORF_9055
    );
  U3_Q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      IA => U3_Q_2_LOGIC_ZERO_9028,
      IB => U3_Q_2_CYINIT_9054,
      SEL => U3_Q_2_CYSELF_9034,
      O => U3_Mcount_q_cy_2_Q
    );
  U3_Q_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      IA => U3_Q_2_LOGIC_ZERO_9028,
      IB => U3_Q_2_LOGIC_ZERO_9028,
      SEL => U3_Q_2_CYSELF_9034,
      O => U3_Q_2_CYMUXF2_9029
    );
  U3_Q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_1_Q,
      O => U3_Q_2_CYINIT_9054
    );
  U3_Q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_F,
      O => U3_Q_2_CYSELF_9034
    );
  U3_Q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_XORG_9036,
      O => U3_Q_2_DYMUX_9038
    );
  U3_Q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      I0 => U3_Mcount_q_cy_2_Q,
      I1 => U3_Q_2_G,
      O => U3_Q_2_XORG_9036
    );
  U3_Q_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_CYMUXFAST_9033,
      O => U3_Mcount_q_cy_3_Q
    );
  U3_Q_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_1_Q,
      O => U3_Q_2_FASTCARRY_9031
    );
  U3_Q_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      I0 => U3_Q_2_CYSELG_9019,
      I1 => U3_Q_2_CYSELF_9034,
      O => U3_Q_2_CYAND_9032
    );
  U3_Q_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      IA => U3_Q_2_CYMUXG2_9030,
      IB => U3_Q_2_FASTCARRY_9031,
      SEL => U3_Q_2_CYAND_9032,
      O => U3_Q_2_CYMUXFAST_9033
    );
  U3_Q_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y76"
    )
    port map (
      IA => U3_Q_2_LOGIC_ZERO_9028,
      IB => U3_Q_2_CYMUXF2_9029,
      SEL => U3_Q_2_CYSELG_9019,
      O => U3_Q_2_CYMUXG2_9030
    );
  U3_Q_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_2_G,
      O => U3_Q_2_CYSELG_9019
    );
  U3_Q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_2_SRINV_9017
    );
  U3_Q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y76",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_2_CLKINV_9016
    );
  U3_Q_4_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_SRINV_9073,
      O => U3_Q_4_FFY_RST
    );
  U3_q_5 : X_FF
    generic map(
      LOC => "SLICE_X37Y77",
      INIT => '0'
    )
    port map (
      I => U3_Q_4_DYMUX_9094,
      CE => VCC,
      CLK => U3_Q_4_CLKINV_9072,
      SET => GND,
      RST => U3_Q_4_FFY_RST,
      O => U3_Q_5_5087
    );
  U3_Q_4_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_SRINV_9073,
      O => U3_Q_4_FFX_RST
    );
  U3_q_4 : X_FF
    generic map(
      LOC => "SLICE_X37Y77",
      INIT => '0'
    )
    port map (
      I => U3_Q_4_DXMUX_9113,
      CE => VCC,
      CLK => U3_Q_4_CLKINV_9072,
      SET => GND,
      RST => U3_Q_4_FFX_RST,
      O => U3_Q_4_5086
    );
  U3_Q_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      O => U3_Q_4_LOGIC_ZERO_9084
    );
  U3_Q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_XORF_9111,
      O => U3_Q_4_DXMUX_9113
    );
  U3_Q_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      I0 => U3_Q_4_CYINIT_9110,
      I1 => U3_Q_4_F,
      O => U3_Q_4_XORF_9111
    );
  U3_Q_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      IA => U3_Q_4_LOGIC_ZERO_9084,
      IB => U3_Q_4_CYINIT_9110,
      SEL => U3_Q_4_CYSELF_9090,
      O => U3_Mcount_q_cy_4_Q
    );
  U3_Q_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      IA => U3_Q_4_LOGIC_ZERO_9084,
      IB => U3_Q_4_LOGIC_ZERO_9084,
      SEL => U3_Q_4_CYSELF_9090,
      O => U3_Q_4_CYMUXF2_9085
    );
  U3_Q_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_3_Q,
      O => U3_Q_4_CYINIT_9110
    );
  U3_Q_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_F,
      O => U3_Q_4_CYSELF_9090
    );
  U3_Q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_XORG_9092,
      O => U3_Q_4_DYMUX_9094
    );
  U3_Q_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      I0 => U3_Mcount_q_cy_4_Q,
      I1 => U3_Q_4_G,
      O => U3_Q_4_XORG_9092
    );
  U3_Q_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_CYMUXFAST_9089,
      O => U3_Mcount_q_cy_5_Q
    );
  U3_Q_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_3_Q,
      O => U3_Q_4_FASTCARRY_9087
    );
  U3_Q_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      I0 => U3_Q_4_CYSELG_9075,
      I1 => U3_Q_4_CYSELF_9090,
      O => U3_Q_4_CYAND_9088
    );
  U3_Q_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      IA => U3_Q_4_CYMUXG2_9086,
      IB => U3_Q_4_FASTCARRY_9087,
      SEL => U3_Q_4_CYAND_9088,
      O => U3_Q_4_CYMUXFAST_9089
    );
  U3_Q_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y77"
    )
    port map (
      IA => U3_Q_4_LOGIC_ZERO_9084,
      IB => U3_Q_4_CYMUXF2_9085,
      SEL => U3_Q_4_CYSELG_9075,
      O => U3_Q_4_CYMUXG2_9086
    );
  U3_Q_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_4_G,
      O => U3_Q_4_CYSELG_9075
    );
  U3_Q_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_4_SRINV_9073
    );
  U3_Q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y77",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_4_CLKINV_9072
    );
  U3_Q_6_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_SRINV_9129,
      O => U3_Q_6_FFY_RST
    );
  U3_q_7 : X_FF
    generic map(
      LOC => "SLICE_X37Y78",
      INIT => '0'
    )
    port map (
      I => U3_Q_6_DYMUX_9150,
      CE => VCC,
      CLK => U3_Q_6_CLKINV_9128,
      SET => GND,
      RST => U3_Q_6_FFY_RST,
      O => U3_Q_7_5090
    );
  U3_Q_6_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_SRINV_9129,
      O => U3_Q_6_FFX_RST
    );
  U3_q_6 : X_FF
    generic map(
      LOC => "SLICE_X37Y78",
      INIT => '0'
    )
    port map (
      I => U3_Q_6_DXMUX_9169,
      CE => VCC,
      CLK => U3_Q_6_CLKINV_9128,
      SET => GND,
      RST => U3_Q_6_FFX_RST,
      O => U3_Q_6_5089
    );
  U3_Q_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      O => U3_Q_6_LOGIC_ZERO_9140
    );
  U3_Q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_XORF_9167,
      O => U3_Q_6_DXMUX_9169
    );
  U3_Q_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      I0 => U3_Q_6_CYINIT_9166,
      I1 => U3_Q_6_F,
      O => U3_Q_6_XORF_9167
    );
  U3_Q_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      IA => U3_Q_6_LOGIC_ZERO_9140,
      IB => U3_Q_6_CYINIT_9166,
      SEL => U3_Q_6_CYSELF_9146,
      O => U3_Mcount_q_cy_6_Q
    );
  U3_Q_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      IA => U3_Q_6_LOGIC_ZERO_9140,
      IB => U3_Q_6_LOGIC_ZERO_9140,
      SEL => U3_Q_6_CYSELF_9146,
      O => U3_Q_6_CYMUXF2_9141
    );
  U3_Q_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_5_Q,
      O => U3_Q_6_CYINIT_9166
    );
  U3_Q_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_F,
      O => U3_Q_6_CYSELF_9146
    );
  U3_Q_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_XORG_9148,
      O => U3_Q_6_DYMUX_9150
    );
  U3_Q_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      I0 => U3_Mcount_q_cy_6_Q,
      I1 => U3_Q_6_G,
      O => U3_Q_6_XORG_9148
    );
  U3_Q_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_CYMUXFAST_9145,
      O => U3_Mcount_q_cy_7_Q
    );
  U3_Q_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_5_Q,
      O => U3_Q_6_FASTCARRY_9143
    );
  U3_Q_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      I0 => U3_Q_6_CYSELG_9131,
      I1 => U3_Q_6_CYSELF_9146,
      O => U3_Q_6_CYAND_9144
    );
  U3_Q_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      IA => U3_Q_6_CYMUXG2_9142,
      IB => U3_Q_6_FASTCARRY_9143,
      SEL => U3_Q_6_CYAND_9144,
      O => U3_Q_6_CYMUXFAST_9145
    );
  U3_Q_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y78"
    )
    port map (
      IA => U3_Q_6_LOGIC_ZERO_9140,
      IB => U3_Q_6_CYMUXF2_9141,
      SEL => U3_Q_6_CYSELG_9131,
      O => U3_Q_6_CYMUXG2_9142
    );
  U3_Q_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_6_G,
      O => U3_Q_6_CYSELG_9131
    );
  U3_Q_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_6_SRINV_9129
    );
  U3_Q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_6_CLKINV_9128
    );
  U3_Q_8_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_SRINV_9185,
      O => U3_Q_8_FFY_RST
    );
  U3_q_9 : X_FF
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => '0'
    )
    port map (
      I => U3_Q_8_DYMUX_9206,
      CE => VCC,
      CLK => U3_Q_8_CLKINV_9184,
      SET => GND,
      RST => U3_Q_8_FFY_RST,
      O => U3_Q_9_5093
    );
  U3_Q_8_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_SRINV_9185,
      O => U3_Q_8_FFX_RST
    );
  U3_q_8 : X_FF
    generic map(
      LOC => "SLICE_X37Y79",
      INIT => '0'
    )
    port map (
      I => U3_Q_8_DXMUX_9225,
      CE => VCC,
      CLK => U3_Q_8_CLKINV_9184,
      SET => GND,
      RST => U3_Q_8_FFX_RST,
      O => U3_Q_8_5092
    );
  U3_Q_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      O => U3_Q_8_LOGIC_ZERO_9196
    );
  U3_Q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_XORF_9223,
      O => U3_Q_8_DXMUX_9225
    );
  U3_Q_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      I0 => U3_Q_8_CYINIT_9222,
      I1 => U3_Q_8_F,
      O => U3_Q_8_XORF_9223
    );
  U3_Q_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      IA => U3_Q_8_LOGIC_ZERO_9196,
      IB => U3_Q_8_CYINIT_9222,
      SEL => U3_Q_8_CYSELF_9202,
      O => U3_Mcount_q_cy_8_Q
    );
  U3_Q_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      IA => U3_Q_8_LOGIC_ZERO_9196,
      IB => U3_Q_8_LOGIC_ZERO_9196,
      SEL => U3_Q_8_CYSELF_9202,
      O => U3_Q_8_CYMUXF2_9197
    );
  U3_Q_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_7_Q,
      O => U3_Q_8_CYINIT_9222
    );
  U3_Q_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_F,
      O => U3_Q_8_CYSELF_9202
    );
  U3_Q_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_XORG_9204,
      O => U3_Q_8_DYMUX_9206
    );
  U3_Q_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      I0 => U3_Mcount_q_cy_8_Q,
      I1 => U3_Q_8_G,
      O => U3_Q_8_XORG_9204
    );
  U3_Q_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_CYMUXFAST_9201,
      O => U3_Mcount_q_cy_9_Q
    );
  U3_Q_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_7_Q,
      O => U3_Q_8_FASTCARRY_9199
    );
  U3_Q_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      I0 => U3_Q_8_CYSELG_9187,
      I1 => U3_Q_8_CYSELF_9202,
      O => U3_Q_8_CYAND_9200
    );
  U3_Q_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      IA => U3_Q_8_CYMUXG2_9198,
      IB => U3_Q_8_FASTCARRY_9199,
      SEL => U3_Q_8_CYAND_9200,
      O => U3_Q_8_CYMUXFAST_9201
    );
  U3_Q_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y79"
    )
    port map (
      IA => U3_Q_8_LOGIC_ZERO_9196,
      IB => U3_Q_8_CYMUXF2_9197,
      SEL => U3_Q_8_CYSELG_9187,
      O => U3_Q_8_CYMUXG2_9198
    );
  U3_Q_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_8_G,
      O => U3_Q_8_CYSELG_9187
    );
  U3_Q_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_8_SRINV_9185
    );
  U3_Q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y79",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_8_CLKINV_9184
    );
  U3_Q_10_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_SRINV_9241,
      O => U3_Q_10_FFY_RST
    );
  U3_q_11 : X_FF
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => '0'
    )
    port map (
      I => U3_Q_10_DYMUX_9262,
      CE => VCC,
      CLK => U3_Q_10_CLKINV_9240,
      SET => GND,
      RST => U3_Q_10_FFY_RST,
      O => U3_Q_11_5096
    );
  U3_Q_10_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_SRINV_9241,
      O => U3_Q_10_FFX_RST
    );
  U3_q_10 : X_FF
    generic map(
      LOC => "SLICE_X37Y80",
      INIT => '0'
    )
    port map (
      I => U3_Q_10_DXMUX_9281,
      CE => VCC,
      CLK => U3_Q_10_CLKINV_9240,
      SET => GND,
      RST => U3_Q_10_FFX_RST,
      O => U3_Q_10_5095
    );
  U3_Q_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      O => U3_Q_10_LOGIC_ZERO_9252
    );
  U3_Q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_XORF_9279,
      O => U3_Q_10_DXMUX_9281
    );
  U3_Q_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      I0 => U3_Q_10_CYINIT_9278,
      I1 => U3_Q_10_F,
      O => U3_Q_10_XORF_9279
    );
  U3_Q_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      IA => U3_Q_10_LOGIC_ZERO_9252,
      IB => U3_Q_10_CYINIT_9278,
      SEL => U3_Q_10_CYSELF_9258,
      O => U3_Mcount_q_cy_10_Q
    );
  U3_Q_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      IA => U3_Q_10_LOGIC_ZERO_9252,
      IB => U3_Q_10_LOGIC_ZERO_9252,
      SEL => U3_Q_10_CYSELF_9258,
      O => U3_Q_10_CYMUXF2_9253
    );
  U3_Q_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_9_Q,
      O => U3_Q_10_CYINIT_9278
    );
  U3_Q_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_F,
      O => U3_Q_10_CYSELF_9258
    );
  U3_Q_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_XORG_9260,
      O => U3_Q_10_DYMUX_9262
    );
  U3_Q_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      I0 => U3_Mcount_q_cy_10_Q,
      I1 => U3_Q_10_G,
      O => U3_Q_10_XORG_9260
    );
  U3_Q_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_CYMUXFAST_9257,
      O => U3_Mcount_q_cy_11_Q
    );
  U3_Q_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_9_Q,
      O => U3_Q_10_FASTCARRY_9255
    );
  U3_Q_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      I0 => U3_Q_10_CYSELG_9243,
      I1 => U3_Q_10_CYSELF_9258,
      O => U3_Q_10_CYAND_9256
    );
  U3_Q_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      IA => U3_Q_10_CYMUXG2_9254,
      IB => U3_Q_10_FASTCARRY_9255,
      SEL => U3_Q_10_CYAND_9256,
      O => U3_Q_10_CYMUXFAST_9257
    );
  U3_Q_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y80"
    )
    port map (
      IA => U3_Q_10_LOGIC_ZERO_9252,
      IB => U3_Q_10_CYMUXF2_9253,
      SEL => U3_Q_10_CYSELG_9243,
      O => U3_Q_10_CYMUXG2_9254
    );
  U3_Q_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_10_G,
      O => U3_Q_10_CYSELG_9243
    );
  U3_Q_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_10_SRINV_9241
    );
  U3_Q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_10_CLKINV_9240
    );
  U3_Q_12_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_SRINV_9297,
      O => U3_Q_12_FFY_RST
    );
  U3_q_13 : X_FF
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => '0'
    )
    port map (
      I => U3_Q_12_DYMUX_9318,
      CE => VCC,
      CLK => U3_Q_12_CLKINV_9296,
      SET => GND,
      RST => U3_Q_12_FFY_RST,
      O => U3_Q_13_5099
    );
  U3_Q_12_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_SRINV_9297,
      O => U3_Q_12_FFX_RST
    );
  U3_q_12 : X_FF
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => '0'
    )
    port map (
      I => U3_Q_12_DXMUX_9337,
      CE => VCC,
      CLK => U3_Q_12_CLKINV_9296,
      SET => GND,
      RST => U3_Q_12_FFX_RST,
      O => U3_Q_12_5098
    );
  U3_Q_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      O => U3_Q_12_LOGIC_ZERO_9308
    );
  U3_Q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_XORF_9335,
      O => U3_Q_12_DXMUX_9337
    );
  U3_Q_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      I0 => U3_Q_12_CYINIT_9334,
      I1 => U3_Q_12_F,
      O => U3_Q_12_XORF_9335
    );
  U3_Q_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      IA => U3_Q_12_LOGIC_ZERO_9308,
      IB => U3_Q_12_CYINIT_9334,
      SEL => U3_Q_12_CYSELF_9314,
      O => U3_Mcount_q_cy_12_Q
    );
  U3_Q_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      IA => U3_Q_12_LOGIC_ZERO_9308,
      IB => U3_Q_12_LOGIC_ZERO_9308,
      SEL => U3_Q_12_CYSELF_9314,
      O => U3_Q_12_CYMUXF2_9309
    );
  U3_Q_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_11_Q,
      O => U3_Q_12_CYINIT_9334
    );
  U3_Q_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_F,
      O => U3_Q_12_CYSELF_9314
    );
  U3_Q_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_XORG_9316,
      O => U3_Q_12_DYMUX_9318
    );
  U3_Q_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      I0 => U3_Mcount_q_cy_12_Q,
      I1 => U3_Q_12_G,
      O => U3_Q_12_XORG_9316
    );
  U3_Q_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_CYMUXFAST_9313,
      O => U3_Mcount_q_cy_13_Q
    );
  U3_Q_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_11_Q,
      O => U3_Q_12_FASTCARRY_9311
    );
  U3_Q_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      I0 => U3_Q_12_CYSELG_9299,
      I1 => U3_Q_12_CYSELF_9314,
      O => U3_Q_12_CYAND_9312
    );
  U3_Q_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      IA => U3_Q_12_CYMUXG2_9310,
      IB => U3_Q_12_FASTCARRY_9311,
      SEL => U3_Q_12_CYAND_9312,
      O => U3_Q_12_CYMUXFAST_9313
    );
  U3_Q_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y81"
    )
    port map (
      IA => U3_Q_12_LOGIC_ZERO_9308,
      IB => U3_Q_12_CYMUXF2_9309,
      SEL => U3_Q_12_CYSELG_9299,
      O => U3_Q_12_CYMUXG2_9310
    );
  U3_Q_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_12_G,
      O => U3_Q_12_CYSELG_9299
    );
  U3_Q_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_12_SRINV_9297
    );
  U3_Q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y81",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_12_CLKINV_9296
    );
  U3_Q_14_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_SRINV_9353,
      O => U3_Q_14_FFY_RST
    );
  U3_q_15 : X_FF
    generic map(
      LOC => "SLICE_X37Y82",
      INIT => '0'
    )
    port map (
      I => U3_Q_14_DYMUX_9374,
      CE => VCC,
      CLK => U3_Q_14_CLKINV_9352,
      SET => GND,
      RST => U3_Q_14_FFY_RST,
      O => U3_Q_15_5102
    );
  U3_Q_14_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_SRINV_9353,
      O => U3_Q_14_FFX_RST
    );
  U3_q_14 : X_FF
    generic map(
      LOC => "SLICE_X37Y82",
      INIT => '0'
    )
    port map (
      I => U3_Q_14_DXMUX_9393,
      CE => VCC,
      CLK => U3_Q_14_CLKINV_9352,
      SET => GND,
      RST => U3_Q_14_FFX_RST,
      O => U3_Q_14_5101
    );
  U3_Q_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      O => U3_Q_14_LOGIC_ZERO_9364
    );
  U3_Q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_XORF_9391,
      O => U3_Q_14_DXMUX_9393
    );
  U3_Q_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      I0 => U3_Q_14_CYINIT_9390,
      I1 => U3_Q_14_F,
      O => U3_Q_14_XORF_9391
    );
  U3_Q_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      IA => U3_Q_14_LOGIC_ZERO_9364,
      IB => U3_Q_14_CYINIT_9390,
      SEL => U3_Q_14_CYSELF_9370,
      O => U3_Mcount_q_cy_14_Q
    );
  U3_Q_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      IA => U3_Q_14_LOGIC_ZERO_9364,
      IB => U3_Q_14_LOGIC_ZERO_9364,
      SEL => U3_Q_14_CYSELF_9370,
      O => U3_Q_14_CYMUXF2_9365
    );
  U3_Q_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_13_Q,
      O => U3_Q_14_CYINIT_9390
    );
  U3_Q_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_F,
      O => U3_Q_14_CYSELF_9370
    );
  U3_Q_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_XORG_9372,
      O => U3_Q_14_DYMUX_9374
    );
  U3_Q_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      I0 => U3_Mcount_q_cy_14_Q,
      I1 => U3_Q_14_G,
      O => U3_Q_14_XORG_9372
    );
  U3_Q_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mcount_q_cy_13_Q,
      O => U3_Q_14_FASTCARRY_9367
    );
  U3_Q_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      I0 => U3_Q_14_CYSELG_9355,
      I1 => U3_Q_14_CYSELF_9370,
      O => U3_Q_14_CYAND_9368
    );
  U3_Q_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      IA => U3_Q_14_CYMUXG2_9366,
      IB => U3_Q_14_FASTCARRY_9367,
      SEL => U3_Q_14_CYAND_9368,
      O => U3_Q_14_CYMUXFAST_9369
    );
  U3_Q_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y82"
    )
    port map (
      IA => U3_Q_14_LOGIC_ZERO_9364,
      IB => U3_Q_14_CYMUXF2_9365,
      SEL => U3_Q_14_CYSELG_9355,
      O => U3_Q_14_CYMUXG2_9366
    );
  U3_Q_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_G,
      O => U3_Q_14_CYSELG_9355
    );
  U3_Q_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_14_SRINV_9353
    );
  U3_Q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y82",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_14_CLKINV_9352
    );
  U3_Q_16_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_SRINV_9408,
      O => U3_Q_16_FFX_RST
    );
  U3_q_16 : X_FF
    generic map(
      LOC => "SLICE_X37Y83",
      INIT => '0'
    )
    port map (
      I => U3_Q_16_DXMUX_9442,
      CE => VCC,
      CLK => U3_Q_16_CLKINV_9407,
      SET => GND,
      RST => U3_Q_16_FFX_RST,
      O => U3_Q_16_5104
    );
  U3_Q_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X37Y83"
    )
    port map (
      O => U3_Q_16_LOGIC_ZERO_9439
    );
  U3_Q_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_XORF_9440,
      O => U3_Q_16_DXMUX_9442
    );
  U3_Q_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X37Y83"
    )
    port map (
      I0 => U3_Q_16_CYINIT_9438,
      I1 => U3_Q_16_F,
      O => U3_Q_16_XORF_9440
    );
  U3_Q_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X37Y83"
    )
    port map (
      IA => U3_Q_16_LOGIC_ZERO_9439,
      IB => U3_Q_16_CYINIT_9438,
      SEL => U3_Q_16_CYSELF_9429,
      O => U3_Mcount_q_cy_16_Q
    );
  U3_Q_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_14_CYMUXFAST_9369,
      O => U3_Q_16_CYINIT_9438
    );
  U3_Q_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_F,
      O => U3_Q_16_CYSELF_9429
    );
  U3_Q_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Q_16_XORG_9419,
      O => U3_Q_16_DYMUX_9421
    );
  U3_Q_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X37Y83"
    )
    port map (
      I0 => U3_Mcount_q_cy_16_Q,
      I1 => U3_q_171_rt_9416,
      O => U3_Q_16_XORG_9419
    );
  U3_Q_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U3_Q_16_SRINV_9408
    );
  U3_Q_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U3_Q_16_CLKINV_9407
    );
  U3_q_17 : X_FF
    generic map(
      LOC => "SLICE_X37Y83",
      INIT => '0'
    )
    port map (
      I => U3_Q_16_DYMUX_9421,
      CE => VCC,
      CLK => U3_Q_16_CLKINV_9407,
      SET => GND,
      RST => U3_Q_16_SRINV_9408,
      O => U3_q_171
    );
  U3_q_171_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X37Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_q_171,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_q_171_rt_9416
    );
  U3_Mmux_M2a_mux0000_6 : X_LUT4
    generic map(
      INIT => X"5010",
      LOC => "SLICE_X30Y36"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => rom1_addr_4_0,
      ADR2 => M1a_1_7_0,
      ADR3 => M1a_1_21_0,
      O => U3_Mmux_M2a_mux0000_6_9476
    );
  U3_Mmux_M2a_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_5_f5_F5MUX_9478,
      O => U3_Mmux_M2a_mux0000_5_f5
    );
  U3_Mmux_M2a_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y36"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_7_9468,
      IB => U3_Mmux_M2a_mux0000_6_9476,
      SEL => U3_Mmux_M2a_mux0000_5_f5_BXINV_9471,
      O => U3_Mmux_M2a_mux0000_5_f5_F5MUX_9478
    );
  U3_Mmux_M2a_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_5_f5_BXINV_9471
    );
  U3_Mmux_M2a_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_5_f5_F6MUX_9470,
      O => U3_Mmux_M2a_mux0000_4_f6
    );
  U3_Mmux_M2a_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y36"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_6_f5,
      IB => U3_Mmux_M2a_mux0000_5_f5,
      SEL => U3_Mmux_M2a_mux0000_5_f5_BYINV_9462,
      O => U3_Mmux_M2a_mux0000_5_f5_F6MUX_9470
    );
  U3_Mmux_M2a_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_5_f5_BYINV_9462
    );
  U3_Mmux_M2a_mux0000_7 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X30Y36"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M2a_28_Q,
      ADR2 => VCC,
      ADR3 => M2a_29_Q,
      O => U3_Mmux_M2a_mux0000_7_9468
    );
  U3_Mmux_M2a_mux0000_71 : X_LUT4
    generic map(
      INIT => X"DD11",
      LOC => "SLICE_X30Y37"
    )
    port map (
      ADR0 => M1a_4_bdd0_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => VCC,
      ADR3 => N246,
      O => U3_Mmux_M2a_mux0000_71_9506
    );
  U3_Mmux_M2a_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X30Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f5_F5MUX_9508,
      O => U3_Mmux_M2a_mux0000_6_f5
    );
  U3_Mmux_M2a_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y37"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_8_9497,
      IB => U3_Mmux_M2a_mux0000_71_9506,
      SEL => U3_Mmux_M2a_mux0000_6_f5_BXINV_9500,
      O => U3_Mmux_M2a_mux0000_6_f5_F5MUX_9508
    );
  U3_Mmux_M2a_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f5_BXINV_9500
    );
  U3_Mmux_M2a_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f5_F6MUX_9499,
      O => U3_Mmux_M2a_mux0000_3_f7
    );
  U3_Mmux_M2a_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y37"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_5_f6,
      IB => U3_Mmux_M2a_mux0000_4_f6,
      SEL => U3_Mmux_M2a_mux0000_6_f5_BYINV_9491,
      O => U3_Mmux_M2a_mux0000_6_f5_F6MUX_9499
    );
  U3_Mmux_M2a_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_6_f5_BYINV_9491
    );
  U3_Mmux_M2a_mux0000_8 : X_LUT4
    generic map(
      INIT => X"D1D1",
      LOC => "SLICE_X30Y37"
    )
    port map (
      ADR0 => M1a_4_bdd0_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => N248,
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_8_9497
    );
  U3_Mmux_M2a_mux0000_73 : X_LUT4
    generic map(
      INIT => X"D1D1",
      LOC => "SLICE_X30Y38"
    )
    port map (
      ADR0 => M1a_14_bdd0_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => N332,
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_73_9536
    );
  U3_Mmux_M2a_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X30Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f52_F5MUX_9538,
      O => U3_Mmux_M2a_mux0000_6_f52
    );
  U3_Mmux_M2a_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y38"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_83_9527,
      IB => U3_Mmux_M2a_mux0000_73_9536,
      SEL => U3_Mmux_M2a_mux0000_6_f52_BXINV_9530,
      O => U3_Mmux_M2a_mux0000_6_f52_F5MUX_9538
    );
  U3_Mmux_M2a_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f52_BXINV_9530
    );
  U3_Mmux_M2a_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f52_F6MUX_9529,
      O => U3_Mmux_M2a_mux0000_5_f61
    );
  U3_Mmux_M2a_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y38"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_7_f51,
      IB => U3_Mmux_M2a_mux0000_6_f52,
      SEL => U3_Mmux_M2a_mux0000_6_f52_BYINV_9521,
      O => U3_Mmux_M2a_mux0000_6_f52_F6MUX_9529
    );
  U3_Mmux_M2a_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f52_BYINV_9521
    );
  U3_Mmux_M2a_mux0000_83 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X30Y38"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M2a_13_Q,
      ADR2 => VCC,
      ADR3 => M2a_12_Q,
      O => U3_Mmux_M2a_mux0000_83_9527
    );
  U3_Mmux_M2a_mux0000_84 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X30Y39"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M2a_10_Q,
      ADR2 => M1a_20_Q,
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_84_9566
    );
  U3_Mmux_M2a_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X30Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f51_F5MUX_9568,
      O => U3_Mmux_M2a_mux0000_7_f51
    );
  U3_Mmux_M2a_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y39"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_91_9557,
      IB => U3_Mmux_M2a_mux0000_84_9566,
      SEL => U3_Mmux_M2a_mux0000_7_f51_BXINV_9560,
      O => U3_Mmux_M2a_mux0000_7_f51_F5MUX_9568
    );
  U3_Mmux_M2a_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f51_BXINV_9560
    );
  U3_Mmux_M2a_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f51_F6MUX_9559,
      O => U3_Mmux_M2a_mux0000_4_f7
    );
  U3_Mmux_M2a_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y39"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_6_f6,
      IB => U3_Mmux_M2a_mux0000_5_f61,
      SEL => U3_Mmux_M2a_mux0000_7_f51_BYINV_9551,
      O => U3_Mmux_M2a_mux0000_7_f51_F6MUX_9559
    );
  U3_Mmux_M2a_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2a_mux0000_7_f51_BYINV_9551
    );
  U3_Mmux_M2a_mux0000_91 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X30Y39"
    )
    port map (
      ADR0 => M2a_9_0,
      ADR1 => U3_xpix2(0),
      ADR2 => M2a_8_0,
      ADR3 => VCC,
      O => U3_Mmux_M2a_mux0000_91_9557
    );
  U3_Mmux_M2a_mux0000_72 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X31Y36"
    )
    port map (
      ADR0 => M1a_8_Q,
      ADR1 => M2a_22_Q,
      ADR2 => VCC,
      ADR3 => U3_xpix2(0),
      O => U3_Mmux_M2a_mux0000_72_9596
    );
  U3_Mmux_M2a_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X31Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f51_F5MUX_9598,
      O => U3_Mmux_M2a_mux0000_6_f51
    );
  U3_Mmux_M2a_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y36"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_81_9587,
      IB => U3_Mmux_M2a_mux0000_72_9596,
      SEL => U3_Mmux_M2a_mux0000_6_f51_BXINV_9590,
      O => U3_Mmux_M2a_mux0000_6_f51_F5MUX_9598
    );
  U3_Mmux_M2a_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_6_f51_BXINV_9590
    );
  U3_Mmux_M2a_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_6_f51_F6MUX_9589,
      O => U3_Mmux_M2a_mux0000_5_f6
    );
  U3_Mmux_M2a_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y36"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_7_f5,
      IB => U3_Mmux_M2a_mux0000_6_f51,
      SEL => U3_Mmux_M2a_mux0000_6_f51_BYINV_9581,
      O => U3_Mmux_M2a_mux0000_6_f51_F6MUX_9589
    );
  U3_Mmux_M2a_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_6_f51_BYINV_9581
    );
  U3_Mmux_M2a_mux0000_81 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X31Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_10_Q,
      ADR2 => M2a_20_Q,
      ADR3 => U3_xpix2(0),
      O => U3_Mmux_M2a_mux0000_81_9587
    );
  U3_Mmux_M2a_mux0000_82 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X31Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2a_19_0,
      ADR2 => M2a_18_Q,
      ADR3 => U3_xpix2(0),
      O => U3_Mmux_M2a_mux0000_82_9627
    );
  U3_M2a_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X31Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2a_mux0000_F5MUX_9629,
      O => U3_Mmux_M2a_mux0000_7_f5
    );
  U3_M2a_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y37"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_9_9617,
      IB => U3_Mmux_M2a_mux0000_82_9627,
      SEL => U3_M2a_mux0000_BXINV_9621,
      O => U3_M2a_mux0000_F5MUX_9629
    );
  U3_M2a_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_M2a_mux0000_BXINV_9621
    );
  U3_M2a_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2a_mux0000_F6MUX_9619,
      O => U3_M2a_mux0000
    );
  U3_M2a_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y37"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_4_f7,
      IB => U3_Mmux_M2a_mux0000_3_f7,
      SEL => U3_M2a_mux0000_BYINV_9611,
      O => U3_M2a_mux0000_F6MUX_9619
    );
  U3_M2a_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(4),
      O => U3_M2a_mux0000_BYINV_9611
    );
  U3_Mmux_M2a_mux0000_9 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X31Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_14_bdd0_0,
      ADR2 => rom1_addr_4_0,
      ADR3 => N330,
      O => U3_Mmux_M2a_mux0000_9_9617
    );
  U3_Mmux_M2a_mux0000_85 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X31Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2a_6_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => M2a_7_0,
      O => U3_Mmux_M2a_mux0000_85_9657
    );
  U3_Mmux_M2a_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X31Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f52_F5MUX_9659,
      O => U3_Mmux_M2a_mux0000_7_f52
    );
  U3_Mmux_M2a_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y38"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_92_9648,
      IB => U3_Mmux_M2a_mux0000_85_9657,
      SEL => U3_Mmux_M2a_mux0000_7_f52_BXINV_9651,
      O => U3_Mmux_M2a_mux0000_7_f52_F5MUX_9659
    );
  U3_Mmux_M2a_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_7_f52_BXINV_9651
    );
  U3_Mmux_M2a_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_7_f52_F6MUX_9650,
      O => U3_Mmux_M2a_mux0000_6_f6
    );
  U3_Mmux_M2a_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y38"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_8_f5,
      IB => U3_Mmux_M2a_mux0000_7_f52,
      SEL => U3_Mmux_M2a_mux0000_7_f52_BYINV_9642,
      O => U3_Mmux_M2a_mux0000_7_f52_F6MUX_9650
    );
  U3_Mmux_M2a_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2a_mux0000_7_f52_BYINV_9642
    );
  U3_Mmux_M2a_mux0000_92 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X31Y38"
    )
    port map (
      ADR0 => M2a_4_0,
      ADR1 => VCC,
      ADR2 => M2a_5_0,
      ADR3 => U3_xpix2(0),
      O => U3_Mmux_M2a_mux0000_92_9648
    );
  U3_Mmux_M2a_mux0000_93 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X31Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2a_2_0,
      ADR3 => M2a_3_Q,
      O => U3_Mmux_M2a_mux0000_93_9681
    );
  U3_Mmux_M2a_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X31Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2a_mux0000_8_f5_F5MUX_9683,
      O => U3_Mmux_M2a_mux0000_8_f5
    );
  U3_Mmux_M2a_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y39"
    )
    port map (
      IA => U3_Mmux_M2a_mux0000_10_9673,
      IB => U3_Mmux_M2a_mux0000_93_9681,
      SEL => U3_Mmux_M2a_mux0000_8_f5_BXINV_9675,
      O => U3_Mmux_M2a_mux0000_8_f5_F5MUX_9683
    );
  U3_Mmux_M2a_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2a_mux0000_8_f5_BXINV_9675
    );
  U3_Mmux_M2a_mux0000_10 : X_LUT4
    generic map(
      INIT => X"E000",
      LOC => "SLICE_X31Y39"
    )
    port map (
      ADR0 => M2a_1_36_0,
      ADR1 => rom1_addr(3),
      ADR2 => U3_xpix2(0),
      ADR3 => M2a_1_63_0,
      O => U3_Mmux_M2a_mux0000_10_9673
    );
  U3_Mmux_M2_mux0000_6 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X26Y40"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M1_0_0,
      ADR2 => M1_1_Q,
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_6_9711
    );
  U3_Mmux_M2_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_5_f5_F5MUX_9713,
      O => U3_Mmux_M2_mux0000_5_f5
    );
  U3_Mmux_M2_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y40"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_7_9702,
      IB => U3_Mmux_M2_mux0000_6_9711,
      SEL => U3_Mmux_M2_mux0000_5_f5_BXINV_9705,
      O => U3_Mmux_M2_mux0000_5_f5_F5MUX_9713
    );
  U3_Mmux_M2_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_5_f5_BXINV_9705
    );
  U3_Mmux_M2_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_5_f5_F6MUX_9704,
      O => U3_Mmux_M2_mux0000_4_f6
    );
  U3_Mmux_M2_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y40"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_6_f5,
      IB => U3_Mmux_M2_mux0000_5_f5,
      SEL => U3_Mmux_M2_mux0000_5_f5_BYINV_9696,
      O => U3_Mmux_M2_mux0000_5_f5_F6MUX_9704
    );
  U3_Mmux_M2_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_5_f5_BYINV_9696
    );
  U3_Mmux_M2_mux0000_7 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X26Y40"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M1_2_Q,
      ADR2 => M2_28_0,
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_7_9702
    );
  U3_Mmux_M2_mux0000_71 : X_LUT4
    generic map(
      INIT => X"7474",
      LOC => "SLICE_X26Y41"
    )
    port map (
      ADR0 => N402,
      ADR1 => rom1_addr_4_0,
      ADR2 => M2_24_1_0,
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_71_9741
    );
  U3_Mmux_M2_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f5_F5MUX_9743,
      O => U3_Mmux_M2_mux0000_6_f5
    );
  U3_Mmux_M2_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y41"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_8_9732,
      IB => U3_Mmux_M2_mux0000_71_9741,
      SEL => U3_Mmux_M2_mux0000_6_f5_BXINV_9735,
      O => U3_Mmux_M2_mux0000_6_f5_F5MUX_9743
    );
  U3_Mmux_M2_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f5_BXINV_9735
    );
  U3_Mmux_M2_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f5_F6MUX_9734,
      O => U3_Mmux_M2_mux0000_3_f7
    );
  U3_Mmux_M2_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y41"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_5_f6,
      IB => U3_Mmux_M2_mux0000_4_f6,
      SEL => U3_Mmux_M2_mux0000_6_f5_BYINV_9726,
      O => U3_Mmux_M2_mux0000_6_f5_F6MUX_9734
    );
  U3_Mmux_M2_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_6_f5_BYINV_9726
    );
  U3_Mmux_M2_mux0000_8 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X26Y41"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => M1_4_Q,
      ADR2 => VCC,
      ADR3 => M2_25_Q,
      O => U3_Mmux_M2_mux0000_8_9732
    );
  U3_Mmux_M2_mux0000_73 : X_LUT4
    generic map(
      INIT => X"3A3A",
      LOC => "SLICE_X26Y42"
    )
    port map (
      ADR0 => M1_18_2_0,
      ADR1 => N244_0,
      ADR2 => rom1_addr_4_0,
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_73_9771
    );
  U3_Mmux_M2_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f52_F5MUX_9773,
      O => U3_Mmux_M2_mux0000_6_f52
    );
  U3_Mmux_M2_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y42"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_83_9762,
      IB => U3_Mmux_M2_mux0000_73_9771,
      SEL => U3_Mmux_M2_mux0000_6_f52_BXINV_9765,
      O => U3_Mmux_M2_mux0000_6_f52_F5MUX_9773
    );
  U3_Mmux_M2_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f52_BXINV_9765
    );
  U3_Mmux_M2_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f52_F6MUX_9764,
      O => U3_Mmux_M2_mux0000_5_f61
    );
  U3_Mmux_M2_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y42"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_7_f51,
      IB => U3_Mmux_M2_mux0000_6_f52,
      SEL => U3_Mmux_M2_mux0000_6_f52_BYINV_9756,
      O => U3_Mmux_M2_mux0000_6_f52_F6MUX_9764
    );
  U3_Mmux_M2_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f52_BYINV_9756
    );
  U3_Mmux_M2_mux0000_83 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X26Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_18_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => M2_12_Q,
      O => U3_Mmux_M2_mux0000_83_9762
    );
  U3_Mmux_M2_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f51_F5MUX_9803,
      O => U3_Mmux_M2_mux0000_7_f51
    );
  U3_Mmux_M2_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y43"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_91_9792,
      IB => U3_Mmux_M2_mux0000_84_9801,
      SEL => U3_Mmux_M2_mux0000_7_f51_BXINV_9795,
      O => U3_Mmux_M2_mux0000_7_f51_F5MUX_9803
    );
  U3_Mmux_M2_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f51_BXINV_9795
    );
  U3_Mmux_M2_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f51_F6MUX_9794,
      O => U3_Mmux_M2_mux0000_4_f7
    );
  U3_Mmux_M2_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y43"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_6_f6,
      IB => U3_Mmux_M2_mux0000_5_f61,
      SEL => U3_Mmux_M2_mux0000_7_f51_BYINV_9786,
      O => U3_Mmux_M2_mux0000_7_f51_F6MUX_9794
    );
  U3_Mmux_M2_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(3),
      O => U3_Mmux_M2_mux0000_7_f51_BYINV_9786
    );
  U3_Mmux_M2_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f51_F5MUX_9833,
      O => U3_Mmux_M2_mux0000_6_f51
    );
  U3_Mmux_M2_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y40"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_81_9822,
      IB => U3_Mmux_M2_mux0000_72_9831,
      SEL => U3_Mmux_M2_mux0000_6_f51_BXINV_9825,
      O => U3_Mmux_M2_mux0000_6_f51_F5MUX_9833
    );
  U3_Mmux_M2_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_6_f51_BXINV_9825
    );
  U3_Mmux_M2_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_6_f51_F6MUX_9824,
      O => U3_Mmux_M2_mux0000_5_f6
    );
  U3_Mmux_M2_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y40"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_7_f5,
      IB => U3_Mmux_M2_mux0000_6_f51,
      SEL => U3_Mmux_M2_mux0000_6_f51_BYINV_9816,
      O => U3_Mmux_M2_mux0000_6_f51_F6MUX_9824
    );
  U3_Mmux_M2_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_6_f51_BYINV_9816
    );
  U3_M2_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2_mux0000_F5MUX_9864,
      O => U3_Mmux_M2_mux0000_7_f5
    );
  U3_M2_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y41"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_9_9852,
      IB => U3_Mmux_M2_mux0000_82_9862,
      SEL => U3_M2_mux0000_BXINV_9856,
      O => U3_M2_mux0000_F5MUX_9864
    );
  U3_M2_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_M2_mux0000_BXINV_9856
    );
  U3_M2_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M2_mux0000_F6MUX_9854,
      O => U3_M2_mux0000
    );
  U3_M2_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y41"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_4_f7,
      IB => U3_Mmux_M2_mux0000_3_f7,
      SEL => U3_M2_mux0000_BYINV_9846,
      O => U3_M2_mux0000_F6MUX_9854
    );
  U3_M2_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(4),
      O => U3_M2_mux0000_BYINV_9846
    );
  U3_Mmux_M2_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f52_F5MUX_9894,
      O => U3_Mmux_M2_mux0000_7_f52
    );
  U3_Mmux_M2_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y42"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_92_9883,
      IB => U3_Mmux_M2_mux0000_85_9892,
      SEL => U3_Mmux_M2_mux0000_7_f52_BXINV_9886,
      O => U3_Mmux_M2_mux0000_7_f52_F5MUX_9894
    );
  U3_Mmux_M2_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_7_f52_BXINV_9886
    );
  U3_Mmux_M2_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_7_f52_F6MUX_9885,
      O => U3_Mmux_M2_mux0000_6_f6
    );
  U3_Mmux_M2_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y42"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_8_f5,
      IB => U3_Mmux_M2_mux0000_7_f52,
      SEL => U3_Mmux_M2_mux0000_7_f52_BYINV_9877,
      O => U3_Mmux_M2_mux0000_7_f52_F6MUX_9885
    );
  U3_Mmux_M2_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(2),
      O => U3_Mmux_M2_mux0000_7_f52_BYINV_9877
    );
  U3_Mmux_M2_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M2_mux0000_8_f5_F5MUX_9918,
      O => U3_Mmux_M2_mux0000_8_f5
    );
  U3_Mmux_M2_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y43"
    )
    port map (
      IA => U3_Mmux_M2_mux0000_10_9908,
      IB => U3_Mmux_M2_mux0000_93_9916,
      SEL => U3_Mmux_M2_mux0000_8_f5_BXINV_9910,
      O => U3_Mmux_M2_mux0000_8_f5_F5MUX_9918
    );
  U3_Mmux_M2_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(1),
      O => U3_Mmux_M2_mux0000_8_f5_BXINV_9910
    );
  U3_Mmux_M1_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_5_f5_F5MUX_9948,
      O => U3_Mmux_M1_mux0000_5_f5
    );
  U3_Mmux_M1_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y40"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_7_9937,
      IB => U3_Mmux_M1_mux0000_6_9946,
      SEL => U3_Mmux_M1_mux0000_5_f5_BXINV_9940,
      O => U3_Mmux_M1_mux0000_5_f5_F5MUX_9948
    );
  U3_Mmux_M1_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_5_f5_BXINV_9940
    );
  U3_Mmux_M1_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_5_f5_F6MUX_9939,
      O => U3_Mmux_M1_mux0000_4_f6
    );
  U3_Mmux_M1_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y40"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_6_f5,
      IB => U3_Mmux_M1_mux0000_5_f5,
      SEL => U3_Mmux_M1_mux0000_5_f5_BYINV_9931,
      O => U3_Mmux_M1_mux0000_5_f5_F6MUX_9939
    );
  U3_Mmux_M1_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_5_f5_BYINV_9931
    );
  U3_Mmux_M1_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X20Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f5_F5MUX_9978,
      O => U3_Mmux_M1_mux0000_6_f5
    );
  U3_Mmux_M1_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y41"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_8_9967,
      IB => U3_Mmux_M1_mux0000_71_9976,
      SEL => U3_Mmux_M1_mux0000_6_f5_BXINV_9970,
      O => U3_Mmux_M1_mux0000_6_f5_F5MUX_9978
    );
  U3_Mmux_M1_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f5_BXINV_9970
    );
  U3_Mmux_M1_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f5_F6MUX_9969,
      O => U3_Mmux_M1_mux0000_3_f7
    );
  U3_Mmux_M1_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y41"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_5_f6,
      IB => U3_Mmux_M1_mux0000_4_f6,
      SEL => U3_Mmux_M1_mux0000_6_f5_BYINV_9961,
      O => U3_Mmux_M1_mux0000_6_f5_F6MUX_9969
    );
  U3_Mmux_M1_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_6_f5_BYINV_9961
    );
  U3_Mmux_M1_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X20Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f52_F5MUX_10008,
      O => U3_Mmux_M1_mux0000_6_f52
    );
  U3_Mmux_M1_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y42"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_83_9997,
      IB => U3_Mmux_M1_mux0000_73_10006,
      SEL => U3_Mmux_M1_mux0000_6_f52_BXINV_10000,
      O => U3_Mmux_M1_mux0000_6_f52_F5MUX_10008
    );
  U3_Mmux_M1_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f52_BXINV_10000
    );
  U3_Mmux_M1_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f52_F6MUX_9999,
      O => U3_Mmux_M1_mux0000_5_f61
    );
  U3_Mmux_M1_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y42"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_7_f51,
      IB => U3_Mmux_M1_mux0000_6_f52,
      SEL => U3_Mmux_M1_mux0000_6_f52_BYINV_9991,
      O => U3_Mmux_M1_mux0000_6_f52_F6MUX_9999
    );
  U3_Mmux_M1_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f52_BYINV_9991
    );
  U3_Mmux_M1_mux0000_84 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X20Y43"
    )
    port map (
      ADR0 => M1_10_Q,
      ADR1 => VCC,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_11_Q,
      O => U3_Mmux_M1_mux0000_84_10036
    );
  U3_Mmux_M1_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f51_F5MUX_10038,
      O => U3_Mmux_M1_mux0000_7_f51
    );
  U3_Mmux_M1_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y43"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_91_10027,
      IB => U3_Mmux_M1_mux0000_84_10036,
      SEL => U3_Mmux_M1_mux0000_7_f51_BXINV_10030,
      O => U3_Mmux_M1_mux0000_7_f51_F5MUX_10038
    );
  U3_Mmux_M1_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f51_BXINV_10030
    );
  U3_Mmux_M1_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f51_F6MUX_10029,
      O => U3_Mmux_M1_mux0000_4_f7
    );
  U3_Mmux_M1_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y43"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_6_f6,
      IB => U3_Mmux_M1_mux0000_5_f61,
      SEL => U3_Mmux_M1_mux0000_7_f51_BYINV_10021,
      O => U3_Mmux_M1_mux0000_7_f51_F6MUX_10029
    );
  U3_Mmux_M1_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1_mux0000_7_f51_BYINV_10021
    );
  U3_Mmux_M1_mux0000_91 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X20Y43"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => VCC,
      ADR2 => M1_8_Q,
      ADR3 => M1_9_Q,
      O => U3_Mmux_M1_mux0000_91_10027
    );
  U3_Mmux_M1_mux0000_72 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X21Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_22_Q,
      ADR3 => M1_23_Q,
      O => U3_Mmux_M1_mux0000_72_10066
    );
  U3_Mmux_M1_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f51_F5MUX_10068,
      O => U3_Mmux_M1_mux0000_6_f51
    );
  U3_Mmux_M1_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y40"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_81_10057,
      IB => U3_Mmux_M1_mux0000_72_10066,
      SEL => U3_Mmux_M1_mux0000_6_f51_BXINV_10060,
      O => U3_Mmux_M1_mux0000_6_f51_F5MUX_10068
    );
  U3_Mmux_M1_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_6_f51_BXINV_10060
    );
  U3_Mmux_M1_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_6_f51_F6MUX_10059,
      O => U3_Mmux_M1_mux0000_5_f6
    );
  U3_Mmux_M1_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y40"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_7_f5,
      IB => U3_Mmux_M1_mux0000_6_f51,
      SEL => U3_Mmux_M1_mux0000_6_f51_BYINV_10051,
      O => U3_Mmux_M1_mux0000_6_f51_F6MUX_10059
    );
  U3_Mmux_M1_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_6_f51_BYINV_10051
    );
  U3_Mmux_M1_mux0000_81 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X21Y40"
    )
    port map (
      ADR0 => M1_21_Q,
      ADR1 => U3_xpix1(0),
      ADR2 => VCC,
      ADR3 => M1_20_Q,
      O => U3_Mmux_M1_mux0000_81_10057
    );
  U3_Mmux_M1_mux0000_82 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X21Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_18_Q,
      ADR3 => M1_19_Q,
      O => U3_Mmux_M1_mux0000_82_10097
    );
  U3_M1_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1_mux0000_F5MUX_10099,
      O => U3_Mmux_M1_mux0000_7_f5
    );
  U3_M1_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y41"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_9_10087,
      IB => U3_Mmux_M1_mux0000_82_10097,
      SEL => U3_M1_mux0000_BXINV_10091,
      O => U3_M1_mux0000_F5MUX_10099
    );
  U3_M1_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_M1_mux0000_BXINV_10091
    );
  U3_M1_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1_mux0000_F6MUX_10089,
      O => U3_M1_mux0000
    );
  U3_M1_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y41"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_4_f7,
      IB => U3_Mmux_M1_mux0000_3_f7,
      SEL => U3_M1_mux0000_BYINV_10081,
      O => U3_M1_mux0000_F6MUX_10089
    );
  U3_M1_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(4),
      O => U3_M1_mux0000_BYINV_10081
    );
  U3_Mmux_M1_mux0000_9 : X_LUT4
    generic map(
      INIT => X"7722",
      LOC => "SLICE_X21Y41"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => N238_0,
      ADR2 => VCC,
      ADR3 => M1_18_2_0,
      O => U3_Mmux_M1_mux0000_9_10087
    );
  U3_Mmux_M1_mux0000_85 : X_LUT4
    generic map(
      INIT => X"44EE",
      LOC => "SLICE_X21Y42"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => M2_24_1_0,
      ADR2 => VCC,
      ADR3 => N384,
      O => U3_Mmux_M1_mux0000_85_10127
    );
  U3_Mmux_M1_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f52_F5MUX_10129,
      O => U3_Mmux_M1_mux0000_7_f52
    );
  U3_Mmux_M1_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y42"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_92_10118,
      IB => U3_Mmux_M1_mux0000_85_10127,
      SEL => U3_Mmux_M1_mux0000_7_f52_BXINV_10121,
      O => U3_Mmux_M1_mux0000_7_f52_F5MUX_10129
    );
  U3_Mmux_M1_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_7_f52_BXINV_10121
    );
  U3_Mmux_M1_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_7_f52_F6MUX_10120,
      O => U3_Mmux_M1_mux0000_6_f6
    );
  U3_Mmux_M1_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y42"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_8_f5,
      IB => U3_Mmux_M1_mux0000_7_f52,
      SEL => U3_Mmux_M1_mux0000_7_f52_BYINV_10112,
      O => U3_Mmux_M1_mux0000_7_f52_F6MUX_10120
    );
  U3_Mmux_M1_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1_mux0000_7_f52_BYINV_10112
    );
  U3_Mmux_M1_mux0000_92 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X21Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_5_Q,
      ADR2 => M1_4_Q,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1_mux0000_92_10118
    );
  U3_Mmux_M1_mux0000_93 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X21Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_3_Q,
      ADR3 => M1_2_Q,
      O => U3_Mmux_M1_mux0000_93_10151
    );
  U3_Mmux_M1_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X21Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1_mux0000_8_f5_F5MUX_10153,
      O => U3_Mmux_M1_mux0000_8_f5
    );
  U3_Mmux_M1_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y43"
    )
    port map (
      IA => U3_Mmux_M1_mux0000_10_10143,
      IB => U3_Mmux_M1_mux0000_93_10151,
      SEL => U3_Mmux_M1_mux0000_8_f5_BXINV_10145,
      O => U3_Mmux_M1_mux0000_8_f5_F5MUX_10153
    );
  U3_Mmux_M1_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1_mux0000_8_f5_BXINV_10145
    );
  U3_Mmux_M1_mux0000_10 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X21Y43"
    )
    port map (
      ADR0 => M1_0_0,
      ADR1 => U3_xpix1(0),
      ADR2 => M1_1_Q,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_10_10143
    );
  U3_Mmux_M1a_mux0000_5_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_5_f5_F5MUX_10183,
      O => U3_Mmux_M1a_mux0000_5_f5
    );
  U3_Mmux_M1a_mux0000_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_7_10173,
      IB => U3_Mmux_M1a_mux0000_6_10181,
      SEL => U3_Mmux_M1a_mux0000_5_f5_BXINV_10176,
      O => U3_Mmux_M1a_mux0000_5_f5_F5MUX_10183
    );
  U3_Mmux_M1a_mux0000_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_5_f5_BXINV_10176
    );
  U3_Mmux_M1a_mux0000_5_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_5_f5_F6MUX_10175,
      O => U3_Mmux_M1a_mux0000_4_f6
    );
  U3_Mmux_M1a_mux0000_5_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_6_f5,
      IB => U3_Mmux_M1a_mux0000_5_f5,
      SEL => U3_Mmux_M1a_mux0000_5_f5_BYINV_10167,
      O => U3_Mmux_M1a_mux0000_5_f5_F6MUX_10175
    );
  U3_Mmux_M1a_mux0000_5_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_5_f5_BYINV_10167
    );
  U3_Mmux_M1a_mux0000_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f5_F5MUX_10213,
      O => U3_Mmux_M1a_mux0000_6_f5
    );
  U3_Mmux_M1a_mux0000_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_8_10202,
      IB => U3_Mmux_M1a_mux0000_71_10211,
      SEL => U3_Mmux_M1a_mux0000_6_f5_BXINV_10205,
      O => U3_Mmux_M1a_mux0000_6_f5_F5MUX_10213
    );
  U3_Mmux_M1a_mux0000_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f5_BXINV_10205
    );
  U3_Mmux_M1a_mux0000_6_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f5_F6MUX_10204,
      O => U3_Mmux_M1a_mux0000_3_f7
    );
  U3_Mmux_M1a_mux0000_6_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_5_f6,
      IB => U3_Mmux_M1a_mux0000_4_f6,
      SEL => U3_Mmux_M1a_mux0000_6_f5_BYINV_10196,
      O => U3_Mmux_M1a_mux0000_6_f5_F6MUX_10204
    );
  U3_Mmux_M1a_mux0000_6_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_6_f5_BYINV_10196
    );
  U3_Mmux_M1a_mux0000_6_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f52_F5MUX_10243,
      O => U3_Mmux_M1a_mux0000_6_f52
    );
  U3_Mmux_M1a_mux0000_6_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y36"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_83_10232,
      IB => U3_Mmux_M1a_mux0000_73_10241,
      SEL => U3_Mmux_M1a_mux0000_6_f52_BXINV_10235,
      O => U3_Mmux_M1a_mux0000_6_f52_F5MUX_10243
    );
  U3_Mmux_M1a_mux0000_6_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f52_BXINV_10235
    );
  U3_Mmux_M1a_mux0000_6_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f52_F6MUX_10234,
      O => U3_Mmux_M1a_mux0000_5_f61
    );
  U3_Mmux_M1a_mux0000_6_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y36"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_7_f51,
      IB => U3_Mmux_M1a_mux0000_6_f52,
      SEL => U3_Mmux_M1a_mux0000_6_f52_BYINV_10226,
      O => U3_Mmux_M1a_mux0000_6_f52_F6MUX_10234
    );
  U3_Mmux_M1a_mux0000_6_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f52_BYINV_10226
    );
  U3_Mmux_M1a_mux0000_7_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X26Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f51_F5MUX_10273,
      O => U3_Mmux_M1a_mux0000_7_f51
    );
  U3_Mmux_M1a_mux0000_7_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y37"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_91_10262,
      IB => U3_Mmux_M1a_mux0000_84_10271,
      SEL => U3_Mmux_M1a_mux0000_7_f51_BXINV_10265,
      O => U3_Mmux_M1a_mux0000_7_f51_F5MUX_10273
    );
  U3_Mmux_M1a_mux0000_7_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f51_BXINV_10265
    );
  U3_Mmux_M1a_mux0000_7_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f51_F6MUX_10264,
      O => U3_Mmux_M1a_mux0000_4_f7
    );
  U3_Mmux_M1a_mux0000_7_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y37"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_6_f6,
      IB => U3_Mmux_M1a_mux0000_5_f61,
      SEL => U3_Mmux_M1a_mux0000_7_f51_BYINV_10256,
      O => U3_Mmux_M1a_mux0000_7_f51_F6MUX_10264
    );
  U3_Mmux_M1a_mux0000_7_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(3),
      O => U3_Mmux_M1a_mux0000_7_f51_BYINV_10256
    );
  U3_Mmux_M1a_mux0000_6_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f51_F5MUX_10303,
      O => U3_Mmux_M1a_mux0000_6_f51
    );
  U3_Mmux_M1a_mux0000_6_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_81_10292,
      IB => U3_Mmux_M1a_mux0000_72_10301,
      SEL => U3_Mmux_M1a_mux0000_6_f51_BXINV_10295,
      O => U3_Mmux_M1a_mux0000_6_f51_F5MUX_10303
    );
  U3_Mmux_M1a_mux0000_6_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_6_f51_BXINV_10295
    );
  U3_Mmux_M1a_mux0000_6_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_6_f51_F6MUX_10294,
      O => U3_Mmux_M1a_mux0000_5_f6
    );
  U3_Mmux_M1a_mux0000_6_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y34"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_7_f5,
      IB => U3_Mmux_M1a_mux0000_6_f51,
      SEL => U3_Mmux_M1a_mux0000_6_f51_BYINV_10286,
      O => U3_Mmux_M1a_mux0000_6_f51_F6MUX_10294
    );
  U3_Mmux_M1a_mux0000_6_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_6_f51_BYINV_10286
    );
  U3_M1a_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1a_mux0000_F5MUX_10334,
      O => U3_Mmux_M1a_mux0000_7_f5
    );
  U3_M1a_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_9_10322,
      IB => U3_Mmux_M1a_mux0000_82_10332,
      SEL => U3_M1a_mux0000_BXINV_10326,
      O => U3_M1a_mux0000_F5MUX_10334
    );
  U3_M1a_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_M1a_mux0000_BXINV_10326
    );
  U3_M1a_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_M1a_mux0000_F6MUX_10324,
      O => U3_M1a_mux0000
    );
  U3_M1a_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y35"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_4_f7,
      IB => U3_Mmux_M1a_mux0000_3_f7,
      SEL => U3_M1a_mux0000_BYINV_10316,
      O => U3_M1a_mux0000_F6MUX_10324
    );
  U3_M1a_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(4),
      O => U3_M1a_mux0000_BYINV_10316
    );
  U3_Mmux_M1a_mux0000_7_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f52_F5MUX_10364,
      O => U3_Mmux_M1a_mux0000_7_f52
    );
  U3_Mmux_M1a_mux0000_7_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y36"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_92_10353,
      IB => U3_Mmux_M1a_mux0000_85_10362,
      SEL => U3_Mmux_M1a_mux0000_7_f52_BXINV_10356,
      O => U3_Mmux_M1a_mux0000_7_f52_F5MUX_10364
    );
  U3_Mmux_M1a_mux0000_7_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_7_f52_BXINV_10356
    );
  U3_Mmux_M1a_mux0000_7_f52_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_7_f52_F6MUX_10355,
      O => U3_Mmux_M1a_mux0000_6_f6
    );
  U3_Mmux_M1a_mux0000_7_f52_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y36"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_8_f5,
      IB => U3_Mmux_M1a_mux0000_7_f52,
      SEL => U3_Mmux_M1a_mux0000_7_f52_BYINV_10347,
      O => U3_Mmux_M1a_mux0000_7_f52_F6MUX_10355
    );
  U3_Mmux_M1a_mux0000_7_f52_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(2),
      O => U3_Mmux_M1a_mux0000_7_f52_BYINV_10347
    );
  U3_Mmux_M1a_mux0000_8_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Mmux_M1a_mux0000_8_f5_F5MUX_10388,
      O => U3_Mmux_M1a_mux0000_8_f5
    );
  U3_Mmux_M1a_mux0000_8_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y37"
    )
    port map (
      IA => U3_Mmux_M1a_mux0000_10_10378,
      IB => U3_Mmux_M1a_mux0000_93_10386,
      SEL => U3_Mmux_M1a_mux0000_8_f5_BXINV_10380,
      O => U3_Mmux_M1a_mux0000_8_f5_F5MUX_10388
    );
  U3_Mmux_M1a_mux0000_8_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix1(1),
      O => U3_Mmux_M1a_mux0000_8_f5_BXINV_10380
    );
  dp_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => dp_O,
      O => dp
    );
  ja1_IBUF : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1,
      O => ja1_INBUF
    );
  ja1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_INBUF,
      O => ja1_IBUF_5274
    );
  ja2_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => ja2_O,
      O => ja2
    );
  ja3_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => ja3_O,
      O => ja3
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
  blue_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => blue_0_O,
      O => blue(0)
    );
  blue_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => blue_1_O,
      O => blue(1)
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
  sw_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(1),
      O => sw_1_INBUF
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
  sw_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw(3),
      O => sw_3_INBUF
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
      O => sw_4_IBUF_5295
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
      O => sw_5_IBUF_5296
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
      O => sw_6_IBUF_5297
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
      O => sw_7_IBUF_5298
    );
  hsync_OBUF : X_OBUF
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => hsync_O,
      O => hsync
    );
  vsync_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => vsync_O,
      O => vsync
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
  btn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_0_INBUF,
      O => btn_0_IBUF_5301
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
      O => btn_1_IBUF_5302
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
  btn_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn(3),
      O => btn_3_INBUF
    );
  red_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => red_0_O,
      O => red(0)
    );
  red_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => red_1_O,
      O => red(1)
    );
  red_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => red_2_O,
      O => red(2)
    );
  green_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => green_0_O,
      O => green(0)
    );
  green_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => green_1_O,
      O => green(1)
    );
  green_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => green_2_O,
      O => green(2)
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
  U1_q_0_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y0"
    )
    port map (
      I0 => U1_q_0_BUFG_I0_INV,
      I1 => GND,
      S => U1_q_0_BUFG_S_INVNOT,
      O => U1_q(0)
    );
  U1_q_0_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U1_q_0_BUFG_S_INVNOT
    );
  U1_q_0_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01,
      O => U1_q_0_BUFG_I0_INV
    );
  U3_q_17_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => U3_q_17_BUFG_I0_INV,
      I1 => GND,
      S => U3_q_17_BUFG_S_INVNOT,
      O => U3_q(17)
    );
  U3_q_17_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => U3_q_17_BUFG_S_INVNOT
    );
  U3_q_17_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_q_171,
      O => U3_q_17_BUFG_I0_INV
    );
  x7_digit_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_1_F5MUX_10703,
      O => x7_digit(1)
    );
  x7_digit_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y69"
    )
    port map (
      IA => x7_Mmux_digit_41_10693,
      IB => x7_Mmux_digit_31_10701,
      SEL => x7_digit_1_BXINV_10695,
      O => x7_digit_1_F5MUX_10703
    );
  x7_digit_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_1_BXINV_10695
    );
  x7_digit_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_2_F5MUX_10728,
      O => x7_digit(2)
    );
  x7_digit_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y68"
    )
    port map (
      IA => x7_Mmux_digit_42_10718,
      IB => x7_Mmux_digit_32_10726,
      SEL => x7_digit_2_BXINV_10720,
      O => x7_digit_2_F5MUX_10728
    );
  x7_digit_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_2_BXINV_10720
    );
  x7_digit_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_3_F5MUX_10753,
      O => x7_digit(3)
    );
  x7_digit_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y68"
    )
    port map (
      IA => x7_Mmux_digit_43_10743,
      IB => x7_Mmux_digit_33_10751,
      SEL => x7_digit_3_BXINV_10745,
      O => x7_digit_3_F5MUX_10753
    );
  x7_digit_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_3_BXINV_10745
    );
  U3_spriteonB5_and000081_G : X_LUT4
    generic map(
      INIT => X"0E0C",
      LOC => "SLICE_X4Y3"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U2_hcs(5),
      ADR2 => U2_hcs(6),
      ADR3 => U2_hcs(3),
      O => N409
    );
  U3_spriteonB5_and000081_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and000081_F5MUX_10778,
      O => U3_spriteonB5_and000081
    );
  U3_spriteonB5_and000081_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X4Y3"
    )
    port map (
      IA => N408,
      IB => N409,
      SEL => U3_spriteonB5_and000081_BXINV_10771,
      O => U3_spriteonB5_and000081_F5MUX_10778
    );
  U3_spriteonB5_and000081_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(4),
      O => U3_spriteonB5_and000081_BXINV_10771
    );
  U3_spriteonB5_and000081_F : X_LUT4
    generic map(
      INIT => X"0C3C",
      LOC => "SLICE_X4Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(5),
      ADR2 => U2_hcs(6),
      ADR3 => N230_0,
      O => N408
    );
  U3_Mmux_M1_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"D959",
      LOC => "SLICE_X19Y42"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U3_xpix1(0),
      O => N453
    );
  N240_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N240_F5MUX_10803,
      O => N240
    );
  N240_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y42"
    )
    port map (
      IA => N452,
      IB => N453,
      SEL => N240_BXINV_10796,
      O => N240_F5MUX_10803
    );
  N240_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N240_BXINV_10796
    );
  U3_Mmux_M1_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"CACF",
      LOC => "SLICE_X19Y42"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U3_xpix1(0),
      O => N452
    );
  U3_Mmux_M1_mux0000_85_SW1_G : X_LUT4
    generic map(
      INIT => X"F1F1",
      LOC => "SLICE_X16Y42"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => VCC,
      O => N537
    );
  N384_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N384_F5MUX_10828,
      O => N384
    );
  N384_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      IA => N536,
      IB => N537,
      SEL => N384_BXINV_10820,
      O => N384_F5MUX_10828
    );
  N384_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N384_BXINV_10820
    );
  U3_Mmux_M1_mux0000_85_SW1_F : X_LUT4
    generic map(
      INIT => X"9CEE",
      LOC => "SLICE_X16Y42"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(3),
      O => N536
    );
  M1a_27_139_G : X_LUT4
    generic map(
      INIT => X"E3BF",
      LOC => "SLICE_X30Y40"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N539
    );
  M1a_27_139_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_139_F5MUX_10853,
      O => M1a_27_139
    );
  M1a_27_139_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y40"
    )
    port map (
      IA => N538,
      IB => N539,
      SEL => M1a_27_139_BXINV_10846,
      O => M1a_27_139_F5MUX_10853
    );
  M1a_27_139_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_27_139_BXINV_10846
    );
  M1a_27_139_F : X_LUT4
    generic map(
      INIT => X"11FF",
      LOC => "SLICE_X30Y40"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => VCC,
      ADR3 => U2_vcs(4),
      O => N538
    );
  U3_Mmux_M1a_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"A255",
      LOC => "SLICE_X26Y33"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(3),
      O => N515
    );
  N324_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N324_F5MUX_10878,
      O => N324
    );
  N324_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y33"
    )
    port map (
      IA => N514,
      IB => N515,
      SEL => N324_BXINV_10871,
      O => N324_F5MUX_10878
    );
  N324_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N324_BXINV_10871
    );
  U3_Mmux_M1a_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"4523",
      LOC => "SLICE_X26Y33"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(3),
      O => N514
    );
  U3_Mmux_M1a_mux0000_83_SW0_G : X_LUT4
    generic map(
      INIT => X"DAFA",
      LOC => "SLICE_X25Y37"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U3_xpix1(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N497
    );
  N192_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => N192_F5MUX_10903,
      O => N192
    );
  N192_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y37"
    )
    port map (
      IA => N496,
      IB => N497,
      SEL => N192_BXINV_10896,
      O => N192_F5MUX_10903
    );
  N192_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N192_BXINV_10896
    );
  U3_Mmux_M1a_mux0000_83_SW0_F : X_LUT4
    generic map(
      INIT => X"EFB4",
      LOC => "SLICE_X25Y37"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U3_xpix1(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N496
    );
  N328_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N328_F5MUX_10928,
      O => N328
    );
  N328_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y33"
    )
    port map (
      IA => N498,
      IB => N499,
      SEL => N328_BXINV_10920,
      O => N328_F5MUX_10928
    );
  N328_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N328_BXINV_10920
    );
  N326_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N326_F5MUX_10953,
      O => N326
    );
  N326_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y36"
    )
    port map (
      IA => N502,
      IB => N503,
      SEL => N326_BXINV_10945,
      O => N326_F5MUX_10953
    );
  N326_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N326_BXINV_10945
    );
  M2a_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_20_F5MUX_10980,
      O => M2a_20_Q
    );
  M2a_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y37"
    )
    port map (
      IA => M1a_11_2_10967,
      IB => M1a_11_1_rt_10978,
      SEL => M2a_20_BXINV_10970,
      O => M2a_20_F5MUX_10980
    );
  M2a_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2a_20_BXINV_10970
    );
  M2a_20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_11_2_10967,
      O => M1a_11_2_0
    );
  U3_spriteonB1_cmp_lt0000217_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_cmp_lt0000217_F5MUX_11005,
      O => U3_spriteonB1_cmp_lt0000217
    );
  U3_spriteonB1_cmp_lt0000217_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y4"
    )
    port map (
      IA => U3_spriteonB1_cmp_lt0000217_G,
      IB => U3_spriteonB1_cmp_lt00002171_11003,
      SEL => U3_spriteonB1_cmp_lt0000217_BXINV_10998,
      O => U3_spriteonB1_cmp_lt0000217_F5MUX_11005
    );
  U3_spriteonB1_cmp_lt0000217_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(5),
      O => U3_spriteonB1_cmp_lt0000217_BXINV_10998
    );
  M1a_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_8_F5MUX_11030,
      O => M1a_8_Q
    );
  M1a_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y37"
    )
    port map (
      IA => M1a_8_11_11021,
      IB => M1a_8_1,
      SEL => M1a_8_BXINV_11023,
      O => M1a_8_F5MUX_11030
    );
  M1a_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M1a_8_BXINV_11023
    );
  M2a_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_18_F5MUX_11057,
      O => M2a_18_Q
    );
  M2a_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y36"
    )
    port map (
      IA => M2a_18_2,
      IB => M2a_18_1_11055,
      SEL => M2a_18_BXINV_11050,
      O => M2a_18_F5MUX_11057
    );
  M2a_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2a_18_BXINV_11050
    );
  M2a_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_18_2,
      O => M2a_18_2_0
    );
  M1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_5_F5MUX_11082,
      O => M1_5_Q
    );
  M1_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X18Y43"
    )
    port map (
      IA => N448,
      IB => N449,
      SEL => M1_5_BXINV_11075,
      O => M1_5_F5MUX_11082
    );
  M1_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_5_BXINV_11075
    );
  M1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_9_F5MUX_11107,
      O => M1_9_Q
    );
  M1_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y42"
    )
    port map (
      IA => N512,
      IB => N513,
      SEL => M1_9_BXINV_11100,
      O => M1_9_F5MUX_11107
    );
  M1_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_9_BXINV_11100
    );
  M2a_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_28_F5MUX_11134,
      O => M2a_28_Q
    );
  M2a_28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y34"
    )
    port map (
      IA => M1a_3_2_11121,
      IB => M1a_3_1_rt_11132,
      SEL => M2a_28_BXINV_11124,
      O => M2a_28_F5MUX_11134
    );
  M2a_28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2a_28_BXINV_11124
    );
  M2a_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_3_2_11121,
      O => M1a_3_2_0
    );
  M1a_22_44_SW0_G : X_LUT4
    generic map(
      INIT => X"5FEA",
      LOC => "SLICE_X37Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M1_21_bdd5_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N459
    );
  N274_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N274_F5MUX_11159,
      O => N274
    );
  N274_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y39"
    )
    port map (
      IA => N458,
      IB => N459,
      SEL => N274_BXINV_11152,
      O => N274_F5MUX_11159
    );
  N274_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => N274_BXINV_11152
    );
  M1a_22_44_SW0_F : X_LUT4
    generic map(
      INIT => X"76AA",
      LOC => "SLICE_X37Y39"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => M1_22_bdd9_0,
      ADR3 => U2_vcs(2),
      O => N458
    );
  U3_Mmux_M1a_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"F3FC",
      LOC => "SLICE_X24Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N543
    );
  N322_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N322_F5MUX_11184,
      O => N322
    );
  N322_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y34"
    )
    port map (
      IA => N542,
      IB => N543,
      SEL => N322_BXINV_11176,
      O => N322_F5MUX_11184
    );
  N322_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N322_BXINV_11176
    );
  U3_Mmux_M1a_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"CE22",
      LOC => "SLICE_X24Y34"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U3_xpix1(0),
      ADR3 => U2_vcs(3),
      O => N542
    );
  U3_red_2_1 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X16Y11"
    )
    port map (
      ADR0 => U3_N35,
      ADR1 => U3_N41,
      ADR2 => U3_blue_and0003_0,
      ADR3 => VCC,
      O => U3_red(2)
    );
  red_1_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_F5MUX_11209,
      O => red_1_OBUF_5305
    );
  red_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X16Y11"
    )
    port map (
      IA => U3_red_2_1_11199,
      IB => U3_red(2),
      SEL => red_1_OBUF_BXINV_11201,
      O => red_1_OBUF_F5MUX_11209
    );
  red_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_0,
      O => red_1_OBUF_BXINV_11201
    );
  U3_red_2_2 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X16Y11"
    )
    port map (
      ADR0 => U3_N35,
      ADR1 => U3_N41,
      ADR2 => U3_blue_and0003_0,
      ADR3 => U3_N13_0,
      O => U3_red_2_1_11199
    );
  M1a_24_65_SW0_G : X_LUT4
    generic map(
      INIT => X"1154",
      LOC => "SLICE_X35Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => M1_22_bdd9_0,
      ADR3 => U2_vcs(0),
      O => N427
    );
  N254_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N254_F5MUX_11234,
      O => N254
    );
  N254_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      IA => N426,
      IB => N427,
      SEL => N254_BXINV_11227,
      O => N254_F5MUX_11234
    );
  N254_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => N254_BXINV_11227
    );
  M1a_24_65_SW0_F : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X35Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => M1a_24_bdd1,
      ADR3 => N212_0,
      O => N426
    );
  M1_25_351_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y52"
    )
    port map (
      ADR0 => M1_25_351,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1_25_351_rt_11257
    );
  M1_25_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_35_F5MUX_11259,
      O => M1_25_35
    );
  M1_25_35_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y52"
    )
    port map (
      IA => M1_25_352_11247,
      IB => M1_25_351_rt_11257,
      SEL => M1_25_35_BXINV_11249,
      O => M1_25_35_F5MUX_11259
    );
  M1_25_35_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M1_25_35_BXINV_11249
    );
  M1_25_352 : X_LUT4
    generic map(
      INIT => X"9006",
      LOC => "SLICE_X29Y52"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M1_22_bdd9_0,
      ADR3 => M1_21_bdd5_0,
      O => M1_25_352_11247
    );
  M1_24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_F5MUX_11284,
      O => M1_24_Q
    );
  M1_24_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y51"
    )
    port map (
      IA => N516,
      IB => N517,
      SEL => M1_24_BXINV_11277,
      O => M1_24_F5MUX_11284
    );
  M1_24_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_24_BXINV_11277
    );
  M1_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_F5MUX_11309,
      O => M1_25_Q
    );
  M1_25_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y45"
    )
    port map (
      IA => N416,
      IB => N417,
      SEL => M1_25_BXINV_11302,
      O => M1_25_F5MUX_11309
    );
  M1_25_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_25_BXINV_11302
    );
  M1_27_102_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_102_F5MUX_11334,
      O => M1_27_102
    );
  M1_27_102_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y50"
    )
    port map (
      IA => N430,
      IB => N431,
      SEL => M1_27_102_BXINV_11327,
      O => M1_27_102_F5MUX_11334
    );
  M1_27_102_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M1_27_102_BXINV_11327
    );
  M1_26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_F5MUX_11359,
      O => M1_26_Q
    );
  M1_26_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y49"
    )
    port map (
      IA => N522,
      IB => N523,
      SEL => M1_26_BXINV_11352,
      O => M1_26_F5MUX_11359
    );
  M1_26_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_26_BXINV_11352
    );
  M1_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_F5MUX_11384,
      O => M1_27_Q
    );
  M1_27_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y45"
    )
    port map (
      IA => N414,
      IB => N415,
      SEL => M1_27_BXINV_11377,
      O => M1_27_F5MUX_11384
    );
  M1_27_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_27_BXINV_11377
    );
  M1_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_18_F5MUX_11411,
      O => M1_18_Q
    );
  M1_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y39"
    )
    port map (
      IA => M1_18_2,
      IB => M1_18_1_11409,
      SEL => M1_18_BXINV_11404,
      O => M1_18_F5MUX_11411
    );
  M1_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_18_BXINV_11404
    );
  M1_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_18_2,
      O => M1_18_2_0
    );
  M2_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_21_F5MUX_11436,
      O => M2_21_Q
    );
  M2_21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y41"
    )
    port map (
      IA => M1_10_2_11427,
      IB => M1_10_1_11434,
      SEL => M2_21_BXINV_11429,
      O => M2_21_F5MUX_11436
    );
  M2_21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_21_BXINV_11429
    );
  M2_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_22_F5MUX_11461,
      O => M2_22_Q
    );
  M2_22_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y38"
    )
    port map (
      IA => N526,
      IB => N527,
      SEL => M2_22_BXINV_11454,
      O => M2_22_F5MUX_11461
    );
  M2_22_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_22_BXINV_11454
    );
  M1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_4_F5MUX_11488,
      O => M1_4_Q
    );
  M1_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      IA => M2_24_1_11478,
      IB => M2_24_Q,
      SEL => M1_4_BXINV_11481,
      O => M1_4_F5MUX_11488
    );
  M1_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_4_BXINV_11481
    );
  M1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_24_1_11478,
      O => M2_24_1_0
    );
  M2_3_124_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_124_F5MUX_11513,
      O => M2_3_124
    );
  M2_3_124_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X41Y47"
    )
    port map (
      IA => M2_3_1242_11504,
      IB => M2_3_1241_11511,
      SEL => M2_3_124_BXINV_11506,
      O => M2_3_124_F5MUX_11513
    );
  M2_3_124_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X41Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M2_3_124_BXINV_11506
    );
  M2_3_1241 : X_LUT4
    generic map(
      INIT => X"8F9F",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => rom1_addr_4_0,
      ADR3 => U2_vcs(0),
      O => M2_3_1241_11511
    );
  U3_Mmux_M2_mux0000_71_SW0_G : X_LUT4
    generic map(
      INIT => X"CCDC",
      LOC => "SLICE_X24Y41"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(0),
      O => N541
    );
  N402_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N402_F5MUX_11538,
      O => N402
    );
  N402_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y41"
    )
    port map (
      IA => N540,
      IB => N541,
      SEL => N402_BXINV_11531,
      O => N402_F5MUX_11538
    );
  N402_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N402_BXINV_11531
    );
  U3_Mmux_M2_mux0000_71_SW0_F : X_LUT4
    generic map(
      INIT => X"B5C9",
      LOC => "SLICE_X24Y41"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N540
    );
  M1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_11_F5MUX_11563,
      O => M1_11_Q
    );
  M1_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X18Y42"
    )
    port map (
      IA => N500,
      IB => N501,
      SEL => M1_11_BXINV_11556,
      O => M1_11_F5MUX_11563
    );
  M1_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_11_BXINV_11556
    );
  M1_11_G : X_LUT4
    generic map(
      INIT => X"5620",
      LOC => "SLICE_X18Y42"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N501
    );
  M1_11_F : X_LUT4
    generic map(
      INIT => X"4844",
      LOC => "SLICE_X18Y42"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N500
    );
  M1_12_G : X_LUT4
    generic map(
      INIT => X"4078",
      LOC => "SLICE_X17Y43"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N553
    );
  M1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_12_F5MUX_11588,
      O => M1_12_Q
    );
  M1_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X17Y43"
    )
    port map (
      IA => N552,
      IB => N553,
      SEL => M1_12_BXINV_11581,
      O => M1_12_F5MUX_11588
    );
  M1_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_12_BXINV_11581
    );
  M1_12_F : X_LUT4
    generic map(
      INIT => X"04C1",
      LOC => "SLICE_X17Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N552
    );
  M1_20_F : X_LUT4
    generic map(
      INIT => X"0682",
      LOC => "SLICE_X20Y38"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N546
    );
  M1_20_G : X_LUT4
    generic map(
      INIT => X"1F3B",
      LOC => "SLICE_X20Y38"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N547
    );
  M1_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_20_F5MUX_11613,
      O => M1_20_Q
    );
  M1_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y38"
    )
    port map (
      IA => N546,
      IB => N547,
      SEL => M1_20_BXINV_11606,
      O => M1_20_F5MUX_11613
    );
  M1_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M1_20_BXINV_11606
    );
  M1_13_G : X_LUT4
    generic map(
      INIT => X"2870",
      LOC => "SLICE_X19Y44"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(1),
      O => N559
    );
  M1_13_F : X_LUT4
    generic map(
      INIT => X"6A11",
      LOC => "SLICE_X19Y44"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(1),
      O => N558
    );
  M1_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_13_F5MUX_11638,
      O => M1_13_Q
    );
  M1_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y44"
    )
    port map (
      IA => N558,
      IB => N559,
      SEL => M1_13_BXINV_11631,
      O => M1_13_F5MUX_11638
    );
  M1_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M1_13_BXINV_11631
    );
  M1_19_G : X_LUT4
    generic map(
      INIT => X"5B20",
      LOC => "SLICE_X18Y41"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N557
    );
  M1_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_19_F5MUX_11663,
      O => M1_19_Q
    );
  M1_19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X18Y41"
    )
    port map (
      IA => N556,
      IB => N557,
      SEL => M1_19_BXINV_11656,
      O => M1_19_F5MUX_11663
    );
  M1_19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_19_BXINV_11656
    );
  M1_19_F : X_LUT4
    generic map(
      INIT => X"488E",
      LOC => "SLICE_X18Y41"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N556
    );
  M2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_11_F5MUX_11688,
      O => M2_11_Q
    );
  M2_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y43"
    )
    port map (
      IA => N544,
      IB => N545,
      SEL => M2_11_BXINV_11681,
      O => M2_11_F5MUX_11688
    );
  M2_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M2_11_BXINV_11681
    );
  M1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_2_F5MUX_11713,
      O => M1_2_Q
    );
  M1_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y43"
    )
    port map (
      IA => N486,
      IB => N487,
      SEL => M1_2_BXINV_11706,
      O => M1_2_F5MUX_11713
    );
  M1_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_2_BXINV_11706
    );
  M1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_8_F5MUX_11738,
      O => M1_8_Q
    );
  M1_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y44"
    )
    port map (
      IA => N468,
      IB => N469,
      SEL => M1_8_BXINV_11731,
      O => M1_8_F5MUX_11738
    );
  M1_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M1_8_BXINV_11731
    );
  M2_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_25_F5MUX_11763,
      O => M2_25_Q
    );
  M2_25_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y40"
    )
    port map (
      IA => N446,
      IB => N447,
      SEL => M2_25_BXINV_11756,
      O => M2_25_F5MUX_11763
    );
  M2_25_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M2_25_BXINV_11756
    );
  M2_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_19_F5MUX_11788,
      O => M2_19_Q
    );
  M2_19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y40"
    )
    port map (
      IA => N550,
      IB => N551,
      SEL => M2_19_BXINV_11781,
      O => M2_19_F5MUX_11788
    );
  M2_19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_19_BXINV_11781
    );
  M1a_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_2_F5MUX_11813,
      O => M1a_2_Q
    );
  M1a_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y34"
    )
    port map (
      IA => N444,
      IB => N445,
      SEL => M1a_2_BXINV_11806,
      O => M1a_2_F5MUX_11813
    );
  M1a_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1a_2_BXINV_11806
    );
  N158_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N158_F5MUX_11838,
      O => N158
    );
  N158_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y47"
    )
    port map (
      IA => N172,
      IB => N173,
      SEL => N158_BXINV_11829,
      O => N158_F5MUX_11838
    );
  N158_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1(4),
      O => N158_BXINV_11829
    );
  M1_30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_30_F5MUX_11863,
      O => M1_30_Q
    );
  M1_30_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y44"
    )
    port map (
      IA => M1_30_1161_11854,
      IB => M1_30_116,
      SEL => M1_30_BXINV_11856,
      O => M1_30_F5MUX_11863
    );
  M1_30_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M1_30_BXINV_11856
    );
  N198_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N198_F5MUX_11888,
      O => N198
    );
  N198_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y46"
    )
    port map (
      IA => N490,
      IB => N491,
      SEL => N198_BXINV_11881,
      O => N198_F5MUX_11888
    );
  N198_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N198_BXINV_11881
    );
  N248_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N248_F5MUX_11913,
      O => N248
    );
  N248_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y36"
    )
    port map (
      IA => N554,
      IB => N555,
      SEL => N248_BXINV_11904,
      O => N248_F5MUX_11913
    );
  N248_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N248_BXINV_11904
    );
  U3_Mmux_M2a_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"B3FC",
      LOC => "SLICE_X34Y36"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N511
    );
  N330_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => N330_F5MUX_11938,
      O => N330
    );
  N330_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X34Y36"
    )
    port map (
      IA => N510,
      IB => N511,
      SEL => N330_BXINV_11931,
      O => N330_F5MUX_11938
    );
  N330_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N330_BXINV_11931
    );
  U3_Mmux_M2a_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"CD31",
      LOC => "SLICE_X34Y36"
    )
    port map (
      ADR0 => U3_xpix2(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N510
    );
  U3_spriteonB5_and0000171 : X_LUT4
    generic map(
      INIT => X"A800",
      LOC => "SLICE_X13Y2"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => U3_spriteonB5_and0000171_11961
    );
  U3_spriteonB5_and000017_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and000017_F5MUX_11963,
      O => U3_spriteonB5_and000017
    );
  U3_spriteonB5_and000017_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y2"
    )
    port map (
      IA => U3_spriteonB5_and000017_G,
      IB => U3_spriteonB5_and0000171_11961,
      SEL => U3_spriteonB5_and000017_BXINV_11956,
      O => U3_spriteonB5_and000017_F5MUX_11963
    );
  U3_spriteonB5_and000017_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => U3_spriteonB5_and000017_BXINV_11956
    );
  U2_vidon_and0000261 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X16Y8"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => U2_vidon_and0000261_11986
    );
  U2_vidon_and000026_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000026_F5MUX_11988,
      O => U2_vidon_and000026
    );
  U2_vidon_and000026_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X16Y8"
    )
    port map (
      IA => U2_vidon_and000026_G,
      IB => U2_vidon_and0000261_11986,
      SEL => U2_vidon_and000026_BXINV_11981,
      O => U2_vidon_and000026_F5MUX_11988
    );
  U2_vidon_and000026_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => U2_vidon_and000026_BXINV_11981
    );
  U2_vidon_and0000651 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X14Y13"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => U2_vidon_and0000651_12011
    );
  U2_vidon_and000065_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000065_F5MUX_12013,
      O => U2_vidon_and000065
    );
  U2_vidon_and000065_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      IA => U2_vidon_and000065_G,
      IB => U2_vidon_and0000651_12011,
      SEL => U2_vidon_and000065_BXINV_12006,
      O => U2_vidon_and000065_F5MUX_12013
    );
  U2_vidon_and000065_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(8),
      O => U2_vidon_and000065_BXINV_12006
    );
  M1a_10_47_G : X_LUT4
    generic map(
      INIT => X"11B7",
      LOC => "SLICE_X29Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N561
    );
  M1a_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_10_F5MUX_12038,
      O => M1a_10_Q
    );
  M1a_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y36"
    )
    port map (
      IA => N560,
      IB => N561,
      SEL => M1a_10_BXINV_12031,
      O => M1a_10_F5MUX_12038
    );
  M1a_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_10_BXINV_12031
    );
  M1a_10_47_F : X_LUT4
    generic map(
      INIT => X"0766",
      LOC => "SLICE_X29Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N560
    );
  M1a_21_51_G : X_LUT4
    generic map(
      INIT => X"076E",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => M1a_12_bdd0,
      ADR3 => U2_vcs(4),
      O => N481
    );
  M1a_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_21_F5MUX_12063,
      O => M1a_21_Q
    );
  M1a_21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      IA => N480,
      IB => N481,
      SEL => M1a_21_BXINV_12056,
      O => M1a_21_F5MUX_12063
    );
  M1a_21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_21_BXINV_12056
    );
  M1a_21_51_F : X_LUT4
    generic map(
      INIT => X"5503",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => M1a_12_bdd0,
      ADR1 => U2_vcs(3),
      ADR2 => N352_0,
      ADR3 => U2_vcs(4),
      O => N480
    );
  M1a_25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_25_F5MUX_12088,
      O => M1a_25_Q
    );
  M1a_25_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y38"
    )
    port map (
      IA => N470,
      IB => N471,
      SEL => M1a_25_BXINV_12081,
      O => M1a_25_F5MUX_12088
    );
  M1a_25_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1a_25_BXINV_12081
    );
  M1a_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_18_F5MUX_12113,
      O => M1a_18_Q
    );
  M1a_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y32"
    )
    port map (
      IA => N532,
      IB => N533,
      SEL => M1a_18_BXINV_12106,
      O => M1a_18_F5MUX_12113
    );
  M1a_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_18_BXINV_12106
    );
  M1a_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_19_F5MUX_12138,
      O => M1a_19_Q
    );
  M1a_19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y35"
    )
    port map (
      IA => N442,
      IB => N443,
      SEL => M1a_19_BXINV_12131,
      O => M1a_19_F5MUX_12138
    );
  M1a_19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1a_19_BXINV_12131
    );
  M1_28_120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_120_F5MUX_12163,
      O => M1_28_120
    );
  M1_28_120_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y44"
    )
    port map (
      IA => M1_28_1202_12154,
      IB => M1_28_1201_12161,
      SEL => M1_28_120_BXINV_12156,
      O => M1_28_120_F5MUX_12163
    );
  M1_28_120_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M1_28_120_BXINV_12156
    );
  M1a_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_28_F5MUX_12188,
      O => M1a_28_Q
    );
  M1a_28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      IA => N518,
      IB => N519,
      SEL => M1a_28_BXINV_12181,
      O => M1a_28_F5MUX_12188
    );
  M1a_28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => M1a_28_BXINV_12181
    );
  M2a_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_10_F5MUX_12213,
      O => M2a_10_Q
    );
  M2a_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y39"
    )
    port map (
      IA => N482,
      IB => N483,
      SEL => M2a_10_BXINV_12206,
      O => M2a_10_F5MUX_12213
    );
  M2a_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_10_BXINV_12206
    );
  M2a_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_12_F5MUX_12238,
      O => M2a_12_Q
    );
  M2a_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y38"
    )
    port map (
      IA => N440,
      IB => N441,
      SEL => M2a_12_BXINV_12231,
      O => M2a_12_F5MUX_12238
    );
  M2a_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2a_12_BXINV_12231
    );
  M2a_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_22_F5MUX_12263,
      O => M2a_22_Q
    );
  M2a_22_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y35"
    )
    port map (
      IA => N484,
      IB => N485,
      SEL => M2a_22_BXINV_12256,
      O => M2a_22_F5MUX_12263
    );
  M2a_22_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_22_BXINV_12256
    );
  M2a_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_29_F5MUX_12288,
      O => M2a_29_Q
    );
  M2a_29_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y34"
    )
    port map (
      IA => N530,
      IB => N531,
      SEL => M2a_29_BXINV_12281,
      O => M2a_29_F5MUX_12288
    );
  M2a_29_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M2a_29_BXINV_12281
    );
  N200_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N200_F5MUX_12313,
      O => N200
    );
  N200_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X39Y47"
    )
    port map (
      IA => N492,
      IB => N493,
      SEL => N200_BXINV_12306,
      O => N200_F5MUX_12313
    );
  N200_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X39Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N200_BXINV_12306
    );
  M1_29_1261 : X_LUT4
    generic map(
      INIT => X"887F",
      LOC => "SLICE_X26Y47"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => M1_29_1261_12336
    );
  M1_29_126_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_126_F5MUX_12338,
      O => M1_29_126
    );
  M1_29_126_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y47"
    )
    port map (
      IA => M1_29_1262_12329,
      IB => M1_29_1261_12336,
      SEL => M1_29_126_BXINV_12331,
      O => M1_29_126_F5MUX_12338
    );
  M1_29_126_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => M1_29_126_BXINV_12331
    );
  M1_29_1262 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X26Y47"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(3),
      O => M1_29_1262_12329
    );
  M1a_23_541 : X_LUT4
    generic map(
      INIT => X"8855",
      LOC => "SLICE_X33Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => M1a_23_541_12361
    );
  M1a_23_54_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_54_F5MUX_12363,
      O => M1a_23_54
    );
  M1a_23_54_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y40"
    )
    port map (
      IA => M1a_23_542_12353,
      IB => M1a_23_541_12361,
      SEL => M1a_23_54_BXINV_12355,
      O => M1a_23_54_F5MUX_12363
    );
  M1a_23_54_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => M1a_23_54_BXINV_12355
    );
  M1a_23_542 : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "SLICE_X33Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1a_23_542_12353
    );
  M1_21_48_G : X_LUT4
    generic map(
      INIT => X"2E34",
      LOC => "SLICE_X22Y38"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N507
    );
  M1_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_F5MUX_12388,
      O => M1_21_Q
    );
  M1_21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      IA => N506,
      IB => N507,
      SEL => M1_21_BXINV_12381,
      O => M1_21_F5MUX_12388
    );
  M1_21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_21_BXINV_12381
    );
  M1_21_48_F : X_LUT4
    generic map(
      INIT => X"7153",
      LOC => "SLICE_X22Y38"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => N256_0,
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N506
    );
  M1_22_35_G : X_LUT4
    generic map(
      INIT => X"8282",
      LOC => "SLICE_X20Y48"
    )
    port map (
      ADR0 => M1_22_11_0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => VCC,
      O => N475
    );
  M1_22_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_35_F5MUX_12413,
      O => M1_22_35
    );
  M1_22_35_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y48"
    )
    port map (
      IA => N474,
      IB => N475,
      SEL => M1_22_35_BXINV_12405,
      O => M1_22_35_F5MUX_12413
    );
  M1_22_35_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_22_35_BXINV_12405
    );
  M1_22_35_F : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X20Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => M1_22_bdd9_0,
      O => N474
    );
  M1_22_65_G : X_LUT4
    generic map(
      INIT => X"217B",
      LOC => "SLICE_X21Y44"
    )
    port map (
      ADR0 => U3_N71,
      ADR1 => M1_10_bdd4_0,
      ADR2 => U2_vcs(3),
      ADR3 => M1_10_bdd5_0,
      O => N435
    );
  M1_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_F5MUX_12438,
      O => M1_22_Q
    );
  M1_22_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X21Y44"
    )
    port map (
      IA => N434,
      IB => N435,
      SEL => M1_22_BXINV_12431,
      O => M1_22_F5MUX_12438
    );
  M1_22_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_22_BXINV_12431
    );
  M1_22_65_F : X_LUT4
    generic map(
      INIT => X"FF84",
      LOC => "SLICE_X21Y44"
    )
    port map (
      ADR0 => U3_N71,
      ADR1 => M1_22_bdd0,
      ADR2 => U2_vcs(3),
      ADR3 => M1_22_35,
      O => N434
    );
  M1_30_49_G : X_LUT4
    generic map(
      INIT => X"BFEE",
      LOC => "SLICE_X25Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(2),
      ADR3 => M1_21_bdd5_0,
      O => N425
    );
  M1_30_49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_30_49_F5MUX_12463,
      O => M1_30_49
    );
  M1_30_49_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y46"
    )
    port map (
      IA => N424,
      IB => N425,
      SEL => M1_30_49_BXINV_12456,
      O => M1_30_49_F5MUX_12463
    );
  M1_30_49_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M1_30_49_BXINV_12456
    );
  M1_30_49_F : X_LUT4
    generic map(
      INIT => X"AAEE",
      LOC => "SLICE_X25Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr(2),
      ADR2 => VCC,
      ADR3 => M1_22_bdd9_0,
      O => N424
    );
  M1_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_F5MUX_12488,
      O => M1_23_Q
    );
  M1_23_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y42"
    )
    port map (
      IA => N464,
      IB => N465,
      SEL => M1_23_BXINV_12481,
      O => M1_23_F5MUX_12488
    );
  M1_23_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_23_BXINV_12481
    );
  M1_31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_31_F5MUX_12513,
      O => M1_31_Q
    );
  M1_31_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X23Y43"
    )
    port map (
      IA => N410,
      IB => N411,
      SEL => M1_31_BXINV_12506,
      O => M1_31_F5MUX_12513
    );
  M1_31_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M1_31_BXINV_12506
    );
  M2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_10_F5MUX_12538,
      O => M2_10_Q
    );
  M2_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y45"
    )
    port map (
      IA => N508,
      IB => N509,
      SEL => M2_10_BXINV_12531,
      O => M2_10_F5MUX_12538
    );
  M2_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_10_BXINV_12531
    );
  M2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_12_F5MUX_12563,
      O => M2_12_Q
    );
  M2_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y43"
    )
    port map (
      IA => N488,
      IB => N489,
      SEL => M2_12_BXINV_12556,
      O => M2_12_F5MUX_12563
    );
  M2_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_12_BXINV_12556
    );
  M1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_F5MUX_12588,
      O => M1_10_Q
    );
  M1_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y45"
    )
    port map (
      IA => N548,
      IB => N549,
      SEL => M1_10_BXINV_12581,
      O => M1_10_F5MUX_12588
    );
  M1_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1_10_BXINV_12581
    );
  M2_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_18_F5MUX_12613,
      O => M2_18_Q
    );
  M2_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y38"
    )
    port map (
      IA => N494,
      IB => N495,
      SEL => M2_18_BXINV_12606,
      O => M2_18_F5MUX_12613
    );
  M2_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_18_BXINV_12606
    );
  M2_4_105_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_105_F5MUX_12638,
      O => M2_4_105
    );
  M2_4_105_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y53"
    )
    port map (
      IA => N422,
      IB => N423,
      SEL => M2_4_105_BXINV_12631,
      O => M2_4_105_F5MUX_12638
    );
  M2_4_105_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M2_4_105_BXINV_12631
    );
  M2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_F5MUX_12663,
      O => M2_4_Q
    );
  M2_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y48"
    )
    port map (
      IA => N418,
      IB => N419,
      SEL => M2_4_BXINV_12656,
      O => M2_4_F5MUX_12663
    );
  M2_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_4_BXINV_12656
    );
  M2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_F5MUX_12688,
      O => M2_5_Q
    );
  M2_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y49"
    )
    port map (
      IA => N524,
      IB => N525,
      SEL => M2_5_BXINV_12681,
      O => M2_5_F5MUX_12688
    );
  M2_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_5_BXINV_12681
    );
  M2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_F5MUX_12713,
      O => M2_7_Q
    );
  M2_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y48"
    )
    port map (
      IA => N438,
      IB => N439,
      SEL => M2_7_BXINV_12706,
      O => M2_7_F5MUX_12713
    );
  M2_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_7_BXINV_12706
    );
  M1_3_1_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X19Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => M1_3_1,
      ADR3 => VCC,
      O => M1_3_1_rt_12738
    );
  M1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_3_F5MUX_12740,
      O => M1_3_Q
    );
  M1_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y41"
    )
    port map (
      IA => M1_3_2,
      IB => M1_3_1_rt_12738,
      SEL => M1_3_BXINV_12730,
      O => M1_3_F5MUX_12740
    );
  M1_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M1_3_BXINV_12730
    );
  M1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_3_2,
      O => M1_3_2_0
    );
  M2_28_2 : X_LUT4
    generic map(
      INIT => X"7782",
      LOC => "SLICE_X19Y41"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => M1_3_2
    );
  U3_Mmux_M2a_mux0000_71_SW0_G : X_LUT4
    generic map(
      INIT => X"8956",
      LOC => "SLICE_X33Y35"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N455
    );
  N246_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => N246_F5MUX_12765,
      O => N246
    );
  N246_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y35"
    )
    port map (
      IA => N454,
      IB => N455,
      SEL => N246_BXINV_12758,
      O => N246_F5MUX_12765
    );
  N246_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_xpix2(0),
      O => N246_BXINV_12758
    );
  U3_Mmux_M2a_mux0000_71_SW0_F : X_LUT4
    generic map(
      INIT => X"8823",
      LOC => "SLICE_X33Y35"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N454
    );
  U3_Mmux_M2a_mux0000_73_SW0_G : X_LUT4
    generic map(
      INIT => X"0A05",
      LOC => "SLICE_X33Y38"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => VCC,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N535
    );
  N332_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N332_F5MUX_12790,
      O => N332
    );
  N332_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y38"
    )
    port map (
      IA => N534,
      IB => N535,
      SEL => N332_BXINV_12782,
      O => N332_F5MUX_12790
    );
  N332_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N332_BXINV_12782
    );
  U3_Mmux_M2a_mux0000_73_SW0_F : X_LUT4
    generic map(
      INIT => X"552F",
      LOC => "SLICE_X33Y38"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U3_xpix2(0),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N534
    );
  M2_7_441 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X38Y48"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2_7_441_12813
    );
  M2_7_44_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_44_F5MUX_12815,
      O => M2_7_44
    );
  M2_7_44_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X38Y48"
    )
    port map (
      IA => M2_7_442_12806,
      IB => M2_7_441_12813,
      SEL => M2_7_44_BXINV_12808,
      O => M2_7_44_F5MUX_12815
    );
  M2_7_44_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => M2_7_44_BXINV_12808
    );
  M2_7_442 : X_LUT4
    generic map(
      INIT => X"0608",
      LOC => "SLICE_X38Y48"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2_7_442_12806
    );
  U3_Mmux_M2_mux0000_9_SW0_G : X_LUT4
    generic map(
      INIT => X"4CDD",
      LOC => "SLICE_X26Y39"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(1),
      O => N457
    );
  N318_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N318_F5MUX_12840,
      O => N318
    );
  N318_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y39"
    )
    port map (
      IA => N456,
      IB => N457,
      SEL => N318_BXINV_12833,
      O => N318_F5MUX_12840
    );
  N318_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(2),
      O => N318_BXINV_12833
    );
  U3_Mmux_M2_mux0000_9_SW0_F : X_LUT4
    generic map(
      INIT => X"BBD8",
      LOC => "SLICE_X26Y39"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U3_xpix2(0),
      ADR3 => U2_vcs(1),
      O => N456
    );
  x7_digit_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_digit_0_F5MUX_12865,
      O => x7_digit(0)
    );
  x7_digit_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y69"
    )
    port map (
      IA => x7_Mmux_digit_4_12855,
      IB => x7_Mmux_digit_3_12863,
      SEL => x7_digit_0_BXINV_12857,
      O => x7_digit_0_F5MUX_12865
    );
  x7_digit_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_clkdiv(19),
      O => x7_digit_0_BXINV_12857
    );
  N226_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N226_F5MUX_12890,
      O => N226
    );
  N226_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y12"
    )
    port map (
      IA => U3_spriteonB2_and000056_SW01_12879,
      IB => U3_spriteonB2_and000056_SW0,
      SEL => N226_BXINV_12881,
      O => N226_F5MUX_12890
    );
  N226_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs(5),
      O => N226_BXINV_12881
    );
  M1a_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_9_F5MUX_12915,
      O => M1a_9_Q
    );
  M1a_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y37"
    )
    port map (
      IA => N504,
      IB => N505,
      SEL => M1a_9_BXINV_12908,
      O => M1a_9_F5MUX_12915
    );
  M1a_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M1a_9_BXINV_12908
    );
  M2a_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_3_F5MUX_12940,
      O => M2a_3_Q
    );
  M2a_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X36Y42"
    )
    port map (
      IA => N520,
      IB => N521,
      SEL => M2a_3_BXINV_12933,
      O => M2a_3_F5MUX_12940
    );
  M2a_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(4),
      O => M2a_3_BXINV_12933
    );
  M2a_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_F5MUX_12965,
      O => M2a_6_Q
    );
  M2a_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X34Y42"
    )
    port map (
      IA => N472,
      IB => N473,
      SEL => M2a_6_BXINV_12958,
      O => M2a_6_F5MUX_12965
    );
  M2a_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2a_6_BXINV_12958
    );
  N298_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => N298_F5MUX_12990,
      O => N298
    );
  N298_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y47"
    )
    port map (
      IA => N478,
      IB => N479,
      SEL => N298_BXINV_12983,
      O => N298_F5MUX_12990
    );
  N298_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => N298_BXINV_12983
    );
  M1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_1_F5MUX_13015,
      O => M1_1_Q
    );
  M1_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      IA => N450,
      IB => N451,
      SEL => M1_1_BXINV_13008,
      O => M1_1_F5MUX_13015
    );
  M1_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1_1_BXINV_13008
    );
  M2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_F5MUX_13040,
      O => M2_0_Q
    );
  M2_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y48"
    )
    port map (
      IA => N412,
      IB => N413,
      SEL => M2_0_BXINV_13033,
      O => M2_0_F5MUX_13040
    );
  M2_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => M2_0_BXINV_13033
    );
  M2_1_49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_49_F5MUX_13065,
      O => M2_1_49
    );
  M2_1_49_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y48"
    )
    port map (
      IA => N420,
      IB => N421,
      SEL => M2_1_49_BXINV_13058,
      O => M2_1_49_F5MUX_13065
    );
  M2_1_49_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M2_1_49_BXINV_13058
    );
  M2_4_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_29_F5MUX_13090,
      O => M2_4_29
    );
  M2_4_29_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y52"
    )
    port map (
      IA => N432,
      IB => N433,
      SEL => M2_4_29_BXINV_13082,
      O => M2_4_29_F5MUX_13090
    );
  M2_4_29_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y52",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => M2_4_29_BXINV_13082
    );
  M2_9_35_G : X_LUT4
    generic map(
      INIT => X"C300",
      LOC => "SLICE_X30Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => M2_9_9_0,
      O => N477
    );
  M2_9_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_35_F5MUX_13115,
      O => M2_9_35
    );
  M2_9_35_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y47"
    )
    port map (
      IA => N476,
      IB => N477,
      SEL => M2_9_35_BXINV_13107,
      O => M2_9_35_F5MUX_13115
    );
  M2_9_35_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2_9_35_BXINV_13107
    );
  M2_9_35_F : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X30Y47"
    )
    port map (
      ADR0 => M2_0_bdd6_0,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N476
    );
  M2_8_77_G : X_LUT4
    generic map(
      INIT => X"9F44",
      LOC => "SLICE_X32Y47"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N467
    );
  M2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_F5MUX_13140,
      O => M2_8_Q
    );
  M2_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X32Y47"
    )
    port map (
      IA => N466,
      IB => N467,
      SEL => M2_8_BXINV_13133,
      O => M2_8_F5MUX_13140
    );
  M2_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_8_BXINV_13133
    );
  M2_8_77_F : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X32Y47"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M2_8_20_0,
      ADR2 => M2_8_bdd1_0,
      ADR3 => M2_8_29_0,
      O => N466
    );
  M2_9_65_G : X_LUT4
    generic map(
      INIT => X"096F",
      LOC => "SLICE_X27Y44"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U3_N71,
      ADR2 => M1_10_bdd4_0,
      ADR3 => M1_10_bdd5_0,
      O => N437
    );
  M2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_F5MUX_13165,
      O => M2_9_Q
    );
  M2_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y44"
    )
    port map (
      IA => N436,
      IB => N437,
      SEL => M2_9_BXINV_13158,
      O => M2_9_F5MUX_13165
    );
  M2_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_4_0,
      O => M2_9_BXINV_13158
    );
  M2_9_65_F : X_LUT4
    generic map(
      INIT => X"FF90",
      LOC => "SLICE_X27Y44"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U3_N71,
      ADR2 => M2_9_bdd0,
      ADR3 => M2_9_35,
      O => N436
    );
  M2a_7_64_SW0_G : X_LUT4
    generic map(
      INIT => X"1154",
      LOC => "SLICE_X35Y42"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => M2_0_bdd6_0,
      ADR3 => U2_vcs(1),
      O => N429
    );
  N260_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => N260_F5MUX_13190,
      O => N260
    );
  N260_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      IA => N428,
      IB => N429,
      SEL => N260_BXINV_13183,
      O => N260_F5MUX_13190
    );
  N260_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(3),
      O => N260_BXINV_13183
    );
  M2a_7_64_SW0_F : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X35Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N216_0,
      ADR2 => U2_vcs(1),
      ADR3 => M2a_6_bdd1,
      O => N428
    );
  M2a_9_44_SW0_G : X_LUT4
    generic map(
      INIT => X"5FEA",
      LOC => "SLICE_X37Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M2_0_bdd13_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N461
    );
  N294_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N294_F5MUX_13215,
      O => N294
    );
  N294_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X37Y43"
    )
    port map (
      IA => N460,
      IB => N461,
      SEL => N294_BXINV_13208,
      O => N294_F5MUX_13215
    );
  N294_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X37Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(0),
      O => N294_BXINV_13208
    );
  M2a_9_44_SW0_F : X_LUT4
    generic map(
      INIT => X"5FA8",
      LOC => "SLICE_X37Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N460
    );
  M1a_20_G : X_LUT4
    generic map(
      INIT => X"405F",
      LOC => "SLICE_X28Y35"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N463
    );
  M1a_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_20_F5MUX_13240,
      O => M1a_20_Q
    );
  M1a_20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y35"
    )
    port map (
      IA => N462,
      IB => N463,
      SEL => M1a_20_BXINV_13233,
      O => M1a_20_F5MUX_13240
    );
  M1a_20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(3),
      O => M1a_20_BXINV_13233
    );
  M1a_20_F : X_LUT4
    generic map(
      INIT => X"02A2",
      LOC => "SLICE_X28Y35"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N462
    );
  M2a_13_F : X_LUT4
    generic map(
      INIT => X"437E",
      LOC => "SLICE_X33Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N528
    );
  M2a_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_13_F5MUX_13265,
      O => M2a_13_Q
    );
  M2a_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X33Y39"
    )
    port map (
      IA => N528,
      IB => N529,
      SEL => M2a_13_BXINV_13258,
      O => M2a_13_F5MUX_13265
    );
  M2a_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs(1),
      O => M2a_13_BXINV_13258
    );
  M2a_13_G : X_LUT4
    generic map(
      INIT => X"117D",
      LOC => "SLICE_X33Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N529
    );
  U3_C1_not000127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000127_13288,
      O => U3_C1_not000127_0
    );
  U3_C1_not000127_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not00014_O_pack_1,
      O => U3_C1_not00014_O
    );
  nes_right_reg_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_N01_pack_1,
      O => nes_N01
    );
  U3_C1_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001,
      O => U3_C1_not0001_0
    );
  U3_C1_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000183_O_pack_1,
      O => U3_C1_not000183_O
    );
  nes_counter_reg_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001,
      O => nes_counter_reg_not0001_0
    );
  nes_counter_reg_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq0000_pack_1,
      O => nes_scalar_next_cmp_eq0000
    );
  nes_N11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_N11,
      O => nes_N11_0
    );
  nes_N11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_cmp_eq0000125_pack_1,
      O => nes_counter_reg_cmp_eq0000125_5437
    );
  U3_C2_not000164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000164_13408,
      O => U3_C2_not000164_0
    );
  U3_C2_not000164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000150_O_pack_1,
      O => U3_C2_not000150_O
    );
  U3_C2_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not0001,
      O => U3_C2_not0001_0
    );
  U3_C2_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000123_O_pack_1,
      O => U3_C2_not000123_O
    );
  U3_tank2_angle_calc_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and0000,
      O => U3_tank2_angle_calc_and0000_0
    );
  U3_tank2_angle_calc_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and000046_O_pack_1,
      O => U3_tank2_angle_calc_and000046_O
    );
  U2_vcs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_5,
      O => U2_vcs_5_DXMUX_13489
    );
  U2_vcs_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_cmp_eq0000_pack_1,
      O => U2_vcs_cmp_eq0000_5449
    );
  U2_vcs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_5_CLKINV_13471
    );
  U2_vcs_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5448,
      O => U2_vcs_5_CEINV_13470
    );
  U3_C2_not00016 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X3Y30"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => U3_C2(4),
      ADR2 => U3_C2_not00011_O,
      ADR3 => U3_C2(3),
      O => U3_C2_not00016_13518
    );
  U3_C2_not00016_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not00016_13518,
      O => U3_C2_not00016_0
    );
  U3_C2_not00016_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not00011_O_pack_1,
      O => U3_C2_not00011_O
    );
  U3_C2_not00011 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X3Y30"
    )
    port map (
      ADR0 => U3_C2(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(1),
      O => U3_C2_not00011_O_pack_1
    );
  U3_tank1_angle_calc_and000055 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X51Y67"
    )
    port map (
      ADR0 => U3_tank1_angle_calc_and000027_0,
      ADR1 => U3_tank1_angle_calc_and000051_0,
      ADR2 => U3_tank1_angle_calc(7),
      ADR3 => U3_tank1_angle_calc_and000014_O,
      O => U3_tank1_angle_calc_and0000
    );
  U3_tank1_angle_calc_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and0000,
      O => U3_tank1_angle_calc_and0000_0
    );
  U3_tank1_angle_calc_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and000014_O_pack_1,
      O => U3_tank1_angle_calc_and000014_O
    );
  U3_tank1_angle_calc_and000014 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X51Y67"
    )
    port map (
      ADR0 => nes_down_reg_5456,
      ADR1 => who_present_state_FSM_FFd2_5427,
      ADR2 => nes_up_reg_4814,
      ADR3 => U3_tank1_angle_calc(0),
      O => U3_tank1_angle_calc_and000014_O_pack_1
    );
  U2_Mcount_hcs_eqn_11 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result_1_1,
      ADR2 => U2_hcs_cmp_eq000010_5457,
      ADR3 => U2_hcs_cmp_eq00005_5458,
      O => U2_Mcount_hcs_eqn_1
    );
  U2_hcs_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_1,
      O => U2_hcs_1_DXMUX_13573
    );
  U2_hcs_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_cmp_eq000010_pack_1,
      O => U2_hcs_cmp_eq000010_5457
    );
  U2_hcs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_1_CLKINV_13556
    );
  U2_hcs_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U2_hcs(8),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(2),
      O => U2_hcs_cmp_eq000010_pack_1
    );
  U2_vsenable_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_cmp_eq0000,
      O => U2_vsenable_DXMUX_13608
    );
  U2_vsenable_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_cmp_eq00005_pack_1,
      O => U2_hcs_cmp_eq00005_5458
    );
  U2_vsenable_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vsenable_CLKINV_13591
    );
  U2_vsenable_CEINV : X_INV
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vsenable_CEINVNOT
    );
  nes_counter_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_1,
      O => nes_counter_reg_1_DXMUX_13651
    );
  nes_counter_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_0,
      O => nes_counter_reg_1_DYMUX_13636
    );
  nes_counter_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_counter_reg_1_SRINV_13628
    );
  nes_counter_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_1_CLKINV_13627
    );
  nes_counter_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_1_CEINV_13626
    );
  nes_counter_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_3,
      O => nes_counter_reg_3_DXMUX_13697
    );
  nes_counter_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_2,
      O => nes_counter_reg_3_DYMUX_13682
    );
  nes_counter_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_counter_reg_3_SRINV_13674
    );
  nes_counter_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_3_CLKINV_13673
    );
  nes_counter_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_3_CEINV_13672
    );
  nes_counter_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_5,
      O => nes_counter_reg_5_DXMUX_13743
    );
  nes_counter_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_4,
      O => nes_counter_reg_5_DYMUX_13728
    );
  nes_counter_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_counter_reg_5_SRINV_13720
    );
  nes_counter_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_5_CLKINV_13719
    );
  nes_counter_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_5_CEINV_13718
    );
  nes_Mcount_counter_reg_eqn_71 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X50Y30"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_counter_reg(4),
      ADR3 => nes_Result(7),
      O => nes_Mcount_counter_reg_eqn_7
    );
  nes_counter_reg_7_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X50Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_7_SRINV_13766,
      O => nes_counter_reg_7_FFX_RST
    );
  nes_counter_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_7_DXMUX_13789,
      CE => nes_counter_reg_7_CEINV_13764,
      CLK => nes_counter_reg_7_CLKINV_13765,
      SET => GND,
      RST => nes_counter_reg_7_FFX_RST,
      O => nes_counter_reg(7)
    );
  nes_counter_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_7,
      O => nes_counter_reg_7_DXMUX_13789
    );
  nes_counter_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_6,
      O => nes_counter_reg_7_DYMUX_13774
    );
  nes_counter_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_counter_reg_7_SRINV_13766
    );
  nes_counter_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_7_CLKINV_13765
    );
  nes_counter_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_7_CEINV_13764
    );
  nes_counter_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_7_DYMUX_13774,
      CE => nes_counter_reg_7_CEINV_13764,
      CLK => nes_counter_reg_7_CLKINV_13765,
      SET => GND,
      RST => nes_counter_reg_7_SRINV_13766,
      O => nes_counter_reg(6)
    );
  nes_counter_reg_9_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X50Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_9_SRINV_13812,
      O => nes_counter_reg_9_FFY_RST
    );
  nes_counter_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X50Y29",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_9_DYMUX_13820,
      CE => nes_counter_reg_9_CEINV_13810,
      CLK => nes_counter_reg_9_CLKINV_13811,
      SET => GND,
      RST => nes_counter_reg_9_FFY_RST,
      O => nes_counter_reg(8)
    );
  nes_counter_reg_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_9,
      O => nes_counter_reg_9_DXMUX_13835
    );
  nes_counter_reg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_Mcount_counter_reg_eqn_8,
      O => nes_counter_reg_9_DYMUX_13820
    );
  nes_counter_reg_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_counter_reg_9_SRINV_13812
    );
  nes_counter_reg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_counter_reg_9_CLKINV_13811
    );
  nes_counter_reg_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_not0001_0,
      O => nes_counter_reg_9_CEINV_13810
    );
  nes_Mcount_counter_reg_eqn_81 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X50Y29"
    )
    port map (
      ADR0 => nes_Result(8),
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_N11_0,
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_8
    );
  U1_q_01_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_XORF_13861,
      O => U1_q_01_DXMUX_13863
    );
  U1_q_01_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y13"
    )
    port map (
      I0 => U1_q_01_CYINIT_13860,
      I1 => U1_Mcount_q_lut_0_rt_13858,
      O => U1_q_01_XORF_13861
    );
  U1_q_01_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q_01_BXINV_13850,
      O => U1_q_01_CYINIT_13860
    );
  U1_q_01_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => U1_q_01_BXINV_13850
    );
  U1_q_01_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => mclk_BUFGP,
      O => U1_q_01_CLKINV_13848
    );
  U2_hcs_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_0,
      O => U2_hcs_0_DYMUX_13886
    );
  U2_hcs_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_0_CLKINV_13876
    );
  U2_hcs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_3,
      O => U2_hcs_3_DXMUX_13928
    );
  U2_hcs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_2,
      O => U2_hcs_3_DYMUX_13913
    );
  U2_hcs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_hcs_3_SRINV_13904
    );
  U2_hcs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_3_CLKINV_13903
    );
  U2_hcs_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_5,
      O => U2_hcs_5_DXMUX_13970
    );
  U2_hcs_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_4,
      O => U2_hcs_5_DYMUX_13955
    );
  U2_hcs_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_hcs_5_SRINV_13946
    );
  U2_hcs_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_5_CLKINV_13945
    );
  U2_hcs_7_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_7_SRINV_13988,
      O => U2_hcs_7_FFX_RST
    );
  U2_hcs_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => U2_hcs_7_DXMUX_14012,
      CE => VCC,
      CLK => U2_hcs_7_CLKINV_13987,
      SET => GND,
      RST => U2_hcs_7_FFX_RST,
      O => U2_hcs(7)
    );
  U2_hcs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_7,
      O => U2_hcs_7_DXMUX_14012
    );
  U2_hcs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_6,
      O => U2_hcs_7_DYMUX_13997
    );
  U2_hcs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_hcs_7_SRINV_13988
    );
  U2_hcs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_7_CLKINV_13987
    );
  U2_Mcount_hcs_eqn_71 : X_LUT4
    generic map(
      INIT => X"0CCC",
      LOC => "SLICE_X15Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result_7_1,
      ADR2 => U2_hcs_cmp_eq000010_5457,
      ADR3 => U2_hcs_cmp_eq00005_5458,
      O => U2_Mcount_hcs_eqn_7
    );
  U2_hcs_9_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_hcs_9_SRINV_14030,
      O => U2_hcs_9_FFY_RST
    );
  U2_hcs_8 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      I => U2_hcs_9_DYMUX_14039,
      CE => VCC,
      CLK => U2_hcs_9_CLKINV_14029,
      SET => GND,
      RST => U2_hcs_9_FFY_RST,
      O => U2_hcs(8)
    );
  U2_Mcount_hcs_eqn_91 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5457,
      ADR1 => VCC,
      ADR2 => U2_Result_9_1,
      ADR3 => U2_hcs_cmp_eq00005_5458,
      O => U2_Mcount_hcs_eqn_9
    );
  U2_hcs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_9,
      O => U2_hcs_9_DXMUX_14054
    );
  U2_hcs_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_hcs_eqn_8,
      O => U2_hcs_9_DYMUX_14039
    );
  U2_hcs_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_hcs_9_SRINV_14030
    );
  U2_hcs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_hcs_9_CLKINV_14029
    );
  U2_Mcount_hcs_eqn_81 : X_LUT4
    generic map(
      INIT => X"44CC",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5457,
      ADR1 => U2_Result_8_1,
      ADR2 => VCC,
      ADR3 => U2_hcs_cmp_eq00005_5458,
      O => U2_Mcount_hcs_eqn_8
    );
  U2_vcs_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_1,
      O => U2_vcs_1_DXMUX_14099
    );
  U2_vcs_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_0,
      O => U2_vcs_1_DYMUX_14082
    );
  U2_vcs_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vcs_1_SRINV_14072
    );
  U2_vcs_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_1_CLKINV_14071
    );
  U2_vcs_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5448,
      O => U2_vcs_1_CEINV_14070
    );
  U2_vcs_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_3,
      O => U2_vcs_3_DXMUX_14145
    );
  U2_vcs_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_2,
      O => U2_vcs_3_DYMUX_14128
    );
  U2_vcs_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vcs_3_SRINV_14118
    );
  U2_vcs_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_3_CLKINV_14117
    );
  U2_vcs_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5448,
      O => U2_vcs_3_CEINV_14116
    );
  U2_vcs_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_4,
      O => U2_vcs_4_DYMUX_14171
    );
  U2_vcs_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_4_CLKINV_14160
    );
  U2_vcs_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5448,
      O => U2_vcs_4_CEINV_14159
    );
  U2_vcs_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_7,
      O => U2_vcs_7_DXMUX_14217
    );
  U2_vcs_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_6,
      O => U2_vcs_7_DYMUX_14200
    );
  U2_vcs_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vcs_7_SRINV_14190
    );
  U2_vcs_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_7_CLKINV_14189
    );
  U2_vcs_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5448,
      O => U2_vcs_7_CEINV_14188
    );
  U2_Mcount_vcs_eqn_91 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5449,
      ADR1 => U2_Result(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_9
    );
  U2_vcs_9_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vcs_9_SRINV_14236,
      O => U2_vcs_9_FFX_RST
    );
  U2_vcs_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DXMUX_14263,
      CE => U2_vcs_9_CEINV_14234,
      CLK => U2_vcs_9_CLKINV_14235,
      SET => GND,
      RST => U2_vcs_9_FFX_RST,
      O => U2_vcs(9)
    );
  U2_vcs_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_9,
      O => U2_vcs_9_DXMUX_14263
    );
  U2_vcs_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_Mcount_vcs_eqn_8,
      O => U2_vcs_9_DYMUX_14246
    );
  U2_vcs_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vcs_9_SRINV_14236
    );
  U2_vcs_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => U2_vcs_9_CLKINV_14235
    );
  U2_vcs_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vsenable_5448,
      O => U2_vcs_9_CEINV_14234
    );
  U2_vcs_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      I => U2_vcs_9_DYMUX_14246,
      CE => U2_vcs_9_CEINV_14234,
      CLK => U2_vcs_9_CLKINV_14235,
      SET => GND,
      RST => U2_vcs_9_SRINV_14236,
      O => U2_vcs(8)
    );
  nes_scalar_reg_1_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_reg_1_SRINV_14280,
      O => nes_scalar_reg_1_FFY_RST
    );
  nes_scalar_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X51Y8",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_1_DYMUX_14290,
      CE => VCC,
      CLK => nes_scalar_reg_1_CLKINV_14279,
      SET => GND,
      RST => nes_scalar_reg_1_FFY_RST,
      O => nes_scalar_reg(0)
    );
  nes_scalar_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(1),
      O => nes_scalar_reg_1_DXMUX_14306
    );
  nes_scalar_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(0),
      O => nes_scalar_reg_1_DYMUX_14290
    );
  nes_scalar_reg_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_scalar_reg_1_SRINV_14280
    );
  nes_scalar_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_1_CLKINV_14279
    );
  nes_scalar_next_0_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X51Y8"
    )
    port map (
      ADR0 => nes_scalar_next_addsub0000(0),
      ADR1 => VCC,
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => VCC,
      O => nes_scalar_next(0)
    );
  nes_scalar_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(3),
      O => nes_scalar_reg_3_DXMUX_14348
    );
  nes_scalar_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(2),
      O => nes_scalar_reg_3_DYMUX_14332
    );
  nes_scalar_reg_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_scalar_reg_3_SRINV_14322
    );
  nes_scalar_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_3_CLKINV_14321
    );
  nes_scalar_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(5),
      O => nes_scalar_reg_5_DXMUX_14390
    );
  nes_scalar_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(4),
      O => nes_scalar_reg_5_DYMUX_14374
    );
  nes_scalar_reg_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_scalar_reg_5_SRINV_14364
    );
  nes_scalar_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_5_CLKINV_14363
    );
  nes_scalar_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(7),
      O => nes_scalar_reg_7_DXMUX_14432
    );
  nes_scalar_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(6),
      O => nes_scalar_reg_7_DYMUX_14416
    );
  nes_scalar_reg_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_scalar_reg_7_SRINV_14406
    );
  nes_scalar_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_7_CLKINV_14405
    );
  nes_scalar_reg_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(9),
      O => nes_scalar_reg_9_DXMUX_14474
    );
  nes_scalar_reg_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next(8),
      O => nes_scalar_reg_9_DYMUX_14458
    );
  nes_scalar_reg_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => nes_scalar_reg_9_SRINV_14448
    );
  nes_scalar_reg_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_scalar_reg_9_CLKINV_14447
    );
  nes_scalar_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X51Y15",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_9_DXMUX_14474,
      CE => VCC,
      CLK => nes_scalar_reg_9_CLKINV_14447,
      SET => GND,
      RST => nes_scalar_reg_9_SRINV_14448,
      O => nes_scalar_reg(9)
    );
  nes_a_reg_cmp_eq00002 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_N01,
      ADR2 => nes_counter_reg(1),
      ADR3 => nes_counter_reg(3),
      O => nes_a_reg_cmp_eq0000
    );
  nes_left_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X48Y32"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_N01,
      ADR2 => nes_counter_reg(1),
      ADR3 => nes_counter_reg(3),
      O => nes_left_reg_cmp_eq0000
    );
  x7_an_0_mux00011 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X65Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(18),
      ADR3 => x7_clkdiv(19),
      O => an_0_OBUF_14526
    );
  an_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_an_1_mux00012_14517,
      O => x7_an_1_mux00012_0
    );
  x7_an_1_mux00012 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X65Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(18),
      ADR3 => x7_clkdiv(19),
      O => x7_an_1_mux00012_14517
    );
  U3_C1_not000147_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000147_14550,
      O => U3_C1_not000147_0
    );
  U3_C1_not000147_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not000110_14541,
      O => U3_C1_not000110_0
    );
  blue_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N98_pack_1,
      O => U3_N98
    );
  N400_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N400,
      O => N400_0
    );
  N400_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N392,
      O => N392_0
    );
  an_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  N168_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N168,
      O => N168_0
    );
  N168_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_an_1_mux000115_14638,
      O => x7_an_1_mux000115_0
    );
  an_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_an_1_mux000152_pack_1,
      O => x7_an_1_mux000152_5471
    );
  U3_spriteonGrnd_and0000110_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and0000110_14694,
      O => U3_spriteonGrnd_and0000110_0
    );
  U3_spriteonGrnd_and0000110_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N42_pack_1,
      O => U3_N42
    );
  U3_C1_not00015_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not00015_14718,
      O => U3_C1_not00015_0
    );
  U3_C1_not00015_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C1_not0001105_14709,
      O => U3_C1_not0001105_0
    );
  U3_N40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N40,
      O => U3_N40_0
    );
  U3_N40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N101_pack_1,
      O => U3_N101
    );
  M2_0_bdd13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd13,
      O => M2_0_bdd13_0
    );
  M2_0_bdd13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X42Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N137_pack_1,
      O => N137
    );
  U2_vcs_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X13Y3"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vcs(7),
      ADR3 => U2_vcs(6),
      O => U2_N2
    );
  U2_N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_N2,
      O => U2_N2_0
    );
  U2_N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => N302,
      O => N302_0
    );
  U3_spriteonB5_and000034_SW0 : X_LUT4
    generic map(
      INIT => X"EE00",
      LOC => "SLICE_X13Y3"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => U3_spriteonB5_and000017,
      ADR2 => VCC,
      ADR3 => U2_vcs(7),
      O => N302
    );
  U3_tank2Angle_1_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X43Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(5),
      ADR1 => U3_tank2_angle_calc(6),
      ADR2 => N139,
      ADR3 => U3_tank2_angle_calc(7),
      O => M2_0_bdd6
    );
  M2_0_bdd6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd6,
      O => M2_0_bdd6_0
    );
  M2_0_bdd6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => N139_pack_1,
      O => N139
    );
  U3_tank2Angle_1_1_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X43Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(1),
      ADR1 => U3_tank2_angle_calc(4),
      ADR2 => U3_tank2_angle_calc(2),
      ADR3 => U3_tank2_angle_calc(3),
      O => N139_pack_1
    );
  U3_spriteonB3_cmp_le00002128 : X_LUT4
    generic map(
      INIT => X"0313",
      LOC => "SLICE_X4Y2"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U2_hcs(4),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(1),
      O => U3_spriteonB3_cmp_le00002128_14838
    );
  U3_spriteonB3_cmp_le00002128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_cmp_le00002128_14838,
      O => U3_spriteonB3_cmp_le00002128_0
    );
  U3_spriteonB3_cmp_le00002128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => N230,
      O => N230_0
    );
  U3_spriteonB5_and000073_SW0 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X4Y2"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => VCC,
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(1),
      O => N230
    );
  U3_blue_1_1 : X_LUT4
    generic map(
      INIT => X"1300",
      LOC => "SLICE_X16Y10"
    )
    port map (
      ADR0 => U3_N98,
      ADR1 => U3_spriteonGrnd_0,
      ADR2 => U3_M1a_mux0000,
      ADR3 => U3_N102_0,
      O => blue_1_OBUF_14855
    );
  U3_blue_0_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_0_27_14886,
      O => U3_blue_0_27_0
    );
  U3_blue_0_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_0_9_pack_1,
      O => U3_blue_0_9_5481
    );
  U3_Madd_spriteon2_addsub0000_cy_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_cy(5),
      O => U3_Madd_spriteon2_addsub0000_cy_5_0
    );
  U3_Madd_spriteon2_addsub0000_cy_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(5),
      O => U3_spriteon2_addsub0000_5_0
    );
  U3_spriteon2_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(8),
      O => U3_spriteon2_addsub0000_8_0
    );
  U3_spriteon2_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N16_pack_1,
      O => U3_N16
    );
  U3_spriteonB1_cmp_lt0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_cmp_lt0000,
      O => U3_spriteonB1_cmp_lt0000_0
    );
  U3_spriteonB1_cmp_lt0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_cmp_lt0000232_pack_1,
      O => U3_spriteonB1_cmp_lt0000232_5486
    );
  M1_23_bdd3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_bdd3,
      O => M1_23_bdd3_0
    );
  M1_23_bdd3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_2_pack_1,
      O => rom1_addr(2)
    );
  M1a_23_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_10_15006,
      O => M1a_23_10_0
    );
  M1a_23_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr_3_pack_2,
      O => rom1_addr(3)
    );
  M1a_1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_1_7_15030,
      O => M1a_1_7_0
    );
  M1a_1_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => rom1_addr(4),
      O => rom1_addr_4_0
    );
  ja2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_counter_reg_cmp_eq0000112_pack_1,
      O => nes_counter_reg_cmp_eq0000112_5438
    );
  U3_spriteonB5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5,
      O => U3_spriteonB5_0
    );
  U3_spriteonB5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and000034_pack_1,
      O => U3_spriteonB5_and000034_5492
    );
  red_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N35_pack_1,
      O => U3_N35
    );
  N372_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => N372,
      O => N372_0
    );
  N372_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000015_pack_1,
      O => U3_spriteonGrnd_and000015_5495
    );
  U3_spriteonGrnd_and000091_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000091_15150,
      O => U3_spriteonGrnd_and000091_0
    );
  U3_spriteonGrnd_and000091_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000034_pack_3,
      O => U3_spriteonGrnd_and000034_5498
    );
  U3_spriteonGrnd_and000064_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000064_15174,
      O => U3_spriteonGrnd_and000064_0
    );
  U3_spriteonGrnd_and000064_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000051_pack_1,
      O => U3_spriteonGrnd_and000051_5501
    );
  U3_spriteonB3_cmp_le00002112_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_cmp_le00002112_15198,
      O => U3_spriteonB3_cmp_le00002112_0
    );
  U3_spriteonB3_cmp_le00002112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd_and000046_15191,
      O => U3_spriteonGrnd_and000046_0
    );
  N10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  N10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y69",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N63,
      O => U3_N63_0
    );
  U3_tank1_angle_calc_and000051_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and000051_15246,
      O => U3_tank1_angle_calc_and000051_0
    );
  U3_tank1_angle_calc_and000051_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y68",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_mux0004_7_16_15239,
      O => U3_tank1_angle_calc_mux0004_7_16_0
    );
  U3_Madd_spriteon2_addsub0000_lut_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(8),
      O => U3_Madd_spriteon2_addsub0000_lut_8_0
    );
  U3_Madd_spriteon2_addsub0000_lut_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_C2_not000113_15261,
      O => U3_C2_not000113_0
    );
  an_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_an_1_mux000128_pack_1,
      O => x7_an_1_mux000128
    );
  N160_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => N160,
      O => N160_0
    );
  N160_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => x7_an_2_mux000128_15311,
      O => x7_an_2_mux000128_0
    );
  M2a_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_5_Q,
      O => M2a_5_0
    );
  M2a_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_26_Q,
      O => M1a_26_0
    );
  U3_spriteon1_addsub0001_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon1_addsub0001(8),
      O => U3_spriteon1_addsub0001_8_0
    );
  U3_spriteon1_addsub0001_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N15_pack_1,
      O => U3_N15
    );
  ja3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N220_pack_1,
      O => N220
    );
  U3_spriteonB4_and00009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and00009_15414,
      O => U3_spriteonB4_and00009_0
    );
  U3_spriteonB4_and00009_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N71_pack_1,
      O => U3_N71
    );
  U3_Madd_spriteon2_addsub0000_lut_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut_8_bdd0_pack_1,
      O => U3_Madd_spriteon2_addsub0000_lut_8_bdd0
    );
  N170_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N170,
      O => N170_0
    );
  N170_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  N164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N164,
      O => N164_0
    );
  N164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y67",
      PATHPULSE => 555 ps
    )
    port map (
      I => N153,
      O => N153_0
    );
  N398_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N398,
      O => N398_0
    );
  N398_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N390,
      O => N390_0
    );
  U3_tank2_angle_calc_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_not0001,
      O => U3_tank2_angle_calc_not0001_0
    );
  U3_tank2_angle_calc_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_not0001,
      O => U3_tank1_angle_calc_not0001_0
    );
  U2_vidon_and000039_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000039_15654,
      O => U2_vidon_and000039_0
    );
  U2_vidon_and000039_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and00000_pack_1,
      O => U2_vidon_and00000_5512
    );
  U3_spriteonB1_and000018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000018_15678,
      O => U3_spriteonB1_and000018_0
    );
  U3_spriteonB1_and000018_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and00006_15671,
      O => U2_vidon_and00006_0
    );
  N256_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N256,
      O => N256_0
    );
  N256_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N352,
      O => N352_0
    );
  N162_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => N162,
      O => N162_0
    );
  N162_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y65",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and000011_15718,
      O => U3_tank2_angle_calc_and000011_0
    );
  U3_tank2_angle_calc_mux0004_7_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_mux0004_7_4_15750,
      O => U3_tank2_angle_calc_mux0004_7_4_0
    );
  U3_tank2_angle_calc_mux0004_7_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_and000023_15742,
      O => U3_tank2_angle_calc_and000023_0
    );
  M1_22_bdd9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd9,
      O => M1_22_bdd9_0
    );
  M1_22_bdd9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N128_pack_1,
      O => N128
    );
  M1a_27_52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_52_15798,
      O => M1a_27_52_0
    );
  M1a_27_52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N212,
      O => N212_0
    );
  N338_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N338,
      O => N338_0
    );
  N338_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N354,
      O => N354_0
    );
  nes_a_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_5274,
      O => nes_a_reg_DYMUX_15832
    );
  nes_a_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_a_reg_CLKINV_15830
    );
  nes_a_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_cmp_eq0000,
      O => nes_a_reg_CEINV_15829
    );
  M1_26_58_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_58_15858,
      O => M1_26_58_0
    );
  M1_26_58_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_11_15851,
      O => M1_22_11_0
    );
  M1a_27_82_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_82_15882,
      O => M1a_27_82_0
    );
  M1a_27_82_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_351_pack_2,
      O => M1_25_351
    );
  M1_27_192_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_192_15894,
      O => M1_27_192_0
    );
  M1_26_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_bdd0,
      O => M1_26_bdd0_0
    );
  M1_26_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N366_pack_2,
      O => N366
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_nes_clk31_15935,
      O => nes_nes_clk31_0
    );
  M1a_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_29_Q,
      O => M1a_29_0
    );
  M1a_29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N308_pack_1,
      O => N308
    );
  U3_spriteonB4_and000089_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000089_15990,
      O => U3_spriteonB4_and000089_0
    );
  U3_spriteonB4_and000089_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N25_pack_1,
      O => U3_N25
    );
  M2_8_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_20_16014,
      O => M2_8_20_0
    );
  M2_8_20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N218,
      O => N218_0
    );
  U2_vidon_and000018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000018_16038,
      O => U2_vidon_and000018_0
    );
  U2_vidon_and000018_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000013_pack_1,
      O => U2_vidon_and000013
    );
  N262_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N262,
      O => N262_0
    );
  N262_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => N358,
      O => N358_0
    );
  N300_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N300,
      O => N300_0
    );
  N300_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2_and00005_pack_1,
      O => U3_spriteonB2_and00005_5529
    );
  M2_3_69_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_69_16110,
      O => M2_3_69_0
    );
  M2_3_69_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => N364_pack_1,
      O => N364
    );
  U1_Mcount_q_lut_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_Mcount_q_lut(0),
      O => U1_Mcount_q_lut_0_0
    );
  U3_spriteonB4_and000061_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000061_16158,
      O => U3_spriteonB4_and000061_0
    );
  U3_spriteonB4_and000061_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => N304_pack_1,
      O => N304
    );
  N151_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N151,
      O => N151_0
    );
  N151_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and000080_16175,
      O => U2_vidon_and000080_0
    );
  U3_spriteonGrnd_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonGrnd,
      O => U3_spriteonGrnd_0
    );
  U3_spriteonGrnd_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => N264_pack_1,
      O => N264
    );
  nes_right_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_5274,
      O => nes_right_reg_DYMUX_16216
    );
  nes_right_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_right_reg_CLKINV_16214
    );
  nes_right_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_right_reg_cmp_eq0000,
      O => nes_right_reg_CEINV_16213
    );
  U3_Madd_spriteon1_addsub0001_lut_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon1_addsub0001_lut(7),
      O => U3_Madd_spriteon1_addsub0001_lut_7_0
    );
  U3_Madd_spriteon1_addsub0001_lut_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N157,
      O => N157_0
    );
  U3_spriteonB1_and000010_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000010_16266,
      O => U3_spriteonB1_and000010_0
    );
  U3_spriteonB1_and000010_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => N222_pack_1,
      O => N222
    );
  N141_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  N141_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_blue_and0003,
      O => U3_blue_and0003_0
    );
  U3_spriteon2_addsub0000_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_Madd_spriteon2_addsub0000_lut(7),
      O => U3_Madd_spriteon2_addsub0000_lut_7_0
    );
  U3_spriteonB1_and000049_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000049_16362,
      O => U3_spriteonB1_and000049_0
    );
  U3_spriteonB1_and000049_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N224_pack_1,
      O => N224
    );
  M1a_27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_27_Q,
      O => M1a_27_0
    );
  M1a_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N232_pack_1,
      O => N232
    );
  hsync_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB5_and00006_16402,
      O => U3_spriteonB5_and00006_0
    );
  U3_N102_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N102,
      O => U3_N102_0
    );
  U3_N102_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N41_pack_1,
      O => U3_N41
    );
  U3_tank1_angle_calc_and000027_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_and000027_16458,
      O => U3_tank1_angle_calc_and000027_0
    );
  U3_tank1_angle_calc_and000027_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y71",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank1_angle_calc_mux0004_7_4_16449,
      O => U3_tank1_angle_calc_mux0004_7_4_0
    );
  M2a_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_Q,
      O => M2a_4_0
    );
  M2a_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N234_pack_1,
      O => N234
    );
  M1a_22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_22_Q,
      O => M1a_22_0
    );
  M1a_22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_10_bdd0_pack_1,
      O => M1a_10_bdd0
    );
  M2a_19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_19_Q_16530,
      O => M2a_19_0
    );
  M2a_19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_12_bdd0_pack_1,
      O => M1a_12_bdd0
    );
  M1a_12_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_12_bdd1,
      O => M1a_12_bdd1_0
    );
  M1a_14_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_14_bdd0,
      O => M1a_14_bdd0_0
    );
  M1_25_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_bdd1,
      O => M1_25_bdd1_0
    );
  M1_25_bdd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_22_bdd0,
      O => M1a_22_bdd0_0
    );
  M1a_23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_Q,
      O => M1a_23_0
    );
  M1a_23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_23_14_pack_1,
      O => M1a_23_14_5546
    );
  N350_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => N350,
      O => N350_0
    );
  N350_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_24_bdd1_pack_1,
      O => M1a_24_bdd1
    );
  M2a_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_7_Q,
      O => M2a_7_0
    );
  M2a_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_24_Q,
      O => M1a_24_0
    );
  M1_28_65_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_65_16674,
      O => M1_28_65_0
    );
  M1_28_65_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N362_pack_1,
      O => N362
    );
  nes_left_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_5274,
      O => nes_left_reg_DYMUX_16684
    );
  nes_left_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_left_reg_CLKINV_16682
    );
  nes_left_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_left_reg_cmp_eq0000,
      O => nes_left_reg_CEINV_16681
    );
  nes_down_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X51Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_5274,
      O => nes_down_reg_DYMUX_16696
    );
  nes_down_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_down_reg_CLKINV_16694
    );
  nes_down_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_down_reg_cmp_eq0000,
      O => nes_down_reg_CEINV_16693
    );
  nes_scalar_next_cmp_eq000010_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq000010_16710,
      O => nes_scalar_next_cmp_eq000010_0
    );
  nes_scalar_next_cmp_eq000021_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_scalar_next_cmp_eq000021_16722,
      O => nes_scalar_next_cmp_eq000021_0
    );
  M1_10_bdd5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_bdd5,
      O => M1_10_bdd5_0
    );
  M1_21_bdd5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_bdd5,
      O => M1_21_bdd5_0
    );
  M1_21_bdd5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X40Y66",
      PATHPULSE => 555 ps
    )
    port map (
      I => N126_pack_1,
      O => N126
    );
  M1a_22_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_22_18_16782,
      O => M1a_22_18_0
    );
  M1a_22_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd0_pack_3,
      O => M1_22_bdd0
    );
  M1_29_75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_75_16806,
      O => M1_29_75_0
    );
  M1_29_75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_bdd8_pack_2,
      O => M1_21_bdd8
    );
  N214_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N214,
      O => N214_0
    );
  N214_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_21_bdd3_pack_1,
      O => M1_21_bdd3
    );
  M1a_30_36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_30_36_16854,
      O => M1a_30_36_0
    );
  M1a_30_36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd7_pack_2,
      O => M1_22_bdd7
    );
  M1_28_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_12_16878,
      O => M1_28_12_0
    );
  M1_28_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_20_16871,
      O => M1_23_20_0
    );
  M1_24_39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_39_16902,
      O => M1_24_39_0
    );
  M1_24_39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_22_bdd12_pack_2,
      O => M1_22_bdd12
    );
  M1_23_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_bdd1,
      O => M1_23_bdd1_0
    );
  M1_23_bdd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_bdd6_pack_3,
      O => M1_23_bdd6
    );
  M1_26_30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_26_30_16950,
      O => M1_26_30_0
    );
  M1_26_30_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_24_bdd0,
      O => M1_24_bdd0_0
    );
  M1_23_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y42",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_23_29_16962,
      O => M1_23_29_0
    );
  M1_30_96_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X41Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_30_96_16974,
      O => M1_30_96_0
    );
  M1_25_138_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_138_16998,
      O => M1_25_138_0
    );
  M1_25_138_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_bdd0_pack_1,
      O => M1_25_bdd0
    );
  M1_12_bdd3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_12_bdd3,
      O => M1_12_bdd3_0
    );
  M1_29_bdd5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_bdd5,
      O => M1_29_bdd5_0
    );
  M1_29_bdd5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_bdd0,
      O => M1_27_bdd0_0
    );
  M2_4_116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_116_17058,
      O => M2_4_116_0
    );
  M2_4_116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y53",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_25_75_17051,
      O => M1_25_75_0
    );
  M1a_29_51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_29_51_17082,
      O => M1a_29_51_0
    );
  M1a_29_51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_bdd4_pack_2,
      O => M1_27_bdd4
    );
  M1_27_127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_127_17106,
      O => M1_27_127_0
    );
  M1_27_127_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y50",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_27_40_pack_1,
      O => M1_27_40_5558
    );
  M2_2_75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_75_17130,
      O => M2_2_75_0
    );
  M2_2_75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_10_bdd14_pack_2,
      O => M2_10_bdd14
    );
  M1_10_bdd4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_10_bdd4,
      O => M1_10_bdd4_0
    );
  M1_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_Q,
      O => M1_28_0
    );
  M1_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_28_pack_1,
      O => M1_28_28_5561
    );
  M1_29_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_35_17190,
      O => M1_29_35_0
    );
  M1_29_35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_14_pack_1,
      O => M1_29_14_5563
    );
  M1_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_Q,
      O => M1_29_0_5202
    );
  M1_29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_60_pack_1,
      O => M1_29_60_5566
    );
  M2a_4_82_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_82_17238,
      O => M2a_4_82_0
    );
  M2a_4_82_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_bdd6_pack_2,
      O => M2_3_bdd6
    );
  U3_tank2_angle_calc_mux0004_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_mux0004(4),
      O => U3_tank2_angle_calc_mux0004_4_0
    );
  U3_tank2_angle_calc_mux0004_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y64",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_tank2_angle_calc_mux0004_7_16_17255,
      O => U3_tank2_angle_calc_mux0004_7_16_0
    );
  M2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_Q,
      O => M2_6_0
    );
  M2_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_108_pack_1,
      O => M2_6_108_5567
    );
  N238_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N238,
      O => N238_0
    );
  N238_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => N94_pack_1,
      O => N94
    );
  N244_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N244,
      O => N244_0
    );
  N244_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => N92_pack_1,
      O => N92
    );
  U3_spriteonB1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1,
      O => U3_spriteonB1_0
    );
  U3_spriteonB1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB1_and000060_pack_1,
      O => U3_spriteonB1_and000060_5571
    );
  nes_up_reg_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X52Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja1_IBUF_5274,
      O => nes_up_reg_DYMUX_17368
    );
  nes_up_reg_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => nes_up_reg_CLKINV_17366
    );
  nes_up_reg_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_up_reg_cmp_eq0000,
      O => nes_up_reg_CEINV_17365
    );
  N202_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N202,
      O => N202_0
    );
  N202_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N334_pack_2,
      O => N334
    );
  U3_spriteon1_addsub0001_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon1_addsub0001(9),
      O => U3_spriteon1_addsub0001_9_0
    );
  U3_spriteon1_addsub0001_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y39",
      PATHPULSE => 555 ps
    )
    port map (
      I => N63_pack_1,
      O => N63
    );
  M2_5_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_bdd0,
      O => M2_5_bdd0_0
    );
  M2_5_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X39Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => N368_pack_2,
      O => N368
    );
  who_present_state_FSM_FFd1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => nes_a_reg_5517,
      O => who_present_state_FSM_FFd1_DXMUX_17470
    );
  who_present_state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => who_present_state_FSM_FFd2_In,
      O => who_present_state_FSM_FFd1_DYMUX_17463
    );
  who_present_state_FSM_FFd1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => who_present_state_FSM_FFd1_SRINV_17454
    );
  who_present_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => U1_q(0),
      O => who_present_state_FSM_FFd1_CLKINV_17453
    );
  U3_spriteonB3_and000013_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000013_17498,
      O => U3_spriteonB3_and000013_0
    );
  U3_spriteonB3_and000013_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => N228_pack_1,
      O => N228
    );
  M1a_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_11_Q,
      O => M1a_11_0
    );
  M1a_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_11_1_pack_1,
      O => M1a_11_1_5317
    );
  M1a_1_21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_1_21_17534,
      O => M1a_1_21_0
    );
  M1a_4_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y37",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_4_bdd0,
      O => M1a_4_bdd0_0
    );
  U3_N95_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N95,
      O => U3_N95_0
    );
  N370_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N370,
      O => N370_0
    );
  N370_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2_and000019_pack_1,
      O => U3_spriteonB2_and000019_5577
    );
  U3_N13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N13,
      O => U3_N13_0
    );
  U3_N13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB2_pack_1,
      O => U3_spriteonB2
    );
  M2_3_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_12_17630,
      O => M2_3_12_0
    );
  M2_3_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y45",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_1_63_17623,
      O => M2a_1_63_0
    );
  N216_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N216,
      O => N216_0
    );
  N216_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X36Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_4_52_17647,
      O => M2a_4_52_0
    );
  M2_6_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_6_bdd0,
      O => M2_6_bdd0_0
    );
  M2_6_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_bdd0,
      O => M2a_6_bdd0_0
    );
  N356_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => N356,
      O => N356_0
    );
  N356_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_6_bdd1_pack_1,
      O => M2a_6_bdd1
    );
  M2a_8_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_8_10_17714,
      O => M2a_8_10_0
    );
  M2a_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_8_Q,
      O => M2a_8_0
    );
  M2a_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_8_14_pack_1,
      O => M2a_8_14_5582
    );
  M2a_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_9_Q,
      O => M2a_9_0
    );
  M2a_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_2_Q,
      O => M2a_2_0
    );
  M2a_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => N310_pack_1,
      O => N310
    );
  U3_spriteon2_addsub0000_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteon2_addsub0000(9),
      O => U3_spriteon2_addsub0000_9_0
    );
  U3_spriteon2_addsub0000_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N46_pack_1,
      O => N46
    );
  N166_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N166,
      O => N166_0
    );
  N166_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y70",
      PATHPULSE => 555 ps
    )
    port map (
      I => N155,
      O => N155_0
    );
  vsync_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  M1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_0_Q,
      O => M1_0_0
    );
  M1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y41",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_0_bdd0_pack_1,
      O => M1_0_bdd0
    );
  M1_0_bdd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_0_bdd2,
      O => M1_0_bdd2_0
    );
  M1_28_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y44",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_28_2_17894,
      O => M1_28_2_0
    );
  M1_29_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y56",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_29_0_17906,
      O => M1_29_0_0
    );
  green_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N130_pack_1,
      O => N130
    );
  M2_1_115_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_115_17954,
      O => M2_1_115_0
    );
  M2_1_115_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y51",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd1_pack_1,
      O => M2_0_bdd1
    );
  M2_5_58_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_58_17978,
      O => M2_5_58_0
    );
  M2_5_58_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd10,
      O => M2_0_bdd10_0
    );
  M2a_1_36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_1_36_18002,
      O => M2a_1_36_0
    );
  M2a_1_36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd9_pack_2,
      O => M2_0_bdd9
    );
  M2_8_29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_29_18026,
      O => M2_8_29_0
    );
  M2_8_29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd3_pack_1,
      O => M2_0_bdd3
    );
  M2_9_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_9_18050,
      O => M2_9_9_0
    );
  M2_9_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_0_bdd16_pack_2,
      O => M2_0_bdd16
    );
  M2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_Q,
      O => M2_1_0
    );
  M2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_1_60_pack_1,
      O => M2_1_60_5592
    );
  M2_28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_28_Q,
      O => M2_28_0
    );
  M2_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1_3_1_pack_1,
      O => M1_3_1
    );
  M2_2_35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_35_18122,
      O => M2_2_35_0
    );
  M2_2_35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y57",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_14_pack_1,
      O => M2_2_14_5593
    );
  M2_5_30_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_5_30_18146,
      O => M2_5_30_0
    );
  M2_5_30_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y49",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_bdd5,
      O => M2_2_bdd5_0
    );
  M2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_Q,
      O => M2_2_0
    );
  M2_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_2_60_pack_1,
      O => M2_2_60_5595
    );
  green_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N316_pack_1,
      O => N316
    );
  M2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_Q,
      O => M2_3_0
    );
  M2_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y47",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_30_pack_1,
      O => M2_3_30_5597
    );
  M2_8_bdd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_8_bdd1,
      O => M2_8_bdd1_0
    );
  M2_8_bdd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_3_bdd9_pack_3,
      O => M2_3_bdd9
    );
  M2_7_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_7_bdd0,
      O => M2_7_bdd0_0
    );
  M2_7_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y48",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_4_bdd0,
      O => M2_4_bdd0_0
    );
  N360_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X38Y46",
      PATHPULSE => 555 ps
    )
    port map (
      I => N360,
      O => N360_0
    );
  M2a_9_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2a_9_18_18302,
      O => M2a_9_18_0
    );
  M2a_9_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => M2_9_bdd0_pack_3,
      O => M2_9_bdd0
    );
  U3_red_0_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_red_0_15_18326,
      O => U3_red_0_15_0
    );
  U3_red_0_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => N236_pack_1,
      O => N236
    );
  vidon_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => vidon,
      O => vidon_0
    );
  vidon_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and0000117_pack_1,
      O => U2_vidon_and0000117_5600
    );
  U3_spriteonB3_and000041_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000041_18374,
      O => U3_spriteonB3_and000041_0
    );
  U3_spriteonB3_and000041_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000032_pack_1,
      O => U3_spriteonB3_and000032_5603
    );
  M1a_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_3_Q,
      O => M1a_3_0
    );
  M1a_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => M1a_3_1_pack_1,
      O => M1a_3_1_5321
    );
  U3_spriteonB3_and000025_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000025_18410,
      O => U3_spriteonB3_and000025_0
    );
  U3_spriteonB3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3,
      O => U3_spriteonB3_0
    );
  U3_spriteonB3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB3_and000059_pack_1,
      O => U3_spriteonB3_and000059_5605
    );
  U2_vidon_and0000105_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U2_vidon_and0000105_18458,
      O => U2_vidon_and0000105_0
    );
  U2_vidon_and0000105_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_N94_pack_1,
      O => U3_N94
    );
  U3_spriteonB4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4,
      O => U3_spriteonB4_0
    );
  U3_spriteonB4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => U3_spriteonB4_and000023_pack_1,
      O => U3_spriteonB4_and000023_5606
    );
  U3_Mcount_tank1_angle_calc_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9933",
      LOC => "SLICE_X53Y68"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_tank1_angle_calc(1),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(1)
    );
  U3_tank1_angle_calc_1 : X_SFF
    generic map(
      LOC => "SLICE_X53Y68",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_0_DYMUX_5637,
      CE => U3_tank1_angle_calc_0_CEINV_5621,
      CLK => U3_tank1_angle_calc_0_CLKINV_5622,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_0_SRINV_5623,
      O => U3_tank1_angle_calc(1)
    );
  U3_Mcount_tank1_angle_calc_lut_0_Q : X_LUT4
    generic map(
      INIT => X"F01F",
      LOC => "SLICE_X53Y68"
    )
    port map (
      ADR0 => U3_tank1_angle_calc_mux0004_7_16_0,
      ADR1 => U3_tank1_angle_calc_mux0004_7_4_0,
      ADR2 => nes_up_reg_4814,
      ADR3 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(0)
    );
  U3_tank1_angle_calc_0 : X_SFF
    generic map(
      LOC => "SLICE_X53Y68",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_0_DXMUX_5654,
      CE => U3_tank1_angle_calc_0_CEINV_5621,
      CLK => U3_tank1_angle_calc_0_CLKINV_5622,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_0_SRINV_5623,
      O => U3_tank1_angle_calc(0)
    );
  U3_Mcount_tank1_angle_calc_lut_3_Q : X_LUT4
    generic map(
      INIT => X"2D2D",
      LOC => "SLICE_X53Y69"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_N63_0,
      ADR2 => U3_tank1_angle_calc(3),
      ADR3 => VCC,
      O => U3_Mcount_tank1_angle_calc_lut(3)
    );
  U3_tank1_angle_calc_3 : X_SFF
    generic map(
      LOC => "SLICE_X53Y69",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_2_DYMUX_5695,
      CE => U3_tank1_angle_calc_2_CEINV_5674,
      CLK => U3_tank1_angle_calc_2_CLKINV_5675,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_2_SRINV_5676,
      O => U3_tank1_angle_calc(3)
    );
  U3_Mcount_tank1_angle_calc_lut_2_Q : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X53Y69"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_tank1_angle_calc(1),
      ADR2 => U3_tank1_angle_calc(2),
      ADR3 => U3_tank1_angle_calc(0),
      O => U3_Mcount_tank1_angle_calc_lut(2)
    );
  U3_tank1_angle_calc_2 : X_SFF
    generic map(
      LOC => "SLICE_X53Y69",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_2_DXMUX_5710,
      CE => U3_tank1_angle_calc_2_CEINV_5674,
      CLK => U3_tank1_angle_calc_2_CLKINV_5675,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_2_SRINV_5676,
      O => U3_tank1_angle_calc(2)
    );
  U3_Mcount_tank1_angle_calc_lut_5_Q : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X53Y70"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(4),
      ADR1 => U3_tank1_angle_calc(3),
      ADR2 => N160_0,
      ADR3 => U3_tank1_angle_calc(5),
      O => U3_Mcount_tank1_angle_calc_lut(5)
    );
  U3_tank1_angle_calc_5 : X_SFF
    generic map(
      LOC => "SLICE_X53Y70",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_4_DYMUX_5751,
      CE => U3_tank1_angle_calc_4_CEINV_5731,
      CLK => U3_tank1_angle_calc_4_CLKINV_5732,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_4_SRINV_5733,
      O => U3_tank1_angle_calc(5)
    );
  U3_Mcount_tank1_angle_calc_lut_4_Q : X_LUT4
    generic map(
      INIT => X"9333",
      LOC => "SLICE_X53Y70"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(2),
      ADR1 => U3_tank1_angle_calc(4),
      ADR2 => U3_tank1_angle_calc(3),
      ADR3 => N168_0,
      O => U3_Mcount_tank1_angle_calc_lut(4)
    );
  U3_tank1_angle_calc_4 : X_SFF
    generic map(
      LOC => "SLICE_X53Y70",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_4_DXMUX_5766,
      CE => U3_tank1_angle_calc_4_CEINV_5731,
      CLK => U3_tank1_angle_calc_4_CLKINV_5732,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_4_SRINV_5733,
      O => U3_tank1_angle_calc(4)
    );
  U3_Mcount_tank1_angle_calc_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9555",
      LOC => "SLICE_X53Y71"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(7),
      ADR1 => N10_0,
      ADR2 => U3_tank1_angle_calc(6),
      ADR3 => N166_0,
      O => U3_Mcount_tank1_angle_calc_lut(7)
    );
  U3_tank1_angle_calc_7 : X_SFF
    generic map(
      LOC => "SLICE_X53Y71",
      INIT => '0'
    )
    port map (
      I => U3_tank1_angle_calc_6_DYMUX_5798,
      CE => U3_tank1_angle_calc_6_CEINV_5786,
      CLK => U3_tank1_angle_calc_6_CLKINV_5787,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank1_angle_calc_6_SRINV_5788,
      O => U3_tank1_angle_calc(7)
    );
  U3_Mcount_tank1_angle_calc_lut_6_Q : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X53Y71"
    )
    port map (
      ADR0 => N155_0,
      ADR1 => N10_0,
      ADR2 => U3_tank1_angle_calc(6),
      ADR3 => U3_tank1_angle_calc(5),
      O => U3_Mcount_tank1_angle_calc_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6A95",
      LOC => "SLICE_X3Y37"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C1(5),
      ADR2 => U3_C1(4),
      ADR3 => U3_C1(6),
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9969",
      LOC => "SLICE_X3Y38"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_C1(9),
      ADR2 => U3_C1(8),
      ADR3 => U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon1_cmp_ge0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X3Y38"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => U3_C1(8),
      ADR2 => VCC,
      ADR3 => U3_Madd_spriteon1_addsub0001_lut_8_bdd0_0,
      O => U3_Mcompar_spriteon1_cmp_ge0000_lut(8)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X1Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(1),
      ADR2 => VCC,
      ADR3 => U2_hcs(1),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X1Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(0),
      ADR2 => U2_hcs(0),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(0)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(3),
      ADR2 => U2_hcs(3),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(3)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => U3_C2(2),
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(2)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_spriteon2_addsub0000_5_0,
      ADR2 => U2_hcs(5),
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => U3_spriteon2f_add0002_4_0,
      ADR1 => U3_C2(4),
      ADR2 => U2_hcs(4),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"8778",
      LOC => "SLICE_X1Y25"
    )
    port map (
      ADR0 => U3_N16,
      ADR1 => U3_C2(6),
      ADR2 => U2_hcs(7),
      ADR3 => U3_C2(7),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"3C69",
      LOC => "SLICE_X1Y25"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U2_hcs(6),
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => U3_spriteon2_addsub0000_9_0,
      ADR1 => U2_hcs(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_le0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => U3_spriteon2_addsub0000_8_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(8),
      O => U3_Mcompar_spriteon2f_cmp_le0000_lut(8)
    );
  U3_Mcount_C1_lut_1_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X1Y45"
    )
    port map (
      ADR0 => U3_C1(1),
      ADR1 => nes_left_reg_4884,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(1)
    );
  U3_C1_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y45",
      INIT => '0'
    )
    port map (
      I => U3_C1_0_DYMUX_6159,
      CE => U3_C1_0_CEINV_6143,
      CLK => U3_C1_0_CLKINV_6144,
      SET => GND,
      RST => GND,
      O => U3_C1(1)
    );
  U3_Mcount_C1_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y45"
    )
    port map (
      ADR0 => nes_left_reg_4884,
      ADR1 => U3_C1(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C1_lut(0)
    );
  U3_C1_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y45",
      INIT => '0'
    )
    port map (
      I => U3_C1_0_DXMUX_6178,
      CE => U3_C1_0_CEINV_6143,
      CLK => U3_C1_0_CLKINV_6144,
      SET => GND,
      RST => GND,
      O => U3_C1(0)
    );
  U3_Mcount_C1_lut_3_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X1Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(3),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(3)
    );
  U3_C1_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y46",
      INIT => '0'
    )
    port map (
      I => U3_C1_2_DYMUX_6214,
      CE => U3_C1_2_CEINV_6193,
      CLK => U3_C1_2_CLKINV_6194,
      SET => GND,
      RST => GND,
      O => U3_C1(3)
    );
  U3_Mcount_C1_lut_2_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X1Y46"
    )
    port map (
      ADR0 => U3_C1(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(2)
    );
  U3_C1_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y46",
      INIT => '1'
    )
    port map (
      I => U3_C1_2_DXMUX_6231,
      CE => U3_C1_2_CEINV_6193,
      CLK => U3_C1_2_CLKINV_6194,
      SET => GND,
      RST => GND,
      O => U3_C1(2)
    );
  U3_Mcount_C1_lut_5_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X1Y47"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(5)
    );
  U3_C1_5 : X_FF
    generic map(
      LOC => "SLICE_X1Y47",
      INIT => '0'
    )
    port map (
      I => U3_C1_4_DYMUX_6267,
      CE => U3_C1_4_CEINV_6246,
      CLK => U3_C1_4_CLKINV_6247,
      SET => GND,
      RST => GND,
      O => U3_C1(5)
    );
  U3_Mcount_C1_lut_4_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X1Y47"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(4)
    );
  U3_C1_4 : X_FF
    generic map(
      LOC => "SLICE_X1Y47",
      INIT => '1'
    )
    port map (
      I => U3_C1_4_DXMUX_6284,
      CE => U3_C1_4_CEINV_6246,
      CLK => U3_C1_4_CLKINV_6247,
      SET => GND,
      RST => GND,
      O => U3_C1(4)
    );
  U3_Mcount_C1_lut_7_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X1Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(7),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(7)
    );
  U3_C1_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y48",
      INIT => '0'
    )
    port map (
      I => U3_C1_6_DYMUX_6320,
      CE => U3_C1_6_CEINV_6299,
      CLK => U3_C1_6_CLKINV_6300,
      SET => GND,
      RST => GND,
      O => U3_C1(7)
    );
  U3_Mcount_C1_lut_6_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X1Y48"
    )
    port map (
      ADR0 => U3_C1(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(6)
    );
  U3_C1_6 : X_FF
    generic map(
      LOC => "SLICE_X1Y48",
      INIT => '1'
    )
    port map (
      I => U3_C1_6_DXMUX_6337,
      CE => U3_C1_6_CEINV_6299,
      CLK => U3_C1_6_CLKINV_6300,
      SET => GND,
      RST => GND,
      O => U3_C1(6)
    );
  U3_Mcount_C1_lut_9_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X1Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_left_reg_4884,
      ADR2 => VCC,
      ADR3 => U3_C1(9),
      O => U3_Mcount_C1_lut(9)
    );
  U3_C1_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y49",
      INIT => '0'
    )
    port map (
      I => U3_C1_8_DYMUX_6364,
      CE => U3_C1_8_CEINV_6351,
      CLK => U3_C1_8_CLKINV_6352,
      SET => GND,
      RST => GND,
      O => U3_C1(9)
    );
  U3_Mcount_C1_lut_8_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X1Y49"
    )
    port map (
      ADR0 => U3_C1(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C1_lut(8)
    );
  U3_C1_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y49",
      INIT => '0'
    )
    port map (
      I => U3_C1_8_DXMUX_6382,
      CE => U3_C1_8_CEINV_6351,
      CLK => U3_C1_8_CLKINV_6352,
      SET => GND,
      RST => GND,
      O => U3_C1(8)
    );
  U3_Mcount_C2_lut_1_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X2Y30"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(1)
    );
  U3_C2_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      I => U3_C2_0_DYMUX_6413,
      CE => U3_C2_0_CEINV_6397,
      CLK => U3_C2_0_CLKINV_6398,
      SET => GND,
      RST => GND,
      O => U3_C2(1)
    );
  U3_Mcount_C2_lut_0_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X2Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(0),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(0)
    );
  U3_C2_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      I => U3_C2_0_DXMUX_6432,
      CE => U3_C2_0_CEINV_6397,
      CLK => U3_C2_0_CLKINV_6398,
      SET => GND,
      RST => GND,
      O => U3_C2(0)
    );
  U3_Mcount_C2_lut_3_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X2Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(3),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(3)
    );
  U3_C2_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => '0'
    )
    port map (
      I => U3_C2_2_DYMUX_6468,
      CE => U3_C2_2_CEINV_6447,
      CLK => U3_C2_2_CLKINV_6448,
      SET => GND,
      RST => GND,
      O => U3_C2(3)
    );
  U3_Mcount_C2_lut_2_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X2Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(2),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(2)
    );
  U3_C2_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => '1'
    )
    port map (
      I => U3_C2_2_DXMUX_6485,
      CE => U3_C2_2_CEINV_6447,
      CLK => U3_C2_2_CLKINV_6448,
      SET => GND,
      RST => GND,
      O => U3_C2(2)
    );
  U3_Mcount_C2_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X2Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(5)
    );
  U3_C2_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y32",
      INIT => '1'
    )
    port map (
      I => U3_C2_4_DYMUX_6521,
      CE => U3_C2_4_CEINV_6500,
      CLK => U3_C2_4_CLKINV_6501,
      SET => GND,
      RST => GND,
      O => U3_C2(5)
    );
  U3_Mcount_C2_lut_4_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X2Y32"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(4)
    );
  U3_C2_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y32",
      INIT => '1'
    )
    port map (
      I => U3_C2_4_DXMUX_6538,
      CE => U3_C2_4_CEINV_6500,
      CLK => U3_C2_4_CLKINV_6501,
      SET => GND,
      RST => GND,
      O => U3_C2(4)
    );
  U3_Mcount_C2_lut_7_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X2Y33"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(7)
    );
  U3_C2_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => '1'
    )
    port map (
      I => U3_C2_6_DYMUX_6574,
      CE => U3_C2_6_CEINV_6553,
      CLK => U3_C2_6_CLKINV_6554,
      SET => GND,
      RST => GND,
      O => U3_C2(7)
    );
  U3_Mcount_C2_lut_6_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X2Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(6),
      ADR2 => VCC,
      ADR3 => nes_left_reg_4884,
      O => U3_Mcount_C2_lut(6)
    );
  U3_C2_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => '1'
    )
    port map (
      I => U3_C2_6_DXMUX_6591,
      CE => U3_C2_6_CEINV_6553,
      CLK => U3_C2_6_CLKINV_6554,
      SET => GND,
      RST => GND,
      O => U3_C2(6)
    );
  U3_Mcount_C2_lut_9_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X2Y34"
    )
    port map (
      ADR0 => nes_left_reg_4884,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C2(9),
      O => U3_Mcount_C2_lut(9)
    );
  U3_C2_9 : X_FF
    generic map(
      LOC => "SLICE_X2Y34",
      INIT => '0'
    )
    port map (
      I => U3_C2_8_DYMUX_6618,
      CE => U3_C2_8_CEINV_6605,
      CLK => U3_C2_8_CLKINV_6606,
      SET => GND,
      RST => GND,
      O => U3_C2(9)
    );
  U3_Mcount_C2_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X2Y34"
    )
    port map (
      ADR0 => nes_left_reg_4884,
      ADR1 => U3_C2(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcount_C2_lut(8)
    );
  U3_C2_8 : X_FF
    generic map(
      LOC => "SLICE_X2Y34",
      INIT => '1'
    )
    port map (
      I => U3_C2_8_DXMUX_6636,
      CE => U3_C2_8_CEINV_6605,
      CLK => U3_C2_8_CLKINV_6606,
      SET => GND,
      RST => GND,
      O => U3_C2(8)
    );
  U3_Mcount_tank2_angle_calc_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9955",
      LOC => "SLICE_X49Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(1),
      ADR1 => nes_up_reg_4814,
      ADR2 => VCC,
      ADR3 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(1)
    );
  U3_tank2_angle_calc_1 : X_SFF
    generic map(
      LOC => "SLICE_X49Y64",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_0_DYMUX_6671,
      CE => U3_tank2_angle_calc_0_CEINV_6655,
      CLK => U3_tank2_angle_calc_0_CLKINV_6656,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_0_SRINV_6657,
      O => U3_tank2_angle_calc(1)
    );
  U3_Mcount_tank2_angle_calc_lut_0_Q : X_LUT4
    generic map(
      INIT => X"F01F",
      LOC => "SLICE_X49Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc_mux0004_7_16_0,
      ADR1 => U3_tank2_angle_calc_mux0004_7_4_0,
      ADR2 => nes_up_reg_4814,
      ADR3 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(0)
    );
  U3_tank2_angle_calc_0 : X_SFF
    generic map(
      LOC => "SLICE_X49Y64",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_0_DXMUX_6688,
      CE => U3_tank2_angle_calc_0_CEINV_6655,
      CLK => U3_tank2_angle_calc_0_CLKINV_6656,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_0_SRINV_6657,
      O => U3_tank2_angle_calc(0)
    );
  U3_Mcount_tank2_angle_calc_lut_3_Q : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X49Y65"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_tank2_angle_calc(3),
      ADR2 => VCC,
      ADR3 => U3_tank2_angle_calc_mux0004_4_0,
      O => U3_Mcount_tank2_angle_calc_lut(3)
    );
  U3_tank2_angle_calc_3 : X_SFF
    generic map(
      LOC => "SLICE_X49Y65",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_2_DYMUX_6729,
      CE => U3_tank2_angle_calc_2_CEINV_6708,
      CLK => U3_tank2_angle_calc_2_CLKINV_6709,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_2_SRINV_6710,
      O => U3_tank2_angle_calc(3)
    );
  U3_Mcount_tank2_angle_calc_lut_2_Q : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X49Y65"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(1),
      ADR1 => nes_up_reg_4814,
      ADR2 => U3_tank2_angle_calc(2),
      ADR3 => U3_tank2_angle_calc(0),
      O => U3_Mcount_tank2_angle_calc_lut(2)
    );
  U3_tank2_angle_calc_2 : X_SFF
    generic map(
      LOC => "SLICE_X49Y65",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_2_DXMUX_6744,
      CE => U3_tank2_angle_calc_2_CEINV_6708,
      CLK => U3_tank2_angle_calc_2_CLKINV_6709,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_2_SRINV_6710,
      O => U3_tank2_angle_calc(2)
    );
  U3_Mcount_tank2_angle_calc_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9555",
      LOC => "SLICE_X49Y66"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(5),
      ADR1 => U3_tank2_angle_calc(3),
      ADR2 => U3_tank2_angle_calc(4),
      ADR3 => N170_0,
      O => U3_Mcount_tank2_angle_calc_lut(5)
    );
  U3_tank2_angle_calc_5 : X_SFF
    generic map(
      LOC => "SLICE_X49Y66",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_4_DYMUX_6785,
      CE => U3_tank2_angle_calc_4_CEINV_6765,
      CLK => U3_tank2_angle_calc_4_CLKINV_6766,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_4_SRINV_6767,
      O => U3_tank2_angle_calc(5)
    );
  U3_Mcount_tank2_angle_calc_lut_4_Q : X_LUT4
    generic map(
      INIT => X"870F",
      LOC => "SLICE_X49Y66"
    )
    port map (
      ADR0 => N162_0,
      ADR1 => U3_tank2_angle_calc(3),
      ADR2 => U3_tank2_angle_calc(4),
      ADR3 => U3_tank2_angle_calc(2),
      O => U3_Mcount_tank2_angle_calc_lut(4)
    );
  U3_tank2_angle_calc_4 : X_SFF
    generic map(
      LOC => "SLICE_X49Y66",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_4_DXMUX_6800,
      CE => U3_tank2_angle_calc_4_CEINV_6765,
      CLK => U3_tank2_angle_calc_4_CLKINV_6766,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_4_SRINV_6767,
      O => U3_tank2_angle_calc(4)
    );
  U3_Mcount_tank2_angle_calc_lut_7_Q : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X49Y67"
    )
    port map (
      ADR0 => N12_0,
      ADR1 => U3_tank2_angle_calc(6),
      ADR2 => N164_0,
      ADR3 => U3_tank2_angle_calc(7),
      O => U3_Mcount_tank2_angle_calc_lut(7)
    );
  U3_tank2_angle_calc_7 : X_SFF
    generic map(
      LOC => "SLICE_X49Y67",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_6_DYMUX_6832,
      CE => U3_tank2_angle_calc_6_CEINV_6820,
      CLK => U3_tank2_angle_calc_6_CLKINV_6821,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_6_SRINV_6822,
      O => U3_tank2_angle_calc(7)
    );
  U3_Mcount_tank2_angle_calc_lut_6_Q : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X49Y67"
    )
    port map (
      ADR0 => N12_0,
      ADR1 => N153_0,
      ADR2 => U3_tank2_angle_calc(5),
      ADR3 => U3_tank2_angle_calc(6),
      O => U3_Mcount_tank2_angle_calc_lut(6)
    );
  U3_tank2_angle_calc_6 : X_SFF
    generic map(
      LOC => "SLICE_X49Y67",
      INIT => '0'
    )
    port map (
      I => U3_tank2_angle_calc_6_DXMUX_6849,
      CE => U3_tank2_angle_calc_6_CEINV_6820,
      CLK => U3_tank2_angle_calc_6_CLKINV_6821,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U3_tank2_angle_calc_6_SRINV_6822,
      O => U3_tank2_angle_calc(6)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y17"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => U3_C2(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(1)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y17"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => U3_C2(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(0)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U3_C2(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(3)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => U3_C2(2),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(2)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U2_hcs(5),
      ADR2 => VCC,
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(5)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U3_Madd_spriteon2_addsub0000_lut_7_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(7)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"69C3",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => U2_hcs(6),
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(4),
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(6)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9969",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U3_C2(9),
      ADR2 => U3_C2(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_ge0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => U3_C2(8),
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2_cmp_ge0000_lut(8)
    );
  U2_Mcount_vcs_lut_0_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X15Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(0),
      ADR3 => VCC,
      O => U2_Mcount_vcs_lut(0)
    );
  U2_vcs_9_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X15Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(9),
      O => U2_vcs_9_rt_7171
    );
  U3_Msub_xpix1_Madd_lut_1_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X15Y34"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(1),
      O => U3_Msub_xpix1_Madd_lut(1)
    );
  U3_Msub_xpix1_Madd_lut_0_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X15Y34"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(0),
      O => U3_Msub_xpix1_Madd_lut(0)
    );
  U3_Msub_xpix1_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X15Y35"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => U3_C1(3),
      ADR3 => VCC,
      O => U3_Msub_xpix1_Madd_lut(3)
    );
  U3_Msub_xpix1_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X15Y35"
    )
    port map (
      ADR0 => U3_C1(2),
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix1_Madd_lut(2)
    );
  U3_Madd_spriteon1_addsub0001_lut_8_11 : X_LUT4
    generic map(
      INIT => X"070F",
      LOC => "SLICE_X15Y36"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U3_C1(6),
      ADR2 => U3_C1(7),
      ADR3 => U3_C1(5),
      O => U3_Madd_spriteon1_addsub0001_lut_8_bdd0
    );
  U3_Msub_xpix1_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X15Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(4),
      ADR2 => VCC,
      ADR3 => U2_hcs(4),
      O => U3_Msub_xpix1_Madd_lut(4)
    );
  x7_clkdiv_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y74",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_0_DYMUX_7317,
      CE => VCC,
      CLK => x7_clkdiv_0_CLKINV_7300,
      SET => GND,
      RST => x7_clkdiv_0_SRINV_7301,
      O => x7_clkdiv(1)
    );
  x7_Mcount_clkdiv_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X55Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(0),
      O => x7_Mcount_clkdiv_lut(0)
    );
  x7_clkdiv_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y74",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_0_DXMUX_7339,
      CE => VCC,
      CLK => x7_clkdiv_0_CLKINV_7300,
      SET => GND,
      RST => x7_clkdiv_0_SRINV_7301,
      O => x7_clkdiv(0)
    );
  x7_clkdiv_3 : X_FF
    generic map(
      LOC => "SLICE_X55Y75",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_2_DYMUX_7376,
      CE => VCC,
      CLK => x7_clkdiv_2_CLKINV_7354,
      SET => GND,
      RST => x7_clkdiv_2_SRINV_7355,
      O => x7_clkdiv(3)
    );
  x7_clkdiv_2 : X_FF
    generic map(
      LOC => "SLICE_X55Y75",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_2_DXMUX_7395,
      CE => VCC,
      CLK => x7_clkdiv_2_CLKINV_7354,
      SET => GND,
      RST => x7_clkdiv_2_SRINV_7355,
      O => x7_clkdiv(2)
    );
  x7_clkdiv_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y76",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_4_DYMUX_7432,
      CE => VCC,
      CLK => x7_clkdiv_4_CLKINV_7410,
      SET => GND,
      RST => x7_clkdiv_4_SRINV_7411,
      O => x7_clkdiv(5)
    );
  x7_clkdiv_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y76",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_4_DXMUX_7451,
      CE => VCC,
      CLK => x7_clkdiv_4_CLKINV_7410,
      SET => GND,
      RST => x7_clkdiv_4_SRINV_7411,
      O => x7_clkdiv(4)
    );
  x7_clkdiv_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y77",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_6_DYMUX_7488,
      CE => VCC,
      CLK => x7_clkdiv_6_CLKINV_7466,
      SET => GND,
      RST => x7_clkdiv_6_SRINV_7467,
      O => x7_clkdiv(7)
    );
  x7_clkdiv_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y77",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_6_DXMUX_7507,
      CE => VCC,
      CLK => x7_clkdiv_6_CLKINV_7466,
      SET => GND,
      RST => x7_clkdiv_6_SRINV_7467,
      O => x7_clkdiv(6)
    );
  x7_clkdiv_9 : X_FF
    generic map(
      LOC => "SLICE_X55Y78",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_8_DYMUX_7544,
      CE => VCC,
      CLK => x7_clkdiv_8_CLKINV_7522,
      SET => GND,
      RST => x7_clkdiv_8_SRINV_7523,
      O => x7_clkdiv(9)
    );
  x7_clkdiv_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y78",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_8_DXMUX_7563,
      CE => VCC,
      CLK => x7_clkdiv_8_CLKINV_7522,
      SET => GND,
      RST => x7_clkdiv_8_SRINV_7523,
      O => x7_clkdiv(8)
    );
  x7_clkdiv_11 : X_FF
    generic map(
      LOC => "SLICE_X55Y79",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_10_DYMUX_7600,
      CE => VCC,
      CLK => x7_clkdiv_10_CLKINV_7578,
      SET => GND,
      RST => x7_clkdiv_10_SRINV_7579,
      O => x7_clkdiv(11)
    );
  x7_clkdiv_10 : X_FF
    generic map(
      LOC => "SLICE_X55Y79",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_10_DXMUX_7619,
      CE => VCC,
      CLK => x7_clkdiv_10_CLKINV_7578,
      SET => GND,
      RST => x7_clkdiv_10_SRINV_7579,
      O => x7_clkdiv(10)
    );
  x7_clkdiv_13 : X_FF
    generic map(
      LOC => "SLICE_X55Y80",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_12_DYMUX_7656,
      CE => VCC,
      CLK => x7_clkdiv_12_CLKINV_7634,
      SET => GND,
      RST => x7_clkdiv_12_SRINV_7635,
      O => x7_clkdiv(13)
    );
  x7_clkdiv_12 : X_FF
    generic map(
      LOC => "SLICE_X55Y80",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_12_DXMUX_7675,
      CE => VCC,
      CLK => x7_clkdiv_12_CLKINV_7634,
      SET => GND,
      RST => x7_clkdiv_12_SRINV_7635,
      O => x7_clkdiv(12)
    );
  x7_clkdiv_15 : X_FF
    generic map(
      LOC => "SLICE_X55Y81",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_14_DYMUX_7712,
      CE => VCC,
      CLK => x7_clkdiv_14_CLKINV_7690,
      SET => GND,
      RST => x7_clkdiv_14_SRINV_7691,
      O => x7_clkdiv(15)
    );
  x7_clkdiv_14 : X_FF
    generic map(
      LOC => "SLICE_X55Y81",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_14_DXMUX_7731,
      CE => VCC,
      CLK => x7_clkdiv_14_CLKINV_7690,
      SET => GND,
      RST => x7_clkdiv_14_SRINV_7691,
      O => x7_clkdiv(14)
    );
  x7_clkdiv_17 : X_FF
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_16_DYMUX_7768,
      CE => VCC,
      CLK => x7_clkdiv_16_CLKINV_7746,
      SET => GND,
      RST => x7_clkdiv_16_SRINV_7747,
      O => x7_clkdiv(17)
    );
  x7_clkdiv_16 : X_FF
    generic map(
      LOC => "SLICE_X55Y82",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_16_DXMUX_7787,
      CE => VCC,
      CLK => x7_clkdiv_16_CLKINV_7746,
      SET => GND,
      RST => x7_clkdiv_16_SRINV_7747,
      O => x7_clkdiv(16)
    );
  x7_clkdiv_19_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(19),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_19_rt_7810
    );
  x7_clkdiv_19 : X_FF
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_18_DYMUX_7815,
      CE => VCC,
      CLK => x7_clkdiv_18_CLKINV_7801,
      SET => GND,
      RST => x7_clkdiv_18_SRINV_7802,
      O => x7_clkdiv(19)
    );
  x7_clkdiv_18 : X_FF
    generic map(
      LOC => "SLICE_X55Y83",
      INIT => '0'
    )
    port map (
      I => x7_clkdiv_18_DXMUX_7836,
      CE => VCC,
      CLK => x7_clkdiv_18_CLKINV_7801,
      SET => GND,
      RST => x7_clkdiv_18_SRINV_7802,
      O => x7_clkdiv(18)
    );
  U3_Msub_xpix2_Madd_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X21Y32"
    )
    port map (
      ADR0 => U3_C2(1),
      ADR1 => U2_hcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(1)
    );
  U3_Msub_xpix2_Madd_lut_0_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X21Y32"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => U3_C2(0),
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(0)
    );
  U3_Msub_xpix2_Madd_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X21Y33"
    )
    port map (
      ADR0 => U3_C2(3),
      ADR1 => U2_hcs(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(3)
    );
  U3_Msub_xpix2_Madd_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X21Y33"
    )
    port map (
      ADR0 => U3_C2(2),
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Msub_xpix2_Madd_lut(2)
    );
  U3_Madd_spriteon2f_add0002_xor_4_11_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X21Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_C2(4),
      ADR3 => VCC,
      O => U3_spriteon2f_add0002(4)
    );
  U3_Msub_xpix2_Madd_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X21Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_C2(4),
      ADR3 => U2_hcs(4),
      O => U3_Msub_xpix2_Madd_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X3Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(1),
      ADR2 => VCC,
      ADR3 => U2_hcs(1),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(1)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X3Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(0),
      ADR2 => U2_hcs(0),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(0)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X3Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(3),
      ADR2 => U2_hcs(3),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(3)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X3Y25"
    )
    port map (
      ADR0 => U3_C2(2),
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(2)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"3CC3",
      LOC => "SLICE_X3Y26"
    )
    port map (
      ADR0 => U3_Madd_spriteon2_addsub0000_cy_5_0,
      ADR1 => U3_C2(4),
      ADR2 => U2_hcs(5),
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(5)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X3Y26"
    )
    port map (
      ADR0 => U3_spriteon2f_add0002_4_0,
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => U2_hcs(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(4)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X3Y27"
    )
    port map (
      ADR0 => U3_Madd_spriteon2_addsub0000_lut_7_0,
      ADR1 => VCC,
      ADR2 => U2_hcs(7),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(7)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6999",
      LOC => "SLICE_X3Y27"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C2(6),
      ADR2 => U3_C2(5),
      ADR3 => U3_C2(4),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(6)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9969",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => U3_C2(9),
      ADR1 => U2_hcs(9),
      ADR2 => U3_C2(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(9)
    );
  U3_Mcompar_spriteon2f_cmp_gt0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => U3_C2(8),
      ADR1 => U3_Madd_spriteon2_addsub0000_lut_8_0,
      ADR2 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      ADR3 => U2_hcs(8),
      O => U3_Mcompar_spriteon2f_cmp_gt0000_lut(8)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X1Y34"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(1),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X1Y34"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(0),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y35"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U3_C1(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X1Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => U3_C1(2),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X1Y36"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U2_hcs(5),
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X1Y36"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => U2_hcs(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X1Y37"
    )
    port map (
      ADR0 => U3_C1(7),
      ADR1 => U2_hcs(7),
      ADR2 => U3_N15,
      ADR3 => U3_C1(6),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6669",
      LOC => "SLICE_X1Y37"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C1(6),
      ADR2 => U3_C1(5),
      ADR3 => U3_C1(4),
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X1Y38"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => VCC,
      ADR2 => U3_spriteon1_addsub0001_9_0,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteon1_cmp_lt0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X1Y38"
    )
    port map (
      ADR0 => U3_spriteon1_addsub0001_8_0,
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon1_cmp_lt0000_lut(8)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X3Y19"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => VCC,
      ADR2 => U3_C2(1),
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(1)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X3Y19"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => U3_C2(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(0)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => U3_C2(3),
      ADR1 => U2_hcs(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(3)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(2),
      ADR2 => VCC,
      ADR3 => U3_C2(2),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(2)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X3Y21"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U2_hcs(5),
      ADR2 => VCC,
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(5)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X3Y21"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U2_hcs(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(4)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => U2_hcs(7),
      ADR2 => U3_N16,
      ADR3 => U3_C2(6),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(7)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6669",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => U3_C2(6),
      ADR2 => U3_C2(4),
      ADR3 => U3_C2(5),
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(6)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => U3_spriteon2_addsub0000_9_0,
      ADR1 => U2_hcs(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(9)
    );
  U3_Mcompar_spriteon2_cmp_lt0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(8),
      ADR2 => U3_spriteon2_addsub0000_8_0,
      ADR3 => VCC,
      O => U3_Mcompar_spriteon2_cmp_lt0000_lut(8)
    );
  nes_Madd_scalar_next_addsub0000_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X51Y9"
    )
    port map (
      ADR0 => nes_scalar_reg(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Madd_scalar_next_addsub0000_lut(0)
    );
  U3_Mmux_M2_mux0000_91 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X26Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2_9_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => M2_8_Q,
      O => U3_Mmux_M2_mux0000_91_9792
    );
  U3_Mmux_M2_mux0000_84 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X26Y43"
    )
    port map (
      ADR0 => M2_10_Q,
      ADR1 => M2_11_Q,
      ADR2 => U3_xpix2(0),
      ADR3 => VCC,
      O => U3_Mmux_M2_mux0000_84_9801
    );
  U3_Mmux_M2_mux0000_81 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X27Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2_21_Q,
      ADR3 => M1_11_Q,
      O => U3_Mmux_M2_mux0000_81_9822
    );
  U3_Mmux_M2_mux0000_72 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X27Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M1_8_Q,
      ADR3 => M2_22_Q,
      O => U3_Mmux_M2_mux0000_72_9831
    );
  U3_Mmux_M2_mux0000_9 : X_LUT4
    generic map(
      INIT => X"3F30",
      LOC => "SLICE_X27Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N318,
      ADR2 => rom1_addr_4_0,
      ADR3 => M1_18_2_0,
      O => U3_Mmux_M2_mux0000_9_9852
    );
  U3_Mmux_M2_mux0000_82 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X27Y41"
    )
    port map (
      ADR0 => M2_18_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => VCC,
      ADR3 => M2_19_Q,
      O => U3_Mmux_M2_mux0000_82_9862
    );
  U3_Mmux_M2_mux0000_92 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X27Y42"
    )
    port map (
      ADR0 => M2_4_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => VCC,
      ADR3 => M2_5_Q,
      O => U3_Mmux_M2_mux0000_92_9883
    );
  U3_Mmux_M2_mux0000_85 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X27Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2_6_0,
      ADR3 => M2_7_Q,
      O => U3_Mmux_M2_mux0000_85_9892
    );
  U3_Mmux_M2_mux0000_10 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X27Y43"
    )
    port map (
      ADR0 => M2_0_Q,
      ADR1 => U3_xpix2(0),
      ADR2 => VCC,
      ADR3 => M2_1_0,
      O => U3_Mmux_M2_mux0000_10_9908
    );
  U3_Mmux_M2_mux0000_93 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X27Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix2(0),
      ADR2 => M2_3_0,
      ADR3 => M2_2_0,
      O => U3_Mmux_M2_mux0000_93_9916
    );
  U3_Mmux_M1_mux0000_7 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X20Y40"
    )
    port map (
      ADR0 => M1_28_0,
      ADR1 => VCC,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_29_0_5202,
      O => U3_Mmux_M1_mux0000_7_9937
    );
  U3_Mmux_M1_mux0000_6 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X20Y40"
    )
    port map (
      ADR0 => M1_31_Q,
      ADR1 => VCC,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_30_Q,
      O => U3_Mmux_M1_mux0000_6_9946
    );
  U3_Mmux_M1_mux0000_8 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X20Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_25_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_24_Q,
      O => U3_Mmux_M1_mux0000_8_9967
    );
  U3_Mmux_M1_mux0000_71 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X20Y41"
    )
    port map (
      ADR0 => M1_26_Q,
      ADR1 => VCC,
      ADR2 => U3_xpix1(0),
      ADR3 => M1_27_Q,
      O => U3_Mmux_M1_mux0000_71_9976
    );
  U3_Mmux_M1_mux0000_83 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X20Y42"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => M1_12_Q,
      ADR2 => M1_13_Q,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_83_9997
    );
  U3_Mmux_M1_mux0000_73 : X_LUT4
    generic map(
      INIT => X"3A3A",
      LOC => "SLICE_X20Y42"
    )
    port map (
      ADR0 => M1_18_2_0,
      ADR1 => N240,
      ADR2 => rom1_addr_4_0,
      ADR3 => VCC,
      O => U3_Mmux_M1_mux0000_73_10006
    );
  U3_Mmux_M1a_mux0000_7 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X26Y34"
    )
    port map (
      ADR0 => M1a_28_Q,
      ADR1 => M1a_29_0,
      ADR2 => U3_xpix1(0),
      ADR3 => VCC,
      O => U3_Mmux_M1a_mux0000_7_10173
    );
  U3_Mmux_M1a_mux0000_6 : X_LUT4
    generic map(
      INIT => X"0A08",
      LOC => "SLICE_X26Y34"
    )
    port map (
      ADR0 => M1a_29_51_0,
      ADR1 => rom1_addr(3),
      ADR2 => U3_xpix1(0),
      ADR3 => M1a_30_36_0,
      O => U3_Mmux_M1a_mux0000_6_10181
    );
  U3_Mmux_M1a_mux0000_8 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X26Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_25_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1a_24_0,
      O => U3_Mmux_M1a_mux0000_8_10202
    );
  U3_Mmux_M1a_mux0000_71 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X26Y35"
    )
    port map (
      ADR0 => M1a_27_0,
      ADR1 => M1a_26_0,
      ADR2 => U3_xpix1(0),
      ADR3 => VCC,
      O => U3_Mmux_M1a_mux0000_71_10211
    );
  U3_Mmux_M1a_mux0000_83 : X_LUT4
    generic map(
      INIT => X"3355",
      LOC => "SLICE_X26Y36"
    )
    port map (
      ADR0 => M1a_12_bdd1_0,
      ADR1 => N192,
      ADR2 => VCC,
      ADR3 => rom1_addr_4_0,
      O => U3_Mmux_M1a_mux0000_83_10232
    );
  U3_Mmux_M1a_mux0000_73 : X_LUT4
    generic map(
      INIT => X"F033",
      LOC => "SLICE_X26Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_14_bdd0_0,
      ADR2 => N324,
      ADR3 => rom1_addr_4_0,
      O => U3_Mmux_M1a_mux0000_73_10241
    );
  U3_Mmux_M1a_mux0000_91 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X26Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_9_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1a_8_Q,
      O => U3_Mmux_M1a_mux0000_91_10262
    );
  U3_Mmux_M1a_mux0000_84 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X26Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_10_Q,
      ADR2 => U3_xpix1(0),
      ADR3 => M1a_11_0,
      O => U3_Mmux_M1a_mux0000_84_10271
    );
  U3_Mmux_M1a_mux0000_81 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X27Y34"
    )
    port map (
      ADR0 => M1a_21_Q,
      ADR1 => U3_xpix1(0),
      ADR2 => VCC,
      ADR3 => M1a_20_Q,
      O => U3_Mmux_M1a_mux0000_81_10292
    );
  U3_Mmux_M1a_mux0000_72 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X27Y34"
    )
    port map (
      ADR0 => M1a_22_0,
      ADR1 => U3_xpix1(0),
      ADR2 => VCC,
      ADR3 => M1a_23_0,
      O => U3_Mmux_M1a_mux0000_72_10301
    );
  U3_Mmux_M1a_mux0000_9 : X_LUT4
    generic map(
      INIT => X"0F33",
      LOC => "SLICE_X27Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_14_bdd0_0,
      ADR2 => N322,
      ADR3 => rom1_addr_4_0,
      O => U3_Mmux_M1a_mux0000_9_10322
    );
  U3_Mmux_M1a_mux0000_82 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X27Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_xpix1(0),
      ADR2 => M1a_19_Q,
      ADR3 => M1a_18_Q,
      O => U3_Mmux_M1a_mux0000_82_10332
    );
  U3_Mmux_M1a_mux0000_92 : X_LUT4
    generic map(
      INIT => X"0A5F",
      LOC => "SLICE_X27Y36"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => VCC,
      ADR2 => N328,
      ADR3 => M1a_4_bdd0_0,
      O => U3_Mmux_M1a_mux0000_92_10353
    );
  U3_Mmux_M1a_mux0000_85 : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X27Y36"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => N326,
      ADR2 => VCC,
      ADR3 => M1a_4_bdd0_0,
      O => U3_Mmux_M1a_mux0000_85_10362
    );
  U3_Mmux_M1a_mux0000_10 : X_LUT4
    generic map(
      INIT => X"D000",
      LOC => "SLICE_X27Y37"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => M1a_1_21_0,
      ADR2 => M1a_1_7_0,
      ADR3 => U3_xpix1(0),
      O => U3_Mmux_M1a_mux0000_10_10378
    );
  U3_Mmux_M1a_mux0000_93 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X27Y37"
    )
    port map (
      ADR0 => M1a_2_Q,
      ADR1 => U3_xpix1(0),
      ADR2 => VCC,
      ADR3 => M1a_3_0,
      O => U3_Mmux_M1a_mux0000_93_10386
    );
  sw_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_0_INBUF,
      O => sw_0_IBUF_5291
    );
  sw_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_1_INBUF,
      O => sw_1_IBUF_5292
    );
  sw_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_2_INBUF,
      O => sw_2_IBUF_5293
    );
  sw_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => sw_3_INBUF,
      O => sw_3_IBUF_5294
    );
  btn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_2_INBUF,
      O => btn_2_IBUF_5303
    );
  btn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_INBUF,
      O => btn_3_IBUF_4959
    );
  x7_Mmux_digit_41 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X54Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(18),
      ADR2 => U3_tank2_angle_calc(5),
      ADR3 => U3_tank2_angle_calc(1),
      O => x7_Mmux_digit_41_10693
    );
  x7_Mmux_digit_31 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X54Y69"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(1),
      ADR1 => x7_clkdiv(18),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(5),
      O => x7_Mmux_digit_31_10701
    );
  x7_Mmux_digit_42 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X55Y68"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(2),
      ADR1 => U3_tank2_angle_calc(6),
      ADR2 => x7_clkdiv(18),
      ADR3 => VCC,
      O => x7_Mmux_digit_42_10718
    );
  x7_Mmux_digit_32 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X55Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_tank1_angle_calc(2),
      ADR2 => x7_clkdiv(18),
      ADR3 => U3_tank1_angle_calc(6),
      O => x7_Mmux_digit_32_10726
    );
  x7_Mmux_digit_43 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X54Y68"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(3),
      ADR1 => x7_clkdiv(18),
      ADR2 => VCC,
      ADR3 => U3_tank2_angle_calc(7),
      O => x7_Mmux_digit_43_10743
    );
  x7_Mmux_digit_33 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X54Y68"
    )
    port map (
      ADR0 => x7_clkdiv(18),
      ADR1 => U3_tank1_angle_calc(3),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(7),
      O => x7_Mmux_digit_33_10751
    );
  U3_Mmux_M1a_mux0000_92_SW0_F : X_LUT4
    generic map(
      INIT => X"FE61",
      LOC => "SLICE_X27Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U3_xpix1(0),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N498
    );
  U3_Mmux_M1a_mux0000_92_SW0_G : X_LUT4
    generic map(
      INIT => X"55EE",
      LOC => "SLICE_X27Y33"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U3_xpix1(0),
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => N499
    );
  U3_Mmux_M1a_mux0000_85_SW0_F : X_LUT4
    generic map(
      INIT => X"A9A3",
      LOC => "SLICE_X25Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U3_xpix1(0),
      O => N502
    );
  U3_Mmux_M1a_mux0000_85_SW0_G : X_LUT4
    generic map(
      INIT => X"55EE",
      LOC => "SLICE_X25Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => N503
    );
  M1a_11_2 : X_LUT4
    generic map(
      INIT => X"1F7A",
      LOC => "SLICE_X32Y37"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M1a_11_2_10967
    );
  M1a_11_1_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X32Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_11_1_5317,
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1a_11_1_rt_10978
    );
  U3_spriteonB1_cmp_lt00002171 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X21Y4"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => U3_spriteonB1_cmp_lt00002171_11003
    );
  M1a_8_12 : X_LUT4
    generic map(
      INIT => X"0AA8",
      LOC => "SLICE_X33Y37"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(3),
      ADR3 => U2_vcs(1),
      O => M1a_8_11_11021
    );
  M1a_8_11 : X_LUT4
    generic map(
      INIT => X"0A02",
      LOC => "SLICE_X33Y37"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(3),
      ADR3 => U2_vcs(1),
      O => M1a_8_1
    );
  M2a_19_SW0 : X_LUT4
    generic map(
      INIT => X"73FE",
      LOC => "SLICE_X33Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2a_18_2
    );
  M2a_18_1 : X_LUT4
    generic map(
      INIT => X"1106",
      LOC => "SLICE_X33Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M2a_18_1_11055
    );
  M1_5_F : X_LUT4
    generic map(
      INIT => X"5B40",
      LOC => "SLICE_X18Y43"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N448
    );
  M1_5_G : X_LUT4
    generic map(
      INIT => X"5172",
      LOC => "SLICE_X18Y43"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(2),
      O => N449
    );
  M1_9_F : X_LUT4
    generic map(
      INIT => X"2784",
      LOC => "SLICE_X15Y42"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N512
    );
  M1_9_G : X_LUT4
    generic map(
      INIT => X"6069",
      LOC => "SLICE_X15Y42"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N513
    );
  M1a_3_2 : X_LUT4
    generic map(
      INIT => X"1400",
      LOC => "SLICE_X33Y34"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => M1a_3_2_11121
    );
  M1a_3_1_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X33Y34"
    )
    port map (
      ADR0 => M1a_3_1_5321,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1a_3_1_rt_11132
    );
  M1_24_107_F : X_LUT4
    generic map(
      INIT => X"3035",
      LOC => "SLICE_X20Y51"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M1_24_bdd0_0,
      ADR2 => rom1_addr(3),
      ADR3 => N338_0,
      O => N516
    );
  M1_24_107_G : X_LUT4
    generic map(
      INIT => X"5C1A",
      LOC => "SLICE_X20Y51"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => N517
    );
  M1_25_141_F : X_LUT4
    generic map(
      INIT => X"70B0",
      LOC => "SLICE_X26Y45"
    )
    port map (
      ADR0 => U3_N71,
      ADR1 => M1_25_bdd1_0,
      ADR2 => M1_25_75_0,
      ADR3 => U2_vcs(3),
      O => N416
    );
  M1_25_141_G : X_LUT4
    generic map(
      INIT => X"3553",
      LOC => "SLICE_X26Y45"
    )
    port map (
      ADR0 => M1_10_bdd5_0,
      ADR1 => M1_25_bdd0,
      ADR2 => U3_N71,
      ADR3 => U2_vcs(3),
      O => N417
    );
  M1_27_102_F : X_LUT4
    generic map(
      INIT => X"005A",
      LOC => "SLICE_X25Y50"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => VCC,
      ADR2 => U2_vcs(1),
      ADR3 => M1_22_bdd9_0,
      O => N430
    );
  M1_27_102_G : X_LUT4
    generic map(
      INIT => X"6984",
      LOC => "SLICE_X25Y50"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M1_21_bdd5_0,
      ADR2 => U2_vcs(1),
      ADR3 => M1_22_bdd9_0,
      O => N431
    );
  M1_26_176_F : X_LUT4
    generic map(
      INIT => X"4E0A",
      LOC => "SLICE_X20Y49"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1_26_30_0,
      ADR2 => M1_26_bdd0_0,
      ADR3 => M1_26_58_0,
      O => N522
    );
  M1_26_176_G : X_LUT4
    generic map(
      INIT => X"8C70",
      LOC => "SLICE_X20Y49"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N523
    );
  M1_27_232_F : X_LUT4
    generic map(
      INIT => X"2A8A",
      LOC => "SLICE_X20Y45"
    )
    port map (
      ADR0 => M1_27_127_0,
      ADR1 => U2_vcs(3),
      ADR2 => M1_27_bdd0_0,
      ADR3 => U3_N71,
      O => N414
    );
  M1_27_232_G : X_LUT4
    generic map(
      INIT => X"D174",
      LOC => "SLICE_X20Y45"
    )
    port map (
      ADR0 => M1_10_bdd5_0,
      ADR1 => U2_vcs(3),
      ADR2 => M1_27_192_0,
      ADR3 => U3_N71,
      O => N415
    );
  M2_13_21 : X_LUT4
    generic map(
      INIT => X"4201",
      LOC => "SLICE_X20Y39"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M1_18_2
    );
  M1_18_1 : X_LUT4
    generic map(
      INIT => X"8E34",
      LOC => "SLICE_X20Y39"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M1_18_1_11409
    );
  M1_10_2 : X_LUT4
    generic map(
      INIT => X"08A4",
      LOC => "SLICE_X25Y41"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => M1_10_2_11427
    );
  M1_10_1 : X_LUT4
    generic map(
      INIT => X"3A4C",
      LOC => "SLICE_X25Y41"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => M1_10_1_11434
    );
  M2_22_f5_F : X_LUT4
    generic map(
      INIT => X"4782",
      LOC => "SLICE_X26Y38"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N526
    );
  M2_22_f5_G : X_LUT4
    generic map(
      INIT => X"4689",
      LOC => "SLICE_X26Y38"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N527
    );
  M2_24_11 : X_LUT4
    generic map(
      INIT => X"3540",
      LOC => "SLICE_X22Y42"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M2_24_1_11478
    );
  M2_24_1 : X_LUT4
    generic map(
      INIT => X"0E61",
      LOC => "SLICE_X22Y42"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M2_24_Q
    );
  M2_3_1242 : X_LUT4
    generic map(
      INIT => X"AFCF",
      LOC => "SLICE_X41Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => rom1_addr_4_0,
      ADR3 => U2_vcs(0),
      O => M2_3_1242_11504
    );
  M2_11_F : X_LUT4
    generic map(
      INIT => X"1822",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N544
    );
  M2_11_G : X_LUT4
    generic map(
      INIT => X"327F",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N545
    );
  M1_2_1_F : X_LUT4
    generic map(
      INIT => X"73E0",
      LOC => "SLICE_X19Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N486
    );
  M1_2_1_G : X_LUT4
    generic map(
      INIT => X"1788",
      LOC => "SLICE_X19Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N487
    );
  M2_23_F : X_LUT4
    generic map(
      INIT => X"41EC",
      LOC => "SLICE_X20Y44"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(4),
      O => N468
    );
  M2_23_G : X_LUT4
    generic map(
      INIT => X"323F",
      LOC => "SLICE_X20Y44"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(4),
      O => N469
    );
  M2_25_F : X_LUT4
    generic map(
      INIT => X"3022",
      LOC => "SLICE_X25Y40"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => N446
    );
  M2_25_G : X_LUT4
    generic map(
      INIT => X"0B59",
      LOC => "SLICE_X25Y40"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => N447
    );
  M2_19_F : X_LUT4
    generic map(
      INIT => X"0A21",
      LOC => "SLICE_X29Y40"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N550
    );
  M2_19_G : X_LUT4
    generic map(
      INIT => X"086C",
      LOC => "SLICE_X29Y40"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N551
    );
  M1a_2_F : X_LUT4
    generic map(
      INIT => X"52AA",
      LOC => "SLICE_X28Y34"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N444
    );
  M1a_2_G : X_LUT4
    generic map(
      INIT => X"4002",
      LOC => "SLICE_X28Y34"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N445
    );
  U3_C1_not000152_SW1_F : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X2Y47"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => U3_C1(1),
      ADR2 => U3_C1(6),
      ADR3 => U3_C1(0),
      O => N172
    );
  U3_C1_not000152_SW1_G : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X2Y47"
    )
    port map (
      ADR0 => U3_C1(6),
      ADR1 => VCC,
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => N173
    );
  M1_30_1162 : X_LUT4
    generic map(
      INIT => X"4400",
      LOC => "SLICE_X24Y44"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => M1_30_49,
      ADR2 => VCC,
      ADR3 => M1_24_39_0,
      O => M1_30_1161_11854
    );
  M1_30_1161 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X24Y44"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_27_bdd4,
      ADR2 => rom1_addr_4_0,
      ADR3 => U2_vcs(0),
      O => M1_30_116
    );
  M1a_26_128_SW0_F : X_LUT4
    generic map(
      INIT => X"0F11",
      LOC => "SLICE_X29Y46"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => N354_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N490
    );
  M1a_26_128_SW0_G : X_LUT4
    generic map(
      INIT => X"A4FE",
      LOC => "SLICE_X29Y46"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => N398_0,
      ADR2 => U2_vcs(2),
      ADR3 => N366,
      O => N491
    );
  U3_Mmux_M2a_mux0000_8_SW0_F : X_LUT4
    generic map(
      INIT => X"4616",
      LOC => "SLICE_X35Y36"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U3_xpix2(0),
      O => N554
    );
  U3_Mmux_M2a_mux0000_8_SW0_G : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X35Y36"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => N555
    );
  M1a_25_36_F : X_LUT4
    generic map(
      INIT => X"E4D8",
      LOC => "SLICE_X29Y38"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => N350_0,
      ADR2 => M1_25_bdd1_0,
      ADR3 => U3_N71,
      O => N470
    );
  M1a_25_36_G : X_LUT4
    generic map(
      INIT => X"9103",
      LOC => "SLICE_X29Y38"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N471
    );
  M1a_18_31_F : X_LUT4
    generic map(
      INIT => X"257E",
      LOC => "SLICE_X27Y32"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N532
    );
  M1a_18_31_G : X_LUT4
    generic map(
      INIT => X"117B",
      LOC => "SLICE_X27Y32"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N533
    );
  M1a_19_34_F : X_LUT4
    generic map(
      INIT => X"46E6",
      LOC => "SLICE_X29Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N442
    );
  M1a_19_34_G : X_LUT4
    generic map(
      INIT => X"0157",
      LOC => "SLICE_X29Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(4),
      O => N443
    );
  M1_28_1202 : X_LUT4
    generic map(
      INIT => X"FD75",
      LOC => "SLICE_X22Y44"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => M1_28_1202_12154
    );
  M1_28_1201 : X_LUT4
    generic map(
      INIT => X"F557",
      LOC => "SLICE_X22Y44"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => M1_28_1201_12161
    );
  M1a_28_70_F : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X35Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => N390_0,
      ADR3 => VCC,
      O => N518
    );
  M1a_28_70_G : X_LUT4
    generic map(
      INIT => X"0503",
      LOC => "SLICE_X35Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(0),
      O => N519
    );
  M2a_10_51_F : X_LUT4
    generic map(
      INIT => X"3035",
      LOC => "SLICE_X36Y39"
    )
    port map (
      ADR0 => N358_0,
      ADR1 => M1a_12_bdd0,
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N482
    );
  M2a_10_51_G : X_LUT4
    generic map(
      INIT => X"173A",
      LOC => "SLICE_X36Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M1a_12_bdd0,
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N483
    );
  M2a_12_29_F : X_LUT4
    generic map(
      INIT => X"47F0",
      LOC => "SLICE_X32Y38"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N440
    );
  M2a_12_29_G : X_LUT4
    generic map(
      INIT => X"0157",
      LOC => "SLICE_X32Y38"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N441
    );
  M2a_22_30_F : X_LUT4
    generic map(
      INIT => X"306C",
      LOC => "SLICE_X30Y35"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N484
    );
  M2a_22_30_G : X_LUT4
    generic map(
      INIT => X"1176",
      LOC => "SLICE_X30Y35"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N485
    );
  M2a_29_31_F : X_LUT4
    generic map(
      INIT => X"662A",
      LOC => "SLICE_X30Y34"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N530
    );
  M2a_29_31_G : X_LUT4
    generic map(
      INIT => X"4002",
      LOC => "SLICE_X30Y34"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N531
    );
  M2a_5_128_SW0_F : X_LUT4
    generic map(
      INIT => X"5053",
      LOC => "SLICE_X39Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => N360_0,
      O => N492
    );
  M2a_5_128_SW0_G : X_LUT4
    generic map(
      INIT => X"AF4E",
      LOC => "SLICE_X39Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => N400_0,
      ADR2 => N368,
      ADR3 => U2_vcs(3),
      O => N493
    );
  M1_23_77_F : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1_23_20_0,
      ADR2 => M1_23_29_0,
      ADR3 => M1_23_bdd1_0,
      O => N464
    );
  M1_23_77_G : X_LUT4
    generic map(
      INIT => X"86AE",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => rom1_addr(3),
      ADR3 => U2_vcs(0),
      O => N465
    );
  M1_31_78_F : X_LUT4
    generic map(
      INIT => X"0123",
      LOC => "SLICE_X23Y43"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr_4_0,
      ADR2 => N214_0,
      ADR3 => M1_23_bdd3_0,
      O => N410
    );
  M1_31_78_G : X_LUT4
    generic map(
      INIT => X"2030",
      LOC => "SLICE_X23Y43"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr_4_0,
      ADR2 => M1_27_bdd4,
      ADR3 => U2_vcs(0),
      O => N411
    );
  M2_10_48_F : X_LUT4
    generic map(
      INIT => X"3B07",
      LOC => "SLICE_X35Y45"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => N262_0,
      ADR3 => U2_vcs(3),
      O => N508
    );
  M2_10_48_G : X_LUT4
    generic map(
      INIT => X"31AC",
      LOC => "SLICE_X35Y45"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => N509
    );
  M2_12_32_F : X_LUT4
    generic map(
      INIT => X"488E",
      LOC => "SLICE_X25Y43"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N488
    );
  M2_12_32_G : X_LUT4
    generic map(
      INIT => X"5B20",
      LOC => "SLICE_X25Y43"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N489
    );
  M1_10_f51_F : X_LUT4
    generic map(
      INIT => X"2CA2",
      LOC => "SLICE_X19Y45"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(3),
      O => N548
    );
  M1_10_f51_G : X_LUT4
    generic map(
      INIT => X"06A8",
      LOC => "SLICE_X19Y45"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => N549
    );
  M2_18_55_F : X_LUT4
    generic map(
      INIT => X"4D01",
      LOC => "SLICE_X27Y38"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N494
    );
  M2_18_55_G : X_LUT4
    generic map(
      INIT => X"52B0",
      LOC => "SLICE_X27Y38"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => N495
    );
  M2_4_105_F : X_LUT4
    generic map(
      INIT => X"1010",
      LOC => "SLICE_X37Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => N422
    );
  M2_4_105_G : X_LUT4
    generic map(
      INIT => X"0902",
      LOC => "SLICE_X37Y53"
    )
    port map (
      ADR0 => M2_0_bdd6_0,
      ADR1 => rom1_addr(2),
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd13_0,
      O => N423
    );
  M2_4_222_F : X_LUT4
    generic map(
      INIT => X"7B00",
      LOC => "SLICE_X27Y48"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M2_4_bdd0_0,
      ADR2 => U3_N71,
      ADR3 => M2_4_116_0,
      O => N418
    );
  M2_4_222_G : X_LUT4
    generic map(
      INIT => X"B712",
      LOC => "SLICE_X27Y48"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M1_10_bdd5_0,
      ADR2 => U3_N71,
      ADR3 => M1_27_192_0,
      O => N419
    );
  M2_5_176_F : X_LUT4
    generic map(
      INIT => X"55C0",
      LOC => "SLICE_X35Y49"
    )
    port map (
      ADR0 => M2_5_bdd0_0,
      ADR1 => M2_5_58_0,
      ADR2 => M2_5_30_0,
      ADR3 => rom1_addr(3),
      O => N524
    );
  M2_5_176_G : X_LUT4
    generic map(
      INIT => X"A464",
      LOC => "SLICE_X35Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => rom1_addr(3),
      O => N525
    );
  M2_7_107_F : X_LUT4
    generic map(
      INIT => X"2E8B",
      LOC => "SLICE_X30Y48"
    )
    port map (
      ADR0 => M2_7_44,
      ADR1 => U3_N71,
      ADR2 => M2_7_bdd0_0,
      ADR3 => U2_vcs(3),
      O => N438
    );
  M2_7_107_G : X_LUT4
    generic map(
      INIT => X"471D",
      LOC => "SLICE_X30Y48"
    )
    port map (
      ADR0 => M1_12_bdd3_0,
      ADR1 => U3_N71,
      ADR2 => M1_10_bdd5_0,
      ADR3 => U2_vcs(3),
      O => N439
    );
  x7_Mmux_digit_4 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X55Y69"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(0),
      ADR1 => U3_tank2_angle_calc(4),
      ADR2 => x7_clkdiv(18),
      ADR3 => VCC,
      O => x7_Mmux_digit_4_12855
    );
  x7_Mmux_digit_3 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X55Y69"
    )
    port map (
      ADR0 => x7_clkdiv(18),
      ADR1 => VCC,
      ADR2 => U3_tank1_angle_calc(0),
      ADR3 => U3_tank1_angle_calc(4),
      O => x7_Mmux_digit_3_12863
    );
  U3_spriteonB2_and000056_SW02 : X_LUT4
    generic map(
      INIT => X"0015",
      LOC => "SLICE_X13Y12"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => U2_hcs(2),
      ADR2 => U2_hcs(1),
      ADR3 => U2_hcs(4),
      O => U3_spriteonB2_and000056_SW01_12879
    );
  U3_spriteonB2_and000056_SW01 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X13Y12"
    )
    port map (
      ADR0 => U2_hcs(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(4),
      O => U3_spriteonB2_and000056_SW0
    );
  M1a_9_33_F : X_LUT4
    generic map(
      INIT => X"13E0",
      LOC => "SLICE_X24Y37"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N504
    );
  M1a_9_33_G : X_LUT4
    generic map(
      INIT => X"1176",
      LOC => "SLICE_X24Y37"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N505
    );
  M2a_3_70_F : X_LUT4
    generic map(
      INIT => X"0003",
      LOC => "SLICE_X36Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N392_0,
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N520
    );
  M2a_3_70_G : X_LUT4
    generic map(
      INIT => X"010D",
      LOC => "SLICE_X36Y42"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => N521
    );
  M2a_6_36_F : X_LUT4
    generic map(
      INIT => X"DE84",
      LOC => "SLICE_X34Y42"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => M2_6_bdd0_0,
      ADR2 => U3_N71,
      ADR3 => N356_0,
      O => N472
    );
  M2a_6_36_G : X_LUT4
    generic map(
      INIT => X"8145",
      LOC => "SLICE_X34Y42"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => N473
    );
  M2_6_108_SW0_F : X_LUT4
    generic map(
      INIT => X"F7E7",
      LOC => "SLICE_X37Y47"
    )
    port map (
      ADR0 => M2_0_bdd6_0,
      ADR1 => M2_0_bdd13_0,
      ADR2 => rom1_addr(2),
      ADR3 => U2_vcs(0),
      O => N478
    );
  M2_6_108_SW0_G : X_LUT4
    generic map(
      INIT => X"FFF9",
      LOC => "SLICE_X37Y47"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N479
    );
  M1_1_74_F : X_LUT4
    generic map(
      INIT => X"D400",
      LOC => "SLICE_X22Y40"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N450
    );
  M1_1_74_G : X_LUT4
    generic map(
      INIT => X"1337",
      LOC => "SLICE_X22Y40"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N451
    );
  M2_0_80_F : X_LUT4
    generic map(
      INIT => X"0311",
      LOC => "SLICE_X32Y48"
    )
    port map (
      ADR0 => N218_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => M2_0_bdd3,
      ADR3 => U2_vcs(1),
      O => N412
    );
  M2_0_80_G : X_LUT4
    generic map(
      INIT => X"0405",
      LOC => "SLICE_X32Y48"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => U2_vcs(1),
      ADR2 => M2_0_bdd1,
      ADR3 => U2_vcs(0),
      O => N413
    );
  M2_1_49_F : X_LUT4
    generic map(
      INIT => X"AAEE",
      LOC => "SLICE_X33Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => M2_0_bdd6_0,
      O => N420
    );
  M2_1_49_G : X_LUT4
    generic map(
      INIT => X"BFEE",
      LOC => "SLICE_X33Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd13_0,
      ADR2 => U2_vcs(2),
      ADR3 => M2_0_bdd6_0,
      O => N421
    );
  M2_4_29_F : X_LUT4
    generic map(
      INIT => X"F660",
      LOC => "SLICE_X33Y52"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M2_0_bdd6_0,
      ADR3 => M2_0_bdd13_0,
      O => N432
    );
  M2_4_29_G : X_LUT4
    generic map(
      INIT => X"3C00",
      LOC => "SLICE_X33Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd6_0,
      O => N433
    );
  U3_C1_not00014 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X0Y47"
    )
    port map (
      ADR0 => U3_C1(7),
      ADR1 => U3_C1(5),
      ADR2 => U3_C1(6),
      ADR3 => U3_C1(4),
      O => U3_C1_not00014_O_pack_1
    );
  U3_C1_not000127 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X0Y47"
    )
    port map (
      ADR0 => U3_C1_not000110_0,
      ADR1 => U3_C1_not00015_0,
      ADR2 => U3_C1_not00014_O,
      ADR3 => nes_left_reg_4884,
      O => U3_C1_not000127_13288
    );
  nes_a_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X52Y30"
    )
    port map (
      ADR0 => nes_counter_reg(9),
      ADR1 => N4_0,
      ADR2 => nes_counter_reg(0),
      ADR3 => nes_counter_reg(8),
      O => nes_N01_pack_1
    );
  nes_right_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X52Y30"
    )
    port map (
      ADR0 => nes_counter_reg(3),
      ADR1 => nes_counter_reg(1),
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_N01,
      O => nes_right_reg_cmp_eq0000
    );
  U3_C1_not000183 : X_LUT4
    generic map(
      INIT => X"5D7F",
      LOC => "SLICE_X0Y46"
    )
    port map (
      ADR0 => U3_C1(7),
      ADR1 => U3_C1_not000147_0,
      ADR2 => N158,
      ADR3 => N157_0,
      O => U3_C1_not000183_O_pack_1
    );
  U3_C1_not0001144 : X_LUT4
    generic map(
      INIT => X"3222",
      LOC => "SLICE_X0Y46"
    )
    port map (
      ADR0 => U3_C1_not000127_0,
      ADR1 => who_present_state_FSM_FFd2_5427,
      ADR2 => U3_C1_not0001105_0,
      ADR3 => U3_C1_not000183_O,
      O => U3_C1_not0001
    );
  nes_scalar_next_cmp_eq000030 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X51Y24"
    )
    port map (
      ADR0 => nes_scalar_reg(9),
      ADR1 => nes_scalar_next_cmp_eq000021_0,
      ADR2 => nes_scalar_reg(8),
      ADR3 => nes_scalar_next_cmp_eq000010_0,
      O => nes_scalar_next_cmp_eq0000_pack_1
    );
  nes_counter_reg_not00011 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X51Y24"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => nes_N11_0,
      O => nes_counter_reg_not0001
    );
  nes_counter_reg_cmp_eq0000125 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X50Y28"
    )
    port map (
      ADR0 => nes_counter_reg(5),
      ADR1 => nes_counter_reg(8),
      ADR2 => nes_counter_reg(6),
      ADR3 => nes_counter_reg(9),
      O => nes_counter_reg_cmp_eq0000125_pack_1
    );
  nes_counter_reg_cmp_eq0000126 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X50Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg_cmp_eq0000112_5438,
      ADR2 => VCC,
      ADR3 => nes_counter_reg_cmp_eq0000125_5437,
      O => nes_N11
    );
  U3_C2_not000150 : X_LUT4
    generic map(
      INIT => X"0007",
      LOC => "SLICE_X3Y33"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(8),
      ADR3 => U3_C2(7),
      O => U3_C2_not000150_O_pack_1
    );
  U3_C2_not000164 : X_LUT4
    generic map(
      INIT => X"4404",
      LOC => "SLICE_X3Y33"
    )
    port map (
      ADR0 => nes_left_reg_4884,
      ADR1 => nes_right_reg_5439,
      ADR2 => U3_C2(9),
      ADR3 => U3_C2_not000150_O,
      O => U3_C2_not000164_13408
    );
  U3_C2_not000123 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X3Y31"
    )
    port map (
      ADR0 => U3_C2_not000113_0,
      ADR1 => U3_C2_not00016_0,
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(9),
      O => U3_C2_not000123_O_pack_1
    );
  U3_C2_not000186 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X3Y31"
    )
    port map (
      ADR0 => nes_left_reg_4884,
      ADR1 => who_present_state_FSM_FFd2_5427,
      ADR2 => U3_C2_not000164_0,
      ADR3 => U3_C2_not000123_O,
      O => U3_C2_not0001
    );
  U3_tank2_angle_calc_and000046 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y65"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(3),
      ADR1 => U3_tank2_angle_calc(2),
      ADR2 => U3_tank2_angle_calc(4),
      ADR3 => U3_tank2_angle_calc(1),
      O => U3_tank2_angle_calc_and000046_O_pack_1
    );
  U3_tank2_angle_calc_and000050 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X48Y65"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(7),
      ADR1 => U3_tank2_angle_calc_and000011_0,
      ADR2 => U3_tank2_angle_calc_and000046_O,
      ADR3 => U3_tank2_angle_calc_and000023_0,
      O => U3_tank2_angle_calc_and0000
    );
  U2_vcs_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X15Y9"
    )
    port map (
      ADR0 => N151_0,
      ADR1 => U2_vcs(1),
      ADR2 => U2_N2_0,
      ADR3 => U2_vcs(0),
      O => U2_vcs_cmp_eq0000_pack_1
    );
  U2_Mcount_vcs_eqn_51 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X15Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(5),
      ADR2 => VCC,
      ADR3 => U2_vcs_cmp_eq0000_5449,
      O => U2_Mcount_vcs_eqn_5
    );
  U2_vcs_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      I => U2_vcs_5_DXMUX_13489,
      CE => U2_vcs_5_CEINV_13470,
      CLK => U2_vcs_5_CLKINV_13471,
      SET => GND,
      RST => U2_vcs_5_FFX_RSTAND_13495,
      O => U2_vcs(5)
    );
  U2_vcs_5_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vcs_5_FFX_RSTAND_13495
    );
  U2_hcs_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => '0'
    )
    port map (
      I => U2_hcs_1_DXMUX_13573,
      CE => VCC,
      CLK => U2_hcs_1_CLKINV_13556,
      SET => GND,
      RST => U2_hcs_1_FFX_RSTAND_13578,
      O => U2_hcs(1)
    );
  U2_hcs_1_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_hcs_1_FFX_RSTAND_13578
    );
  U2_hcs_cmp_eq00005 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X13Y8"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(0),
      ADR3 => U3_N94,
      O => U2_hcs_cmp_eq00005_pack_1
    );
  U2_hcs_cmp_eq0000111 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X13Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_hcs_cmp_eq000010_5457,
      ADR3 => U2_hcs_cmp_eq00005_5458,
      O => U2_hcs_cmp_eq0000
    );
  U2_vsenable : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      I => U2_vsenable_DXMUX_13608,
      CE => U2_vsenable_CEINVNOT,
      CLK => U2_vsenable_CLKINV_13591,
      SET => GND,
      RST => GND,
      O => U2_vsenable_5448
    );
  nes_Mcount_counter_reg_eqn_01 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X53Y26"
    )
    port map (
      ADR0 => nes_Result(0),
      ADR1 => nes_N11_0,
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_0
    );
  nes_counter_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X53Y26",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_1_DYMUX_13636,
      CE => nes_counter_reg_1_CEINV_13626,
      CLK => nes_counter_reg_1_CLKINV_13627,
      SET => GND,
      RST => nes_counter_reg_1_SRINV_13628,
      O => nes_counter_reg(0)
    );
  nes_Mcount_counter_reg_eqn_11 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X53Y26"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_N11_0,
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_Result(1),
      O => nes_Mcount_counter_reg_eqn_1
    );
  nes_counter_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X53Y26",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_1_DXMUX_13651,
      CE => nes_counter_reg_1_CEINV_13626,
      CLK => nes_counter_reg_1_CLKINV_13627,
      SET => GND,
      RST => nes_counter_reg_1_SRINV_13628,
      O => nes_counter_reg(1)
    );
  nes_Mcount_counter_reg_eqn_21 : X_LUT4
    generic map(
      INIT => X"7F00",
      LOC => "SLICE_X52Y26"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_N11_0,
      ADR3 => nes_Result(2),
      O => nes_Mcount_counter_reg_eqn_2
    );
  nes_counter_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y26",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_3_DYMUX_13682,
      CE => nes_counter_reg_3_CEINV_13672,
      CLK => nes_counter_reg_3_CLKINV_13673,
      SET => GND,
      RST => nes_counter_reg_3_SRINV_13674,
      O => nes_counter_reg(2)
    );
  nes_Mcount_counter_reg_eqn_31 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X52Y26"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_Result(3),
      ADR2 => nes_N11_0,
      ADR3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_3
    );
  nes_counter_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y26",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_3_DXMUX_13697,
      CE => nes_counter_reg_3_CEINV_13672,
      CLK => nes_counter_reg_3_CLKINV_13673,
      SET => GND,
      RST => nes_counter_reg_3_SRINV_13674,
      O => nes_counter_reg(3)
    );
  nes_Mcount_counter_reg_eqn_41 : X_LUT4
    generic map(
      INIT => X"70F0",
      LOC => "SLICE_X51Y29"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_counter_reg(4),
      ADR2 => nes_Result(4),
      ADR3 => nes_N11_0,
      O => nes_Mcount_counter_reg_eqn_4
    );
  nes_counter_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_5_DYMUX_13728,
      CE => nes_counter_reg_5_CEINV_13718,
      CLK => nes_counter_reg_5_CLKINV_13719,
      SET => GND,
      RST => nes_counter_reg_5_SRINV_13720,
      O => nes_counter_reg(4)
    );
  nes_Mcount_counter_reg_eqn_51 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X51Y29"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_Result(5),
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_N11_0,
      O => nes_Mcount_counter_reg_eqn_5
    );
  nes_counter_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_5_DXMUX_13743,
      CE => nes_counter_reg_5_CEINV_13718,
      CLK => nes_counter_reg_5_CLKINV_13719,
      SET => GND,
      RST => nes_counter_reg_5_SRINV_13720,
      O => nes_counter_reg(5)
    );
  nes_Mcount_counter_reg_eqn_61 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X50Y30"
    )
    port map (
      ADR0 => nes_N11_0,
      ADR1 => nes_Result(6),
      ADR2 => nes_counter_reg(4),
      ADR3 => nes_counter_reg(2),
      O => nes_Mcount_counter_reg_eqn_6
    );
  nes_Mcount_counter_reg_eqn_91 : X_LUT4
    generic map(
      INIT => X"2AAA",
      LOC => "SLICE_X50Y29"
    )
    port map (
      ADR0 => nes_Result(9),
      ADR1 => nes_counter_reg(2),
      ADR2 => nes_N11_0,
      ADR3 => nes_counter_reg(4),
      O => nes_Mcount_counter_reg_eqn_9
    );
  nes_counter_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X50Y29",
      INIT => '0'
    )
    port map (
      I => nes_counter_reg_9_DXMUX_13835,
      CE => nes_counter_reg_9_CEINV_13810,
      CLK => nes_counter_reg_9_CLKINV_13811,
      SET => GND,
      RST => nes_counter_reg_9_SRINV_13812,
      O => nes_counter_reg(9)
    );
  U1_Mcount_q_lut_0_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X34Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_Mcount_q_lut_0_0,
      O => U1_Mcount_q_lut_0_rt_13858
    );
  U1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y13",
      INIT => '0'
    )
    port map (
      I => U1_q_01_DXMUX_13863,
      CE => VCC,
      CLK => U1_q_01_CLKINV_13848,
      SET => GND,
      RST => U1_q_01_FFX_RSTAND_13868,
      O => U1_q_01
    );
  U1_q_01_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X34Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U1_q_01_FFX_RSTAND_13868
    );
  U2_Mcount_hcs_eqn_01 : X_LUT4
    generic map(
      INIT => X"7070",
      LOC => "SLICE_X3Y8"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5457,
      ADR1 => U2_hcs_cmp_eq00005_5458,
      ADR2 => U2_Result_0_1,
      ADR3 => VCC,
      O => U2_Mcount_hcs_eqn_0
    );
  U2_hcs_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      I => U2_hcs_0_DYMUX_13886,
      CE => VCC,
      CLK => U2_hcs_0_CLKINV_13876,
      SET => GND,
      RST => U2_hcs_0_FFY_RSTAND_13891,
      O => U2_hcs(0)
    );
  U2_hcs_0_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_hcs_0_FFY_RSTAND_13891
    );
  U2_Mcount_hcs_eqn_21 : X_LUT4
    generic map(
      INIT => X"3F00",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs_cmp_eq00005_5458,
      ADR2 => U2_hcs_cmp_eq000010_5457,
      ADR3 => U2_Result_2_1,
      O => U2_Mcount_hcs_eqn_2
    );
  U2_hcs_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => U2_hcs_3_DYMUX_13913,
      CE => VCC,
      CLK => U2_hcs_3_CLKINV_13903,
      SET => GND,
      RST => U2_hcs_3_SRINV_13904,
      O => U2_hcs(2)
    );
  U2_Mcount_hcs_eqn_31 : X_LUT4
    generic map(
      INIT => X"0AAA",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => U2_Result_3_1,
      ADR1 => VCC,
      ADR2 => U2_hcs_cmp_eq000010_5457,
      ADR3 => U2_hcs_cmp_eq00005_5458,
      O => U2_Mcount_hcs_eqn_3
    );
  U2_hcs_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => U2_hcs_3_DXMUX_13928,
      CE => VCC,
      CLK => U2_hcs_3_CLKINV_13903,
      SET => GND,
      RST => U2_hcs_3_SRINV_13904,
      O => U2_hcs(3)
    );
  U2_Mcount_hcs_eqn_41 : X_LUT4
    generic map(
      INIT => X"4C4C",
      LOC => "SLICE_X17Y12"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5457,
      ADR1 => U2_Result_4_1,
      ADR2 => U2_hcs_cmp_eq00005_5458,
      ADR3 => VCC,
      O => U2_Mcount_hcs_eqn_4
    );
  U2_hcs_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y12",
      INIT => '0'
    )
    port map (
      I => U2_hcs_5_DYMUX_13955,
      CE => VCC,
      CLK => U2_hcs_5_CLKINV_13945,
      SET => GND,
      RST => U2_hcs_5_SRINV_13946,
      O => U2_hcs(4)
    );
  U2_Mcount_hcs_eqn_51 : X_LUT4
    generic map(
      INIT => X"4C4C",
      LOC => "SLICE_X17Y12"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5457,
      ADR1 => U2_Result_5_1,
      ADR2 => U2_hcs_cmp_eq00005_5458,
      ADR3 => VCC,
      O => U2_Mcount_hcs_eqn_5
    );
  U2_hcs_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y12",
      INIT => '0'
    )
    port map (
      I => U2_hcs_5_DXMUX_13970,
      CE => VCC,
      CLK => U2_hcs_5_CLKINV_13945,
      SET => GND,
      RST => U2_hcs_5_SRINV_13946,
      O => U2_hcs(5)
    );
  U2_Mcount_hcs_eqn_61 : X_LUT4
    generic map(
      INIT => X"4C4C",
      LOC => "SLICE_X15Y12"
    )
    port map (
      ADR0 => U2_hcs_cmp_eq000010_5457,
      ADR1 => U2_Result_6_1,
      ADR2 => U2_hcs_cmp_eq00005_5458,
      ADR3 => VCC,
      O => U2_Mcount_hcs_eqn_6
    );
  U2_hcs_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => U2_hcs_7_DYMUX_13997,
      CE => VCC,
      CLK => U2_hcs_7_CLKINV_13987,
      SET => GND,
      RST => U2_hcs_7_SRINV_13988,
      O => U2_hcs(6)
    );
  U2_hcs_9 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      I => U2_hcs_9_DXMUX_14054,
      CE => VCC,
      CLK => U2_hcs_9_CLKINV_14029,
      SET => GND,
      RST => U2_hcs_9_SRINV_14030,
      O => U2_hcs(9)
    );
  U2_Mcount_vcs_eqn_01 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X14Y6"
    )
    port map (
      ADR0 => U2_Result(0),
      ADR1 => U2_vcs_cmp_eq0000_5449,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_0
    );
  U2_vcs_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DYMUX_14082,
      CE => U2_vcs_1_CEINV_14070,
      CLK => U2_vcs_1_CLKINV_14071,
      SET => GND,
      RST => U2_vcs_1_SRINV_14072,
      O => U2_vcs(0)
    );
  U2_Mcount_vcs_eqn_11 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X14Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_5449,
      ADR2 => U2_Result(1),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_1
    );
  U2_vcs_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      I => U2_vcs_1_DXMUX_14099,
      CE => U2_vcs_1_CEINV_14070,
      CLK => U2_vcs_1_CLKINV_14071,
      SET => GND,
      RST => U2_vcs_1_SRINV_14072,
      O => U2_vcs(1)
    );
  U2_Mcount_vcs_eqn_21 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X14Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_Result(2),
      ADR2 => U2_vcs_cmp_eq0000_5449,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_2
    );
  U2_vcs_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DYMUX_14128,
      CE => U2_vcs_3_CEINV_14116,
      CLK => U2_vcs_3_CLKINV_14117,
      SET => GND,
      RST => U2_vcs_3_SRINV_14118,
      O => U2_vcs(2)
    );
  U2_Mcount_vcs_eqn_31 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X14Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs_cmp_eq0000_5449,
      ADR2 => VCC,
      ADR3 => U2_Result(3),
      O => U2_Mcount_vcs_eqn_3
    );
  U2_vcs_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      I => U2_vcs_3_DXMUX_14145,
      CE => U2_vcs_3_CEINV_14116,
      CLK => U2_vcs_3_CLKINV_14117,
      SET => GND,
      RST => U2_vcs_3_SRINV_14118,
      O => U2_vcs(3)
    );
  U2_Mcount_vcs_eqn_41 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5449,
      ADR1 => U2_Result(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_4
    );
  U2_vcs_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      I => U2_vcs_4_DYMUX_14171,
      CE => U2_vcs_4_CEINV_14159,
      CLK => U2_vcs_4_CLKINV_14160,
      SET => GND,
      RST => U2_vcs_4_FFY_RSTAND_14177,
      O => U2_vcs(4)
    );
  U2_vcs_4_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => btn_3_IBUF_4959,
      O => U2_vcs_4_FFY_RSTAND_14177
    );
  U2_Mcount_vcs_eqn_61 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X14Y8"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5449,
      ADR1 => VCC,
      ADR2 => U2_Result(6),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_6
    );
  U2_vcs_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DYMUX_14200,
      CE => U2_vcs_7_CEINV_14188,
      CLK => U2_vcs_7_CLKINV_14189,
      SET => GND,
      RST => U2_vcs_7_SRINV_14190,
      O => U2_vcs(6)
    );
  U2_Mcount_vcs_eqn_71 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X14Y8"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5449,
      ADR1 => U2_Result(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_7
    );
  U2_vcs_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      I => U2_vcs_7_DXMUX_14217,
      CE => U2_vcs_7_CEINV_14188,
      CLK => U2_vcs_7_CLKINV_14189,
      SET => GND,
      RST => U2_vcs_7_SRINV_14190,
      O => U2_vcs(7)
    );
  U2_Mcount_vcs_eqn_81 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => U2_vcs_cmp_eq0000_5449,
      ADR1 => VCC,
      ADR2 => U2_Result(8),
      ADR3 => VCC,
      O => U2_Mcount_vcs_eqn_8
    );
  nes_scalar_next_1_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X51Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => nes_scalar_next_addsub0000(1),
      O => nes_scalar_next(1)
    );
  nes_scalar_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X51Y8",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_1_DXMUX_14306,
      CE => VCC,
      CLK => nes_scalar_reg_1_CLKINV_14279,
      SET => GND,
      RST => nes_scalar_reg_1_SRINV_14280,
      O => nes_scalar_reg(1)
    );
  nes_scalar_next_2_1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X50Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_cmp_eq0000,
      ADR2 => nes_scalar_next_addsub0000(2),
      ADR3 => VCC,
      O => nes_scalar_next(2)
    );
  nes_scalar_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y10",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_3_DYMUX_14332,
      CE => VCC,
      CLK => nes_scalar_reg_3_CLKINV_14321,
      SET => GND,
      RST => nes_scalar_reg_3_SRINV_14322,
      O => nes_scalar_reg(2)
    );
  nes_scalar_next_3_1 : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X50Y10"
    )
    port map (
      ADR0 => nes_scalar_next_cmp_eq0000,
      ADR1 => nes_scalar_next_addsub0000(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next(3)
    );
  nes_scalar_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y10",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_3_DXMUX_14348,
      CE => VCC,
      CLK => nes_scalar_reg_3_CLKINV_14321,
      SET => GND,
      RST => nes_scalar_reg_3_SRINV_14322,
      O => nes_scalar_reg(3)
    );
  nes_scalar_next_4_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X50Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => nes_scalar_next_addsub0000(4),
      O => nes_scalar_next(4)
    );
  nes_scalar_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y11",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_5_DYMUX_14374,
      CE => VCC,
      CLK => nes_scalar_reg_5_CLKINV_14363,
      SET => GND,
      RST => nes_scalar_reg_5_SRINV_14364,
      O => nes_scalar_reg(4)
    );
  nes_scalar_next_5_1 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X50Y11"
    )
    port map (
      ADR0 => nes_scalar_next_addsub0000(5),
      ADR1 => nes_scalar_next_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next(5)
    );
  nes_scalar_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X50Y11",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_5_DXMUX_14390,
      CE => VCC,
      CLK => nes_scalar_reg_5_CLKINV_14363,
      SET => GND,
      RST => nes_scalar_reg_5_SRINV_14364,
      O => nes_scalar_reg(5)
    );
  nes_scalar_next_6_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X50Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_addsub0000(6),
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => VCC,
      O => nes_scalar_next(6)
    );
  nes_scalar_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y13",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_7_DYMUX_14416,
      CE => VCC,
      CLK => nes_scalar_reg_7_CLKINV_14405,
      SET => GND,
      RST => nes_scalar_reg_7_SRINV_14406,
      O => nes_scalar_reg(6)
    );
  nes_scalar_next_7_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X50Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_addsub0000(7),
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => VCC,
      O => nes_scalar_next(7)
    );
  nes_scalar_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y13",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_7_DXMUX_14432,
      CE => VCC,
      CLK => nes_scalar_reg_7_CLKINV_14405,
      SET => GND,
      RST => nes_scalar_reg_7_SRINV_14406,
      O => nes_scalar_reg(7)
    );
  nes_scalar_next_8_1 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X51Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_next_addsub0000(8),
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => VCC,
      O => nes_scalar_next(8)
    );
  nes_scalar_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y15",
      INIT => '0'
    )
    port map (
      I => nes_scalar_reg_9_DYMUX_14458,
      CE => VCC,
      CLK => nes_scalar_reg_9_CLKINV_14447,
      SET => GND,
      RST => nes_scalar_reg_9_SRINV_14448,
      O => nes_scalar_reg(8)
    );
  nes_scalar_next_9_1 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X51Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_next_cmp_eq0000,
      ADR3 => nes_scalar_next_addsub0000(9),
      O => nes_scalar_next(9)
    );
  U3_C1_not000110 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X0Y44"
    )
    port map (
      ADR0 => U3_C1(0),
      ADR1 => U3_C1(2),
      ADR2 => U3_C1(3),
      ADR3 => U3_C1(1),
      O => U3_C1_not000110_14541
    );
  U3_C1_not000147 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X0Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C1(2),
      ADR2 => U3_C1(3),
      ADR3 => VCC,
      O => U3_C1_not000147_14550
    );
  U3_blue_and000031 : X_LUT4
    generic map(
      INIT => X"0A00",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => U3_N40_0,
      ADR1 => VCC,
      ADR2 => U3_Mcompar_spriteon1_cmp_lt0000_cy_9_Q,
      ADR3 => U3_spriteon1_cmp_ge0000,
      O => U3_N98_pack_1
    );
  U3_blue_0_45 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => U3_N102_0,
      ADR1 => U3_M1a_mux0000,
      ADR2 => U3_blue_0_27_0,
      ADR3 => U3_N98,
      O => blue_0_OBUF_14574
    );
  M2a_3_70_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"BB27",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6_0,
      ADR2 => M2_0_bdd13_0,
      ADR3 => U2_vcs(0),
      O => N392
    );
  M2a_5_13_SW01 : X_LUT4
    generic map(
      INIT => X"33C3",
      LOC => "SLICE_X41Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M2_0_bdd6_0,
      ADR2 => M2_0_bdd13_0,
      ADR3 => U2_vcs(0),
      O => N400
    );
  x7_an_3_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X64Y70"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(4),
      ADR1 => U3_tank1_angle_calc(5),
      ADR2 => U3_tank1_angle_calc(6),
      ADR3 => VCC,
      O => N01_pack_1
    );
  x7_an_3_mux0001 : X_LUT4
    generic map(
      INIT => X"777F",
      LOC => "SLICE_X64Y70"
    )
    port map (
      ADR0 => x7_clkdiv(19),
      ADR1 => x7_clkdiv(18),
      ADR2 => U3_tank1_angle_calc(7),
      ADR3 => N01,
      O => an_3_OBUF_14622
    );
  x7_an_1_mux000115 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X52Y66"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(0),
      ADR1 => U3_tank2_angle_calc(7),
      ADR2 => U3_tank2_angle_calc(6),
      ADR3 => U3_tank1_angle_calc(1),
      O => x7_an_1_mux000115_14638
    );
  U3_Mcount_tank1_angle_calc_lut_4_SW0 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X52Y66"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_tank1_angle_calc(0),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(1),
      O => N168
    );
  x7_an_1_mux000152 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y67"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(4),
      ADR1 => U3_tank1_angle_calc(6),
      ADR2 => U3_tank2_angle_calc(5),
      ADR3 => U3_tank1_angle_calc(7),
      O => x7_an_1_mux000152_pack_1
    );
  x7_an_1_mux000172 : X_LUT4
    generic map(
      INIT => X"EAAA",
      LOC => "SLICE_X54Y67"
    )
    port map (
      ADR0 => x7_an_1_mux00012_0,
      ADR1 => x7_an_1_mux000115_0,
      ADR2 => x7_an_1_mux000152_5471,
      ADR3 => x7_an_1_mux000128,
      O => an_1_OBUF_14670
    );
  U3_blue_and0000111 : X_LUT4
    generic map(
      INIT => X"7F7F",
      LOC => "SLICE_X21Y6"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => U3_N42_pack_1
    );
  U3_spriteonGrnd_and0000110 : X_LUT4
    generic map(
      INIT => X"AE00",
      LOC => "SLICE_X21Y6"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(0),
      ADR2 => U3_N42,
      ADR3 => U2_vcs(5),
      O => U3_spriteonGrnd_and0000110_14694
    );
  U3_C1_not0001105 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X0Y48"
    )
    port map (
      ADR0 => U3_C1(9),
      ADR1 => nes_left_reg_4884,
      ADR2 => nes_right_reg_5439,
      ADR3 => U3_C1(8),
      O => U3_C1_not0001105_14709
    );
  U3_C1_not00015 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X0Y48"
    )
    port map (
      ADR0 => U3_C1(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(8),
      O => U3_C1_not00015_14718
    );
  U3_blue_and0000211 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X12Y15"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(7),
      O => U3_N101_pack_1
    );
  U3_blue_and0000258 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X12Y15"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => N202_0,
      ADR2 => U3_N101,
      ADR3 => U2_vcs(9),
      O => U3_N40
    );
  U3_tank2Angle_0_SW0 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X42Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(3),
      ADR1 => U3_tank2_angle_calc(2),
      ADR2 => U3_tank2_angle_calc(4),
      ADR3 => VCC,
      O => N137_pack_1
    );
  U3_tank2Angle_0_Q : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X42Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(7),
      ADR1 => U3_tank2_angle_calc(5),
      ADR2 => U3_tank2_angle_calc(6),
      ADR3 => N137,
      O => M2_0_bdd13
    );
  U3_green_2_1 : X_LUT4
    generic map(
      INIT => X"FAEA",
      LOC => "SLICE_X16Y10"
    )
    port map (
      ADR0 => U3_N35,
      ADR1 => U3_spriteonGrnd_0,
      ADR2 => U3_N102_0,
      ADR3 => U3_N13_0,
      O => green_2_OBUF_14862
    );
  U3_blue_0_9 : X_LUT4
    generic map(
      INIT => X"FBFB",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => U3_spriteonB3_0,
      ADR1 => U3_spriteonB5_0,
      ADR2 => U3_spriteonB4_0,
      ADR3 => VCC,
      O => U3_blue_0_9_pack_1
    );
  U3_blue_0_27 : X_LUT4
    generic map(
      INIT => X"00BA",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => U3_spriteonB1_0,
      ADR1 => U3_spriteonB2,
      ADR2 => U3_blue_0_9_5481,
      ADR3 => U3_spriteonGrnd_0,
      O => U3_blue_0_27_14886
    );
  U3_spriteon2_addsub0000_5_11 : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X2Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(4),
      ADR3 => VCC,
      O => U3_spriteon2_addsub0000(5)
    );
  U3_Madd_spriteon2_addsub0000_cy_5_1 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X2Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(4),
      ADR3 => VCC,
      O => U3_Madd_spriteon2_addsub0000_cy(5)
    );
  U3_spriteon2_addsub0000_9_11 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X2Y25"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => U3_C2(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_N16_pack_1
    );
  U3_spriteon2_addsub0000_8_1 : X_LUT4
    generic map(
      INIT => X"3666",
      LOC => "SLICE_X2Y25"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => U3_C2(8),
      ADR2 => U3_N16,
      ADR3 => U3_C2(6),
      O => U3_spriteon2_addsub0000(8)
    );
  U3_spriteonB1_cmp_lt0000232 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(7),
      ADR2 => U2_vcs(6),
      ADR3 => U2_vcs(8),
      O => U3_spriteonB1_cmp_lt0000232_pack_1
    );
  U3_spriteonB1_cmp_lt0000249 : X_LUT4
    generic map(
      INIT => X"3330",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(9),
      ADR2 => U3_spriteonB1_cmp_lt0000232_5486,
      ADR3 => U3_spriteonB1_cmp_lt0000217,
      O => U3_spriteonB1_cmp_lt0000
    );
  U3_Msub_ypix1_Madd_xor_2_11 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X29Y42"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => rom1_addr_2_pack_1
    );
  M1_23_51 : X_LUT4
    generic map(
      INIT => X"BF7F",
      LOC => "SLICE_X29Y42"
    )
    port map (
      ADR0 => M1_22_bdd9_0,
      ADR1 => U2_vcs(0),
      ADR2 => rom1_addr(2),
      ADR3 => M1_21_bdd5_0,
      O => M1_23_bdd3
    );
  U3_Msub_ypix1_Madd_xor_3_11 : X_LUT4
    generic map(
      INIT => X"3CF0",
      LOC => "SLICE_X29Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => rom1_addr_3_pack_2
    );
  M1a_23_10 : X_LUT4
    generic map(
      INIT => X"FFE2",
      LOC => "SLICE_X29Y41"
    )
    port map (
      ADR0 => M1a_22_bdd0_0,
      ADR1 => U2_vcs(1),
      ADR2 => M1_21_bdd8,
      ADR3 => rom1_addr(3),
      O => M1a_23_10_15006
    );
  U3_Msub_ypix1_Madd_xor_4_11 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X25Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(4),
      O => rom1_addr(4)
    );
  M1a_1_7 : X_LUT4
    generic map(
      INIT => X"7F88",
      LOC => "SLICE_X25Y35"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(4),
      O => M1a_1_7_15030
    );
  nes_counter_reg_cmp_eq0000112 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X51Y28"
    )
    port map (
      ADR0 => nes_counter_reg(0),
      ADR1 => nes_counter_reg(7),
      ADR2 => nes_counter_reg(1),
      ADR3 => nes_counter_reg(3),
      O => nes_counter_reg_cmp_eq0000112_pack_1
    );
  nes_state_next_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X51Y28"
    )
    port map (
      ADR0 => nes_counter_reg_cmp_eq0000125_5437,
      ADR1 => nes_counter_reg(4),
      ADR2 => nes_counter_reg_cmp_eq0000112_5438,
      ADR3 => nes_counter_reg(2),
      O => ja2_OBUF_15054
    );
  U3_spriteonB5_and000034 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X10Y2"
    )
    port map (
      ADR0 => N302_0,
      ADR1 => U2_vcs(9),
      ADR2 => U2_vcs(8),
      ADR3 => U2_vcs(6),
      O => U3_spriteonB5_and000034_pack_1
    );
  U3_spriteonB5_and0000107 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X10Y2"
    )
    port map (
      ADR0 => U3_spriteonB5_and00006_0,
      ADR1 => U3_spriteonB1_cmp_lt0000_0,
      ADR2 => U3_spriteonB5_and000081,
      ADR3 => U3_spriteonB5_and000034_5492,
      O => U3_spriteonB5
    );
  U3_red_0_21 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X17Y11"
    )
    port map (
      ADR0 => vidon_0,
      ADR1 => U3_M1a_mux0000,
      ADR2 => U3_N98,
      ADR3 => U3_M1_mux0000,
      O => U3_N35_pack_1
    );
  U3_red_0_44 : X_LUT4
    generic map(
      INIT => X"FFE0",
      LOC => "SLICE_X17Y11"
    )
    port map (
      ADR0 => U3_blue_and0003_0,
      ADR1 => U3_red_0_15_0,
      ADR2 => U3_N41,
      ADR3 => U3_N35,
      O => red_0_OBUF_15102
    );
  U3_spriteonGrnd_and000015 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y7"
    )
    port map (
      ADR0 => U2_hcs(0),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(2),
      O => U3_spriteonGrnd_and000015_pack_1
    );
  U3_spriteonGrnd_and000034_SW1 : X_LUT4
    generic map(
      INIT => X"EEFE",
      LOC => "SLICE_X3Y7"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U2_hcs(6),
      ADR2 => U2_hcs(4),
      ADR3 => U3_spriteonGrnd_and000015_5495,
      O => N372
    );
  U3_spriteonGrnd_and000034 : X_LUT4
    generic map(
      INIT => X"0A3A",
      LOC => "SLICE_X2Y6"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => U2_hcs(5),
      ADR2 => U2_hcs(9),
      ADR3 => N372_0,
      O => U3_spriteonGrnd_and000034_pack_3
    );
  U3_spriteonGrnd_and000091 : X_LUT4
    generic map(
      INIT => X"FF54",
      LOC => "SLICE_X2Y6"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => U3_spriteonGrnd_and000064_0,
      ADR2 => U2_hcs(9),
      ADR3 => U3_spriteonGrnd_and000034_5498,
      O => U3_spriteonGrnd_and000091_15150
    );
  U3_spriteonGrnd_and000051 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X2Y7"
    )
    port map (
      ADR0 => U2_hcs(2),
      ADR1 => U2_hcs(3),
      ADR2 => U2_hcs(1),
      ADR3 => U2_hcs(0),
      O => U3_spriteonGrnd_and000051_pack_1
    );
  U3_spriteonGrnd_and000064 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X2Y7"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U3_spriteonGrnd_and000046_0,
      ADR2 => U3_spriteonGrnd_and000051_5501,
      ADR3 => U2_hcs(7),
      O => U3_spriteonGrnd_and000064_15174
    );
  U3_spriteonGrnd_and000046 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X3Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(6),
      ADR2 => U2_hcs(5),
      ADR3 => VCC,
      O => U3_spriteonGrnd_and000046_15191
    );
  U3_spriteonB3_cmp_le00002112 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X3Y6"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U2_hcs(6),
      ADR2 => U2_hcs(5),
      ADR3 => U2_hcs(8),
      O => U3_spriteonB3_cmp_le00002112_15198
    );
  U3_tank1_angle_calc_mux0004_4_11 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X52Y69"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(0),
      ADR1 => U3_tank1_angle_calc(2),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(1),
      O => U3_N63
    );
  U3_tank1_angle_calc_mux0004_3_SW0 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X52Y69"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(0),
      ADR1 => U3_tank1_angle_calc(2),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(1),
      O => N10
    );
  U3_tank1_angle_calc_mux0004_7_16 : X_LUT4
    generic map(
      INIT => X"F7FF",
      LOC => "SLICE_X52Y68"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(4),
      ADR1 => U3_tank1_angle_calc(3),
      ADR2 => U3_tank1_angle_calc(7),
      ADR3 => U3_tank1_angle_calc(1),
      O => U3_tank1_angle_calc_mux0004_7_16_15239
    );
  U3_tank1_angle_calc_and000051 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X52Y68"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(4),
      ADR1 => U3_tank1_angle_calc(3),
      ADR2 => U3_tank1_angle_calc(2),
      ADR3 => U3_tank1_angle_calc(1),
      O => U3_tank1_angle_calc_and000051_15246
    );
  U3_C2_not000113 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X3Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_C2(8),
      ADR3 => U3_C2(7),
      O => U3_C2_not000113_15261
    );
  U3_Madd_spriteon2_addsub0000_lut_8_2 : X_LUT4
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X3Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_C2(8),
      ADR3 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      O => U3_Madd_spriteon2_addsub0000_lut(8)
    );
  x7_an_2_mux000115 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X54Y71"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(5),
      ADR1 => U3_tank1_angle_calc(4),
      ADR2 => U3_tank1_angle_calc(2),
      ADR3 => U3_tank1_angle_calc(3),
      O => x7_an_1_mux000128_pack_1
    );
  x7_an_2_mux000141 : X_LUT4
    generic map(
      INIT => X"FDDD",
      LOC => "SLICE_X54Y71"
    )
    port map (
      ADR0 => x7_clkdiv(19),
      ADR1 => x7_clkdiv(18),
      ADR2 => x7_an_2_mux000128_0,
      ADR3 => x7_an_1_mux000128,
      O => an_2_OBUF_15294
    );
  x7_an_2_mux000128 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X52Y71"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(1),
      ADR1 => U3_tank1_angle_calc(6),
      ADR2 => U3_tank1_angle_calc(0),
      ADR3 => U3_tank1_angle_calc(7),
      O => x7_an_2_mux000128_15311
    );
  U3_Mcount_tank1_angle_calc_lut_5_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X52Y71"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(1),
      ADR1 => U3_tank1_angle_calc(2),
      ADR2 => U3_tank1_angle_calc(0),
      ADR3 => nes_up_reg_4814,
      O => N160
    );
  M1a_26_128 : X_LUT4
    generic map(
      INIT => X"505F",
      LOC => "SLICE_X31Y40"
    )
    port map (
      ADR0 => M1a_10_bdd0,
      ADR1 => VCC,
      ADR2 => rom1_addr_4_0,
      ADR3 => N198,
      O => M1a_26_Q
    );
  M2a_5_128 : X_LUT4
    generic map(
      INIT => X"505F",
      LOC => "SLICE_X31Y40"
    )
    port map (
      ADR0 => M1a_10_bdd0,
      ADR1 => VCC,
      ADR2 => rom1_addr_4_0,
      ADR3 => N200,
      O => M2a_5_Q
    );
  U3_Madd_spriteon1_addsub0001_xor_9_111 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X1Y39"
    )
    port map (
      ADR0 => U3_C1(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_C1(5),
      O => U3_N15_pack_1
    );
  U3_Madd_spriteon1_addsub0001_xor_8_11 : X_LUT4
    generic map(
      INIT => X"1E3C",
      LOC => "SLICE_X1Y39"
    )
    port map (
      ADR0 => U3_C1(6),
      ADR1 => U3_C1(7),
      ADR2 => U3_C1(8),
      ADR3 => U3_N15,
      O => U3_spriteon1_addsub0001(8)
    );
  nes_nes_clk33_SW0 : X_LUT4
    generic map(
      INIT => X"3337",
      LOC => "SLICE_X55Y31"
    )
    port map (
      ADR0 => nes_counter_reg(2),
      ADR1 => nes_nes_clk31_0,
      ADR2 => nes_counter_reg(1),
      ADR3 => nes_counter_reg(3),
      O => N220_pack_1
    );
  nes_nes_clk33 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X55Y31"
    )
    port map (
      ADR0 => nes_counter_reg(4),
      ADR1 => nes_counter_reg(9),
      ADR2 => nes_counter_reg(0),
      ADR3 => N220,
      O => ja3_OBUF_15390
    );
  U3_Msub_ypix1_Madd_xor_3_111 : X_LUT4
    generic map(
      INIT => X"33FF",
      LOC => "SLICE_X25Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => U3_N71_pack_1
    );
  U3_spriteonB4_and00009 : X_LUT4
    generic map(
      INIT => X"C0C8",
      LOC => "SLICE_X25Y13"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U3_N71,
      O => U3_spriteonB4_and00009_15414
    );
  nes_down_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X53Y32"
    )
    port map (
      ADR0 => nes_N01,
      ADR1 => nes_counter_reg(3),
      ADR2 => nes_counter_reg(1),
      ADR3 => nes_counter_reg(2),
      O => nes_down_reg_cmp_eq0000
    );
  nes_up_reg_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X53Y32"
    )
    port map (
      ADR0 => nes_N01,
      ADR1 => nes_counter_reg(3),
      ADR2 => nes_counter_reg(2),
      ADR3 => nes_counter_reg(1),
      O => nes_up_reg_cmp_eq0000
    );
  U3_Madd_spriteon2_addsub0000_lut_8_11 : X_LUT4
    generic map(
      INIT => X"1555",
      LOC => "SLICE_X2Y29"
    )
    port map (
      ADR0 => U3_C2(7),
      ADR1 => U3_C2(6),
      ADR2 => U3_C2(4),
      ADR3 => U3_C2(5),
      O => U3_Madd_spriteon2_addsub0000_lut_8_bdd0_pack_1
    );
  U3_Madd_spriteon2_addsub0000_lut_9_1 : X_LUT4
    generic map(
      INIT => X"F30C",
      LOC => "SLICE_X2Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_C2(8),
      ADR2 => U3_Madd_spriteon2_addsub0000_lut_8_bdd0,
      ADR3 => U3_C2(9),
      O => U3_Madd_spriteon2_addsub0000_lut(9)
    );
  U3_tank2_angle_calc_mux0004_0_2_SW0 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X48Y66"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(2),
      ADR1 => U3_tank2_angle_calc(0),
      ADR2 => VCC,
      ADR3 => U3_tank2_angle_calc(1),
      O => N12
    );
  U3_Mcount_tank2_angle_calc_lut_5_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X48Y66"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(2),
      ADR1 => U3_tank2_angle_calc(0),
      ADR2 => nes_up_reg_4814,
      ADR3 => U3_tank2_angle_calc(1),
      O => N170
    );
  U3_tank2_angle_calc_mux0004_0_2_SW1 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X48Y67"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_tank2_angle_calc(4),
      ADR2 => U3_tank2_angle_calc(3),
      ADR3 => VCC,
      O => N153
    );
  U3_tank2_angle_calc_mux0004_0_2_SW2 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X48Y67"
    )
    port map (
      ADR0 => nes_up_reg_4814,
      ADR1 => U3_tank2_angle_calc(4),
      ADR2 => U3_tank2_angle_calc(3),
      ADR3 => U3_tank2_angle_calc(5),
      O => N164
    );
  M1a_28_70_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"BB27",
      LOC => "SLICE_X35Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_22_bdd9_0,
      ADR2 => M1_21_bdd5_0,
      ADR3 => U2_vcs(0),
      O => N390
    );
  M1a_26_13_SW01 : X_LUT4
    generic map(
      INIT => X"33C3",
      LOC => "SLICE_X35Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_22_bdd9_0,
      ADR2 => M1_21_bdd5_0,
      ADR3 => U2_vcs(0),
      O => N398
    );
  U3_tank1_angle_calc_not00011 : X_LUT4
    generic map(
      INIT => X"3322",
      LOC => "SLICE_X53Y66"
    )
    port map (
      ADR0 => nes_down_reg_5456,
      ADR1 => who_present_state_FSM_FFd2_5427,
      ADR2 => VCC,
      ADR3 => nes_up_reg_4814,
      O => U3_tank1_angle_calc_not0001
    );
  U3_tank2_angle_calc_not00011 : X_LUT4
    generic map(
      INIT => X"CC88",
      LOC => "SLICE_X53Y66"
    )
    port map (
      ADR0 => nes_down_reg_5456,
      ADR1 => who_present_state_FSM_FFd2_5427,
      ADR2 => VCC,
      ADR3 => nes_up_reg_4814,
      O => U3_tank2_angle_calc_not0001
    );
  x7_Mrom_a_to_g11 : X_LUT4
    generic map(
      INIT => X"0491",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => x7_digit(1),
      ADR1 => x7_digit(2),
      ADR2 => x7_digit(0),
      ADR3 => x7_digit(3),
      O => a_to_g_0_OBUF_15575
    );
  x7_Mrom_a_to_g61 : X_LUT4
    generic map(
      INIT => X"6014",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => x7_digit(1),
      ADR1 => x7_digit(2),
      ADR2 => x7_digit(0),
      ADR3 => x7_digit(3),
      O => a_to_g_6_OBUF_15582
    );
  x7_Mrom_a_to_g21 : X_LUT4
    generic map(
      INIT => X"232A",
      LOC => "SLICE_X65Y72"
    )
    port map (
      ADR0 => x7_digit(0),
      ADR1 => x7_digit(3),
      ADR2 => x7_digit(1),
      ADR3 => x7_digit(2),
      O => a_to_g_2_OBUF_15599
    );
  x7_Mrom_a_to_g31 : X_LUT4
    generic map(
      INIT => X"A142",
      LOC => "SLICE_X65Y72"
    )
    port map (
      ADR0 => x7_digit(0),
      ADR1 => x7_digit(3),
      ADR2 => x7_digit(1),
      ADR3 => x7_digit(2),
      O => a_to_g_3_OBUF_15606
    );
  x7_Mrom_a_to_g41 : X_LUT4
    generic map(
      INIT => X"80A4",
      LOC => "SLICE_X64Y73"
    )
    port map (
      ADR0 => x7_digit(2),
      ADR1 => x7_digit(1),
      ADR2 => x7_digit(3),
      ADR3 => x7_digit(0),
      O => a_to_g_4_OBUF_15623
    );
  x7_Mrom_a_to_g51 : X_LUT4
    generic map(
      INIT => X"C2A8",
      LOC => "SLICE_X64Y73"
    )
    port map (
      ADR0 => x7_digit(2),
      ADR1 => x7_digit(1),
      ADR2 => x7_digit(3),
      ADR3 => x7_digit(0),
      O => a_to_g_5_OBUF_15630
    );
  U2_vidon_and00000 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X17Y8"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => VCC,
      ADR2 => U2_hcs(9),
      ADR3 => VCC,
      O => U2_vidon_and00000_pack_1
    );
  U2_vidon_and000039 : X_LUT4
    generic map(
      INIT => X"FAC8",
      LOC => "SLICE_X17Y8"
    )
    port map (
      ADR0 => U2_vidon_and00006_0,
      ADR1 => U2_vidon_and000018_0,
      ADR2 => U2_vidon_and00000_5512,
      ADR3 => U2_vidon_and000026,
      O => U2_vidon_and000039_15654
    );
  U2_vidon_and00006 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => U2_hcs(7),
      ADR1 => U2_hcs(4),
      ADR2 => U2_hcs(6),
      ADR3 => U2_hcs(5),
      O => U2_vidon_and00006_15671
    );
  U3_spriteonB1_and000018 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U2_hcs(2),
      ADR2 => U2_hcs(5),
      ADR3 => U2_hcs(3),
      O => U3_spriteonB1_and000018_15678
    );
  M1a_21_26_SW0 : X_LUT4
    generic map(
      INIT => X"23DF",
      LOC => "SLICE_X24Y38"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => M1_21_bdd5_0,
      ADR3 => U2_vcs(2),
      O => N352
    );
  M1_21_26_SW0 : X_LUT4
    generic map(
      INIT => X"FE7F",
      LOC => "SLICE_X24Y38"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => M1_21_bdd5_0,
      ADR3 => U2_vcs(2),
      O => N256
    );
  U3_tank2_angle_calc_and000011 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X50Y65"
    )
    port map (
      ADR0 => nes_down_reg_5456,
      ADR1 => U3_tank2_angle_calc(0),
      ADR2 => who_present_state_FSM_FFd2_5427,
      ADR3 => nes_up_reg_4814,
      O => U3_tank2_angle_calc_and000011_15718
    );
  U3_Mcount_tank2_angle_calc_lut_4_SW0 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X50Y65"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(0),
      ADR1 => VCC,
      ADR2 => nes_up_reg_4814,
      ADR3 => U3_tank2_angle_calc(1),
      O => N162
    );
  U3_tank2_angle_calc_and000023 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X50Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_tank2_angle_calc(6),
      ADR3 => U3_tank2_angle_calc(5),
      O => U3_tank2_angle_calc_and000023_15742
    );
  U3_tank2_angle_calc_mux0004_7_4 : X_LUT4
    generic map(
      INIT => X"FFAF",
      LOC => "SLICE_X50Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(2),
      ADR1 => VCC,
      ADR2 => U3_tank2_angle_calc(6),
      ADR3 => U3_tank2_angle_calc(5),
      O => U3_tank2_angle_calc_mux0004_7_4_15750
    );
  U3_tank1Angle_1_1_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X41Y66"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(1),
      ADR1 => U3_tank1_angle_calc(2),
      ADR2 => U3_tank1_angle_calc(4),
      ADR3 => U3_tank1_angle_calc(3),
      O => N128_pack_1
    );
  U3_tank1Angle_1_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X41Y66"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(5),
      ADR1 => U3_tank1_angle_calc(6),
      ADR2 => N128,
      ADR3 => U3_tank1_angle_calc(7),
      O => M1_22_bdd9
    );
  M1a_24_27_SW0 : X_LUT4
    generic map(
      INIT => X"FCA0",
      LOC => "SLICE_X34Y39"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => N212
    );
  M1a_27_52 : X_LUT4
    generic map(
      INIT => X"7E88",
      LOC => "SLICE_X34Y39"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(0),
      ADR3 => rom1_addr(2),
      O => M1a_27_52_15798
    );
  M1a_26_54_SW1 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X26Y48"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => M1_22_bdd9_0,
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => N354
    );
  M1_24_107_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FE97",
      LOC => "SLICE_X26Y48"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(2),
      O => N338
    );
  nes_a_reg : X_FF
    generic map(
      LOC => "SLICE_X46Y32",
      INIT => '0'
    )
    port map (
      I => nes_a_reg_DYMUX_15832,
      CE => nes_a_reg_CEINV_15829,
      CLK => nes_a_reg_CLKINV_15830,
      SET => GND,
      RST => GND,
      O => nes_a_reg_5517
    );
  M1_22_111 : X_LUT4
    generic map(
      INIT => X"2E0C",
      LOC => "SLICE_X21Y49"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => U2_vcs(0),
      ADR2 => M1_22_bdd12,
      ADR3 => rom1_addr(2),
      O => M1_22_11_15851
    );
  M1_26_58 : X_LUT4
    generic map(
      INIT => X"D755",
      LOC => "SLICE_X21Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M1_21_bdd5_0,
      O => M1_26_58_15858
    );
  M1_22_210 : X_LUT4
    generic map(
      INIT => X"8822",
      LOC => "SLICE_X28Y45"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => M1_25_351_pack_2
    );
  M1a_27_82 : X_LUT4
    generic map(
      INIT => X"5111",
      LOC => "SLICE_X28Y45"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(1),
      ADR2 => M1_25_351,
      ADR3 => U2_vcs(0),
      O => M1a_27_82_15882
    );
  M1_27_192 : X_LUT4
    generic map(
      INIT => X"2525",
      LOC => "SLICE_X21Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M1_27_192_15894
    );
  M1_26_1_SW0 : X_LUT4
    generic map(
      INIT => X"AF11",
      LOC => "SLICE_X22Y49"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => M1_21_bdd5_0,
      ADR2 => M1_22_bdd9_0,
      ADR3 => U2_vcs(0),
      O => N366_pack_2
    );
  M1_26_1 : X_LUT4
    generic map(
      INIT => X"F0DD",
      LOC => "SLICE_X22Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => N366,
      ADR3 => U2_vcs(1),
      O => M1_26_bdd0
    );
  nes_nes_clk31 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X52Y31"
    )
    port map (
      ADR0 => nes_counter_reg(6),
      ADR1 => nes_counter_reg(8),
      ADR2 => nes_counter_reg(7),
      ADR3 => nes_counter_reg(5),
      O => nes_nes_clk31_15935
    );
  nes_a_reg_cmp_eq00001_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X52Y31"
    )
    port map (
      ADR0 => nes_counter_reg(6),
      ADR1 => nes_counter_reg(5),
      ADR2 => nes_counter_reg(7),
      ADR3 => nes_counter_reg(4),
      O => N4
    );
  M1a_29_53_SW0 : X_LUT4
    generic map(
      INIT => X"CCAC",
      LOC => "SLICE_X25Y38"
    )
    port map (
      ADR0 => M1_29_bdd5_0,
      ADR1 => M1_22_bdd12,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N308_pack_1
    );
  M1a_29_53 : X_LUT4
    generic map(
      INIT => X"8C4C",
      LOC => "SLICE_X25Y38"
    )
    port map (
      ADR0 => U3_N71,
      ADR1 => M1a_29_51_0,
      ADR2 => N308,
      ADR3 => U2_vcs(3),
      O => M1a_29_Q
    );
  U3_spriteonB3_cmp_le00002129 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X6Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_spriteonB3_cmp_le00002128_0,
      ADR2 => U3_spriteonB3_cmp_le00002112_0,
      ADR3 => VCC,
      O => U3_N25_pack_1
    );
  U3_spriteonB4_and000089 : X_LUT4
    generic map(
      INIT => X"880A",
      LOC => "SLICE_X6Y3"
    )
    port map (
      ADR0 => U3_spriteonB1_cmp_lt0000_0,
      ADR1 => U3_spriteonB4_and000061_0,
      ADR2 => U3_N25,
      ADR3 => U2_hcs(9),
      O => U3_spriteonB4_and000089_15990
    );
  M2_0_23_SW0 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X33Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd10_0,
      ADR2 => VCC,
      ADR3 => M2_0_bdd9,
      O => N218
    );
  M2_8_20 : X_LUT4
    generic map(
      INIT => X"F2F7",
      LOC => "SLICE_X33Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_3_bdd6,
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd9,
      O => M2_8_20_16014
    );
  U3_spriteonB1_and0000221 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X17Y4"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U2_vcs(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vidon_and000013_pack_1
    );
  U2_vidon_and000018 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X17Y4"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(5),
      ADR2 => U2_vidon_and000013,
      ADR3 => U2_vcs(7),
      O => U2_vidon_and000018_16038
    );
  M2a_10_26_SW0 : X_LUT4
    generic map(
      INIT => X"2D3F",
      LOC => "SLICE_X39Y45"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M2_0_bdd13_0,
      O => N358
    );
  M2_10_26_SW0 : X_LUT4
    generic map(
      INIT => X"F7EF",
      LOC => "SLICE_X39Y45"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M2_0_bdd13_0,
      O => N262
    );
  U3_spriteonB2_and00005 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X17Y14"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => U3_spriteonB2_and00005_pack_1
    );
  U3_spriteonB2_and000019_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X17Y14"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => VCC,
      ADR2 => U3_spriteonB2_and00005_5529,
      ADR3 => U2_vcs(5),
      O => N300
    );
  M2_3_69_SW1 : X_LUT4
    generic map(
      INIT => X"577F",
      LOC => "SLICE_X39Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => M2_0_bdd6_0,
      ADR3 => M2_0_bdd13_0,
      O => N364_pack_1
    );
  M2_3_69 : X_LUT4
    generic map(
      INIT => X"1193",
      LOC => "SLICE_X39Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => N364,
      O => M2_3_69_16110
    );
  x7_Mrom_a_to_g111 : X_LUT4
    generic map(
      INIT => X"4032",
      LOC => "SLICE_X65Y69"
    )
    port map (
      ADR0 => x7_digit(1),
      ADR1 => x7_digit(2),
      ADR2 => x7_digit(0),
      ADR3 => x7_digit(3),
      O => a_to_g_1_OBUF_16122
    );
  U1_Mcount_q_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X34Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_q_01,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_Mcount_q_lut(0)
    );
  U3_spriteonB4_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X2Y3"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U2_hcs(3),
      ADR2 => U2_hcs(2),
      ADR3 => U2_hcs(7),
      O => N304_pack_1
    );
  U3_spriteonB4_and000061 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X2Y3"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U2_hcs(6),
      ADR2 => N304,
      ADR3 => U2_hcs(8),
      O => U3_spriteonB4_and000061_16158
    );
  U2_vidon_and000080 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => U2_vcs(4),
      ADR1 => U2_vcs(6),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(7),
      O => U2_vidon_and000080_16175
    );
  U2_vcs_cmp_eq0000_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FDFF",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => U2_vcs(4),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => N151
    );
  U3_spriteonGrnd_and0000138_SW0 : X_LUT4
    generic map(
      INIT => X"EEE0",
      LOC => "SLICE_X13Y7"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U3_spriteonGrnd_and0000110_0,
      ADR2 => U3_spriteonB1_cmp_lt0000232_5486,
      ADR3 => U3_spriteonB1_cmp_lt0000217,
      O => N264_pack_1
    );
  U3_spriteonGrnd_and0000138 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X13Y7"
    )
    port map (
      ADR0 => U2_vcs(9),
      ADR1 => U3_N101,
      ADR2 => U3_spriteonGrnd_and000091_0,
      ADR3 => N264,
      O => U3_spriteonGrnd
    );
  nes_right_reg : X_FF
    generic map(
      LOC => "SLICE_X47Y32",
      INIT => '0'
    )
    port map (
      I => nes_right_reg_DYMUX_16216,
      CE => nes_right_reg_CEINV_16213,
      CLK => nes_right_reg_CLKINV_16214,
      SET => GND,
      RST => GND,
      O => nes_right_reg_5439
    );
  U3_C1_not000152_SW0 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X2Y46"
    )
    port map (
      ADR0 => U3_C1(6),
      ADR1 => VCC,
      ADR2 => U3_C1(5),
      ADR3 => VCC,
      O => N157
    );
  U3_Madd_spriteon1_addsub0000_xor_7_11 : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X2Y46"
    )
    port map (
      ADR0 => U3_C1(6),
      ADR1 => U3_C1(4),
      ADR2 => U3_C1(5),
      ADR3 => U3_C1(7),
      O => U3_Madd_spriteon1_addsub0001_lut(7)
    );
  U3_spriteonB1_and000010_SW0 : X_LUT4
    generic map(
      INIT => X"A800",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => U2_vcs(6),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(4),
      ADR3 => U2_vcs(7),
      O => N222_pack_1
    );
  U3_spriteonB1_and000010 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => U2_vcs(9),
      ADR2 => U2_vcs(8),
      ADR3 => N222,
      O => U3_spriteonB1_and000010_16266
    );
  U3_blue_and00031 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => U3_N40_0,
      ADR1 => U3_Mcompar_spriteon2f_cmp_gt0000_cy_9_Q,
      ADR2 => U3_M2a_mux0000,
      ADR3 => U3_spriteon2f_cmp_le0000,
      O => U3_blue_and0003
    );
  U3_red_0_3_SW0 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => U3_N40_0,
      ADR1 => U3_spriteon2_cmp_ge0000,
      ADR2 => U3_Mcompar_spriteon2_cmp_lt0000_cy_9_Q,
      ADR3 => U3_M2_mux0000,
      O => N141
    );
  U3_Madd_spriteon2f_add0002_xor_6_11 : X_LUT4
    generic map(
      INIT => X"7878",
      LOC => "SLICE_X2Y26"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(6),
      ADR3 => VCC,
      O => U3_Madd_spriteon2_addsub0000_lut(6)
    );
  U3_spriteon2_addsub0000_6_1 : X_LUT4
    generic map(
      INIT => X"1E1E",
      LOC => "SLICE_X2Y26"
    )
    port map (
      ADR0 => U3_C2(4),
      ADR1 => U3_C2(5),
      ADR2 => U3_C2(6),
      ADR3 => VCC,
      O => U3_spriteon2_addsub0000(6)
    );
  U3_Madd_spriteon2f_add0002_xor_7_11 : X_LUT4
    generic map(
      INIT => X"9333",
      LOC => "SLICE_X0Y24"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => U3_C2(7),
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(4),
      O => U3_Madd_spriteon2_addsub0000_lut(7)
    );
  U3_spriteon2_addsub0000_7_1 : X_LUT4
    generic map(
      INIT => X"C393",
      LOC => "SLICE_X0Y24"
    )
    port map (
      ADR0 => U3_C2(5),
      ADR1 => U3_C2(7),
      ADR2 => U3_C2(6),
      ADR3 => U3_C2(4),
      O => U3_spriteon2_addsub0000(7)
    );
  U3_spriteonB1_and000049_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X12Y12"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U2_hcs(7),
      ADR2 => U2_hcs(3),
      ADR3 => U2_hcs(6),
      O => N224_pack_1
    );
  U3_spriteonB1_and000049 : X_LUT4
    generic map(
      INIT => X"0015",
      LOC => "SLICE_X12Y12"
    )
    port map (
      ADR0 => U2_hcs(4),
      ADR1 => U2_hcs(1),
      ADR2 => U2_hcs(2),
      ADR3 => N224,
      O => U3_spriteonB1_and000049_16362
    );
  M1a_27_145_SW0 : X_LUT4
    generic map(
      INIT => X"FCF8",
      LOC => "SLICE_X28Y43"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1a_27_82_0,
      ADR2 => rom1_addr_4_0,
      ADR3 => M1a_27_52_0,
      O => N232_pack_1
    );
  M1a_27_145 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X28Y43"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M1_27_bdd0_0,
      ADR2 => N232,
      ADR3 => M1a_27_139,
      O => M1a_27_Q
    );
  U3_spriteonB5_and00006 : X_LUT4
    generic map(
      INIT => X"0500",
      LOC => "SLICE_X6Y2"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => VCC,
      ADR2 => U2_hcs(7),
      ADR3 => U2_hcs(9),
      O => U3_spriteonB5_and00006_16402
    );
  U2_hsync1 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X6Y2"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => VCC,
      ADR2 => U2_hcs(7),
      ADR3 => U2_hcs(9),
      O => hsync_OBUF_16410
    );
  U3_red_0_3 : X_LUT4
    generic map(
      INIT => X"0444",
      LOC => "SLICE_X16Y13"
    )
    port map (
      ADR0 => N141_0,
      ADR1 => vidon_0,
      ADR2 => U3_N98,
      ADR3 => U3_M1_mux0000,
      O => U3_N41_pack_1
    );
  U3_green_1_21 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X16Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_blue_and0003_0,
      ADR2 => U3_N41,
      ADR3 => VCC,
      O => U3_N102
    );
  U3_tank1_angle_calc_mux0004_7_4 : X_LUT4
    generic map(
      INIT => X"FFBB",
      LOC => "SLICE_X51Y71"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(2),
      ADR1 => U3_tank1_angle_calc(6),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(5),
      O => U3_tank1_angle_calc_mux0004_7_4_16449
    );
  U3_tank1_angle_calc_and000027 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X51Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_tank1_angle_calc(6),
      ADR2 => VCC,
      ADR3 => U3_tank1_angle_calc(5),
      O => U3_tank1_angle_calc_and000027_16458
    );
  M2a_4_145_SW0 : X_LUT4
    generic map(
      INIT => X"FEAA",
      LOC => "SLICE_X31Y43"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => M2a_4_52_0,
      ADR2 => U2_vcs(1),
      ADR3 => M2a_4_82_0,
      O => N234_pack_1
    );
  M2a_4_145 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X31Y43"
    )
    port map (
      ADR0 => M1a_27_139,
      ADR1 => M2_4_bdd0_0,
      ADR2 => rom1_addr(3),
      ADR3 => N234,
      O => M2a_4_Q
    );
  M1a_10_11 : X_LUT4
    generic map(
      INIT => X"7EE4",
      LOC => "SLICE_X32Y39"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M1a_10_bdd0_pack_1
    );
  M1a_22_44 : X_LUT4
    generic map(
      INIT => X"0F88",
      LOC => "SLICE_X32Y39"
    )
    port map (
      ADR0 => N274,
      ADR1 => M1a_22_18_0,
      ADR2 => M1a_10_bdd0,
      ADR3 => rom1_addr_4_0,
      O => M1a_22_Q
    );
  M1a_12_11 : X_LUT4
    generic map(
      INIT => X"7BE4",
      LOC => "SLICE_X32Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M1a_12_bdd0_pack_1
    );
  M2a_19_Q : X_LUT4
    generic map(
      INIT => X"44EE",
      LOC => "SLICE_X32Y36"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => M2a_18_2_0,
      ADR2 => VCC,
      ADR3 => M1a_12_bdd0,
      O => M2a_19_Q_16530
    );
  M1a_12_21 : X_LUT4
    generic map(
      INIT => X"80A1",
      LOC => "SLICE_X24Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => M1a_12_bdd1
    );
  M1a_14_11 : X_LUT4
    generic map(
      INIT => X"B081",
      LOC => "SLICE_X31Y34"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1a_14_bdd0
    );
  M1a_22_11 : X_LUT4
    generic map(
      INIT => X"0EE0",
      LOC => "SLICE_X28Y40"
    )
    port map (
      ADR0 => M1_22_bdd9_0,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1a_22_bdd0
    );
  M1_25_21 : X_LUT4
    generic map(
      INIT => X"7CF3",
      LOC => "SLICE_X28Y40"
    )
    port map (
      ADR0 => M1_22_bdd9_0,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_25_bdd1
    );
  M1a_23_14 : X_LUT4
    generic map(
      INIT => X"93FF",
      LOC => "SLICE_X28Y41"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => M1_23_bdd1_0,
      O => M1a_23_14_pack_1
    );
  M1a_23_59 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X28Y41"
    )
    port map (
      ADR0 => M1a_23_54,
      ADR1 => rom1_addr_4_0,
      ADR2 => M1a_23_14_5546,
      ADR3 => M1a_23_10_0,
      O => M1a_23_Q
    );
  M1a_24_21 : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X35Y38"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => M1_22_bdd9_0,
      ADR3 => M1_21_bdd5_0,
      O => M1a_24_bdd1_pack_1
    );
  M1a_25_36_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X35Y38"
    )
    port map (
      ADR0 => M1a_22_bdd0_0,
      ADR1 => U2_vcs(1),
      ADR2 => M1a_24_bdd1,
      ADR3 => VCC,
      O => N350
    );
  M1a_24_65 : X_LUT4
    generic map(
      INIT => X"303F",
      LOC => "SLICE_X34Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_12_bdd0,
      ADR2 => rom1_addr_4_0,
      ADR3 => N254,
      O => M1a_24_Q
    );
  M2a_7_64 : X_LUT4
    generic map(
      INIT => X"330F",
      LOC => "SLICE_X34Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_12_bdd0,
      ADR2 => N260,
      ADR3 => rom1_addr_4_0,
      O => M2a_7_Q
    );
  M1_28_65_SW1 : X_LUT4
    generic map(
      INIT => X"577F",
      LOC => "SLICE_X23Y44"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => M1_22_bdd9_0,
      ADR3 => M1_21_bdd5_0,
      O => N362_pack_1
    );
  M1_28_65 : X_LUT4
    generic map(
      INIT => X"0837",
      LOC => "SLICE_X23Y44"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => N362,
      ADR3 => U2_vcs(3),
      O => M1_28_65_16674
    );
  nes_left_reg : X_FF
    generic map(
      LOC => "SLICE_X48Y33",
      INIT => '0'
    )
    port map (
      I => nes_left_reg_DYMUX_16684,
      CE => nes_left_reg_CEINV_16681,
      CLK => nes_left_reg_CLKINV_16682,
      SET => GND,
      RST => GND,
      O => nes_left_reg_4884
    );
  nes_down_reg : X_FF
    generic map(
      LOC => "SLICE_X51Y30",
      INIT => '0'
    )
    port map (
      I => nes_down_reg_DYMUX_16696,
      CE => nes_down_reg_CEINV_16693,
      CLK => nes_down_reg_CLKINV_16694,
      SET => GND,
      RST => GND,
      O => nes_down_reg_5456
    );
  nes_scalar_next_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X50Y12"
    )
    port map (
      ADR0 => nes_scalar_reg(7),
      ADR1 => nes_scalar_reg(5),
      ADR2 => nes_scalar_reg(4),
      ADR3 => nes_scalar_reg(6),
      O => nes_scalar_next_cmp_eq000010_16710
    );
  nes_scalar_next_cmp_eq000021 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X50Y9"
    )
    port map (
      ADR0 => nes_scalar_reg(3),
      ADR1 => nes_scalar_reg(0),
      ADR2 => nes_scalar_reg(1),
      ADR3 => nes_scalar_reg(2),
      O => nes_scalar_next_cmp_eq000021_16722
    );
  M1_10_51 : X_LUT4
    generic map(
      INIT => X"AA77",
      LOC => "SLICE_X26Y51"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => M1_10_bdd5
    );
  U3_tank1Angle_0_SW0 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X40Y66"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(3),
      ADR1 => U3_tank1_angle_calc(4),
      ADR2 => U3_tank1_angle_calc(2),
      ADR3 => VCC,
      O => N126_pack_1
    );
  U3_tank1Angle_0_Q : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X40Y66"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(7),
      ADR1 => U3_tank1_angle_calc(5),
      ADR2 => U3_tank1_angle_calc(6),
      ADR3 => N126,
      O => M1_21_bdd5
    );
  M1_22_11 : X_LUT4
    generic map(
      INIT => X"55BA",
      LOC => "SLICE_X27Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M1_21_bdd5_0,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M1_22_bdd0_pack_3
    );
  M1a_22_18 : X_LUT4
    generic map(
      INIT => X"87FF",
      LOC => "SLICE_X27Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(3),
      ADR3 => M1_22_bdd0,
      O => M1a_22_18_16782
    );
  M1_21_52 : X_LUT4
    generic map(
      INIT => X"2288",
      LOC => "SLICE_X26Y46"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => M1_21_bdd8_pack_2
    );
  M1_29_75 : X_LUT4
    generic map(
      INIT => X"1511",
      LOC => "SLICE_X26Y46"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => M1_21_bdd8,
      O => M1_29_75_16806
    );
  M1_21_29 : X_LUT4
    generic map(
      INIT => X"EEBB",
      LOC => "SLICE_X22Y43"
    )
    port map (
      ADR0 => M1_21_bdd5_0,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => M1_21_bdd3_pack_1
    );
  M1_31_23_SW0 : X_LUT4
    generic map(
      INIT => X"BBF0",
      LOC => "SLICE_X22Y43"
    )
    port map (
      ADR0 => M1_22_bdd9_0,
      ADR1 => rom1_addr(2),
      ADR2 => M1_21_bdd3,
      ADR3 => U2_vcs(0),
      O => N214
    );
  M1_22_42 : X_LUT4
    generic map(
      INIT => X"FAF5",
      LOC => "SLICE_X25Y39"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => VCC,
      ADR2 => M1_22_bdd9_0,
      ADR3 => U2_vcs(1),
      O => M1_22_bdd7_pack_2
    );
  M1a_30_36 : X_LUT4
    generic map(
      INIT => X"212B",
      LOC => "SLICE_X25Y39"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M1_22_bdd12,
      ADR2 => U2_vcs(1),
      ADR3 => M1_22_bdd7,
      O => M1a_30_36_16854
    );
  M1_23_20 : X_LUT4
    generic map(
      INIT => X"FBF1",
      LOC => "SLICE_X25Y45"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M1_22_bdd7,
      ADR2 => U2_vcs(1),
      ADR3 => M1_25_351,
      O => M1_23_20_16871
    );
  M1_28_12 : X_LUT4
    generic map(
      INIT => X"ECFC",
      LOC => "SLICE_X25Y45"
    )
    port map (
      ADR0 => M1_28_2_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => rom1_addr(3),
      ADR3 => M1_25_351,
      O => M1_28_12_16878
    );
  M1_22_71 : X_LUT4
    generic map(
      INIT => X"EDB7",
      LOC => "SLICE_X25Y47"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(2),
      ADR3 => M1_21_bdd5_0,
      O => M1_22_bdd12_pack_2
    );
  M1_24_39 : X_LUT4
    generic map(
      INIT => X"3377",
      LOC => "SLICE_X25Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => M1_22_bdd12,
      O => M1_24_39_16902
    );
  M1_23_31 : X_LUT4
    generic map(
      INIT => X"6FF6",
      LOC => "SLICE_X24Y45"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M1_21_bdd5_0,
      ADR3 => M1_22_bdd9_0,
      O => M1_23_bdd6_pack_3
    );
  M1_23_21 : X_LUT4
    generic map(
      INIT => X"7772",
      LOC => "SLICE_X24Y45"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => M1_23_bdd6,
      ADR3 => U2_vcs(0),
      O => M1_23_bdd1
    );
  M1_24_11 : X_LUT4
    generic map(
      INIT => X"F8F9",
      LOC => "SLICE_X21Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M1_22_bdd9_0,
      O => M1_24_bdd0
    );
  M1_26_30 : X_LUT4
    generic map(
      INIT => X"AEBA",
      LOC => "SLICE_X21Y50"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => M1_22_bdd9_0,
      O => M1_26_30_16950
    );
  M1_23_29 : X_LUT4
    generic map(
      INIT => X"210F",
      LOC => "SLICE_X25Y42"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M1_23_bdd3_0,
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(1),
      O => M1_23_29_16962
    );
  M1_30_96 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X41Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => U2_vcs(0),
      O => M1_30_96_16974
    );
  M1_25_11 : X_LUT4
    generic map(
      INIT => X"5858",
      LOC => "SLICE_X27Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M1_25_bdd0_pack_1
    );
  M1_25_138 : X_LUT4
    generic map(
      INIT => X"3F77",
      LOC => "SLICE_X27Y46"
    )
    port map (
      ADR0 => M1_10_bdd5_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => M1_25_bdd0,
      ADR3 => rom1_addr(3),
      O => M1_25_138_16998
    );
  M2_10_21 : X_LUT4
    generic map(
      INIT => X"0AFA",
      LOC => "SLICE_X31Y50"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => VCC,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_12_bdd3
    );
  M1_27_11 : X_LUT4
    generic map(
      INIT => X"3AF5",
      LOC => "SLICE_X25Y44"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_27_bdd0
    );
  M1_29_31 : X_LUT4
    generic map(
      INIT => X"3CC3",
      LOC => "SLICE_X25Y44"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1_22_bdd9_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_29_bdd5
    );
  M1_25_75 : X_LUT4
    generic map(
      INIT => X"FFE0",
      LOC => "SLICE_X29Y53"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M1_25_35,
      ADR2 => M1_24_39_0,
      ADR3 => rom1_addr(3),
      O => M1_25_75_17051
    );
  M2_4_116 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X29Y53"
    )
    port map (
      ADR0 => M2_4_29,
      ADR1 => M2_4_105,
      ADR2 => U2_vcs(1),
      ADR3 => rom1_addr(3),
      O => M2_4_116_17058
    );
  M1_27_21 : X_LUT4
    generic map(
      INIT => X"0099",
      LOC => "SLICE_X24Y40"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => M1_22_bdd9_0,
      O => M1_27_bdd4_pack_2
    );
  M1a_29_51 : X_LUT4
    generic map(
      INIT => X"2303",
      LOC => "SLICE_X24Y40"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => rom1_addr_4_0,
      ADR2 => rom1_addr(3),
      ADR3 => M1_27_bdd4,
      O => M1a_29_51_17082
    );
  M1_27_40 : X_LUT4
    generic map(
      INIT => X"BAA0",
      LOC => "SLICE_X24Y50"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => M1_21_bdd5_0,
      ADR3 => M1_22_bdd9_0,
      O => M1_27_40_pack_1
    );
  M1_27_127 : X_LUT4
    generic map(
      INIT => X"FEBA",
      LOC => "SLICE_X24Y50"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(1),
      ADR2 => M1_27_102,
      ADR3 => M1_27_40_5558,
      O => M1_27_127_17106
    );
  M2_10_82 : X_LUT4
    generic map(
      INIT => X"2288",
      LOC => "SLICE_X34Y46"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => U2_vcs(2),
      ADR2 => VCC,
      ADR3 => U2_vcs(1),
      O => M2_10_bdd14_pack_2
    );
  M2_2_75 : X_LUT4
    generic map(
      INIT => X"1511",
      LOC => "SLICE_X34Y46"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => M2_10_bdd14,
      O => M2_2_75_17130
    );
  M2_12_21 : X_LUT4
    generic map(
      INIT => X"6363",
      LOC => "SLICE_X23Y45"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => VCC,
      O => M1_10_bdd4
    );
  M1_28_28 : X_LUT4
    generic map(
      INIT => X"F5FC",
      LOC => "SLICE_X22Y45"
    )
    port map (
      ADR0 => M1_21_bdd3,
      ADR1 => M1_23_bdd6,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1_28_28_pack_1
    );
  M1_28_123 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X22Y45"
    )
    port map (
      ADR0 => M1_28_120,
      ADR1 => M1_28_65_0,
      ADR2 => M1_28_28_5561,
      ADR3 => M1_28_12_0,
      O => M1_28_Q
    );
  M1_29_14 : X_LUT4
    generic map(
      INIT => X"0E0D",
      LOC => "SLICE_X26Y57"
    )
    port map (
      ADR0 => M1_22_bdd9_0,
      ADR1 => M1_0_bdd2_0,
      ADR2 => U2_vcs(1),
      ADR3 => M1_21_bdd5_0,
      O => M1_29_14_pack_1
    );
  M1_29_35 : X_LUT4
    generic map(
      INIT => X"EEEC",
      LOC => "SLICE_X26Y57"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => rom1_addr_4_0,
      ADR2 => M1_29_14_5563,
      ADR3 => M1_29_0_0,
      O => M1_29_35_17190
    );
  M1_29_60 : X_LUT4
    generic map(
      INIT => X"F5F3",
      LOC => "SLICE_X24Y47"
    )
    port map (
      ADR0 => M1_22_bdd12,
      ADR1 => M1_29_bdd5_0,
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(0),
      O => M1_29_60_pack_1
    );
  M1_29_131 : X_LUT4
    generic map(
      INIT => X"AA80",
      LOC => "SLICE_X24Y47"
    )
    port map (
      ADR0 => M1_29_126,
      ADR1 => M1_29_75_0,
      ADR2 => M1_29_60_5566,
      ADR3 => M1_29_35_0,
      O => M1_29_Q
    );
  M2_3_310 : X_LUT4
    generic map(
      INIT => X"7D7D",
      LOC => "SLICE_X33Y44"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M2_3_bdd6_pack_2
    );
  M2a_4_82 : X_LUT4
    generic map(
      INIT => X"005D",
      LOC => "SLICE_X33Y44"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => M2_3_bdd6,
      ADR3 => rom1_addr(3),
      O => M2a_4_82_17238
    );
  U3_tank2_angle_calc_mux0004_7_16 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X48Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(3),
      ADR1 => U3_tank2_angle_calc(7),
      ADR2 => U3_tank2_angle_calc(4),
      ADR3 => U3_tank2_angle_calc(1),
      O => U3_tank2_angle_calc_mux0004_7_16_17255
    );
  U3_tank2_angle_calc_mux0004_4_1 : X_LUT4
    generic map(
      INIT => X"78F0",
      LOC => "SLICE_X48Y64"
    )
    port map (
      ADR0 => U3_tank2_angle_calc(0),
      ADR1 => U3_tank2_angle_calc(2),
      ADR2 => U3_tank2_angle_calc(3),
      ADR3 => U3_tank2_angle_calc(1),
      O => U3_tank2_angle_calc_mux0004(4)
    );
  M2_6_108 : X_LUT4
    generic map(
      INIT => X"1B27",
      LOC => "SLICE_X31Y46"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => N298,
      ADR2 => M2_6_bdd0_0,
      ADR3 => U3_N71,
      O => M2_6_108_pack_1
    );
  M2_6_153 : X_LUT4
    generic map(
      INIT => X"C8C8",
      LOC => "SLICE_X31Y46"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => M1_25_138_0,
      ADR2 => M2_6_108_5567,
      ADR3 => VCC,
      O => M2_6_Q
    );
  M1_14_SW0 : X_LUT4
    generic map(
      INIT => X"4ED7",
      LOC => "SLICE_X22Y41"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => N94_pack_1
    );
  U3_Mmux_M1_mux0000_9_SW0 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X22Y41"
    )
    port map (
      ADR0 => U3_xpix1(0),
      ADR1 => N92,
      ADR2 => N94,
      ADR3 => VCC,
      O => N238
    );
  M1_16_SW0 : X_LUT4
    generic map(
      INIT => X"598F",
      LOC => "SLICE_X23Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => N92_pack_1
    );
  U3_Mmux_M2_mux0000_73_SW0 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X23Y40"
    )
    port map (
      ADR0 => N92,
      ADR1 => N94,
      ADR2 => U3_xpix2(0),
      ADR3 => VCC,
      O => N244
    );
  U3_spriteonB1_and000060 : X_LUT4
    generic map(
      INIT => X"F2F0",
      LOC => "SLICE_X12Y10"
    )
    port map (
      ADR0 => U3_spriteonB1_and000018_0,
      ADR1 => U2_hcs(7),
      ADR2 => U3_spriteonB1_and000049_0,
      ADR3 => U2_hcs(6),
      O => U3_spriteonB1_and000060_pack_1
    );
  U3_spriteonB1_and000087 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X12Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_N95_0,
      ADR2 => U3_spriteonB1_and000010_0,
      ADR3 => U3_spriteonB1_and000060_5571,
      O => U3_spriteonB1
    );
  nes_up_reg : X_FF
    generic map(
      LOC => "SLICE_X52Y32",
      INIT => '0'
    )
    port map (
      I => nes_up_reg_DYMUX_17368,
      CE => nes_up_reg_CEINV_17365,
      CLK => nes_up_reg_CLKINV_17366,
      SET => GND,
      RST => GND,
      O => nes_up_reg_4814
    );
  U3_blue_and0000258_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"EC3F",
      LOC => "SLICE_X15Y14"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(5),
      O => N334_pack_2
    );
  U3_blue_and0000258_SW0 : X_LUT4
    generic map(
      INIT => X"7F08",
      LOC => "SLICE_X15Y14"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(4),
      ADR2 => N334,
      ADR3 => U2_vcs(5),
      O => N202
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1_SW0 : X_LUT4
    generic map(
      INIT => X"E0E0",
      LOC => "SLICE_X0Y39"
    )
    port map (
      ADR0 => U3_C1(5),
      ADR1 => U3_C1(4),
      ADR2 => U3_C1(6),
      ADR3 => VCC,
      O => N63_pack_1
    );
  U3_Madd_spriteon1_addsub0001_xor_9_1 : X_LUT4
    generic map(
      INIT => X"56AA",
      LOC => "SLICE_X0Y39"
    )
    port map (
      ADR0 => U3_C1(9),
      ADR1 => N63,
      ADR2 => U3_C1(7),
      ADR3 => U3_C1(8),
      O => U3_spriteon1_addsub0001(9)
    );
  M2_5_1_SW0 : X_LUT4
    generic map(
      INIT => X"8A9B",
      LOC => "SLICE_X39Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => M2_0_bdd6_0,
      ADR3 => M2_0_bdd13_0,
      O => N368_pack_2
    );
  M2_5_1 : X_LUT4
    generic map(
      INIT => X"F0BB",
      LOC => "SLICE_X39Y48"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => N368,
      ADR3 => U2_vcs(1),
      O => M2_5_bdd0
    );
  who_present_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"99CC",
      LOC => "SLICE_X46Y46"
    )
    port map (
      ADR0 => nes_a_reg_5517,
      ADR1 => who_present_state_FSM_FFd2_5427,
      ADR2 => VCC,
      ADR3 => who_present_state_FSM_FFd1_5574,
      O => who_present_state_FSM_FFd2_In
    );
  who_present_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X46Y46",
      INIT => '0'
    )
    port map (
      I => who_present_state_FSM_FFd1_DYMUX_17463,
      CE => VCC,
      CLK => who_present_state_FSM_FFd1_CLKINV_17453,
      SET => who_present_state_FSM_FFd1_SRINV_17454,
      RST => GND,
      O => who_present_state_FSM_FFd2_5427
    );
  who_present_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X46Y46",
      INIT => '0'
    )
    port map (
      I => who_present_state_FSM_FFd1_DXMUX_17470,
      CE => VCC,
      CLK => who_present_state_FSM_FFd1_CLKINV_17453,
      SET => GND,
      RST => who_present_state_FSM_FFd1_SRINV_17454,
      O => who_present_state_FSM_FFd1_5574
    );
  U3_spriteonB3_and000013_SW0 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X13Y5"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U2_hcs(4),
      ADR2 => U2_hcs(6),
      ADR3 => U2_hcs(3),
      O => N228_pack_1
    );
  U3_spriteonB3_and000013 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "SLICE_X13Y5"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => U2_hcs(7),
      ADR2 => U2_hcs(9),
      ADR3 => N228,
      O => U3_spriteonB3_and000013_17498
    );
  M1a_11_1 : X_LUT4
    generic map(
      INIT => X"851B",
      LOC => "SLICE_X28Y36"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M1a_11_1_pack_1
    );
  M1a_11_f51 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X28Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr_4_0,
      ADR2 => M1a_11_2_0,
      ADR3 => M1a_11_1_5317,
      O => M1a_11_Q
    );
  M1a_1_21 : X_LUT4
    generic map(
      INIT => X"803F",
      LOC => "SLICE_X28Y37"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(3),
      O => M1a_1_21_17534
    );
  M1a_4_11 : X_LUT4
    generic map(
      INIT => X"9F9D",
      LOC => "SLICE_X29Y37"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(1),
      O => M1a_4_bdd0
    );
  U3_spriteonB2_and000021 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X13Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_spriteonB1_cmp_lt0000_0,
      ADR2 => U2_hcs(9),
      ADR3 => U2_hcs(8),
      O => U3_N95
    );
  U3_spriteonB2_and000019 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X12Y14"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U2_vcs(7),
      ADR2 => N300_0,
      ADR3 => U2_vcs(9),
      O => U3_spriteonB2_and000019_pack_1
    );
  U3_spriteonB2_and000082_SW0 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X12Y14"
    )
    port map (
      ADR0 => U2_hcs(8),
      ADR1 => U2_hcs(9),
      ADR2 => U3_spriteonB1_cmp_lt0000_0,
      ADR3 => U3_spriteonB2_and000019_5577,
      O => N370
    );
  U3_spriteonB2_and000082 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => U2_hcs(6),
      ADR1 => N226,
      ADR2 => N370_0,
      ADR3 => U2_hcs(7),
      O => U3_spriteonB2_pack_1
    );
  U3_red_2_11 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => U3_spriteonB4_0,
      ADR1 => U3_spriteonB3_0,
      ADR2 => U3_spriteonB2,
      ADR3 => U3_spriteonB1_0,
      O => U3_N13
    );
  M2a_1_63 : X_LUT4
    generic map(
      INIT => X"0705",
      LOC => "SLICE_X32Y45"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M2_0_bdd1,
      ADR2 => rom1_addr_4_0,
      ADR3 => U2_vcs(1),
      O => M2a_1_63_17623
    );
  M2_3_12 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X32Y45"
    )
    port map (
      ADR0 => rom1_addr(3),
      ADR1 => M2_3_bdd6,
      ADR2 => rom1_addr_4_0,
      ADR3 => M1_28_2_0,
      O => M2_3_12_17630
    );
  M2a_4_52 : X_LUT4
    generic map(
      INIT => X"7EA0",
      LOC => "SLICE_X36Y43"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => U2_vcs(0),
      ADR2 => M2_0_bdd6_0,
      ADR3 => rom1_addr(2),
      O => M2a_4_52_17647
    );
  M2a_7_27_SW0 : X_LUT4
    generic map(
      INIT => X"FC88",
      LOC => "SLICE_X36Y43"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => U2_vcs(0),
      ADR2 => M2_0_bdd6_0,
      ADR3 => rom1_addr(2),
      O => N216
    );
  M2a_6_11 : X_LUT4
    generic map(
      INIT => X"54A8",
      LOC => "SLICE_X34Y44"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => M2a_6_bdd0
    );
  M2_6_11 : X_LUT4
    generic map(
      INIT => X"7FA5",
      LOC => "SLICE_X34Y44"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(2),
      O => M2_6_bdd0
    );
  M2a_6_21 : X_LUT4
    generic map(
      INIT => X"A280",
      LOC => "SLICE_X35Y43"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => M2_0_bdd6_0,
      ADR3 => M2_0_bdd13_0,
      O => M2a_6_bdd1_pack_1
    );
  M2a_6_36_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X35Y43"
    )
    port map (
      ADR0 => M2a_6_bdd1,
      ADR1 => VCC,
      ADR2 => M2a_6_bdd0_0,
      ADR3 => U2_vcs(1),
      O => N356
    );
  M2a_8_10 : X_LUT4
    generic map(
      INIT => X"FFE2",
      LOC => "SLICE_X35Y44"
    )
    port map (
      ADR0 => M2a_6_bdd0_0,
      ADR1 => U2_vcs(1),
      ADR2 => M2_10_bdd14,
      ADR3 => rom1_addr(3),
      O => M2a_8_10_17714
    );
  M2a_8_14 : X_LUT4
    generic map(
      INIT => X"B73F",
      LOC => "SLICE_X32Y41"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_8_bdd1_0,
      ADR2 => U2_vcs(3),
      ADR3 => U2_vcs(2),
      O => M2a_8_14_pack_1
    );
  M2a_8_59 : X_LUT4
    generic map(
      INIT => X"EC00",
      LOC => "SLICE_X32Y41"
    )
    port map (
      ADR0 => M2a_8_10_0,
      ADR1 => rom1_addr_4_0,
      ADR2 => M2a_8_14_5582,
      ADR3 => M1a_23_54,
      O => M2a_8_Q
    );
  M2a_9_44 : X_LUT4
    generic map(
      INIT => X"5C50",
      LOC => "SLICE_X33Y41"
    )
    port map (
      ADR0 => M1a_10_bdd0,
      ADR1 => M2a_9_18_0,
      ADR2 => rom1_addr_4_0,
      ADR3 => N294,
      O => M2a_9_Q
    );
  M2a_2_57_SW0 : X_LUT4
    generic map(
      INIT => X"E4F0",
      LOC => "SLICE_X31Y44"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_2_bdd5_0,
      ADR2 => M2_0_bdd16,
      ADR3 => U2_vcs(0),
      O => N310_pack_1
    );
  M2a_2_57 : X_LUT4
    generic map(
      INIT => X"8A2A",
      LOC => "SLICE_X31Y44"
    )
    port map (
      ADR0 => M2a_1_63_0,
      ADR1 => U2_vcs(3),
      ADR2 => N310,
      ADR3 => U3_N71,
      O => M2a_2_Q
    );
  U3_spriteon2_addsub0000_9_SW0 : X_LUT4
    generic map(
      INIT => X"AA88",
      LOC => "SLICE_X0Y27"
    )
    port map (
      ADR0 => U3_C2(6),
      ADR1 => U3_C2(5),
      ADR2 => VCC,
      ADR3 => U3_C2(4),
      O => N46_pack_1
    );
  U3_spriteon2_addsub0000_9_Q : X_LUT4
    generic map(
      INIT => X"56AA",
      LOC => "SLICE_X0Y27"
    )
    port map (
      ADR0 => U3_C2(9),
      ADR1 => U3_C2(7),
      ADR2 => N46,
      ADR3 => U3_C2(8),
      O => U3_spriteon2_addsub0000(9)
    );
  U3_tank1_angle_calc_mux0004_0_2_SW0 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X52Y70"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(3),
      ADR1 => U3_tank1_angle_calc(4),
      ADR2 => VCC,
      ADR3 => nes_up_reg_4814,
      O => N155
    );
  U3_tank1_angle_calc_mux0004_0_2_SW1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X52Y70"
    )
    port map (
      ADR0 => U3_tank1_angle_calc(5),
      ADR1 => U3_tank1_angle_calc(3),
      ADR2 => U3_tank1_angle_calc(4),
      ADR3 => nes_up_reg_4814,
      O => N166
    );
  U2_vsync_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X12Y0"
    )
    port map (
      ADR0 => U2_vcs(3),
      ADR1 => U2_vcs(9),
      ADR2 => VCC,
      ADR3 => U2_vcs(4),
      O => N2_pack_1
    );
  U2_vsync : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X12Y0"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_N2_0,
      ADR2 => U2_vcs(1),
      ADR3 => N2,
      O => vsync_OBUF_17846
    );
  M1_0_11 : X_LUT4
    generic map(
      INIT => X"AFFF",
      LOC => "SLICE_X23Y41"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => VCC,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_0_bdd0_pack_1
    );
  M2_31_1 : X_LUT4
    generic map(
      INIT => X"69ED",
      LOC => "SLICE_X23Y41"
    )
    port map (
      ADR0 => U3_N71,
      ADR1 => rom1_addr_4_0,
      ADR2 => U2_vcs(3),
      ADR3 => M1_0_bdd0,
      O => M1_0_Q
    );
  M1_0_21 : X_LUT4
    generic map(
      INIT => X"DEDE",
      LOC => "SLICE_X28Y57"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M1_0_bdd2
    );
  M1_28_2 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X29Y44"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => M1_28_2_17894
    );
  M1_29_0 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X28Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M1_29_0_17906
    );
  U3_green_0_SW0 : X_LUT4
    generic map(
      INIT => X"5554",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => U3_spriteonGrnd_0,
      ADR1 => U3_spriteonB2,
      ADR2 => U3_spriteonB1_0,
      ADR3 => U3_spriteonB3_0,
      O => N130_pack_1
    );
  U3_green_0_Q : X_LUT4
    generic map(
      INIT => X"020A",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => U3_N102_0,
      ADR1 => U3_M1a_mux0000,
      ADR2 => N130,
      ADR3 => U3_N98,
      O => green_0_OBUF_17930
    );
  M2_0_21 : X_LUT4
    generic map(
      INIT => X"FF3C",
      LOC => "SLICE_X33Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd6_0,
      O => M2_0_bdd1_pack_1
    );
  M2_1_115 : X_LUT4
    generic map(
      INIT => X"030B",
      LOC => "SLICE_X33Y51"
    )
    port map (
      ADR0 => M1_30_96_0,
      ADR1 => rom1_addr(3),
      ADR2 => rom1_addr_4_0,
      ADR3 => M2_0_bdd1,
      O => M2_1_115_17954
    );
  M2_0_61 : X_LUT4
    generic map(
      INIT => X"EDED",
      LOC => "SLICE_X35Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd13_0,
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M2_0_bdd10
    );
  M2_5_58 : X_LUT4
    generic map(
      INIT => X"D55D",
      LOC => "SLICE_X35Y48"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd13_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(0),
      O => M2_5_58_17978
    );
  M2_0_56 : X_LUT4
    generic map(
      INIT => X"EDED",
      LOC => "SLICE_X31Y49"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(2),
      ADR3 => VCC,
      O => M2_0_bdd9_pack_2
    );
  M2a_1_36 : X_LUT4
    generic map(
      INIT => X"212B",
      LOC => "SLICE_X31Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd16,
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd9,
      O => M2a_1_36_18002
    );
  M2_0_81 : X_LUT4
    generic map(
      INIT => X"F77F",
      LOC => "SLICE_X32Y49"
    )
    port map (
      ADR0 => rom1_addr(2),
      ADR1 => U2_vcs(0),
      ADR2 => M2_0_bdd6_0,
      ADR3 => M2_0_bdd13_0,
      O => M2_0_bdd3_pack_1
    );
  M2_8_29 : X_LUT4
    generic map(
      INIT => X"0837",
      LOC => "SLICE_X32Y49"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => M2_0_bdd3,
      ADR3 => U2_vcs(3),
      O => M2_8_29_18026
    );
  M2_0_91 : X_LUT4
    generic map(
      INIT => X"EDB7",
      LOC => "SLICE_X31Y47"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => M2_0_bdd13_0,
      ADR2 => U2_vcs(1),
      ADR3 => M2_0_bdd6_0,
      O => M2_0_bdd16_pack_2
    );
  M2_9_9 : X_LUT4
    generic map(
      INIT => X"40EA",
      LOC => "SLICE_X31Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => rom1_addr(2),
      ADR2 => M2_0_bdd13_0,
      ADR3 => M2_0_bdd16,
      O => M2_9_9_18050
    );
  M2_1_60 : X_LUT4
    generic map(
      INIT => X"333F",
      LOC => "SLICE_X30Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(1),
      ADR2 => M2_0_bdd16,
      ADR3 => U2_vcs(0),
      O => M2_1_60_pack_1
    );
  M2_1_120 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X30Y49"
    )
    port map (
      ADR0 => M2_1_115_0,
      ADR1 => rom1_addr(3),
      ADR2 => M2_1_60_5592,
      ADR3 => M2_1_49,
      O => M2_1_Q
    );
  M2_28_1 : X_LUT4
    generic map(
      INIT => X"05A9",
      LOC => "SLICE_X19Y40"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => U2_vcs(3),
      O => M1_3_1_pack_1
    );
  M2_28_f51 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X19Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rom1_addr_4_0,
      ADR2 => M1_3_1,
      ADR3 => M1_3_2_0,
      O => M2_28_Q
    );
  M2_2_14 : X_LUT4
    generic map(
      INIT => X"3231",
      LOC => "SLICE_X29Y57"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => U2_vcs(1),
      ADR2 => M1_0_bdd2_0,
      ADR3 => M2_0_bdd6_0,
      O => M2_2_14_pack_1
    );
  M2_2_35 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X29Y57"
    )
    port map (
      ADR0 => rom1_addr_4_0,
      ADR1 => rom1_addr(3),
      ADR2 => M1_29_0_0,
      ADR3 => M2_2_14_5593,
      O => M2_2_35_18122
    );
  M2_2_31 : X_LUT4
    generic map(
      INIT => X"3CC3",
      LOC => "SLICE_X34Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(2),
      ADR2 => M2_0_bdd6_0,
      ADR3 => U2_vcs(1),
      O => M2_2_bdd5
    );
  M2_5_30 : X_LUT4
    generic map(
      INIT => X"FF24",
      LOC => "SLICE_X34Y49"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(2),
      ADR2 => M2_0_bdd6_0,
      ADR3 => U2_vcs(1),
      O => M2_5_30_18146
    );
  M2_2_60 : X_LUT4
    generic map(
      INIT => X"DDCF",
      LOC => "SLICE_X30Y46"
    )
    port map (
      ADR0 => M2_0_bdd16,
      ADR1 => U2_vcs(1),
      ADR2 => M2_2_bdd5_0,
      ADR3 => U2_vcs(0),
      O => M2_2_60_pack_1
    );
  M2_2_131 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X30Y46"
    )
    port map (
      ADR0 => M2_2_75_0,
      ADR1 => M2_2_35_0,
      ADR2 => M1_29_126,
      ADR3 => M2_2_60_5595,
      O => M2_2_Q
    );
  U3_green_1_SW1 : X_LUT4
    generic map(
      INIT => X"FFAF",
      LOC => "SLICE_X17Y10"
    )
    port map (
      ADR0 => U3_N13_0,
      ADR1 => VCC,
      ADR2 => U3_spriteonB5_0,
      ADR3 => U3_spriteonGrnd_0,
      O => N316_pack_1
    );
  U3_green_1_Q : X_LUT4
    generic map(
      INIT => X"FF20",
      LOC => "SLICE_X17Y10"
    )
    port map (
      ADR0 => U3_N41,
      ADR1 => U3_blue_and0003_0,
      ADR2 => N316,
      ADR3 => U3_N35,
      O => green_1_OBUF_18194
    );
  M2_3_30 : X_LUT4
    generic map(
      INIT => X"CDEF",
      LOC => "SLICE_X33Y47"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => U2_vcs(1),
      ADR2 => M2_3_bdd9,
      ADR3 => M2_0_bdd10_0,
      O => M2_3_30_pack_1
    );
  M2_3_127 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X33Y47"
    )
    port map (
      ADR0 => M2_3_12_0,
      ADR1 => M2_3_124,
      ADR2 => M2_3_69_0,
      ADR3 => M2_3_30_5597,
      O => M2_3_Q
    );
  M2_3_51 : X_LUT4
    generic map(
      INIT => X"8421",
      LOC => "SLICE_X33Y46"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(2),
      ADR3 => M2_0_bdd13_0,
      O => M2_3_bdd9_pack_3
    );
  M2_8_21 : X_LUT4
    generic map(
      INIT => X"0FDD",
      LOC => "SLICE_X33Y46"
    )
    port map (
      ADR0 => M2_3_bdd9,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M2_8_bdd1
    );
  M2_4_11 : X_LUT4
    generic map(
      INIT => X"3AF5",
      LOC => "SLICE_X31Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M2_4_bdd0
    );
  M2_7_11 : X_LUT4
    generic map(
      INIT => X"FAF1",
      LOC => "SLICE_X31Y48"
    )
    port map (
      ADR0 => U2_vcs(0),
      ADR1 => M2_0_bdd6_0,
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(1),
      O => M2_7_bdd0
    );
  M2a_5_54_SW1 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X38Y46"
    )
    port map (
      ADR0 => M2_0_bdd13_0,
      ADR1 => VCC,
      ADR2 => M2_0_bdd6_0,
      ADR3 => U2_vcs(2),
      O => N360
    );
  M2_9_11 : X_LUT4
    generic map(
      INIT => X"6676",
      LOC => "SLICE_X33Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(1),
      ADR2 => U2_vcs(0),
      ADR3 => M2_0_bdd13_0,
      O => M2_9_bdd0_pack_3
    );
  M2a_9_18 : X_LUT4
    generic map(
      INIT => X"93FF",
      LOC => "SLICE_X33Y43"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(1),
      ADR3 => M2_9_bdd0,
      O => M2a_9_18_18302
    );
  U3_red_0_15_SW0 : X_LUT4
    generic map(
      INIT => X"0F03",
      LOC => "SLICE_X14Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_spriteonB5_0,
      ADR2 => U3_spriteonB3_0,
      ADR3 => U3_spriteonB4_0,
      O => N236_pack_1
    );
  U3_red_0_15 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X14Y11"
    )
    port map (
      ADR0 => U3_spriteonB2,
      ADR1 => U3_spriteonGrnd_0,
      ADR2 => N236,
      ADR3 => U3_spriteonB1_0,
      O => U3_red_0_15_18326
    );
  U2_vidon_and0000117 : X_LUT4
    generic map(
      INIT => X"00E0",
      LOC => "SLICE_X15Y11"
    )
    port map (
      ADR0 => U2_vidon_and000080_0,
      ADR1 => U2_vidon_and000065,
      ADR2 => U2_vidon_and0000105_0,
      ADR3 => U2_vcs(9),
      O => U2_vidon_and0000117_pack_1
    );
  U2_vidon_and0000131 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X15Y11"
    )
    port map (
      ADR0 => U2_vidon_and000039_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vidon_and0000117_5600,
      O => vidon
    );
  U3_spriteonB3_and000032 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X12Y5"
    )
    port map (
      ADR0 => U2_vcs(5),
      ADR1 => U2_vcs(3),
      ADR2 => U2_vcs(2),
      ADR3 => U2_vcs(4),
      O => U3_spriteonB3_and000032_pack_1
    );
  U3_spriteonB3_and000041 : X_LUT4
    generic map(
      INIT => X"AAA8",
      LOC => "SLICE_X12Y5"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U3_spriteonB3_and000025_0,
      ADR2 => U3_spriteonB3_and000032_5603,
      ADR3 => U2_vcs(6),
      O => U3_spriteonB3_and000041_18374
    );
  M1a_3_1 : X_LUT4
    generic map(
      INIT => X"A456",
      LOC => "SLICE_X32Y34"
    )
    port map (
      ADR0 => U2_vcs(2),
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => U2_vcs(3),
      O => M1a_3_1_pack_1
    );
  M1a_3_f51 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X32Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => M1a_3_2_0,
      ADR2 => rom1_addr_4_0,
      ADR3 => M1a_3_1_5321,
      O => M1a_3_Q
    );
  U3_spriteonB3_and000025 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X12Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(0),
      ADR2 => U2_vcs(1),
      ADR3 => VCC,
      O => U3_spriteonB3_and000025_18410
    );
  U3_spriteonB3_and000059 : X_LUT4
    generic map(
      INIT => X"00A8",
      LOC => "SLICE_X13Y4"
    )
    port map (
      ADR0 => U3_N25,
      ADR1 => U2_vidon_and000013,
      ADR2 => U3_spriteonB3_and000041_0,
      ADR3 => U2_hcs(9),
      O => U3_spriteonB3_and000059_pack_1
    );
  U3_spriteonB3_and000069 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X13Y4"
    )
    port map (
      ADR0 => U3_spriteonB3_and000013_0,
      ADR1 => U3_spriteonB1_cmp_lt0000_0,
      ADR2 => U3_spriteonB3_and000059_5605,
      ADR3 => VCC,
      O => U3_spriteonB3
    );
  U3_spriteonGrnd_and0000231 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X13Y9"
    )
    port map (
      ADR0 => U2_hcs(5),
      ADR1 => U2_hcs(6),
      ADR2 => VCC,
      ADR3 => U2_hcs(7),
      O => U3_N94_pack_1
    );
  U2_vidon_and0000105 : X_LUT4
    generic map(
      INIT => X"7F5F",
      LOC => "SLICE_X13Y9"
    )
    port map (
      ADR0 => U2_hcs(9),
      ADR1 => U2_hcs(4),
      ADR2 => U2_hcs(8),
      ADR3 => U3_N94,
      O => U2_vidon_and0000105_18458
    );
  U3_spriteonB4_and000023 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => U2_vcs(6),
      ADR2 => U2_vcs(5),
      ADR3 => U3_spriteonB4_and00009_0,
      O => U3_spriteonB4_and000023_pack_1
    );
  U3_spriteonB4_and000099 : X_LUT4
    generic map(
      INIT => X"CC80",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => U3_spriteonB4_and000089_0,
      ADR2 => U3_spriteonB4_and000023_5606,
      ADR3 => U2_vcs(9),
      O => U3_spriteonB4
    );
  U2_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X15Y4"
    )
    port map (
      ADR0 => U2_vcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_0_G
    );
  U2_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X15Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(2),
      O => U2_Result_2_F
    );
  U2_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X15Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_vcs(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_G
    );
  U2_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X15Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(4),
      ADR3 => VCC,
      O => U2_Result_4_F
    );
  U2_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X15Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_vcs(5),
      O => U2_Result_4_G
    );
  U2_Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X15Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_vcs(6),
      ADR3 => VCC,
      O => U2_Result_6_F
    );
  U2_Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X15Y7"
    )
    port map (
      ADR0 => U2_vcs(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_6_G
    );
  U2_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X15Y8"
    )
    port map (
      ADR0 => U2_vcs(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_8_F
    );
  x7_clkdiv_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y74"
    )
    port map (
      ADR0 => x7_clkdiv(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_0_G
    );
  x7_clkdiv_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(2),
      ADR3 => VCC,
      O => x7_clkdiv_2_F
    );
  x7_clkdiv_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_2_G
    );
  x7_clkdiv_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(4),
      ADR3 => VCC,
      O => x7_clkdiv_4_F
    );
  x7_clkdiv_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_4_G
    );
  x7_clkdiv_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y77"
    )
    port map (
      ADR0 => x7_clkdiv(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_6_F
    );
  x7_clkdiv_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(7),
      O => x7_clkdiv_6_G
    );
  x7_clkdiv_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(8),
      ADR3 => VCC,
      O => x7_clkdiv_8_F
    );
  x7_clkdiv_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_8_G
    );
  x7_clkdiv_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y79"
    )
    port map (
      ADR0 => x7_clkdiv(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_10_F
    );
  x7_clkdiv_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(11),
      O => x7_clkdiv_10_G
    );
  x7_clkdiv_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(12),
      ADR3 => VCC,
      O => x7_clkdiv_12_F
    );
  x7_clkdiv_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X55Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => x7_clkdiv(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_12_G
    );
  x7_clkdiv_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y81"
    )
    port map (
      ADR0 => x7_clkdiv(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_14_F
    );
  x7_clkdiv_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(15),
      O => x7_clkdiv_14_G
    );
  x7_clkdiv_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X55Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => x7_clkdiv(16),
      O => x7_clkdiv_16_F
    );
  x7_clkdiv_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X55Y82"
    )
    port map (
      ADR0 => x7_clkdiv(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => x7_clkdiv_16_G
    );
  x7_clkdiv_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X55Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => x7_clkdiv(18),
      ADR3 => VCC,
      O => x7_clkdiv_18_F
    );
  nes_scalar_next_addsub0000_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X51Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_reg(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_0_G
    );
  nes_scalar_next_addsub0000_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X51Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(2),
      O => nes_scalar_next_addsub0000_2_F
    );
  nes_scalar_next_addsub0000_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X51Y10"
    )
    port map (
      ADR0 => nes_scalar_reg(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_2_G
    );
  nes_scalar_next_addsub0000_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X51Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_scalar_reg(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_4_F
    );
  nes_scalar_next_addsub0000_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X51Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_scalar_reg(5),
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_4_G
    );
  nes_scalar_next_addsub0000_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X51Y12"
    )
    port map (
      ADR0 => nes_scalar_reg(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_6_F
    );
  nes_scalar_next_addsub0000_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X51Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_scalar_reg(7),
      O => nes_scalar_next_addsub0000_6_G
    );
  nes_scalar_next_addsub0000_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X51Y13"
    )
    port map (
      ADR0 => nes_scalar_reg(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_scalar_next_addsub0000_8_F
    );
  U2_Result_0_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y10"
    )
    port map (
      ADR0 => U2_hcs(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_0_1_G
    );
  U2_Result_2_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(2),
      O => U2_Result_2_1_F
    );
  U2_Result_2_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_2_1_G
    );
  U2_Result_4_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(4),
      O => U2_Result_4_1_F
    );
  U2_Result_4_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_hcs(5),
      ADR3 => VCC,
      O => U2_Result_4_1_G
    );
  U2_Result_6_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U2_hcs(6),
      O => U2_Result_6_1_F
    );
  U2_Result_6_1_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U2_hcs(7),
      ADR3 => VCC,
      O => U2_Result_6_1_G
    );
  U2_Result_8_1_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U2_hcs(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_Result_8_1_F
    );
  nes_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(1),
      ADR3 => VCC,
      O => nes_Result_0_G
    );
  nes_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(2),
      O => nes_Result_2_F
    );
  nes_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(3),
      O => nes_Result_2_G
    );
  nes_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_4_F
    );
  nes_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => nes_counter_reg(5),
      O => nes_Result_4_G
    );
  nes_Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(6),
      ADR3 => VCC,
      O => nes_Result_6_F
    );
  nes_Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nes_counter_reg(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nes_Result_6_G
    );
  nes_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => nes_counter_reg(8),
      ADR3 => VCC,
      O => nes_Result_8_F
    );
  U3_Q_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X37Y75"
    )
    port map (
      ADR0 => U3_Q_1_5081,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_0_G
    );
  U3_Q_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X37Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_2_5083,
      ADR3 => VCC,
      O => U3_Q_2_F
    );
  U3_Q_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X37Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_Q_3_5084,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_2_G
    );
  U3_Q_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X37Y77"
    )
    port map (
      ADR0 => U3_Q_4_5086,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_4_F
    );
  U3_Q_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X37Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_5_5087,
      O => U3_Q_4_G
    );
  U3_Q_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X37Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_6_5089,
      ADR3 => VCC,
      O => U3_Q_6_F
    );
  U3_Q_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X37Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_Q_7_5090,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_6_G
    );
  U3_Q_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X37Y79"
    )
    port map (
      ADR0 => U3_Q_8_5092,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_8_F
    );
  U3_Q_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X37Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_9_5093,
      O => U3_Q_8_G
    );
  U3_Q_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X37Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_10_5095,
      ADR3 => VCC,
      O => U3_Q_10_F
    );
  U3_Q_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X37Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U3_Q_11_5096,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_10_G
    );
  U3_Q_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X37Y81"
    )
    port map (
      ADR0 => U3_Q_12_5098,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_12_F
    );
  U3_Q_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X37Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_13_5099,
      O => U3_Q_12_G
    );
  U3_Q_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X37Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U3_Q_14_5101,
      ADR3 => VCC,
      O => U3_Q_14_F
    );
  U3_Q_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X37Y82"
    )
    port map (
      ADR0 => U3_Q_15_5102,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_Q_14_G
    );
  U3_Q_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X37Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U3_Q_16_5104,
      O => U3_Q_16_F
    );
  dp_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => dp_OUTPUT_OFF_O1INV_10396,
      O => dp_O
    );
  dp_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => dp_OUTPUT_OFF_O1INV_10396
    );
  ja2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja2_OBUF_15054,
      O => ja2_O
    );
  ja3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => ja3_OBUF_15390,
      O => ja3_O
    );
  a_to_g_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_0_OBUF_15575,
      O => a_to_g_0_O
    );
  a_to_g_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_1_OBUF_16122,
      O => a_to_g_1_O
    );
  a_to_g_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_2_OBUF_15599,
      O => a_to_g_2_O
    );
  a_to_g_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_3_OBUF_15606,
      O => a_to_g_3_O
    );
  a_to_g_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_4_OBUF_15623,
      O => a_to_g_4_O
    );
  a_to_g_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_5_OBUF_15630,
      O => a_to_g_5_O
    );
  a_to_g_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_to_g_6_OBUF_15582,
      O => a_to_g_6_O
    );
  blue_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_0_OBUF_14574,
      O => blue_0_O
    );
  blue_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 555 ps
    )
    port map (
      I => blue_1_OBUF_14855,
      O => blue_1_O
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_0_OBUF_14526,
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_1_OBUF_14670,
      O => an_1_O
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_2_OBUF_15294,
      O => an_2_O
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => an_3_OBUF_14622,
      O => an_3_O
    );
  hsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 555 ps
    )
    port map (
      I => hsync_OBUF_16410,
      O => hsync_O
    );
  vsync_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 555 ps
    )
    port map (
      I => vsync_OBUF_17846,
      O => vsync_O
    );
  red_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_0_OBUF_15102,
      O => red_0_O
    );
  red_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_5305,
      O => red_1_O
    );
  red_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 555 ps
    )
    port map (
      I => red_1_OBUF_5305,
      O => red_2_O
    );
  green_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_0_OBUF_17930,
      O => green_0_O
    );
  green_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_1_OBUF_18194,
      O => green_1_O
    );
  green_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 555 ps
    )
    port map (
      I => green_2_OBUF_14862,
      O => green_2_O
    );
  U3_spriteonB1_cmp_lt0000217_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X21Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_spriteonB1_cmp_lt0000217_G
    );
  U3_spriteonB5_and000017_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X13Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U3_spriteonB5_and000017_G
    );
  U2_vidon_and000026_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vidon_and000026_G
    );
  U2_vidon_and000065_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X14Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U2_vidon_and000065_G
    );
  NlwBlock_vga_bsprite2a_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_vga_bsprite2a_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

