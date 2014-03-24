-------------------------------------------------------------------------------
--
-- Title       : detector_top
-- Design      : detector
-- Author      : Skye Schneider
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Lab5\detector\src\detector_top.vhd
-- Generated   : Mon Mar 10 18:19:47 2014
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
--{entity {detector_top} architecture {detector_top}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity detector_top is
	 port(
	 	btn : in STD_LOGIC_VECTOR(2 downto 0);	
	 	mclK : in std_logic;
		ld : out STD_LOGIC_VECTOR(1 downto 0);
		sw : in std_logic_vector(7 downto 0);
		dp : out STD_LOGIC;
		a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
		an : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end detector_top;

--}} End of automatically maintained section

architecture detector_top of detector_top is	
		 	-- Component declaration of the "clock_pulse(clock_pulse)" unit defined in
	 		-- Component declaration of the "debounce(debounce)" unit defined in
	-- file: "./../src/debounce.vhd"
	component debounce
	port(
		inp : in STD_LOGIC_VECTOR(1 downto 0);
		cclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		outp : out STD_LOGIC_VECTOR(1 downto 0));
	end component;
	for all: debounce use entity work.debounce(debounce);

			-- Component declaration of the "detector(detector)" unit defined in
	-- file: "./../src/detector.vhd"
	component detector
	port(
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		btn : in STD_LOGIC_VECTOR(1 downto 0);
		ld : out STD_LOGIC_VECTOR(1 downto 0);	
		current_state : out std_logic_vector(7 downto 0));
	end component;
	for all: detector use entity work.detector(detector);  
			-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"	   
	
		-- Component declaration of the "ClockDivider(clockdivider)" unit defined in
	-- file: "./../src/ClockDivider.vhd"
	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk190 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider);  
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



	

	signal load, sclk190, deb_to_det : std_logic;  	 
	signal bn, debOut, loadReg : std_logic_vector(1 downto 0);
	signal sig_current_state, reg_to_x7seg : std_logic_vector(7 downto 0);
begin				
	
	deb_to_det <= debOut(1) or debOut(0);
	bn(1) <= btn(2);
	bn(0) <= btn(1);	
	
	
	x7seg : x7segb
	port map(
		x(15 downto 8) => sig_current_state,
		x(7 downto 0) => reg_to_x7seg,
		clk => mclk,
		clr => btn(0),
		a_to_g => a_to_g,
		an => an,
		dp => dp
	);
	
	r : reg
	generic map(
		N => 8
	)
	port map(
		load => loadReg(0),
		clk => mclk,
		clr => btn(0),
		d => sw,
		q => reg_to_x7seg
	);
	
	db : debounce
	port map(
		inp => bn,
		cclk => sclk190,
		clr => btn(0),
		outp => debOut
	);			
	
	cd : ClockDivider
	port map(
		mclk => mclk,
		clr => btn(0),
		clk190 => sclk190
	);
			  
	
	det: detector
	port map(
		clk => deb_to_det,
		clr => btn(0),
		btn => bn,
		ld => loadReg,
		current_state => sig_current_state
	);		  
	
	ld <= loadReg;
	

	 -- enter your statements here --

end detector_top;
