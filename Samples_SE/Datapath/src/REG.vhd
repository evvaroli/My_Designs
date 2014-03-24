-------------------------------------------------------------------------------
--
-- Title       : reg
-- Design      : datapath
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : reg.vhd
-- Generated   : Fri Sep 27 14:55:45 2013
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
--{entity {reg} architecture {reg}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity reg is
	generic(
		S : NATURAL := 15
		);
	port(
		CLK : in std_logic;
		DIN : in std_logic_vector(S downto 0);
		LOAD : in std_logic;
		RESET : in std_logic;
		DOUT : out std_logic_vector(S downto 0)
		);
end reg;

--}} End of automatically maintained section

architecture reg of reg is
begin		 
	process (CLK,RESET)
	begin	
		if RESET = '1' then	  
			DOUT <= (others => '0');				
		else
			if CLK'event and CLK = '1' then		  	 
				if LOAD = '1' then
					DOUT <= DIN;
				end if;
			end if;
		end if;
	end process;
end reg;
