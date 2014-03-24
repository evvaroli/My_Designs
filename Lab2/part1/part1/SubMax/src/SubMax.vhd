-------------------------------------------------------------------------------
--
-- Title       : SubMax
-- Design      : SubMax
-- Author      : Skye N Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Lab2\part1\part1\SubMax\src\SubMax.vhd
-- Generated   : Tue Feb  4 20:32:08 2014
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
--{entity {SubMax} architecture {SubMax}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SubMax is
	 port(
		 X : in STD_LOGIC_VECTOR(3 downto 0);
		 Y : in STD_LOGIC_VECTOR(3 downto 0);
		 Z : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end SubMax;

--}} End of automatically maintained section

architecture SubMax of SubMax is 
		-- Component declaration of the "subtract(subtract)" unit defined in
	-- file: "./../src/subtract.vhd"
	component subtract
	generic(
		N : INTEGER := 4);
	port(
		a : in STD_LOGIC_VECTOR(N-1 downto 0);
		b : in STD_LOGIC_VECTOR(N-1 downto 0);
		y : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;
	for all: subtract use entity work.subtract(subtract);
		
	 	-- Component declaration of the "comp(comp)" unit defined in
	-- file: "./../src/comp.vhd"
	component comp
	generic(
		N : INTEGER := 4);
	port(
		x : in STD_LOGIC_VECTOR(N-1 downto 0);
		y : in STD_LOGIC_VECTOR(N-1 downto 0);
		lt : out STD_LOGIC);
	end component;
	for all: comp use entity work.comp(comp);
		
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
	
	signal f2, f3 : STD_LOGIC_VECTOR(3 downto 0);
  	signal f1 : STD_LOGIC;	
	
begin	 
	  	
	YMinusX : subtract
	generic map(
		N => 4
	)
	port map(
		a => Y,
		b => X,
		y => f2
	);	 	
	
	XMinusY : subtract
	generic map(
		N => 4
	)
	port map(
		a => X,
		b => Y,
		y => f3
	);	 	
	
	CompXY : comp
	generic map(
		N => 4
	)
	port map(
		x => X,
		y => Y,
		lt => f1
	);	
	
	M1 : mux24b
	port map(
		s => f1,
		a => f2,
		b => f3,
		y => Z
	);	  

	 -- enter your statements here --

end SubMax;
