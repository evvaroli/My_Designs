-------------------------------------------------------------------------------
--
-- Title       : EuclidsGCD
-- Design      : RegAndMuxCtrl
-- Author      : Skye N Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Lab3\part1\RegAndMuxCtrl\src\EuclidsGCD.vhd
-- Generated   : Sun Feb 16 18:16:25 2014
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
--{entity {EuclidsGCD} architecture {EuclidsGCD}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EuclidsGCD is
	 port(
		 clr : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 gcd : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end EuclidsGCD;

--}} End of automatically maintained section

architecture EuclidsGCD of EuclidsGCD is	
 	-- Component declaration of the "submax2(submax2)" unit defined in
	-- file: "./../src/submax2.vhd"		
		-- Component declaration of the "RegAndMuxCtrl(regandmuxctrl)" unit defined in
	-- file: "./../src/RegAndMuxCtrl.vhd"
	component RegAndMuxCtrl
	port(
		x : in STD_LOGIC_VECTOR(3 downto 0);
		y : in STD_LOGIC_VECTOR(3 downto 0);
		xmuxsel : out STD_LOGIC;
		ymuxsel : out STD_LOGIC;
		xload : out STD_LOGIC;
		yload : out STD_LOGIC);
	end component;
	for all: RegAndMuxCtrl use entity work.RegAndMuxCtrl(regandmuxctrl);

	component submax2
	port(
		x : in STD_LOGIC_VECTOR(3 downto 0);
		y : in STD_LOGIC_VECTOR(3 downto 0);
		z : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	for all: submax2 use entity work.submax2(submax2);

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

	-- Component declaration of the "mux24b(mux24b)" unit defined in
	-- file: "./../src/mux24b.vhd"
	component mux24b
	port(
		s : in STD_LOGIC;
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		y : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	for all: mux24b use entity work.mux24b(mux24b);
		
signal mybus, mxbus, regxbus, regybus, zbus : std_logic_vector(3 downto 0);
signal smx, smy, sxload, syload : std_logic;
begin				 
	
	regmuxctrl : RegAndMuxCtrl
	port map(
		x => regxbus,
		y => regybus,
		xmuxsel => smx,
		ymuxsel => smy,
		xload => sxload,
		yload => syload
	);
	
   mx : mux24b
	port map(
		s => smx,
		a => x,
		b => zbus,
		y => mxbus
	);
	
	my : mux24b
	port map(
		s => smy,
		a => y,
		b => zbus,
		y => mybus
	);		  
	
	registerX : reg
	generic map(
		N => 4
	)
	port map(
		load => sxload,
		clk => clk,
		clr => clr,
		d => mxbus,
		q => regxbus
	);
	
	registerY : reg
	generic map(
		N => 4
	)
	port map(
		load => syload,
		clk => clk,
		clr => clr,
		d => mybus,
		q => regybus
	);
	
	submax : submax2
	port map(
		x => regxbus,
		y => regybus,
		z => zbus
	);
	
	gcd <= regxbus;	  -- return x
	 -- enter your statements here --

end EuclidsGCD;
