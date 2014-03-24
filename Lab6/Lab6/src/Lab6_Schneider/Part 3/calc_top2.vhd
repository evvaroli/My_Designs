	 -------------------------------------------------------------------------------
--
-- Title       : calc_top2
-- Design      : Lab6
-- Author      : Skye N Schneider

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity calc_top2 is
	 port(
		 mclk : in STD_LOGIC;
		 sw : in STD_LOGIC_VECTOR(7 downto 0);
		 btn : in STD_LOGIC_VECTOR(3 downto 0);
		 dp : out STD_LOGIC;
		 an : out STD_LOGIC_VECTOR(3 downto 0);
		 a_to_g : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end calc_top2;



architecture calc_top2 of calc_top2 is  
	
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
	
	component rom8_2
	port(
		addr : in STD_LOGIC_VECTOR(3 downto 0);
		M : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	for all: rom8_2 use entity work.rom8_2(rom8_2);
	
	component clock_pulse
	port(
		inp : in STD_LOGIC;
		cclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		outp : out STD_LOGIC);
	end component;
	for all: clock_pulse use entity work.clock_pulse(clock_pulse);

	component ClockDivider
	port(
		mclk : in STD_LOGIC;
		clr : in STD_LOGIC;
		clk190 : out STD_LOGIC);
	end component;
	for all: ClockDivider use entity work.ClockDivider(clockdivider); 	
		
	component pc_2
	generic(
		N : INTEGER := 8);
	port(
		clr : in STD_LOGIC;
		clk : in STD_LOGIC;
		q : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;
	for all: pc_2 use entity work.pc_2(pc_2);

	component reg
	generic(
		N : INTEGER := 16);
	port(
		load : in STD_LOGIC;
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		d : in STD_LOGIC_VECTOR(N-1 downto 0);
		q : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;
	for all: reg use entity work.reg(reg);	
		
	component mux
	generic(
		N : INTEGER := 16);
	port(
		a : in STD_LOGIC_VECTOR(N-1 downto 0);
		b : in STD_LOGIC_VECTOR(N-1 downto 0);
		s : in STD_LOGIC;
		y : out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;
	for all: mux use entity work.mux(mux);



	signal muxin, tin, t, n, y1 : std_logic_vector(15 downto 0);	
	signal clk190 : std_logic;	 
	signal M : std_logic_vector(7 downto 0); 
	signal addr : std_logic_vector(3 downto 0);
	signal clkp : std_logic;  
	
	begin	  	  
		
		muxin <= X"00" & sw;
		
		nmux : mux
		generic map(
			N => 16
		)
		port map(
			a => y1,
			b => muxin,
			s => M(4),
			y => tin
		);
		
		cp : clock_pulse
		port map(
			inp => btn(0),
			cclk => clk190,
			clr => btn(3),
			outp => clkp
		);	
		
		cd : ClockDivider
		port map(
			mclk => mclk,
			clr => btn(3),
			clk190 => clk190
		);
		
		f : funit
		port map(
			a => t,
			b => n,
			fcode => m(3 downto 0),
			y => y1
		);   
		
		pcCounter : pc_2
		generic map(
			N => 4
		)
		port map(
			clr => btn(3),
			clk => clkp,
			q => addr(3 downto 0)
		);
		
		
		rom : rom8_2
		port map(
			addr => addr,
			M => M
		);
		
		seg : x7segb
		port map(
			x => t,
			clk => mclk,
			clr => btn(3),
			a_to_g => a_to_g,
			an => an,
			dp => dp
		);	
		
		Treg : reg
		generic map(
			N => 16
		)
		port map(
			load => m(6),
			clk => clkp,
			clr => btn(3),
			d => tin,
			q => t
		); 
		
		Nreg : reg
		generic map(
			N => 16
		)
		port map(
			load => m(5),
			clk => clkp,
			clr => btn(3),
			d => t,
			q => n
		);
		

end calc_top2;
