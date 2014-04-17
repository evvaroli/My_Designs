library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use work.vga_components.all;

entity vga_bsprite2a_top is
	 port(
		 mclk : in STD_LOGIC;	  
		 aBTN : in STD_LOGIC;
		 upBTN : in STD_LOGIC;
		 downBTN : in STD_LOGIC;
		 rightBTN : in STD_LOGIC;
		 leftBTN : in STD_LOGIC;
		 ja1 : in STD_LOGIC;  -- nes_data
		 ja2 : out STD_LOGIC;	-- latch
		 ja3 : out STD_LOGIC;  -- nes_clock
		 btn : in STD_LOGIC_VECTOR(3 downto 0);
		 sw : in STD_LOGIC_VECTOR(7 downto 0);
		 hsync : out STD_LOGIC;
		 vsync : out STD_LOGIC;
		 red : out STD_LOGIC_VECTOR(2 downto 0);
		 green : out STD_LOGIC_VECTOR(2 downto 0);
		 blue : out STD_LOGIC_VECTOR(1 downto 0);
		 a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
		 an : out STD_LOGIC_VECTOR(3 downto 0);
		 dp : out STD_LOGIC
	     );
end vga_bsprite2a_top;

architecture vga_bsprite2a_top of vga_bsprite2a_top is

	component clkdiv
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk25 : out STD_LOGIC);
	end component;
	for all: clkdiv use entity work.clkdiv(clkdiv);		
		
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


		-- Component declaration of the "vga_bsprite2a(vga_bsprite2a)" unit defined in
	-- file: "./../src/vga_bsprite2a.vhd"
	component vga_bsprite2a
	port(
		vidon : in STD_LOGIC;
		tank1Turn : in STD_LOGIC;
		tank2Turn : in STD_LOGIC;
		aBTN : in STD_LOGIC;
		upBTN : in STD_LOGIC;
		downBTN : in STD_LOGIC;
		rightBTN : in STD_LOGIC;
		leftBTN : in STD_LOGIC;
		hc : in STD_LOGIC_VECTOR(9 downto 0);
		vc : in STD_LOGIC_VECTOR(9 downto 0);
		M1 : in STD_LOGIC_VECTOR(0 to 31);
		M1a : in STD_LOGIC_VECTOR(0 to 31);
		M2 : in STD_LOGIC_VECTOR(31 downto 0);
		M2a : in STD_LOGIC_VECTOR(31 downto 0);
		sw : in STD_LOGIC_VECTOR(7 downto 0);
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		btn : in STD_LOGIC_VECTOR(3 downto 0);
		rom1_addr : out STD_LOGIC_VECTOR(5 downto 0);
		rom2_addr : out STD_LOGIC_VECTOR(5 downto 0);
		red : out STD_LOGIC_VECTOR(2 downto 0);
		green : out STD_LOGIC_VECTOR(2 downto 0);
		blue : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	for all: vga_bsprite2a use entity work.vga_bsprite2a(vga_bsprite2a);



	component tank_sprite
	port(
		angle : in STD_LOGIC_VECTOR(1 downto 0);
		addr : in STD_LOGIC_VECTOR(5 downto 0);
		M : out STD_LOGIC_VECTOR(31 downto 0));
	end component;
	for all: tank_sprite use entity work.tank_sprite(tank_sprite);

	component tank_sprite2
	port( 
		angle : in STD_LOGIC_VECTOR(1 downto 0);
		addr : in STD_LOGIC_VECTOR(5 downto 0);
		M : out STD_LOGIC_VECTOR(0 to 31));
	end component;
	for all: tank_sprite2 use entity work.tank_sprite2(tank_sprite2);

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



signal clr, clk25, vidon, sig_a, sig_b, sig_start, sig_sel, sig_right, sig_left, sig_up, sig_down, sig_tank1, sig_tank2: std_logic;
signal hc, vc: std_logic_vector(9 downto 0);
signal M1, M1a: std_logic_vector(0 to 31);
signal angle1, angle2: std_logic_vector(1 downto 0);
signal M2, M2a: std_logic_vector(31 downto 0);
signal btns: std_logic_vector(3 downto 0);	 
signal sig_x : std_logic_vector(15 downto 0);
signal rom1_addr16, rom2_addr16, rom3_addr16, rom4_addr16: std_logic_vector(4 downto 0); 
signal rom1_addr, rom2_addr : std_logic_vector(5 downto 0);
begin

	clr <= btn(3);
	
	U1:clkdiv
	port map(
	mclk => mclk,
	clr => clr,
	clk25 => clk25
	);
	
	U2:vga_640x480
	port map(
	clk => clk25,
	clr => clr,
	hsync => hsync,
	vsync => vsync,
	hc => hc,
	vc => vc,
	vidon => vidon
	);
	
	U3:vga_bsprite2a
	port map(
	vidon => vidon,	 
	tank1Turn => sig_tank1,
	tank2Turn => sig_tank2,
	aBTN => sig_a,
	upBTN => sig_up,
	downBTN => sig_down,
	rightBTN => sig_right,
	leftBTN => sig_left,
	hc => hc,
	vc => vc,
	M1 => M1,
	M1a => M1a,
	M2 => M2,
	M2a => M2a,
	sw => sw,
	clk => mclk,
	clr => clr,
	btn => btns,
	rom1_addr => rom1_addr,
	rom2_addr => rom2_addr,
	red => red,
	green => green,
	blue => blue
	);
	
	U4:tank_sprite
	port map(
	angle => sw(3 downto 2),
	addr => rom1_addr,
	M => M1
	); 
	
	U4fill:tank_sprite2
	port map(
	angle => sw(3 downto 2),
	addr => rom1_addr,
	M => M1a
	);	 
	
	U5:tank_sprite
	port map(
	angle => sw(1 downto 0),
	addr => rom2_addr,
	M => M2
	);
	
	U5fill:tank_sprite2
	port map(
	angle => sw(1 downto 0),
	addr => rom2_addr,
	M => M2a
	);	   	
	
	who : entity work.whosTurn
	port map(
		clr => clr,	 
		clk => clk25,
		a => sig_a,	
		x => sig_x,
		start => sig_start,
		tank1 => sig_tank1,
		tank2 => sig_tank2
	);			
	
	nes : nes_driver
	port map(
		clr => clr,
		clk25 => clk25,
		nes_data => ja1,
		nes_clk => ja3,
		latch => ja2,
		a => sig_a,
		b => sig_b,
		start => sig_start,
		sel => sig_sel,
		up => sig_up,
		down => sig_down,
		right => sig_right,
		left => sig_left
	);		
	
	x7 : x7segb
	port map(
		x => sig_x,
		clk => mclk,
		clr => clr,
		a_to_g => a_to_g,
		an => an,
		dp => dp
	);
	
	btns <= btn;
		
end vga_bsprite2a_top;
