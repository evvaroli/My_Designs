-------------------------------------------------------------------------------
--
-- Title       : clk_gen
-- Design      : data_acquisition
-- Author      : Aldec, Inc.
-- Company     : Aldec, Inc.
--
-------------------------------------------------------------------------------
--
-- File        : clk_gen.vhd
-- Generated   : Fri Sep 27 14:31:41 2013
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
--{entity {clk_gen} architecture {clk_gen}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity clk_gen is
	 generic(
		clk_period : TIME := 10 ns
	    );
	 port(
		 clk : out STD_LOGIC
	     );
end clk_gen;

--}} End of automatically maintained section

architecture clk_gen of clk_gen is

  constant half_period : time := clk_period/2;

begin

  process
  begin

    clk <= '0';
    wait for half_period;
    clk <= '1';
    wait for half_period;

  end process;

end clk_gen;
