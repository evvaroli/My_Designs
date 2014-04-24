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
		 hill1 : in STD_LOGIC_VECTOR(7 downto 0);
		 hill2 : in STD_LOGIC_VECTOR(7 downto 0);
		 hill3 : in STD_LOGIC_VECTOR(7 downto 0);
		 hill4 : in STD_LOGIC_VECTOR(7 downto 0);
		 hill5 : in STD_LOGIC_VECTOR(7 downto 0);
		 hsync : out STD_LOGIC;
		 vsync : out STD_LOGIC;
		 red : out STD_LOGIC_VECTOR(2 downto 0);
		 green : out STD_LOGIC_VECTOR(2 downto 0);
		 blue : out STD_LOGIC_VECTOR(1 downto 0);
		 a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
		 an : out STD_LOGIC_VECTOR(3 downto 0);
		 dp : out STD_LOGIC; 
		 ld : out std_logic_vector(7 downto 0)
	     );
end vga_bsprite2a_top;

architecture vga_bsprite2a_top of vga_bsprite2a_top is

	

signal clr, clk25, clk190, vidon, sig_a, sig_b, sig_start, sig_sel, sig_right, sig_left, sig_up, sig_down, sig_tank1, sig_tank2: std_logic;
signal sig_gameA, sig_gameB, sig_gameStart, sig_gameSel, sig_gameUp, sig_gameDown, sig_gameLeft, sig_gameRight : std_logic;	
signal sig_screenSel : std_logic;
signal sig_gameRed, sig_gameGreen, sig_titleRed, sig_titleGreen : std_logic_vector(2 downto 0);
signal sig_gameBlue, sig_titleBlue : std_logic_vector(1 downto 0);	 
signal sig_hill1, sig_hill2, sig_hill3, sig_hill4, sig_hill5 : std_logic_vector(6 downto 0);
signal hc, vc: std_logic_vector(9 downto 0);
signal M1, M1a, sig_init_M : std_logic_vector(0 to 31);
signal angle1, angle2: std_logic_vector(1 downto 0);
signal M2, M2a: std_logic_vector(31 downto 0);
signal btns: std_logic_vector(3 downto 0);	 
signal sig_x : std_logic_vector(15 downto 0);
signal sig_tank1Angle, sig_tank2Angle : std_logic_vector(1 downto 0);
signal sig_tank1_angle_calc, sig_tank2_angle_calc : std_logic_vector(7 downto 0);
signal rom1_addr16, rom2_addr16, rom3_addr16, rom4_addr16: std_logic_vector(4 downto 0); 
signal rom1_addr, rom2_addr : std_logic_vector(5 downto 0);
signal sig_title_addr : std_logic_vector(14 downto 0);
signal sig_current_state, sig_nesBtns : std_logic_vector(7 downto 0);
signal sig_hillCounter : std_logic_vector(24 downto 0);
signal fireMissile, switch_turn, destroyGet, destroySet: std_logic;
signal sig_romTitle_addr14 : std_logic_vector(14 downto 0);	
signal sig_MTitle : std_logic_vector(7 downto 0);  
signal sig_tank110sM, sig_tank11sM : std_logic_vector(0 to 7);
signal sig_tank1rom10s, sig_tank1rom1s : std_logic_vector(11 downto 0);
signal sig_tank210sM, sig_tank21sM : std_logic_vector(0 to 7);
signal sig_tank2rom10s, sig_tank2rom1s : std_logic_vector(11 downto 0);
begin

	clr <= btn(3);
	
	U1: entity work.clkdiv
	port map(
	mclk => mclk,
	clr => clr,
	clk25 => clk25, 
	clk190 => clk190
	);
	
	U2: entity work.vga_640x480
	port map(
	clk => clk25,
	clr => clr,
	hsync => hsync,
	vsync => vsync,
	hc => hc,
	vc => vc,
	vidon => vidon
	);
	
	U3:entity work.vga_bsprite2a
	port map(
	vidon => vidon,	 
	tank1Turn => sig_tank1,
	tank2Turn => sig_tank2,
	hill1 => sig_hill1,
	hill2 => sig_hill2,
	hill3 => sig_hill3,
	hill4 => sig_hill4,
	hill5 => sig_hill5,
	aBTN => sig_gameA,
	bBTN => sig_gameB,
	upBTN => sig_gameUp,
	downBTN => sig_gameDown,
	rightBTN => sig_gameRight,
	leftBTN => sig_gameLeft,
	tank1Angle => sig_tank1Angle,
	tank2Angle => sig_tank2Angle,
	tank1_angle => sig_tank1_angle_calc,
	tank2_angle => sig_tank2_angle_calc,
	hillCounter => sig_hillCounter,
	next_player => switch_turn,
	hc => hc,
	vc => vc,
	M1 => M1,
	M1a => M1a,
	M2 => M2,
	M2a => M2a,	
	tank110sM => sig_tank110sM,
	tank11sM => sig_tank11sM,
	tank1rom10s => sig_tank1rom10s,
	tank1rom1s => sig_tank1rom1s,
	tank210sM => sig_tank210sM,
	tank21sM => sig_tank21sM,
	tank2rom10s => sig_tank2rom10s,
	tank2rom1s => sig_tank2rom1s,
	sw => sw,
	clk => mclk,
	clr => clr,
	btn => btns,
	rom1_addr => rom1_addr,
	rom2_addr => rom2_addr,
	fireMissile => fireMissile,
	red => sig_gameRed,
	green => sig_gameGreen,
	blue => sig_gameBlue
	);
	
	UPulse: entity work.pulser
	port map (
	clk => mclk,
	clr => clr,
	destroyIn => destroySet,
	destroyOut => destroyGet
	);
	
	U4: entity work.tank_sprite
	port map(
	angle => sig_tank1Angle,
	addr => rom1_addr,
	M => M1
	); 	  
	
	U4fill: entity work.tank_sprite2
	port map(
	angle => sig_tank1Angle,
	addr => rom1_addr,
	M => M1a
	);	 

	U5: entity work.tank_sprite
	port map(
	angle => sig_tank2Angle,
	addr => rom2_addr,
	M => M2
	);
	
	
	U5fill: entity work.tank_sprite2
	port map(
	angle => sig_tank2Angle,
	addr => rom2_addr,
	M => M2a
	);	   	
	
	who : entity work.whoseTurn
	port map(
		clr => clr,	 
		clk => clk25,
		a => sig_gameA,	
		start => sig_gameStart,
		next_player => switch_turn,
		--fireMissile => fireMissile,
		tank1 => sig_tank1,
		tank2 => sig_tank2
	);			
	
	nes : entity work.nes_driver
	port map(
		clr => clr,
		clk25 => clk25,
		nes_data => ja1,
		nes_clk => ja3,
		latch => ja2,
		nesBtns => sig_nesBtns
		
	);		
	
	x7 : entity work.x7segb
	port map(
		x(15 downto 8) => sig_tank1_angle_calc,
		x(7 downto 0) => sig_tank2_angle_calc,
		clk => mclk,
		clr => clr,
		a_to_g => a_to_g,
		an => an,
		dp => dp
	);
	
	buttons : entity work.buttonMux
	port map(
		screenSel => sig_screenSel,
		a => sig_a,
		b => sig_b,
		start => sig_start,
		sel => sig_sel,
		up => sig_up,
		down => sig_down,
		right => sig_right,
		left => sig_left,
		gameA => sig_gameA,
		gameB => sig_gameB,
		gameStart => sig_gameStart,
		gameSel => sig_gameSel,
		gameUp => sig_gameUp,
		gameDown => sig_gameDown,
		gameRight => sig_gameRight,
		gameLeft => sig_gameLeft
	);	 
	
	selector : entity work.screenSelector
	port map(
		screenSel => sig_screenSel,
		titleRed => sig_titleRed,
		titleGreen => sig_titleGreen,
		titleBlue => sig_titleBlue,
		gameRed => sig_gameRed,
		gameBlue => sig_gameBlue,
		gameGreen => sig_gameGreen,
		red => red,
		green => green,
		blue => blue
	);
	
	screenstate : entity work.screenState
	port map(
		start => sig_start,
		sel => sig_sel,
		a => sig_a,
		b => sig_b,
		up => sig_up,
		down => sig_down,
		left => sig_left,
		right => sig_right,
		clr => clr,
		clk => mclk,
		screenSel => sig_screenSel,
		current_state => sig_current_state,
		hillCounter => sig_hillCounter,
		hill1 => sig_hill1,
		hill2 => sig_hill2,
		hill3 => sig_hill3,
		hill4 => sig_hill4,
		hill5 => sig_hill5
	);			 
	
	title : entity work.titleScreen
	port map(
		vidon => vidon,
		hc => hc,
		vc => vc,  
		MTitle => sig_MTitle,
		romTitle_addr14 => sig_title_addr,
		red => sig_titleRed,
		green => sig_titleGreen,
		blue => sig_titleBlue
	);			 
	
	t : entity work.titleImage
	port map(
		clka => clk25,
		addra => sig_romTitle_addr14,
		douta => sig_MTitle
	);	   
	
	bounce : entity work.debounce
	port map(
		inp => sig_nesBtns,
		cclk => clk190,
		clr => clr,
		outp(0) => sig_a,
		outp(1)	=> sig_b,
		outp(2)	=> sig_start,
		outp(3)	=> sig_sel,
		outp(4)	=> sig_right,
		outp(5)	=> sig_up,
		outp(6)	=> sig_down,
		outp(7)	=> sig_left
		
	);	
	
	
	tank1font10s : entity work.fonts
	port map(
		addr => sig_tank1rom10s,
		clk => clk25,
		dout => sig_tank110sM
	);
	
	tank1font1s : entity work.fonts
	port map(
		addr => sig_tank1rom1s,
		clk => clk25,
		dout => sig_tank11sM
	);
	
	tank2font10s : entity work.fonts
	port map(
		addr => sig_tank2rom10s,
		clk => clk25,
		dout => sig_tank210sM
	);
	
	tank2font1s : entity work.fonts
	port map(
		addr => sig_tank2rom1s,
		clk => clk25,
		dout => sig_tank21sM
	);
	
	
	btns <= btn;  
	ld(0) <= sig_a;  
	ld(1) <= sig_b;
	ld(2) <= sig_start;
	ld(3) <= sig_sel;
	ld(4) <= sig_right;
	ld(5) <= sig_up;
	ld(6) <= sig_down;
	ld(7) <= sig_left;
		
end vga_bsprite2a_top;
