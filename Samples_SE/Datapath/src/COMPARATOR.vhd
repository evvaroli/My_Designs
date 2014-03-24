-------------------------------------------------------------------------------
--
-- Title       : COMPARATOR
-- Design      : datapath
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : COMPARATOR.vhd
-- Generated   : Fri Sep 27 15:03:29 2013
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
--{entity {COMPARATOR} architecture {COMPARATOR}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMPARATOR is
	generic(
		S : NATURAL := 15
		);
	port(
		D_0 : in STD_LOGIC_VECTOR(S downto 0);
		D_1 : in STD_LOGIC_VECTOR(S downto 0);
		D0_GT_D1 : out STD_LOGIC
		);
end COMPARATOR;

--}} End of automatically maintained section

architecture COMPARATOR of COMPARATOR is
begin
	
	-- enter your statements here -- 
	D0_GT_D1 <= '1' when (D_0 >= D_1) else '0';
	
end COMPARATOR;
