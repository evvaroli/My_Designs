-------------------------------------------------------------------------------
--
-- Title       : e_nor2
-- Design      : SN7485
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : e_nor2.vhd
-- Generated   : Tue Sep 24 15:26:50 2013
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
--{entity {e_nor2} architecture {e_nor2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity e_nor2 is
	port(
		in1 : in std_logic;
		in2 : in std_logic;
		out1 : out std_logic
		);
end e_nor2;

--}} End of automatically maintained section

architecture e_nor2 of e_nor2 is
begin
	-- enter your statements here -- 
	nor2:process (in1,in2)
	begin
		out1 <= in1 nor in2;  
	end process;
	
end e_nor2;
