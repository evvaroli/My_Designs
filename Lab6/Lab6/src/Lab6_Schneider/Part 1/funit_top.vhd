-------------------------------------------------------------------------------
--
-- Title       : funit_top
-- Design      : Lab6
-- Author      : Skye N Schneider


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity funit_top is
	 port(
		 mclk : in STD_LOGIC;
		 sw : in STD_LOGIC_VECTOR(3 downto 0);
		 btn : in STD_LOGIC_VECTOR(3 downto 0);
		 dp : out STD_LOGIC;
		 an : out STD_LOGIC_VECTOR(3 downto 0);
		 a_to_g : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end funit_top;

architecture funit_top of funit_top is	 
	component funit
	port(
		a : in STD_LOGIC_VECTOR(15 downto 0);
		b : in STD_LOGIC_VECTOR(15 downto 0);
		fcode : in STD_LOGIC_VECTOR(3 downto 0);
		y : out STD_LOGIC_VECTOR(15 downto 0));
	end component;
	for all: funit use entity work.funit(funit);   
	
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
	
	signal funitToX7segB : std_logic_vector(15 downto 0);
begin

	f : funit
	port map(
		a => X"8A2B",
		b => X"4E9B",
		fcode => sw,
		y => funitToX7segb
	);	   
	
	seg : x7segb
	port map(
		x => funitToX7segb,
		clk => mclk,
		clr => btn(3),
		a_to_g => a_to_g,
		an => an,
		dp => dp
	);

end funit_top;
