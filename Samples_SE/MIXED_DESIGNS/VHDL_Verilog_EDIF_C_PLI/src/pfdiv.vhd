-------------------------------------------------------------------------------
--
-- Title       : PFDIV
-- Design      : VHDL_Verilog_EDIF_C_PLI
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : PFDIV.vhd
-- Generated   : Wed Sep 25 15:21:34 2013
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {PFDIV} architecture {PFDIV}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PFDIV is
	port(
		CLKIN : in std_logic;
		N : in std_logic_vector(3 downto 0);
		RESET : in std_logic;
		CLKOUT : out std_logic
		);
end PFDIV;

--}} End of automatically maintained section

architecture PFDIV of PFDIV is
	
	signal CLKINn : std_logic;
	
	signal q0_int : std_logic;
	signal q1_int : std_logic;
	signal q2_int : std_logic;
	signal q3_int : std_logic;
	
	signal q0_intn : std_logic;
	signal q1_intn : std_logic;
	signal q2_intn : std_logic;
	signal q3_intn : std_logic;
	
	signal and_3 : std_logic;
	signal and_4 : std_logic;
	signal and_5 : std_logic;
	signal and_6 : std_logic;
	
	signal or_7 : std_logic;
	
	component cb4ce
		port (
			C : in STD_LOGIC;
			CLR : in STD_LOGIC;
			Q0 : out STD_LOGIC;
			Q1 : out STD_LOGIC;
			Q2 : out STD_LOGIC;
			Q3 : out STD_LOGIC
			);
	end component;
	
begin
	
	U2 : cb4ce
	port map(
		C => CLKINn,
		CLR => RESET,
		Q0 => q0_int,
		Q1 => q1_int,
		Q2 => q2_int,
		Q3 => q3_int
		); 
	
	U3 : and_3 <= q0_int and N(3);
	U4n :  q0_intn <= not q0_int;
	U5n :  q1_intn <= not q1_int;
	U6n :  q2_intn <= not q2_int;
	U5 : and_5 <= q1_intn and q0_intn and q2_int and N(1);
	U4 : and_4 <= q0_intn and q1_int and  N(2);
	U6 : and_6 <= q0_intn and q1_intn and q2_intn and q3_int and N(0); 	 
	U7 : or_7 <= and_6 or and_5 or and_4 or and_3; 
	U8 : CLKOUT  <=  or_7 and CLKIN;
	U1 : CLKINn <= not CLKIN;	 
	
	
end PFDIV;
