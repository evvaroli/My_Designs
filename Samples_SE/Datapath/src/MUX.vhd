-------------------------------------------------------------------------------
--
-- Title       : MUX
-- Design      : datapath
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : MUX.vhd
-- Generated   : Fri Sep 27 15:00:12 2013
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
--{entity {MUX} architecture {MUX}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX is
	generic(
		S : NATURAL := 15
		);
	port(
		D_0 : in STD_LOGIC_VECTOR(S downto 0);
		D_1 : in STD_LOGIC_VECTOR(S downto 0);
		D0_GT_D1 : in STD_LOGIC;
		D_OK : out STD_LOGIC_VECTOR(S downto 0)
		);
end MUX;

--}} End of automatically maintained section

architecture MUX of MUX is
begin
	
	-- enter your statements here --  
	D_OK <= D_0 when D0_GT_D1 = '1' else D_1;
	
	
end MUX;
