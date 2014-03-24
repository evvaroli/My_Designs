-------------------------------------------------------------------------------
--
-- Title       : e_not1
-- Design      : SN7485
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : e_not1.vhd
-- Generated   : Tue Sep 24 15:26:23 2013
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
--{entity {e_not1} architecture {e_not1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity e_not1 is
	port(
		in1 : in std_logic;
		out1 : out std_logic
		);
end e_not1;

--}} End of automatically maintained section

architecture e_not1 of e_not1 is	
begin
	-- enter your statements here --
	not1:process (in1)
	begin
		out1 <= not in1;  
	end process;
	
end e_not1;
