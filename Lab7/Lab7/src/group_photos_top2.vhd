library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity group_photos_top2 is
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
end group_photos_top2;  

architecture group_photos_top2 of group_photos_top2 is 	  

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
		clk25 : out STD_LOGIC;
		clk3 : out STD_LOGIC;
		clk190 : out STD_LOGIC);
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
		
	
		-- Component declaration of the "mona(mona_a)" unit defined in
	-- file: "./../src/mona.vhd"
	component mona
	port(
		clka : in STD_LOGIC;
		addra : in STD_LOGIC_VECTOR(13 downto 0);
		douta : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	for all: mona use entity work.mona(mona_a);			 
		
	
	 	-- Component declaration of the "vga_bsprite4a2(vga_bsprite4a2)" unit defined in
	-- file: "./../src/vga_bsprite4a2.vhd"
	component vga_bsprite4a2
	port(
		vidon : in STD_LOGIC;
		hc : in STD_LOGIC_VECTOR(9 downto 0);
		vc : in STD_LOGIC_VECTOR(9 downto 0);
		CRey : in STD_LOGIC_VECTOR(9 downto 0);
		RRey : in STD_LOGIC_VECTOR(9 downto 0);
		CSkye : in STD_LOGIC_VECTOR(9 downto 0);
		RSkye : in STD_LOGIC_VECTOR(9 downto 0);
		CMona : in STD_LOGIC_VECTOR(9 downto 0);
		RMona : in STD_LOGIC_VECTOR(9 downto 0);
		MRey : in STD_LOGIC_VECTOR(7 downto 0);
		MSkye : in STD_LOGIC_VECTOR(7 downto 0);
		MMona : in STD_LOGIC_VECTOR(7 downto 0);
		clk3 : in STD_LOGIC;
		clr : in STD_LOGIC;
		romRey_addr14 : out STD_LOGIC_VECTOR(13 downto 0);
		romSkye_addr14 : out STD_LOGIC_VECTOR(13 downto 0);
		romMona_addr14 : out STD_LOGIC_VECTOR(13 downto 0);
		red : out STD_LOGIC_VECTOR(2 downto 0);
		green : out STD_LOGIC_VECTOR(2 downto 0);
		blue : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	for all: vga_bsprite4a2 use entity work.vga_bsprite4a2(vga_bsprite4a2);

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
		
		-- Component declaration of the "bounce(bounce)" unit defined in
	-- file: "./../src/bounce.vhd"
	component bounce
	port(
		cclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		go : in STD_LOGIC;
		Crey : out STD_LOGIC_VECTOR(9 downto 0);
		Rrey : out STD_LOGIC_VECTOR(9 downto 0);
		Cskye : out STD_LOGIC_VECTOR(9 downto 0);
		Rskye : out STD_LOGIC_VECTOR(9 downto 0);
		Cmona : out STD_LOGIC_VECTOR(9 downto 0);
		Rmona : out STD_LOGIC_VECTOR(9 downto 0));
	end component;
	for all: bounce use entity work.bounce(bounce);


		
		-- Component declaration of the "skye(skye_a)" unit defined in
	-- file: "./../src/skye.vhd"
	component skye
	port(
		clka : in STD_LOGIC;
		addra : in STD_LOGIC_VECTOR(13 downto 0);
		douta : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	for all: skye use entity work.skye(skye_a);





signal clr, clk25, clk3, clk190, vidon, go1: std_logic;
signal hc, vc, CRey, RRey, CSkye, RSkye, CMona, RMona: std_logic_vector(9 downto 0);
signal MRey, MSkye, MMona: std_logic_vector(7 downto 0);
signal romRey_addr14, romSkye_addr14, romMona_addr14 : std_logic_vector(13 downto 0);
begin
  
	clr <= btn(3);	   
	
	U1 : ClockDivider
	port map(
		mclk => mclk,
		clr => clr,
		clk25 => clk25,
		clk3 => clk3,
		clk190 => clk190
	);
		
	U2 : vga_640x480
	port map(clk => clk25, 
		clr => clr, 
		hsync => hsync, 
		vsync => vsync, 
		hc => hc, 
		vc => vc, 
		vidon => vidon); 		 
		
	vga_sprite : vga_bsprite4a2
	port map(
		vidon => vidon,
		hc => hc,
		vc => vc,
		CRey => CRey,
		RRey => RRey,
		CSkye => CSkye,
		RSkye => RSkye,
		CMona => CMona,
		RMona => RMona,
		MRey => MRey,
		MSkye => MSkye,
		MMona => MMona,
		clk3 => clk3,
		clr => clr,
		romRey_addr14 => romRey_addr14,
		romSkye_addr14 => romSkye_addr14,
		romMona_addr14 => romMona_addr14,
		red => red,
		green => green,
		blue => blue
	);
	
	skyePic : skye
	port map(
		clka => clk25,
		addra => romSkye_addr14,
		douta => MSkye
	);			
	
	monaPic : mona
	port map(
		clka => clk25,
		addra => romMona_addr14,
		douta => MMona
	);	
	
	cp : clock_pulse
	port map(
		inp => btn(0),
		cclk => clk190,
		clr => clr,
		outp => go1
	);
			
	rey : reymoyet
		port map(
			clka => clk25,
			addra => romRey_addr14,
			douta => MRey
		);	  
		
	b : bounce
	port map(
		cclk => clk190,
		clr => clr,
		go => go1,
		Crey => Crey,
		Rrey => Rrey,
		Cskye => Cskye,
		Rskye => Rskye,
		Cmona => Cmona,
		Rmona => Rmona
	);
		
end group_photos_top2;