-------------------------------------------------------------------------------
--
-- Title       : lab4_top
-- Design      : Lab4
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Lab4\Lab4\src\lab4_top.vhd
-- Generated   : Mon Feb 17 15:47:55 2014
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
--{entity {lab4_top} architecture {lab4_top}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity lab4_top is
	 port(
		 mclk : in STD_LOGIC;
		 JA3 : in STD_LOGIC;
		 btn : in STD_LOGIC_VECTOR(0 downto 0);
		 JA2 : out std_logic;
		 LD : out std_logic_vector(7 downto 0);
		 JA1 : out std_logic
	     );
end lab4_top;

--}} End of automatically maintained section

architecture lab4_top of lab4_top is	 
   	-- Component declaration of the "adc_decoder(adc_decoder)" unit defined in
	-- file: "./../src/adc_decoder.vhd"
	component adc_decoder
	port(
		adc_data : in STD_LOGIC_VECTOR(9 downto 0);
		y : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	for all: adc_decoder use entity work.adc_decoder(adc_decoder);
		
		-- Component declaration of the "adc_driver(adc_driver)" unit defined in
	-- file: "./../src/adc_driver.vhd"
	component adc_driver
	port(
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		miso : in STD_LOGIC;
		cs : out STD_LOGIC;
		adc_data : out STD_LOGIC_VECTOR(9 downto 0));
	end component;
	for all: adc_driver use entity work.adc_driver(adc_driver);	
		
			-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"
	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk3 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider);

signal sclk : std_logic;
signal sadc_data : std_logic_vector(9 downto 0);
begin											
	decoder : adc_decoder
	port map(
		adc_data => sadc_data,
		y => LD
	);	
	
	driver : adc_driver
	port map(
		clk => sclk,
		clr => btn(0),
		miso => JA3,
		cs => JA1,
		adc_data => sadc_data
	);
	
	cdivider : ClockDivider
	port map(
		mclk => mclk,
		clr => btn(0),
		clk3 => sclk
	);				
	
	JA2 <= sclk;
	
	

	 -- enter your statements here --

end lab4_top;
