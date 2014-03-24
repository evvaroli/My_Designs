-------------------------------------------------------------------------------
--
-- Title       : EuclidsGCD_top
-- Design      : RegAndMuxCtrl
-- Author      : Skye N Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Lab3\part1\RegAndMuxCtrl\src\EuclidsGCD_top.vhd
-- Generated   : Sun Feb 16 20:15:58 2014
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
--{entity {EuclidsGCD_top} architecture {EuclidsGCD_top}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EuclidsGCD_top is
	 port(
		 mclk : in STD_LOGIC;
		 SW : in STD_LOGIC_VECTOR(7 downto 0);
		 btn : in STD_LOGIC_VECTOR(3 downto 2);
		 LD : out STD_LOGIC_VECTOR(7 downto 4)
	     );
end EuclidsGCD_top;

--}} End of automatically maintained section

architecture EuclidsGCD_top of EuclidsGCD_top is   

 	-- Component declaration of the "EuclidsGCD(euclidsgcd)" unit defined in
	-- file: "./../src/EuclidsGCD.vhd"
	component EuclidsGCD
	port(
		clr : in STD_LOGIC;
		clk : in STD_LOGIC;
		x : in STD_LOGIC_VECTOR(3 downto 0);
		y : in STD_LOGIC_VECTOR(3 downto 0);
		gcd : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	for all: EuclidsGCD use entity work.EuclidsGCD(euclidsgcd);
	-- Component declaration of the "clock_pulse(clock_pulse)" unit defined in
	-- file: "./../src/clock_pulse.vhd"
	component clock_pulse
	port(
		inp : in STD_LOGIC;
		cclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		outp : out STD_LOGIC);
	end component;
	for all: clock_pulse use entity work.clock_pulse(clock_pulse);

	-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"
	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk190 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider);
		
signal sclk190, sclk : std_logic;	
begin
	
	gcd : EuclidsGCD
		port map(
			clr => btn(3),
			clk => sclk,
			x => SW(7 downto 4),
			y => SW(3 downto 0),
			gcd => LD
		);	
		
	cp : clock_pulse
		port map(
			inp => btn(2),
			cclk => sclk190,
			clr => btn(3),
			outp => sclk
		); 
		
	cd : ClockDivider
		port map(
			mclk => mclk,
			clr => btn(3),
			clk190 => sclk190
		);


	 -- enter your statements here --

end EuclidsGCD_top;
