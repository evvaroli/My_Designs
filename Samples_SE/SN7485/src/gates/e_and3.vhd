-------------------------------------------------------------------------------
--
-- Title       : e_and3
-- Design      : SN7485
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : e_and3.vhd
-- Generated   : Tue Sep 24 15:28:17 2013
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
--{entity {e_and3} architecture {e_and3}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity e_and3 is
	port(
		in1 : in std_logic;
		in2 : in std_logic;
		in3 : in std_logic;
		out1 : out std_logic
		);
end e_and3;

--}} End of automatically maintained section

architecture e_and3 of e_and3 is
begin
	-- enter your statements here --
	and3:process (in1,in2,in3)
	begin
		out1 <= in1 and in2 and in3;  
	end process;
	
end e_and3;
