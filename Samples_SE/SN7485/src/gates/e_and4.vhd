-------------------------------------------------------------------------------
--
-- Title       : e_and4
-- Design      : SN7485
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : e_and4.vhd
-- Generated   : Tue Sep 24 15:25:55 2013
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
--{entity {e_and4} architecture {e_and4}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity e_and4 is
	port(
		in1 : in std_logic;
		in2 : in std_logic;
		in3 : in std_logic;
		in4 : in std_logic;
		out1 : out std_logic
		);
end e_and4;

--}} End of automatically maintained section

architecture e_and4 of e_and4 is
begin
	-- enter your statements here -- 
	and4:process (in1,in2,in3,in4)
	begin
		out1 <= in1 and in2 and in3 and in4;  
	end process;
	
end e_and4;
