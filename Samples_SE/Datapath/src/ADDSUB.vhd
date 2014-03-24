-------------------------------------------------------------------------------
--
-- Title       : ADDSUB
-- Design      : datapath
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : ADDSUB.vhd
-- Generated   : Fri Sep 27 15:04:53 2013
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
--{entity {ADDSUB} architecture {ADDSUB}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ADDSUB is
	generic(
		S : NATURAL := 15
		);
	port(
		DATA_IN : in STD_LOGIC_VECTOR(S downto 0);
		ADD_SUB : in STD_LOGIC;
		DATA_OUT : in STD_LOGIC_VECTOR(S downto 0);
		Q : out STD_LOGIC_VECTOR(S downto 0)
		);
end ADDSUB;

--}} End of automatically maintained section

library IEEE;
use IEEE.STD_LOGIC_UNSIGNED.all;

architecture ADDSUB of ADDSUB is
begin
	
	-- enter your statements here --
	Q <= (DATA_IN + DATA_OUT) when ADD_SUB = '1' else (DATA_IN - DATA_OUT);
end ADDSUB;
