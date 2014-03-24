-- state machine used to read data from MCP3001 ADC

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity spi_ctrl is
	port(
		clk       : in STD_LOGIC;
		clr       : in STD_LOGIC;
		areg_load : out STD_LOGIC;
		cs        : out STD_LOGIC
		);
end spi_ctrl;

architecture spi_ctrl of spi_ctrl is 
type   state_type is (s_tcsh1, s_tcsh2, s_clk1, s_clk2, s_clk3, s_clk4, s_clk5, s_clk6, s_clk7, s_clk8, s_clk9, s_clk10, s_clk11, s_clk12, s_clk13, s_clk14);
signal present_state, next_state : state_type;
begin
	state_reg: process(clk, clr)
	begin
		if clr = '1' then
			present_state <= s_tcsh1;
		elsif clk'event and clk = '1' then
			present_state <= next_state;
		end if;
	end process;
	c1: process(present_state)
	begin  
		case present_state is
			when s_tcsh1 => next_state <= s_tcsh2;
			when s_tcsh2 => next_state <= s_clk1;
			when s_clk1  => next_state <= s_clk2;
			when s_clk2  => next_state <= s_clk3;
			when s_clk3  => next_state <= s_clk4;
			when s_clk4  => next_state <= s_clk5;
			when s_clk5  => next_state <= s_clk6;
			when s_clk6  => next_state <= s_clk7;
			when s_clk7  => next_state <= s_clk8;
			when s_clk8  => next_state <= s_clk9;
			when s_clk9  => next_state <= s_clk10;
			when s_clk10 => next_state <= s_clk11;
			when s_clk11 => next_state <= s_clk12;
			when s_clk12 => next_state <= s_clk13;
			when s_clk13 => next_state <= s_clk14;
			when s_clk14 => next_state <= s_tcsh1;
		end case; 
	end process; 
	C2: process(present_state)
	begin
		if (present_state = s_tcsh1) or (present_state = s_tcsh2) then
			cs        <= '1';	 
			areg_load <= '0';
		elsif (present_state = s_clk14) then 
			cs        <= '0';
			areg_load <= '1';
		else
			cs        <= '0';
			areg_load <= '0';
		end if;
	end process;
end spi_ctrl;
