-------------------------------------------------------------------------------
--
-- Title       : EuclidsGCD_top2
-- Design      : RegAndMuxCtrl
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Lab3\part1\RegAndMuxCtrl\src\EuclidsGCD_top2.vhd
-- Generated   : Sun Feb 16 21:30:30 2014
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
--{entity {EuclidsGCD_top2} architecture {EuclidsGCD_top2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EuclidsGCD_top2 is
	 port(
		 mclk : in STD_LOGIC;
		 SW : in STD_LOGIC_VECTOR(7 downto 0);
		 btn : in STD_LOGIC_VECTOR(3 downto 2);
		 dp : out STD_LOGIC;
		 a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
		 an : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end EuclidsGCD_top2;

--}} End of automatically maintained section

architecture EuclidsGCD_top2 of EuclidsGCD_top2 is	 
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
		
			-- Component declaration of the "x7segb(x7segb)" unit defined in
	-- file: "./../src/x7segb.vhd"
	component x7segb
	port(
		x : in STD_LOGIC_VECTOR(15 downto 0);
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
		an : out STD_LOGIC_VECTOR(3 downto 0);
		dp : out STD_LOGIC);
	end component;
	for all: x7segb use entity work.x7segb(x7segb);

		
signal sclk190, sclk : std_logic;
signal sgcd : std_logic_vector(3 downto 0);
begin			  
	
	gcd : EuclidsGCD
		port map(
			clr => btn(3),
			clk => sclk,
			x => SW(7 downto 4),
			y => SW(3 downto 0),
			gcd => sgcd
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
		
	x7seg : x7segb
	port map(
		x(15 downto 12) => "0000",
		x(11 downto 4) => SW,
		x(3 downto 0) => sgcd,
		clk => mclk,
		clr => btn(3),
		a_to_g => a_to_g,
		an => an,
		dp => dp
	);


	 -- enter your statements here --

end EuclidsGCD_top2;
