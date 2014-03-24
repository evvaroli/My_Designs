-- Example 35a: vga_640x480
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity vga_640x480 is
    port ( clk, clr : in std_logic;
           hsync : out std_logic;
           vsync : out std_logic;
           hc : out std_logic_vector(9 downto 0);
           vc : out std_logic_vector(9 downto 0);
           vidon : out std_logic
	);
end vga_640x480;

architecture vga_640x480 of vga_640x480 is
constant HPIXELS: std_logic_vector(9 downto 0) := "1100100000";
	--Value of pixels in a horizontal line = 800
constant VLINES: std_logic_vector(9 downto 0) := "1000001001";
	--Number of horizontal lines in the display = 521
constant HBP: std_logic_vector(9 downto 0) := "0010010000";	 
	--Horizontal back porch = 144 (128+16)
constant HFP: std_logic_vector(9 downto 0) := "1100010000";	 
	--Horizontal front porch = 784 (128+16+640)
constant VBP: std_logic_vector(9 downto 0) := "0000011111";	 
	--Vertical back porch = 31 (2+29)
constant VFP: std_logic_vector(9 downto 0) := "0111111111";	 
	--Vertical front porch = 511 (2+29+480)
signal HCS, vcs: std_logic_vector(9 downto 0);			
     --These are the Horizontal and Vertical counters
signal VSENABLE: std_logic;					
--Enable for the Vertical counter
	
begin
	--Counter for the horizontal sync signal
  	process(clk, clr)
  	begin
	   if clr = '1' then
	   	HCS <= "0000000000";
	   elsif(clk'event and clk = '1') then
	      if HCS = HPIXELS - 1 then				
	   	--The counter has reached the end of pixel count
		HCS <= "0000000000";					
		--reset the counter
		VSENABLE <= '1';	--Enable the vertical counter 
	      else
		HCS <= HCS + 1;					
		--Increment the horizontal counter
		VSENABLE <= '0';					
		--Leave the VSENABLE off
	      end if;
	   end if;
  	end process;
  	hsync <= '0' when HCS < 128 else '1';		
  		--Horizontal Sync Pulse is low when hc is 0 - 127
		  
	--Counter for the vertical sync signal
	process(clk, clr)
	begin
	   if clr = '1' then
		vcs <= "0000000000";
	   elsif(clk'event and clk = '1' and VSENABLE='1') then
	   	--Increment when enabled
		if vcs = VLINES - 1 then					
			--Reset when the number of lines is reached
		   	vcs <= "0000000000";
		else 
			vcs <= vcs + 1;	--Increment vertical counter
		end if;
	   end if;
	end process;
	--Vertical Sync Pulse is low when vc is 0 or 1
	vsync <= '0' when vcs < 2 else '1';    
		
	--Enable video out when within the porches
	vidon <= '1' when (((HCS < HFP) and (HCS >= HBP)) 
                 and ((vcs < VFP) and (vcs >= VBP))) else '0';	
	-- output horizontal and vertical counters
	hc <= HCS;
	vc <= vcs;
	
end vga_640x480;	