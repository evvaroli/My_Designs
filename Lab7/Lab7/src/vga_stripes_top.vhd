library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity vga_stripes_top is
	 port(
	   mclk : in STD_LOGIC;
	   btn : in STD_LOGIC_VECTOR(3 downto 0);
	   hsync : out STD_LOGIC;
	   vsync : out STD_LOGIC;
  	   red : out std_logic_vector(2 downto 0);
    	   green : out std_logic_vector(2 downto 0);
    	   blue : out std_logic_vector(1 downto 0)
	 );
end vga_stripes_top;

architecture vga_stripes_top of vga_stripes_top is 	  

	-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"
	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk25 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider);

	-- Component declaration of the "vga_640x480(vga_640x480)" unit defined in
	-- file: "./../src/vga_640x480.vhd"
	component vga_640x480
	port(
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		hsync : out STD_LOGIC;
		vsync : out STD_LOGIC;
		hc : out STD_LOGIC_VECTOR(9 downto 0);
		vc : out STD_LOGIC_VECTOR(9 downto 0);
		vidon : out STD_LOGIC);
	end component;
	for all: vga_640x480 use entity work.vga_640x480(vga_640x480);
	-- Component declaration of the "vga_stripes(vga_stripes)" unit defined in
	-- file: "./../src/vga_stripes.vhd"
	component vga_stripes
	port(
		vidon : in STD_LOGIC;
		hc : in STD_LOGIC_VECTOR(9 downto 0);
		vc : in STD_LOGIC_VECTOR(9 downto 0);
		red : out STD_LOGIC_VECTOR(2 downto 0);
		green : out STD_LOGIC_VECTOR(2 downto 0);
		blue : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	for all: vga_stripes use entity work.vga_stripes(vga_stripes);
		
signal clr, clk25, vidon: std_logic;
signal hc, vc: std_logic_vector(9 downto 0);
begin
	clr <= btn(3);
U1 : ClockDivider
	port map(
		mclk => mclk,
		clr => clr,
		clk25 => clk25
	);
	
U2 : vga_640x480
	port map(
		clk => clk25,
		clr => clr,
		hsync => hsync,
		vsync => vsync,
		hc => hc,
		vc => vc,
		vidon => vidon
	); 
	
U3 : vga_stripes
	port map(
		vidon => vidon,
		hc => hc,
		vc => vc,
		red => red,
		green => green,
		blue => blue
	);
end vga_stripes_top;