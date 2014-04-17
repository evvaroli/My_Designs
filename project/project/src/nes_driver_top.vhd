library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nes_driver_top is
	 port(
		 mclk : in STD_LOGIC;
		 ja1 : in STD_LOGIC;  -- nes_data
		 btn : in std_logic_vector(3 downto 0);
		 ja2 : out STD_LOGIC;	-- latch
		 ja3 : out STD_LOGIC;  -- nes_clock
		 ld : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end nes_driver_top;	

  	
--}} End of automatically maintained section 



architecture nes_driver_top of nes_driver_top is

-- Component declaration of the "nes_driver(nes_driver)" unit defined in
	-- file: "./../src/nes_driver.vhd"
	component nes_driver
	port(
		clr : in STD_LOGIC;
		clk25 : in STD_LOGIC;
		nes_data : in STD_LOGIC;
		nes_clk : out STD_LOGIC;
		latch : out STD_LOGIC;
		a : out STD_LOGIC;
		b : out STD_LOGIC;
		start : out STD_LOGIC;
		sel : out STD_LOGIC;
		up : out STD_LOGIC;
		down : out STD_LOGIC;
		right : out STD_LOGIC;
		left : out STD_LOGIC);
	end component;
	for all: nes_driver use entity work.nes_driver(nes_driver);
		
		 	-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"
	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk25 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider);
		
signal cd_to_nes : std_logic;

begin

	cd : ClockDivider
	port map(
		mclk => mclk,
		clr => btn(3),
		clk25 => cd_to_nes
	);
	
	nes : nes_driver
	port map(
		clr => btn(3),
		clk25 => cd_to_nes,
		nes_data => ja1,
		nes_clk => ja3,
		latch => ja2,
		a => ld(0),
		b => ld(1),
		start => ld(2),
		sel => ld(3),
		up => ld(5),
		down => ld(6),
		right => ld(4),
		left => ld(7)
	);


end nes_driver_top;
