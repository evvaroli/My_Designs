-------------------------------------------------------------------------------
--
-- Title       : adc_driver
-- Design      : Lab4
-- Author      : Skye Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Lab4\Lab4\src\adc_driver.vhd
-- Generated   : Mon Feb 17 15:01:13 2014
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
--{entity {adc_driver} architecture {adc_driver}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity adc_driver is
	 port(
		 clk : in STD_LOGIC;
		 clr : in STD_LOGIC;
		 miso : in STD_LOGIC;
		 cs : out STD_LOGIC;
		 adc_data : out STD_LOGIC_VECTOR(9 downto 0)
	     );
end adc_driver;

--}} End of automatically maintained section

architecture adc_driver of adc_driver is	 
	 	-- Component declaration of the "reg(reg)" unit defined in
	-- file: "./../src/reg.vhd"
	component reg
	generic(
		N : INTEGER := 8);
	port(
		load : in STD_LOGIC;
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		d : in STD_LOGIC_VECTOR(N-1 downto 0);
		q : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;
	for all: reg use entity work.reg(reg);  
		-- Component declaration of the "shift10(shift10)" unit defined in
	-- file: "./../src/shift10.vhd"
	component shift10
	port(
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		data_in : in STD_LOGIC;
		q : out STD_LOGIC_VECTOR(9 downto 0));
	end component;
	for all: shift10 use entity work.shift10(shift10);	 
		
		 	-- Component declaration of the "spi_ctrl(spi_ctrl)" unit defined in
	-- file: "./../src/spi_ctrl.vhd"
	component spi_ctrl
	port(
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		areg_load : out STD_LOGIC;
		cs : out STD_LOGIC);
	end component;
	for all: spi_ctrl use entity work.spi_ctrl(spi_ctrl);

		
signal s_to_a_bus : std_logic_vector(9 downto 0);
signal sload : std_logic;
begin
	 a_reg : reg
	generic map(
		N => 10
	)
	port map(
		load => sload,
		clk => clk,
		clr => clr,
		d => s_to_a_bus,
		q => adc_data
	);		   
	
	s_reg : shift10
	port map(
		clk => clk,
		clr => clr,
		data_in => miso,
		q => s_to_a_bus
	);	   
	
	spi : spi_ctrl
	port map(
		clk => clk,
		clr => clr,
		areg_load => sload,
		cs => cs
	);
	
	 -- enter your statements here --

end adc_driver;
