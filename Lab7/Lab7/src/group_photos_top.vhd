library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity group_photos_top is
	 port(
		mclk : in STD_LOGIC;
		btn : in STD_LOGIC_VECTOR(3 downto 0);
		sw : in STD_LOGIC_VECTOR(7 downto 0);
		hsync : out STD_LOGIC;
		vsync : out STD_LOGIC;
         red : out std_logic_vector(2 downto 0);
         green : out std_logic_vector(2 downto 0);
         blue : out std_logic_vector(1 downto 0)
	     );
end group_photos_top;  

architecture group_photos_top of group_photos_top is 	  

	component reymoyet
	port(
		clka : in STD_LOGIC;
		addra : in STD_LOGIC_VECTOR(13 downto 0);
		douta : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	for all: reymoyet use entity work.reymoyet(reymoyet_a);	  
		
	-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"
	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk25 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider);	  
		
 	-- Component declaration of the "vga_bsprite2a(vga_bsprite2a)" unit defined in
	-- file: "./../src/vga_bsprite2a.vhd"
	component vga_bsprite2a
	port(
		vidon : in STD_LOGIC;
		hc : in STD_LOGIC_VECTOR(9 downto 0);
		vc : in STD_LOGIC_VECTOR(9 downto 0);
		M : in STD_LOGIC_VECTOR(7 downto 0);
		sw : in STD_LOGIC_VECTOR(7 downto 0);
		rom_addr16 : out STD_LOGIC_VECTOR(15 downto 0);
		red : out STD_LOGIC_VECTOR(2 downto 0);
		green : out STD_LOGIC_VECTOR(2 downto 0);
		blue : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	for all: vga_bsprite2a use entity work.vga_bsprite2a(vga_bsprite2a);  
		
		
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



signal clr, clk25, vidon: std_logic;
signal hc, vc: std_logic_vector(9 downto 0);
signal M: std_logic_vector(7 downto 0);
signal rom_addr16: std_logic_vector(15 downto 0);
begin
  
	clr <= btn(3);	   
	
	U1 : ClockDivider
	port map(mclk => mclk, 
		clr => clr, 
		clk25 => clk25);
		
	U2 : vga_640x480
	port map(clk => clk25, 
		clr => clr, 
		hsync => hsync, 
		vsync => vsync, 
		hc => hc, vc => vc, 
		vidon => vidon); 
		
	U3 : vga_bsprite2a
	port map(
		vidon => vidon, 
		hc => hc, 
		vc => vc, 
		M => M, 
		sw => sw,
		rom_addr16 => rom_addr16, 
		red => red, 
		green => green,
		blue => blue);
			
	rey : reymoyet
		port map(
			clka => clk25,
			addra => rom_addr16(13 downto 0),
			douta => M
		);
		
end group_photos_top;