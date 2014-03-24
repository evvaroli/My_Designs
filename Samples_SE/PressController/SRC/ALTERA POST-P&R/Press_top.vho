-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/28/2013 16:51:47"

-- 
-- Device: Altera 5SGXEA7H3F35C3 Package FBGA1152
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY IEEE;
LIBRARY STRATIXV;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXV.STRATIXV_COMPONENTS.ALL;

ENTITY 	Press_top IS
    PORT (
	CLK : IN std_logic;
	CLK_T : IN std_logic;
	DET : IN std_logic;
	RST : IN std_logic;
	STP : IN std_logic;
	STR : IN std_logic;
	clr : IN std_logic;
	OUTPUT : BUFFER std_logic;
	LIMIT : BUFFER std_logic_vector(5 DOWNTO 0);
	TIMER : BUFFER std_logic_vector(9 DOWNTO 0);
	Y : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END Press_top;

-- Design Ports Information
-- OUTPUT	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LIMIT[0]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LIMIT[1]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LIMIT[2]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LIMIT[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LIMIT[4]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LIMIT[5]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[0]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[1]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[2]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[4]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[6]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[7]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[8]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIMER[9]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_T	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DET	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- STP	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- STR	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Press_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLK_T : std_logic;
SIGNAL ww_DET : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_STP : std_logic;
SIGNAL ww_STR : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_OUTPUT : std_logic;
SIGNAL ww_LIMIT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_TIMER : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK_T~input_o\ : std_logic;
SIGNAL \CLK_T~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \STP~input_o\ : std_logic;
SIGNAL \STR~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \U101|U201|Equal6~0_combout\ : std_logic;
SIGNAL \DET~input_o\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[0]~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[0]~1_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[0]~q\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[1]~q\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[2]~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[2]~q\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[3]~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[3]~q\ : std_logic;
SIGNAL \U101|U202|LessThan1~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[4]~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[4]~q\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[5]~0_combout\ : std_logic;
SIGNAL \U101|U202|limit_down:lim_cnt[5]~q\ : std_logic;
SIGNAL \U101|U202|LessThan1~1_combout\ : std_logic;
SIGNAL \U101|U202|LIM~1_combout\ : std_logic;
SIGNAL \U101|U202|LIM~3_combout\ : std_logic;
SIGNAL \U101|U202|LIM~0_combout\ : std_logic;
SIGNAL \U101|U202|LIM~_emulated_q\ : std_logic;
SIGNAL \U101|U202|LIM~2_combout\ : std_logic;
SIGNAL \U101|U201|Mux2~1_combout\ : std_logic;
SIGNAL \U101|U201|MDS_machine~0_combout\ : std_logic;
SIGNAL \U101|U201|Mux2~0_combout\ : std_logic;
SIGNAL \U101|U201|Mux2~2_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~4_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~1_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~2_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~3_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~11_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~0_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~5_combout\ : std_logic;
SIGNAL \U101|U201|MDS[2]~6_combout\ : std_logic;
SIGNAL \U101|U201|MDS[2]~7_combout\ : std_logic;
SIGNAL \U101|U201|MDS[1]~8_combout\ : std_logic;
SIGNAL \U101|U201|MDS~9_combout\ : std_logic;
SIGNAL \U101|U201|MDS[2]~10_combout\ : std_logic;
SIGNAL \U101|U202|Add0~1_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~0_combout\ : std_logic;
SIGNAL \U101|U202|time_down~0_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[0]~q\ : std_logic;
SIGNAL \U101|U202|Add0~2\ : std_logic;
SIGNAL \U101|U202|Add0~5_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~1_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[1]~q\ : std_logic;
SIGNAL \U101|U202|Add0~6\ : std_logic;
SIGNAL \U101|U202|Add0~9_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~2_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[2]~q\ : std_logic;
SIGNAL \U101|U202|Add0~10\ : std_logic;
SIGNAL \U101|U202|Add0~13_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~3_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[3]~q\ : std_logic;
SIGNAL \U101|U202|Add0~14\ : std_logic;
SIGNAL \U101|U202|Add0~17_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~4_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[4]~q\ : std_logic;
SIGNAL \U101|U202|Add0~18\ : std_logic;
SIGNAL \U101|U202|Add0~21_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~5_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[5]~q\ : std_logic;
SIGNAL \U101|U202|Add0~22\ : std_logic;
SIGNAL \U101|U202|Add0~25_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~6_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[6]~q\ : std_logic;
SIGNAL \U101|U202|Add0~26\ : std_logic;
SIGNAL \U101|U202|Add0~29_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~7_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[7]~q\ : std_logic;
SIGNAL \U101|U202|Add0~30\ : std_logic;
SIGNAL \U101|U202|Add0~33_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~8_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[8]~q\ : std_logic;
SIGNAL \U101|U202|Add0~34\ : std_logic;
SIGNAL \U101|U202|Add0~37_sumout\ : std_logic;
SIGNAL \U101|U202|tim_cnt~9_combout\ : std_logic;
SIGNAL \U101|U202|time_down:tim_cnt[9]~q\ : std_logic;
SIGNAL \U101|U202|TIM~1_combout\ : std_logic;
SIGNAL \U101|U202|TIM~0_combout\ : std_logic;
SIGNAL \U101|U202|TIM~2_combout\ : std_logic;
SIGNAL \U101|U202|TIM~q\ : std_logic;
SIGNAL \U101|U201|OUTPUT~0_combout\ : std_logic;
SIGNAL \U101|U201|Y~0_combout\ : std_logic;
SIGNAL \U101|U201|Y~1_combout\ : std_logic;
SIGNAL \U101|U201|Y~2_combout\ : std_logic;
SIGNAL \U101|U201|Y\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U101|U201|MDS\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_STR~input_o\ : std_logic;
SIGNAL \ALT_INV_STP~input_o\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_DET~input_o\ : std_logic;
SIGNAL \U101|U202|ALT_INV_LIM~1_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~11_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_LIM~0_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_LIM~2_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_LIM~_emulated_q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS~9_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[2]~7_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[2]~6_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~5_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS_machine~0_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~4_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~3_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~2_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~1_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS[1]~0_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down~0_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_TIM~2_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_TIM~1_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_TIM~0_combout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[9]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[8]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[7]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[6]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[5]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[4]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[3]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[2]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[1]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_time_down:tim_cnt[0]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[5]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[4]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[3]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\ : std_logic;
SIGNAL \U101|U201|ALT_INV_OUTPUT~0_combout\ : std_logic;
SIGNAL \U101|U201|ALT_INV_MDS\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U101|U202|ALT_INV_TIM~q\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \U101|U202|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLK_T <= CLK_T;
ww_DET <= DET;
ww_RST <= RST;
ww_STP <= STP;
ww_STR <= STR;
ww_clr <= clr;
OUTPUT <= ww_OUTPUT;
LIMIT <= ww_LIMIT;
TIMER <= ww_TIMER;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_STR~input_o\ <= NOT \STR~input_o\;
\ALT_INV_STP~input_o\ <= NOT \STP~input_o\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_DET~input_o\ <= NOT \DET~input_o\;
\U101|U202|ALT_INV_LIM~1_combout\ <= NOT \U101|U202|LIM~1_combout\;
\U101|U201|ALT_INV_MDS[1]~11_combout\ <= NOT \U101|U201|MDS[1]~11_combout\;
\U101|U202|ALT_INV_LIM~0_combout\ <= NOT \U101|U202|LIM~0_combout\;
\U101|U202|ALT_INV_LessThan1~1_combout\ <= NOT \U101|U202|LessThan1~1_combout\;
\U101|U202|ALT_INV_LIM~2_combout\ <= NOT \U101|U202|LIM~2_combout\;
\U101|U202|ALT_INV_LIM~_emulated_q\ <= NOT \U101|U202|LIM~_emulated_q\;
\U101|U202|ALT_INV_LessThan1~0_combout\ <= NOT \U101|U202|LessThan1~0_combout\;
\U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\ <= NOT \U101|U202|limit_down:lim_cnt[0]~0_combout\;
\U101|U201|ALT_INV_Mux2~1_combout\ <= NOT \U101|U201|Mux2~1_combout\;
\U101|U201|ALT_INV_Mux2~0_combout\ <= NOT \U101|U201|Mux2~0_combout\;
\U101|U201|ALT_INV_MDS~9_combout\ <= NOT \U101|U201|MDS~9_combout\;
\U101|U201|ALT_INV_MDS[2]~7_combout\ <= NOT \U101|U201|MDS[2]~7_combout\;
\U101|U201|ALT_INV_MDS[2]~6_combout\ <= NOT \U101|U201|MDS[2]~6_combout\;
\U101|U201|ALT_INV_MDS[1]~5_combout\ <= NOT \U101|U201|MDS[1]~5_combout\;
\U101|U201|ALT_INV_MDS_machine~0_combout\ <= NOT \U101|U201|MDS_machine~0_combout\;
\U101|U201|ALT_INV_Equal6~0_combout\ <= NOT \U101|U201|Equal6~0_combout\;
\U101|U201|ALT_INV_MDS[1]~4_combout\ <= NOT \U101|U201|MDS[1]~4_combout\;
\U101|U201|ALT_INV_MDS[1]~3_combout\ <= NOT \U101|U201|MDS[1]~3_combout\;
\U101|U201|ALT_INV_MDS[1]~2_combout\ <= NOT \U101|U201|MDS[1]~2_combout\;
\U101|U201|ALT_INV_MDS[1]~1_combout\ <= NOT \U101|U201|MDS[1]~1_combout\;
\U101|U201|ALT_INV_MDS[1]~0_combout\ <= NOT \U101|U201|MDS[1]~0_combout\;
\U101|U202|ALT_INV_time_down~0_combout\ <= NOT \U101|U202|time_down~0_combout\;
\U101|U202|ALT_INV_TIM~2_combout\ <= NOT \U101|U202|TIM~2_combout\;
\U101|U202|ALT_INV_TIM~1_combout\ <= NOT \U101|U202|TIM~1_combout\;
\U101|U202|ALT_INV_TIM~0_combout\ <= NOT \U101|U202|TIM~0_combout\;
\U101|U202|ALT_INV_time_down:tim_cnt[9]~q\ <= NOT \U101|U202|time_down:tim_cnt[9]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[8]~q\ <= NOT \U101|U202|time_down:tim_cnt[8]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[7]~q\ <= NOT \U101|U202|time_down:tim_cnt[7]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[6]~q\ <= NOT \U101|U202|time_down:tim_cnt[6]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[5]~q\ <= NOT \U101|U202|time_down:tim_cnt[5]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[4]~q\ <= NOT \U101|U202|time_down:tim_cnt[4]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[3]~q\ <= NOT \U101|U202|time_down:tim_cnt[3]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[2]~q\ <= NOT \U101|U202|time_down:tim_cnt[2]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[1]~q\ <= NOT \U101|U202|time_down:tim_cnt[1]~q\;
\U101|U202|ALT_INV_time_down:tim_cnt[0]~q\ <= NOT \U101|U202|time_down:tim_cnt[0]~q\;
\U101|U202|ALT_INV_limit_down:lim_cnt[5]~q\ <= NOT \U101|U202|limit_down:lim_cnt[5]~q\;
\U101|U202|ALT_INV_limit_down:lim_cnt[4]~q\ <= NOT \U101|U202|limit_down:lim_cnt[4]~q\;
\U101|U202|ALT_INV_limit_down:lim_cnt[3]~q\ <= NOT \U101|U202|limit_down:lim_cnt[3]~q\;
\U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\ <= NOT \U101|U202|limit_down:lim_cnt[2]~q\;
\U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\ <= NOT \U101|U202|limit_down:lim_cnt[1]~q\;
\U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\ <= NOT \U101|U202|limit_down:lim_cnt[0]~q\;
\U101|U201|ALT_INV_OUTPUT~0_combout\ <= NOT \U101|U201|OUTPUT~0_combout\;
\U101|U201|ALT_INV_MDS\(2) <= NOT \U101|U201|MDS\(2);
\U101|U201|ALT_INV_MDS\(1) <= NOT \U101|U201|MDS\(1);
\U101|U202|ALT_INV_TIM~q\ <= NOT \U101|U202|TIM~q\;
\U101|U202|ALT_INV_Add0~37_sumout\ <= NOT \U101|U202|Add0~37_sumout\;
\U101|U202|ALT_INV_Add0~33_sumout\ <= NOT \U101|U202|Add0~33_sumout\;
\U101|U202|ALT_INV_Add0~29_sumout\ <= NOT \U101|U202|Add0~29_sumout\;
\U101|U202|ALT_INV_Add0~25_sumout\ <= NOT \U101|U202|Add0~25_sumout\;
\U101|U202|ALT_INV_Add0~21_sumout\ <= NOT \U101|U202|Add0~21_sumout\;
\U101|U202|ALT_INV_Add0~17_sumout\ <= NOT \U101|U202|Add0~17_sumout\;
\U101|U202|ALT_INV_Add0~13_sumout\ <= NOT \U101|U202|Add0~13_sumout\;
\U101|U202|ALT_INV_Add0~9_sumout\ <= NOT \U101|U202|Add0~9_sumout\;
\U101|U202|ALT_INV_Add0~5_sumout\ <= NOT \U101|U202|Add0~5_sumout\;
\U101|U202|ALT_INV_Add0~1_sumout\ <= NOT \U101|U202|Add0~1_sumout\;
\U101|U201|ALT_INV_MDS\(0) <= NOT \U101|U201|MDS\(0);

-- Location: IOOBUF_X148_Y129_N46
\OUTPUT~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U201|ALT_INV_OUTPUT~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT);

-- Location: IOOBUF_X49_Y129_N102
\LIMIT[0]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	devoe => ww_devoe,
	o => ww_LIMIT(0));

-- Location: IOOBUF_X54_Y129_N46
\LIMIT[1]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\,
	devoe => ww_devoe,
	o => ww_LIMIT(1));

-- Location: IOOBUF_X49_Y129_N46
\LIMIT[2]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\,
	devoe => ww_devoe,
	o => ww_LIMIT(2));

-- Location: IOOBUF_X54_Y129_N130
\LIMIT[3]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|limit_down:lim_cnt[3]~q\,
	devoe => ww_devoe,
	o => ww_LIMIT(3));

-- Location: IOOBUF_X54_Y129_N74
\LIMIT[4]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|limit_down:lim_cnt[4]~q\,
	devoe => ww_devoe,
	o => ww_LIMIT(4));

-- Location: IOOBUF_X49_Y129_N74
\LIMIT[5]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|limit_down:lim_cnt[5]~q\,
	devoe => ww_devoe,
	o => ww_LIMIT(5));

-- Location: IOOBUF_X62_Y129_N102
\TIMER[0]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|time_down:tim_cnt[0]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(0));

-- Location: IOOBUF_X51_Y129_N30
\TIMER[1]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_time_down:tim_cnt[1]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(1));

-- Location: IOOBUF_X57_Y129_N74
\TIMER[2]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|time_down:tim_cnt[2]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(2));

-- Location: IOOBUF_X57_Y129_N46
\TIMER[3]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_time_down:tim_cnt[3]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(3));

-- Location: IOOBUF_X51_Y129_N86
\TIMER[4]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_time_down:tim_cnt[4]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(4));

-- Location: IOOBUF_X57_Y129_N130
\TIMER[5]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|time_down:tim_cnt[5]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(5));

-- Location: IOOBUF_X62_Y129_N46
\TIMER[6]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|ALT_INV_time_down:tim_cnt[6]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(6));

-- Location: IOOBUF_X62_Y129_N130
\TIMER[7]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|time_down:tim_cnt[7]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(7));

-- Location: IOOBUF_X51_Y129_N2
\TIMER[8]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|time_down:tim_cnt[8]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(8));

-- Location: IOOBUF_X57_Y129_N102
\TIMER[9]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U202|time_down:tim_cnt[9]~q\,
	devoe => ww_devoe,
	o => ww_TIMER(9));

-- Location: IOOBUF_X51_Y129_N58
\Y[0]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U201|Y\(0),
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X54_Y129_N102
\Y[1]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U201|Y\(1),
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X49_Y129_N130
\Y[2]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U101|U201|Y\(2),
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOIBUF_X162_Y129_N85
\CLK_T~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_T,
	o => \CLK_T~input_o\);

-- Location: CLKCTRL_G15
\CLK_T~inputCLKENA0\ : stratixv_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_T~input_o\,
	outclk => \CLK_T~inputCLKENA0_outclk\);

-- Location: IOIBUF_X163_Y0_N129
\CLK~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : stratixv_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X59_Y129_N1
\clr~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X59_Y129_N29
\STP~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STP,
	o => \STP~input_o\);

-- Location: IOIBUF_X59_Y129_N85
\STR~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STR,
	o => \STR~input_o\);

-- Location: IOIBUF_X59_Y129_N57
\RST~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: MLABCELL_X60_Y128_N9
\U101|U201|Equal6~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Equal6~0_combout\ = ( \U101|U201|MDS\(1) & ( \U101|U201|MDS\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U101|U201|ALT_INV_MDS\(2),
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U201|Equal6~0_combout\);

-- Location: IOIBUF_X62_Y129_N73
\DET~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DET,
	o => \DET~input_o\);

-- Location: MLABCELL_X60_Y128_N0
\U101|U202|limit_down:lim_cnt[0]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[0]~0_combout\ = ( \U101|U201|MDS\(1) & ( (!\DET~input_o\) # ((!\U101|U201|MDS\(2)) # (\U101|U201|MDS\(0))) ) ) # ( !\U101|U201|MDS\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DET~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(0),
	datad => \U101|U201|ALT_INV_MDS\(2),
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U202|limit_down:lim_cnt[0]~0_combout\);

-- Location: LABCELL_X59_Y128_N12
\U101|U202|limit_down:lim_cnt[0]~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[0]~1_combout\ = ( \U101|U202|LessThan1~1_combout\ & ( \U101|U202|limit_down:lim_cnt[0]~q\ ) ) # ( !\U101|U202|LessThan1~1_combout\ & ( !\U101|U202|limit_down:lim_cnt[0]~0_combout\ $ (\U101|U202|limit_down:lim_cnt[0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datad => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	dataf => \U101|U202|ALT_INV_LessThan1~1_combout\,
	combout => \U101|U202|limit_down:lim_cnt[0]~1_combout\);

-- Location: FF_X59_Y128_N14
\U101|U202|limit_down:lim_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U202|limit_down:lim_cnt[0]~1_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|limit_down:lim_cnt[0]~q\);

-- Location: LABCELL_X59_Y128_N48
\U101|U202|limit_down:lim_cnt[1]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[1]~0_combout\ = ( \U101|U202|limit_down:lim_cnt[1]~q\ & ( \U101|U202|LessThan1~1_combout\ ) ) # ( \U101|U202|limit_down:lim_cnt[1]~q\ & ( !\U101|U202|LessThan1~1_combout\ & ( (!\U101|U202|limit_down:lim_cnt[0]~q\) # 
-- (\U101|U202|limit_down:lim_cnt[0]~0_combout\) ) ) ) # ( !\U101|U202|limit_down:lim_cnt[1]~q\ & ( !\U101|U202|LessThan1~1_combout\ & ( (!\U101|U202|limit_down:lim_cnt[0]~0_combout\ & \U101|U202|limit_down:lim_cnt[0]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010110111011101110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	datae => \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\,
	dataf => \U101|U202|ALT_INV_LessThan1~1_combout\,
	combout => \U101|U202|limit_down:lim_cnt[1]~0_combout\);

-- Location: FF_X59_Y128_N50
\U101|U202|limit_down:lim_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U202|limit_down:lim_cnt[1]~0_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|limit_down:lim_cnt[1]~q\);

-- Location: LABCELL_X59_Y128_N18
\U101|U202|limit_down:lim_cnt[2]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[2]~0_combout\ = ( \U101|U202|limit_down:lim_cnt[2]~q\ & ( \U101|U202|limit_down:lim_cnt[1]~q\ & ( ((!\U101|U202|limit_down:lim_cnt[0]~q\) # (\U101|U202|LessThan1~1_combout\)) # (\U101|U202|limit_down:lim_cnt[0]~0_combout\) ) 
-- ) ) # ( !\U101|U202|limit_down:lim_cnt[2]~q\ & ( \U101|U202|limit_down:lim_cnt[1]~q\ & ( (!\U101|U202|limit_down:lim_cnt[0]~0_combout\ & (!\U101|U202|LessThan1~1_combout\ & \U101|U202|limit_down:lim_cnt[0]~q\)) ) ) ) # ( 
-- \U101|U202|limit_down:lim_cnt[2]~q\ & ( !\U101|U202|limit_down:lim_cnt[1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000100010001111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datab => \U101|U202|ALT_INV_LessThan1~1_combout\,
	datad => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	datae => \U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\,
	dataf => \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\,
	combout => \U101|U202|limit_down:lim_cnt[2]~0_combout\);

-- Location: FF_X59_Y128_N20
\U101|U202|limit_down:lim_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U202|limit_down:lim_cnt[2]~0_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|limit_down:lim_cnt[2]~q\);

-- Location: LABCELL_X59_Y128_N24
\U101|U202|limit_down:lim_cnt[3]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[3]~0_combout\ = ( \U101|U202|limit_down:lim_cnt[3]~q\ & ( \U101|U202|limit_down:lim_cnt[2]~q\ & ( ((!\U101|U202|limit_down:lim_cnt[1]~q\) # ((!\U101|U202|limit_down:lim_cnt[0]~q\) # (\U101|U202|LessThan1~1_combout\))) # 
-- (\U101|U202|limit_down:lim_cnt[0]~0_combout\) ) ) ) # ( !\U101|U202|limit_down:lim_cnt[3]~q\ & ( \U101|U202|limit_down:lim_cnt[2]~q\ & ( (!\U101|U202|limit_down:lim_cnt[0]~0_combout\ & (\U101|U202|limit_down:lim_cnt[1]~q\ & 
-- (\U101|U202|limit_down:lim_cnt[0]~q\ & !\U101|U202|LessThan1~1_combout\))) ) ) ) # ( \U101|U202|limit_down:lim_cnt[3]~q\ & ( !\U101|U202|limit_down:lim_cnt[2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\,
	datac => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	datad => \U101|U202|ALT_INV_LessThan1~1_combout\,
	datae => \U101|U202|ALT_INV_limit_down:lim_cnt[3]~q\,
	dataf => \U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\,
	combout => \U101|U202|limit_down:lim_cnt[3]~0_combout\);

-- Location: FF_X59_Y128_N25
\U101|U202|limit_down:lim_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U202|limit_down:lim_cnt[3]~0_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|limit_down:lim_cnt[3]~q\);

-- Location: LABCELL_X59_Y128_N3
\U101|U202|LessThan1~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|LessThan1~0_combout\ = ( \U101|U202|limit_down:lim_cnt[2]~q\ & ( (\U101|U202|limit_down:lim_cnt[0]~q\ & (\U101|U202|limit_down:lim_cnt[1]~q\ & !\U101|U202|limit_down:lim_cnt[3]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	datac => \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\,
	datad => \U101|U202|ALT_INV_limit_down:lim_cnt[3]~q\,
	dataf => \U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\,
	combout => \U101|U202|LessThan1~0_combout\);

-- Location: LABCELL_X59_Y128_N15
\U101|U202|limit_down:lim_cnt[4]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[4]~0_combout\ = ( \U101|U202|LessThan1~0_combout\ & ( !\U101|U202|limit_down:lim_cnt[4]~q\ $ (((\U101|U202|LessThan1~1_combout\) # (\U101|U202|limit_down:lim_cnt[0]~0_combout\))) ) ) # ( !\U101|U202|LessThan1~0_combout\ & ( 
-- \U101|U202|limit_down:lim_cnt[4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datac => \U101|U202|ALT_INV_LessThan1~1_combout\,
	datad => \U101|U202|ALT_INV_limit_down:lim_cnt[4]~q\,
	dataf => \U101|U202|ALT_INV_LessThan1~0_combout\,
	combout => \U101|U202|limit_down:lim_cnt[4]~0_combout\);

-- Location: FF_X59_Y128_N17
\U101|U202|limit_down:lim_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U202|limit_down:lim_cnt[4]~0_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|limit_down:lim_cnt[4]~q\);

-- Location: LABCELL_X59_Y128_N9
\U101|U202|limit_down:lim_cnt[5]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|limit_down:lim_cnt[5]~0_combout\ = ( \U101|U202|limit_down:lim_cnt[5]~q\ & ( \U101|U202|LessThan1~0_combout\ & ( ((\U101|U202|LessThan1~1_combout\) # (\U101|U202|limit_down:lim_cnt[0]~0_combout\)) # (\U101|U202|limit_down:lim_cnt[4]~q\) ) ) ) # 
-- ( !\U101|U202|limit_down:lim_cnt[5]~q\ & ( \U101|U202|LessThan1~0_combout\ & ( (!\U101|U202|limit_down:lim_cnt[4]~q\ & (!\U101|U202|limit_down:lim_cnt[0]~0_combout\ & !\U101|U202|LessThan1~1_combout\)) ) ) ) # ( \U101|U202|limit_down:lim_cnt[5]~q\ & ( 
-- !\U101|U202|LessThan1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000100000000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_limit_down:lim_cnt[4]~q\,
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datac => \U101|U202|ALT_INV_LessThan1~1_combout\,
	datae => \U101|U202|ALT_INV_limit_down:lim_cnt[5]~q\,
	dataf => \U101|U202|ALT_INV_LessThan1~0_combout\,
	combout => \U101|U202|limit_down:lim_cnt[5]~0_combout\);

-- Location: FF_X59_Y128_N11
\U101|U202|limit_down:lim_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U202|limit_down:lim_cnt[5]~0_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|limit_down:lim_cnt[5]~q\);

-- Location: LABCELL_X59_Y128_N54
\U101|U202|LessThan1~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|LessThan1~1_combout\ = ( \U101|U202|limit_down:lim_cnt[3]~q\ & ( \U101|U202|limit_down:lim_cnt[0]~q\ & ( \U101|U202|limit_down:lim_cnt[5]~q\ ) ) ) # ( !\U101|U202|limit_down:lim_cnt[3]~q\ & ( \U101|U202|limit_down:lim_cnt[0]~q\ & ( 
-- ((!\U101|U202|limit_down:lim_cnt[4]~q\ & (\U101|U202|limit_down:lim_cnt[2]~q\ & \U101|U202|limit_down:lim_cnt[1]~q\))) # (\U101|U202|limit_down:lim_cnt[5]~q\) ) ) ) # ( \U101|U202|limit_down:lim_cnt[3]~q\ & ( !\U101|U202|limit_down:lim_cnt[0]~q\ & ( 
-- \U101|U202|limit_down:lim_cnt[5]~q\ ) ) ) # ( !\U101|U202|limit_down:lim_cnt[3]~q\ & ( !\U101|U202|limit_down:lim_cnt[0]~q\ & ( \U101|U202|limit_down:lim_cnt[5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001110110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_limit_down:lim_cnt[4]~q\,
	datab => \U101|U202|ALT_INV_limit_down:lim_cnt[5]~q\,
	datac => \U101|U202|ALT_INV_limit_down:lim_cnt[2]~q\,
	datad => \U101|U202|ALT_INV_limit_down:lim_cnt[1]~q\,
	datae => \U101|U202|ALT_INV_limit_down:lim_cnt[3]~q\,
	dataf => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~q\,
	combout => \U101|U202|LessThan1~1_combout\);

-- Location: LABCELL_X59_Y128_N45
\U101|U202|LIM~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|LIM~1_combout\ = ( \U101|U202|limit_down:lim_cnt[0]~0_combout\ & ( \U101|U202|LessThan1~1_combout\ & ( \clr~input_o\ ) ) ) # ( !\U101|U202|limit_down:lim_cnt[0]~0_combout\ & ( \U101|U202|LessThan1~1_combout\ & ( (\clr~input_o\ & 
-- \U101|U202|LIM~1_combout\) ) ) ) # ( !\U101|U202|limit_down:lim_cnt[0]~0_combout\ & ( !\U101|U202|LessThan1~1_combout\ & ( (\clr~input_o\ & \U101|U202|LIM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clr~input_o\,
	datac => \U101|U202|ALT_INV_LIM~1_combout\,
	datae => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	dataf => \U101|U202|ALT_INV_LessThan1~1_combout\,
	combout => \U101|U202|LIM~1_combout\);

-- Location: MLABCELL_X60_Y128_N15
\U101|U202|LIM~3\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|LIM~3_combout\ = ( \U101|U202|LessThan1~1_combout\ & ( !\U101|U202|LIM~1_combout\ ) ) # ( !\U101|U202|LessThan1~1_combout\ & ( \U101|U202|LIM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|ALT_INV_LIM~1_combout\,
	dataf => \U101|U202|ALT_INV_LessThan1~1_combout\,
	combout => \U101|U202|LIM~3_combout\);

-- Location: MLABCELL_X60_Y128_N6
\U101|U202|LIM~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|LIM~0_combout\ = ( \U101|U202|limit_down:lim_cnt[0]~0_combout\ ) # ( !\U101|U202|limit_down:lim_cnt[0]~0_combout\ & ( !\clr~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clr~input_o\,
	dataf => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	combout => \U101|U202|LIM~0_combout\);

-- Location: FF_X60_Y128_N7
\U101|U202|LIM~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \U101|U202|LIM~3_combout\,
	clrn => \U101|U202|ALT_INV_LIM~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|LIM~_emulated_q\);

-- Location: MLABCELL_X60_Y128_N12
\U101|U202|LIM~2\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|LIM~2_combout\ = ( \U101|U202|LessThan1~1_combout\ & ( (\clr~input_o\ & ((!\U101|U202|LIM~1_combout\ $ (!\U101|U202|LIM~_emulated_q\)) # (\U101|U202|limit_down:lim_cnt[0]~0_combout\))) ) ) # ( !\U101|U202|LessThan1~1_combout\ & ( (\clr~input_o\ 
-- & (!\U101|U202|limit_down:lim_cnt[0]~0_combout\ & (!\U101|U202|LIM~1_combout\ $ (!\U101|U202|LIM~_emulated_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000010101010001010001010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clr~input_o\,
	datab => \U101|U202|ALT_INV_LIM~1_combout\,
	datac => \U101|U202|ALT_INV_limit_down:lim_cnt[0]~0_combout\,
	datad => \U101|U202|ALT_INV_LIM~_emulated_q\,
	dataf => \U101|U202|ALT_INV_LessThan1~1_combout\,
	combout => \U101|U202|LIM~2_combout\);

-- Location: MLABCELL_X62_Y128_N12
\U101|U201|Mux2~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Mux2~1_combout\ = ( \U101|U202|TIM~q\ & ( \DET~input_o\ & ( (!\U101|U201|MDS\(2) & ((!\STP~input_o\) # ((!\STR~input_o\) # (\U101|U201|MDS\(1))))) ) ) ) # ( !\U101|U202|TIM~q\ & ( \DET~input_o\ & ( (!\U101|U201|MDS\(2) & ((!\STP~input_o\) # 
-- ((!\STR~input_o\) # (\U101|U201|MDS\(1))))) ) ) ) # ( \U101|U202|TIM~q\ & ( !\DET~input_o\ & ( (!\U101|U201|MDS\(2) & ((!\STP~input_o\) # ((!\STR~input_o\) # (\U101|U201|MDS\(1))))) ) ) ) # ( !\U101|U202|TIM~q\ & ( !\DET~input_o\ & ( (!\U101|U201|MDS\(2) 
-- & ((!\STP~input_o\) # ((!\STR~input_o\ & !\U101|U201|MDS\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111011110000000011101111000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STP~input_o\,
	datab => \ALT_INV_STR~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(1),
	datad => \U101|U201|ALT_INV_MDS\(2),
	datae => \U101|U202|ALT_INV_TIM~q\,
	dataf => \ALT_INV_DET~input_o\,
	combout => \U101|U201|Mux2~1_combout\);

-- Location: LABCELL_X61_Y128_N54
\U101|U201|MDS_machine~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS_machine~0_combout\ = ( !\U101|U202|TIM~q\ & ( \STP~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STP~input_o\,
	dataf => \U101|U202|ALT_INV_TIM~q\,
	combout => \U101|U201|MDS_machine~0_combout\);

-- Location: MLABCELL_X62_Y128_N24
\U101|U201|Mux2~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Mux2~0_combout\ = ( \U101|U201|MDS\(1) & ( \U101|U201|MDS_machine~0_combout\ & ( (\RST~input_o\ & \U101|U201|MDS\(0)) ) ) ) # ( !\U101|U201|MDS\(1) & ( \U101|U201|MDS_machine~0_combout\ & ( (\STR~input_o\ & (\RST~input_o\ & \U101|U201|MDS\(0))) 
-- ) ) ) # ( \U101|U201|MDS\(1) & ( !\U101|U201|MDS_machine~0_combout\ & ( (\RST~input_o\ & (\U101|U201|MDS\(2) & \U101|U201|MDS\(0))) ) ) ) # ( !\U101|U201|MDS\(1) & ( !\U101|U201|MDS_machine~0_combout\ & ( (\STR~input_o\ & (\RST~input_o\ & 
-- \U101|U201|MDS\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000000001100000000000100010000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STR~input_o\,
	datab => \ALT_INV_RST~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U201|ALT_INV_MDS\(0),
	datae => \U101|U201|ALT_INV_MDS\(1),
	dataf => \U101|U201|ALT_INV_MDS_machine~0_combout\,
	combout => \U101|U201|Mux2~0_combout\);

-- Location: LABCELL_X61_Y128_N6
\U101|U201|Mux2~2\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Mux2~2_combout\ = ( \U101|U201|MDS\(0) & ( \U101|U201|Mux2~0_combout\ ) ) # ( !\U101|U201|MDS\(0) & ( \U101|U201|Mux2~0_combout\ ) ) # ( !\U101|U201|MDS\(0) & ( !\U101|U201|Mux2~0_combout\ & ( ((\U101|U201|Equal6~0_combout\ & 
-- ((!\U101|U201|MDS_machine~0_combout\) # (\U101|U202|LIM~2_combout\)))) # (\U101|U201|Mux2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100011111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_Equal6~0_combout\,
	datab => \U101|U202|ALT_INV_LIM~2_combout\,
	datac => \U101|U201|ALT_INV_Mux2~1_combout\,
	datad => \U101|U201|ALT_INV_MDS_machine~0_combout\,
	datae => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U201|ALT_INV_Mux2~0_combout\,
	combout => \U101|U201|Mux2~2_combout\);

-- Location: FF_X61_Y128_N8
\U101|U201|MDS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U201|Mux2~2_combout\,
	sclr => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U201|MDS\(0));

-- Location: MLABCELL_X60_Y128_N33
\U101|U201|MDS[1]~4\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~4_combout\ = ( \U101|U201|MDS\(0) & ( (\RST~input_o\ & ((!\STR~input_o\) # (!\U101|U201|MDS\(2)))) ) ) # ( !\U101|U201|MDS\(0) & ( (!\U101|U201|MDS\(2) & (((!\STR~input_o\ & !\RST~input_o\)) # (\STP~input_o\))) # (\U101|U201|MDS\(2) & 
-- (((!\STR~input_o\ & \RST~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001011100110100000101110000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STP~input_o\,
	datab => \ALT_INV_STR~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(2),
	datad => \ALT_INV_RST~input_o\,
	dataf => \U101|U201|ALT_INV_MDS\(0),
	combout => \U101|U201|MDS[1]~4_combout\);

-- Location: MLABCELL_X60_Y128_N3
\U101|U201|MDS[1]~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~1_combout\ = ( !\U101|U201|MDS\(2) & ( \clr~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clr~input_o\,
	dataf => \U101|U201|ALT_INV_MDS\(2),
	combout => \U101|U201|MDS[1]~1_combout\);

-- Location: MLABCELL_X60_Y128_N36
\U101|U201|MDS[1]~2\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~2_combout\ = ( \U101|U201|MDS\(2) & ( (\RST~input_o\ & \clr~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RST~input_o\,
	datad => \ALT_INV_clr~input_o\,
	dataf => \U101|U201|ALT_INV_MDS\(2),
	combout => \U101|U201|MDS[1]~2_combout\);

-- Location: MLABCELL_X60_Y128_N18
\U101|U201|MDS[1]~3\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~3_combout\ = ( \U101|U202|TIM~q\ & ( \U101|U202|LIM~2_combout\ & ( (\U101|U201|MDS[1]~2_combout\ & (!\U101|U201|MDS\(0) $ (\U101|U201|MDS\(1)))) ) ) ) # ( !\U101|U202|TIM~q\ & ( \U101|U202|LIM~2_combout\ & ( (\U101|U201|MDS[1]~2_combout\ 
-- & (!\U101|U201|MDS\(0) $ (\U101|U201|MDS\(1)))) ) ) ) # ( \U101|U202|TIM~q\ & ( !\U101|U202|LIM~2_combout\ & ( (\U101|U201|MDS[1]~2_combout\ & (!\U101|U201|MDS\(0) $ (\U101|U201|MDS\(1)))) ) ) ) # ( !\U101|U202|TIM~q\ & ( !\U101|U202|LIM~2_combout\ & ( 
-- (\U101|U201|MDS[1]~2_combout\ & ((!\U101|U201|MDS\(0) & ((!\U101|U201|MDS\(1)) # (\STP~input_o\))) # (\U101|U201|MDS\(0) & (\U101|U201|MDS\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001011000010010000100100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(0),
	datab => \U101|U201|ALT_INV_MDS\(1),
	datac => \U101|U201|ALT_INV_MDS[1]~2_combout\,
	datad => \ALT_INV_STP~input_o\,
	datae => \U101|U202|ALT_INV_TIM~q\,
	dataf => \U101|U202|ALT_INV_LIM~2_combout\,
	combout => \U101|U201|MDS[1]~3_combout\);

-- Location: LABCELL_X61_Y128_N3
\U101|U201|MDS[1]~11\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~11_combout\ = ( \U101|U201|MDS\(1) & ( (\RST~input_o\ & ((!\DET~input_o\) # (\U101|U201|MDS\(0)))) ) ) # ( !\U101|U201|MDS\(1) & ( (\STR~input_o\ & ((!\U101|U201|MDS\(0)) # (\RST~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STR~input_o\,
	datab => \ALT_INV_DET~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(0),
	datad => \ALT_INV_RST~input_o\,
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U201|MDS[1]~11_combout\);

-- Location: MLABCELL_X60_Y128_N42
\U101|U201|MDS[1]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~0_combout\ = ( \U101|U202|TIM~q\ & ( \U101|U201|MDS\(0) & ( (\U101|U201|MDS[1]~11_combout\ & !\U101|U201|MDS\(1)) ) ) ) # ( !\U101|U202|TIM~q\ & ( \U101|U201|MDS\(0) & ( (\U101|U201|MDS[1]~11_combout\ & (((!\U101|U201|MDS\(1)) # 
-- (\U101|U201|MDS\(2))) # (\STP~input_o\))) ) ) ) # ( \U101|U202|TIM~q\ & ( !\U101|U201|MDS\(0) & ( (\U101|U201|MDS[1]~11_combout\ & (\STP~input_o\ & !\U101|U201|MDS\(1))) ) ) ) # ( !\U101|U202|TIM~q\ & ( !\U101|U201|MDS\(0) & ( 
-- (\U101|U201|MDS[1]~11_combout\ & \STP~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100000001000001010001010101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS[1]~11_combout\,
	datab => \ALT_INV_STP~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(1),
	datad => \U101|U201|ALT_INV_MDS\(2),
	datae => \U101|U202|ALT_INV_TIM~q\,
	dataf => \U101|U201|ALT_INV_MDS\(0),
	combout => \U101|U201|MDS[1]~0_combout\);

-- Location: MLABCELL_X60_Y128_N30
\U101|U201|MDS[1]~5\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~5_combout\ = ( \STP~input_o\ & ( !\DET~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DET~input_o\,
	dataf => \ALT_INV_STP~input_o\,
	combout => \U101|U201|MDS[1]~5_combout\);

-- Location: MLABCELL_X60_Y128_N48
\U101|U201|MDS[2]~6\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[2]~6_combout\ = ( \U101|U201|MDS[1]~5_combout\ & ( \U101|U201|MDS\(0) & ( (\clr~input_o\ & ((!\U101|U201|MDS\(1)) # ((\U101|U201|MDS\(2)) # (\U101|U202|TIM~q\)))) ) ) ) # ( !\U101|U201|MDS[1]~5_combout\ & ( \U101|U201|MDS\(0) & ( 
-- (\clr~input_o\ & ((!\U101|U201|MDS\(1)) # ((\U101|U201|MDS\(2)) # (\U101|U202|TIM~q\)))) ) ) ) # ( \U101|U201|MDS[1]~5_combout\ & ( !\U101|U201|MDS\(0) & ( (\clr~input_o\ & ((!\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(2)))) # (\U101|U201|MDS\(1) & 
-- ((\U101|U201|MDS\(2)) # (\U101|U202|TIM~q\))))) ) ) ) # ( !\U101|U201|MDS[1]~5_combout\ & ( !\U101|U201|MDS\(0) & ( (\clr~input_o\ & ((!\U101|U201|MDS\(2)) # (\U101|U201|MDS\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001000110001000100100011001100110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(1),
	datab => \ALT_INV_clr~input_o\,
	datac => \U101|U202|ALT_INV_TIM~q\,
	datad => \U101|U201|ALT_INV_MDS\(2),
	datae => \U101|U201|ALT_INV_MDS[1]~5_combout\,
	dataf => \U101|U201|ALT_INV_MDS\(0),
	combout => \U101|U201|MDS[2]~6_combout\);

-- Location: MLABCELL_X60_Y128_N39
\U101|U201|MDS[2]~7\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[2]~7_combout\ = ( \U101|U202|LIM~2_combout\ & ( (\U101|U201|MDS[2]~6_combout\ & ((!\U101|U201|MDS\(0)) # (!\U101|U201|Equal6~0_combout\))) ) ) # ( !\U101|U202|LIM~2_combout\ & ( (\U101|U201|MDS[2]~6_combout\ & 
-- ((!\U101|U201|Equal6~0_combout\) # ((!\U101|U201|MDS\(0) & !\U101|U201|MDS_machine~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001100000011100000110000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(0),
	datab => \U101|U201|ALT_INV_Equal6~0_combout\,
	datac => \U101|U201|ALT_INV_MDS[2]~6_combout\,
	datad => \U101|U201|ALT_INV_MDS_machine~0_combout\,
	dataf => \U101|U202|ALT_INV_LIM~2_combout\,
	combout => \U101|U201|MDS[2]~7_combout\);

-- Location: MLABCELL_X60_Y128_N54
\U101|U201|MDS[1]~8\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[1]~8_combout\ = ( \U101|U201|MDS\(1) & ( \U101|U201|MDS[2]~7_combout\ & ( ((\U101|U201|MDS[1]~1_combout\ & \U101|U201|MDS[1]~0_combout\)) # (\U101|U201|MDS[1]~3_combout\) ) ) ) # ( !\U101|U201|MDS\(1) & ( \U101|U201|MDS[2]~7_combout\ & ( 
-- (\U101|U201|MDS[1]~4_combout\ & (!\U101|U201|MDS[1]~3_combout\ & ((!\U101|U201|MDS[1]~1_combout\) # (!\U101|U201|MDS[1]~0_combout\)))) ) ) ) # ( \U101|U201|MDS\(1) & ( !\U101|U201|MDS[2]~7_combout\ & ( ((\U101|U201|MDS[1]~1_combout\ & 
-- \U101|U201|MDS[1]~0_combout\)) # (\U101|U201|MDS[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110011111101010000010000000000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS[1]~4_combout\,
	datab => \U101|U201|ALT_INV_MDS[1]~1_combout\,
	datac => \U101|U201|ALT_INV_MDS[1]~3_combout\,
	datad => \U101|U201|ALT_INV_MDS[1]~0_combout\,
	datae => \U101|U201|ALT_INV_MDS\(1),
	dataf => \U101|U201|ALT_INV_MDS[2]~7_combout\,
	combout => \U101|U201|MDS[1]~8_combout\);

-- Location: FF_X60_Y128_N55
\U101|U201|MDS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U201|MDS[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U201|MDS\(1));

-- Location: LABCELL_X59_Y128_N39
\U101|U201|MDS~9\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS~9_combout\ = ( \U101|U201|MDS\(0) & ( \U101|U201|MDS\(2) & ( (!\U101|U201|MDS\(1) & !\RST~input_o\) ) ) ) # ( !\U101|U201|MDS\(0) & ( \U101|U201|MDS\(2) & ( (!\U101|U201|MDS\(1) & !\RST~input_o\) ) ) ) # ( \U101|U201|MDS\(0) & ( 
-- !\U101|U201|MDS\(2) & ( !\U101|U201|MDS\(1) ) ) ) # ( !\U101|U201|MDS\(0) & ( !\U101|U201|MDS\(2) & ( (((\STP~input_o\ & \STR~input_o\)) # (\RST~input_o\)) # (\U101|U201|MDS\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STP~input_o\,
	datab => \ALT_INV_STR~input_o\,
	datac => \U101|U201|ALT_INV_MDS\(1),
	datad => \ALT_INV_RST~input_o\,
	datae => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U201|ALT_INV_MDS\(2),
	combout => \U101|U201|MDS~9_combout\);

-- Location: MLABCELL_X60_Y128_N24
\U101|U201|MDS[2]~10\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|MDS[2]~10_combout\ = ( \U101|U201|MDS\(2) & ( \U101|U201|MDS[2]~7_combout\ & ( (!\U101|U201|MDS~9_combout\) # (\U101|U201|MDS[1]~3_combout\) ) ) ) # ( !\U101|U201|MDS\(2) & ( \U101|U201|MDS[2]~7_combout\ & ( (!\U101|U201|MDS~9_combout\ & 
-- (!\U101|U201|MDS[1]~3_combout\ & ((!\clr~input_o\) # (!\U101|U201|MDS[1]~0_combout\)))) ) ) ) # ( \U101|U201|MDS\(2) & ( !\U101|U201|MDS[2]~7_combout\ & ( \U101|U201|MDS[1]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111000000100000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clr~input_o\,
	datab => \U101|U201|ALT_INV_MDS~9_combout\,
	datac => \U101|U201|ALT_INV_MDS[1]~3_combout\,
	datad => \U101|U201|ALT_INV_MDS[1]~0_combout\,
	datae => \U101|U201|ALT_INV_MDS\(2),
	dataf => \U101|U201|ALT_INV_MDS[2]~7_combout\,
	combout => \U101|U201|MDS[2]~10_combout\);

-- Location: FF_X60_Y128_N25
\U101|U201|MDS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U201|MDS[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U201|MDS\(2));

-- Location: MLABCELL_X62_Y128_N30
\U101|U202|Add0~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~1_sumout\ = SUM(( VCC ) + ( \U101|U202|time_down:tim_cnt[0]~q\ ) + ( !VCC ))
-- \U101|U202|Add0~2\ = CARRY(( VCC ) + ( \U101|U202|time_down:tim_cnt[0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[0]~q\,
	cin => GND,
	sumout => \U101|U202|Add0~1_sumout\,
	cout => \U101|U202|Add0~2\);

-- Location: LABCELL_X61_Y128_N39
\U101|U202|tim_cnt~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~0_combout\ = ( \U101|U202|Add0~1_sumout\ & ( (\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(0)) # (!\U101|U201|MDS\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(0),
	datac => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U201|ALT_INV_MDS\(1),
	dataf => \U101|U202|ALT_INV_Add0~1_sumout\,
	combout => \U101|U202|tim_cnt~0_combout\);

-- Location: LABCELL_X61_Y128_N36
\U101|U202|time_down~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|time_down~0_combout\ = ( \clr~input_o\ & ( \DET~input_o\ ) ) # ( !\clr~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DET~input_o\,
	dataf => \ALT_INV_clr~input_o\,
	combout => \U101|U202|time_down~0_combout\);

-- Location: FF_X61_Y128_N40
\U101|U202|time_down:tim_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~0_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[0]~q\);

-- Location: MLABCELL_X62_Y128_N33
\U101|U202|Add0~5\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~5_sumout\ = SUM(( VCC ) + ( !\U101|U202|time_down:tim_cnt[1]~q\ ) + ( \U101|U202|Add0~2\ ))
-- \U101|U202|Add0~6\ = CARRY(( VCC ) + ( !\U101|U202|time_down:tim_cnt[1]~q\ ) + ( \U101|U202|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[1]~q\,
	cin => \U101|U202|Add0~2\,
	sumout => \U101|U202|Add0~5_sumout\,
	cout => \U101|U202|Add0~6\);

-- Location: LABCELL_X61_Y128_N33
\U101|U202|tim_cnt~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~1_combout\ = ( !\U101|U202|Add0~5_sumout\ & ( (\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(2)) # (!\U101|U201|MDS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(1),
	datab => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U202|ALT_INV_Add0~5_sumout\,
	combout => \U101|U202|tim_cnt~1_combout\);

-- Location: FF_X61_Y128_N34
\U101|U202|time_down:tim_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~1_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[1]~q\);

-- Location: MLABCELL_X62_Y128_N36
\U101|U202|Add0~9\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~9_sumout\ = SUM(( VCC ) + ( \U101|U202|time_down:tim_cnt[2]~q\ ) + ( \U101|U202|Add0~6\ ))
-- \U101|U202|Add0~10\ = CARRY(( VCC ) + ( \U101|U202|time_down:tim_cnt[2]~q\ ) + ( \U101|U202|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[2]~q\,
	cin => \U101|U202|Add0~6\,
	sumout => \U101|U202|Add0~9_sumout\,
	cout => \U101|U202|Add0~10\);

-- Location: LABCELL_X61_Y128_N21
\U101|U202|tim_cnt~2\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~2_combout\ = ( \U101|U201|MDS\(0) & ( (\U101|U201|MDS\(1) & (!\U101|U201|MDS\(2) & \U101|U202|Add0~9_sumout\)) ) ) # ( !\U101|U201|MDS\(0) & ( (\U101|U201|MDS\(1) & \U101|U202|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(1),
	datac => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U202|ALT_INV_Add0~9_sumout\,
	dataf => \U101|U201|ALT_INV_MDS\(0),
	combout => \U101|U202|tim_cnt~2_combout\);

-- Location: FF_X61_Y128_N22
\U101|U202|time_down:tim_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~2_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[2]~q\);

-- Location: MLABCELL_X62_Y128_N39
\U101|U202|Add0~13\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~13_sumout\ = SUM(( !\U101|U202|time_down:tim_cnt[3]~q\ ) + ( VCC ) + ( \U101|U202|Add0~10\ ))
-- \U101|U202|Add0~14\ = CARRY(( !\U101|U202|time_down:tim_cnt[3]~q\ ) + ( VCC ) + ( \U101|U202|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U101|U202|ALT_INV_time_down:tim_cnt[3]~q\,
	cin => \U101|U202|Add0~10\,
	sumout => \U101|U202|Add0~13_sumout\,
	cout => \U101|U202|Add0~14\);

-- Location: LABCELL_X61_Y128_N18
\U101|U202|tim_cnt~3\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~3_combout\ = ( !\U101|U202|Add0~13_sumout\ & ( (\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(0)) # (!\U101|U201|MDS\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(1),
	datac => \U101|U201|ALT_INV_MDS\(0),
	datad => \U101|U201|ALT_INV_MDS\(2),
	dataf => \U101|U202|ALT_INV_Add0~13_sumout\,
	combout => \U101|U202|tim_cnt~3_combout\);

-- Location: FF_X61_Y128_N19
\U101|U202|time_down:tim_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~3_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[3]~q\);

-- Location: MLABCELL_X62_Y128_N42
\U101|U202|Add0~17\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~17_sumout\ = SUM(( !\U101|U202|time_down:tim_cnt[4]~q\ ) + ( VCC ) + ( \U101|U202|Add0~14\ ))
-- \U101|U202|Add0~18\ = CARRY(( !\U101|U202|time_down:tim_cnt[4]~q\ ) + ( VCC ) + ( \U101|U202|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U101|U202|ALT_INV_time_down:tim_cnt[4]~q\,
	cin => \U101|U202|Add0~14\,
	sumout => \U101|U202|Add0~17_sumout\,
	cout => \U101|U202|Add0~18\);

-- Location: LABCELL_X61_Y128_N15
\U101|U202|tim_cnt~4\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~4_combout\ = ( !\U101|U202|Add0~17_sumout\ & ( (\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(2)) # (!\U101|U201|MDS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(1),
	datab => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U202|ALT_INV_Add0~17_sumout\,
	combout => \U101|U202|tim_cnt~4_combout\);

-- Location: FF_X61_Y128_N16
\U101|U202|time_down:tim_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~4_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[4]~q\);

-- Location: MLABCELL_X62_Y128_N45
\U101|U202|Add0~21\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~21_sumout\ = SUM(( \U101|U202|time_down:tim_cnt[5]~q\ ) + ( VCC ) + ( \U101|U202|Add0~18\ ))
-- \U101|U202|Add0~22\ = CARRY(( \U101|U202|time_down:tim_cnt[5]~q\ ) + ( VCC ) + ( \U101|U202|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U101|U202|ALT_INV_time_down:tim_cnt[5]~q\,
	cin => \U101|U202|Add0~18\,
	sumout => \U101|U202|Add0~21_sumout\,
	cout => \U101|U202|Add0~22\);

-- Location: LABCELL_X61_Y128_N57
\U101|U202|tim_cnt~5\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~5_combout\ = ( \U101|U202|Add0~21_sumout\ & ( (\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(2)) # (!\U101|U201|MDS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(1),
	datac => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U202|ALT_INV_Add0~21_sumout\,
	combout => \U101|U202|tim_cnt~5_combout\);

-- Location: FF_X61_Y128_N58
\U101|U202|time_down:tim_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~5_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[5]~q\);

-- Location: MLABCELL_X62_Y128_N48
\U101|U202|Add0~25\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~25_sumout\ = SUM(( !\U101|U202|time_down:tim_cnt[6]~q\ ) + ( VCC ) + ( \U101|U202|Add0~22\ ))
-- \U101|U202|Add0~26\ = CARRY(( !\U101|U202|time_down:tim_cnt[6]~q\ ) + ( VCC ) + ( \U101|U202|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U101|U202|ALT_INV_time_down:tim_cnt[6]~q\,
	cin => \U101|U202|Add0~22\,
	sumout => \U101|U202|Add0~25_sumout\,
	cout => \U101|U202|Add0~26\);

-- Location: LABCELL_X61_Y128_N42
\U101|U202|tim_cnt~6\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~6_combout\ = ( \U101|U201|MDS\(1) & ( (!\U101|U202|Add0~25_sumout\ & ((!\U101|U201|MDS\(2)) # (!\U101|U201|MDS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U201|ALT_INV_MDS\(2),
	datac => \U101|U201|ALT_INV_MDS\(0),
	datad => \U101|U202|ALT_INV_Add0~25_sumout\,
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U202|tim_cnt~6_combout\);

-- Location: FF_X61_Y128_N43
\U101|U202|time_down:tim_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~6_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[6]~q\);

-- Location: MLABCELL_X62_Y128_N51
\U101|U202|Add0~29\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~29_sumout\ = SUM(( VCC ) + ( \U101|U202|time_down:tim_cnt[7]~q\ ) + ( \U101|U202|Add0~26\ ))
-- \U101|U202|Add0~30\ = CARRY(( VCC ) + ( \U101|U202|time_down:tim_cnt[7]~q\ ) + ( \U101|U202|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[7]~q\,
	cin => \U101|U202|Add0~26\,
	sumout => \U101|U202|Add0~29_sumout\,
	cout => \U101|U202|Add0~30\);

-- Location: LABCELL_X61_Y128_N30
\U101|U202|tim_cnt~7\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~7_combout\ = ( \U101|U201|MDS\(1) & ( (\U101|U202|Add0~29_sumout\ & ((!\U101|U201|MDS\(2)) # (!\U101|U201|MDS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U201|ALT_INV_MDS\(2),
	datac => \U101|U202|ALT_INV_Add0~29_sumout\,
	datad => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U202|tim_cnt~7_combout\);

-- Location: FF_X61_Y128_N31
\U101|U202|time_down:tim_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~7_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[7]~q\);

-- Location: MLABCELL_X62_Y128_N54
\U101|U202|Add0~33\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~33_sumout\ = SUM(( VCC ) + ( \U101|U202|time_down:tim_cnt[8]~q\ ) + ( \U101|U202|Add0~30\ ))
-- \U101|U202|Add0~34\ = CARRY(( VCC ) + ( \U101|U202|time_down:tim_cnt[8]~q\ ) + ( \U101|U202|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[8]~q\,
	cin => \U101|U202|Add0~30\,
	sumout => \U101|U202|Add0~33_sumout\,
	cout => \U101|U202|Add0~34\);

-- Location: LABCELL_X61_Y128_N45
\U101|U202|tim_cnt~8\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~8_combout\ = (\U101|U201|MDS\(1) & (\U101|U202|Add0~33_sumout\ & ((!\U101|U201|MDS\(0)) # (!\U101|U201|MDS\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001110000000000000111000000000000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U201|ALT_INV_MDS\(0),
	datab => \U101|U201|ALT_INV_MDS\(2),
	datac => \U101|U201|ALT_INV_MDS\(1),
	datad => \U101|U202|ALT_INV_Add0~33_sumout\,
	combout => \U101|U202|tim_cnt~8_combout\);

-- Location: FF_X61_Y128_N46
\U101|U202|time_down:tim_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~8_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[8]~q\);

-- Location: MLABCELL_X62_Y128_N57
\U101|U202|Add0~37\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|Add0~37_sumout\ = SUM(( \U101|U202|time_down:tim_cnt[9]~q\ ) + ( VCC ) + ( \U101|U202|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U101|U202|ALT_INV_time_down:tim_cnt[9]~q\,
	cin => \U101|U202|Add0~34\,
	sumout => \U101|U202|Add0~37_sumout\);

-- Location: LABCELL_X61_Y128_N12
\U101|U202|tim_cnt~9\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|tim_cnt~9_combout\ = ( \U101|U202|Add0~37_sumout\ & ( (\U101|U201|MDS\(1) & ((!\U101|U201|MDS\(2)) # (!\U101|U201|MDS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U201|ALT_INV_MDS\(2),
	datac => \U101|U201|ALT_INV_MDS\(1),
	datad => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U202|ALT_INV_Add0~37_sumout\,
	combout => \U101|U202|tim_cnt~9_combout\);

-- Location: FF_X61_Y128_N13
\U101|U202|time_down:tim_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	d => \U101|U202|tim_cnt~9_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	ena => \U101|U202|ALT_INV_TIM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|time_down:tim_cnt[9]~q\);

-- Location: LABCELL_X61_Y128_N0
\U101|U202|TIM~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|TIM~1_combout\ = ( \U101|U202|time_down:tim_cnt[1]~q\ & ( (!\U101|U202|time_down:tim_cnt[0]~q\ & !\U101|U202|time_down:tim_cnt[2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U101|U202|ALT_INV_time_down:tim_cnt[0]~q\,
	datad => \U101|U202|ALT_INV_time_down:tim_cnt[2]~q\,
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[1]~q\,
	combout => \U101|U202|TIM~1_combout\);

-- Location: LABCELL_X61_Y128_N24
\U101|U202|TIM~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|TIM~0_combout\ = ( !\U101|U202|time_down:tim_cnt[5]~q\ & ( !\U101|U202|time_down:tim_cnt[7]~q\ & ( (\U101|U202|time_down:tim_cnt[6]~q\ & (\U101|U202|time_down:tim_cnt[3]~q\ & (!\U101|U202|time_down:tim_cnt[8]~q\ & 
-- \U101|U202|time_down:tim_cnt[4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_time_down:tim_cnt[6]~q\,
	datab => \U101|U202|ALT_INV_time_down:tim_cnt[3]~q\,
	datac => \U101|U202|ALT_INV_time_down:tim_cnt[8]~q\,
	datad => \U101|U202|ALT_INV_time_down:tim_cnt[4]~q\,
	datae => \U101|U202|ALT_INV_time_down:tim_cnt[5]~q\,
	dataf => \U101|U202|ALT_INV_time_down:tim_cnt[7]~q\,
	combout => \U101|U202|TIM~0_combout\);

-- Location: LABCELL_X61_Y128_N51
\U101|U202|TIM~2\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U202|TIM~2_combout\ = ( \U101|U201|MDS\(0) & ( \U101|U201|MDS\(1) & ( (!\U101|U201|MDS\(2) & (((\U101|U202|TIM~1_combout\ & \U101|U202|TIM~0_combout\)) # (\U101|U202|time_down:tim_cnt[9]~q\))) ) ) ) # ( !\U101|U201|MDS\(0) & ( \U101|U201|MDS\(1) & ( 
-- ((\U101|U202|TIM~1_combout\ & \U101|U202|TIM~0_combout\)) # (\U101|U202|time_down:tim_cnt[9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101011101110101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U101|U202|ALT_INV_time_down:tim_cnt[9]~q\,
	datab => \U101|U202|ALT_INV_TIM~1_combout\,
	datac => \U101|U201|ALT_INV_MDS\(2),
	datad => \U101|U202|ALT_INV_TIM~0_combout\,
	datae => \U101|U201|ALT_INV_MDS\(0),
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U202|TIM~2_combout\);

-- Location: FF_X61_Y128_N50
\U101|U202|TIM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_T~inputCLKENA0_outclk\,
	asdata => \U101|U202|TIM~2_combout\,
	clrn => \U101|U202|ALT_INV_time_down~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U202|TIM~q\);

-- Location: MLABCELL_X62_Y128_N18
\U101|U201|OUTPUT~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|OUTPUT~0_combout\ = ( \U101|U201|MDS\(1) & ( \U101|U201|MDS\(2) & ( (\U101|U201|MDS\(0)) # (\U101|U202|TIM~q\) ) ) ) # ( !\U101|U201|MDS\(1) & ( \U101|U201|MDS\(2) ) ) # ( \U101|U201|MDS\(1) & ( !\U101|U201|MDS\(2) & ( \U101|U202|TIM~q\ ) ) ) # 
-- ( !\U101|U201|MDS\(1) & ( !\U101|U201|MDS\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001111111111111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U101|U202|ALT_INV_TIM~q\,
	datad => \U101|U201|ALT_INV_MDS\(0),
	datae => \U101|U201|ALT_INV_MDS\(1),
	dataf => \U101|U201|ALT_INV_MDS\(2),
	combout => \U101|U201|OUTPUT~0_combout\);

-- Location: MLABCELL_X62_Y128_N3
\U101|U201|Y~0\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Y~0_combout\ = ( \clr~input_o\ & ( \U101|U201|MDS\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U101|U201|ALT_INV_MDS\(0),
	datae => \ALT_INV_clr~input_o\,
	combout => \U101|U201|Y~0_combout\);

-- Location: FF_X62_Y128_N4
\U101|U201|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U201|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U201|Y\(0));

-- Location: LABCELL_X59_Y128_N0
\U101|U201|Y~1\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Y~1_combout\ = ( \U101|U201|MDS\(1) & ( \clr~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clr~input_o\,
	dataf => \U101|U201|ALT_INV_MDS\(1),
	combout => \U101|U201|Y~1_combout\);

-- Location: FF_X59_Y128_N2
\U101|U201|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U201|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U201|Y\(1));

-- Location: LABCELL_X59_Y128_N33
\U101|U201|Y~2\ : stratixv_lcell_comb
-- Equation(s):
-- \U101|U201|Y~2_combout\ = ( \U101|U201|MDS\(2) & ( \clr~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clr~input_o\,
	dataf => \U101|U201|ALT_INV_MDS\(2),
	combout => \U101|U201|Y~2_combout\);

-- Location: FF_X59_Y128_N34
\U101|U201|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U101|U201|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U101|U201|Y\(2));

-- Location: LABCELL_X128_Y14_N3
\~QUARTUS_CREATED_GND~I\ : stratixv_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


