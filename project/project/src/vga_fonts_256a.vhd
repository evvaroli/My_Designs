--  vga_fonts_256
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vga_fonts_256 is
    port ( vidon: in std_logic;
          hc : in std_logic_vector(9 downto 0);
          vc : in std_logic_vector(9 downto 0);
          M: in std_logic_vector(0 to 7);
          ascii: in std_logic_vector(7 downto 0);
		  cnt14v: in std_logic_vector(3 downto 0);
          rom_addr12: out std_logic_vector(11 downto 0);
          red : out std_logic_vector(2 downto 0);
          green : out std_logic_vector(2 downto 0);
          blue : out std_logic_vector(1 downto 0)
	);
end vga_fonts_256;

architecture vga_fonts_256 of vga_fonts_256 is 
constant hbp: std_logic_vector(9 downto 0) := "0010010000";	 
constant vbp: std_logic_vector(9 downto 0) := "0000011111";	 
constant w: integer := 128;
constant h: integer := 224;
constant C1: integer := 256;
constant R1: integer := 128;
signal hc0, asciiaddr: std_logic_vector(11 downto 0);				
signal rom_addr0, rom_addr4 : std_logic_vector(11 downto 0);										
signal rom_pix: std_logic_vector(2 downto 0);		
signal spriteon, R, G, B: std_logic;
begin
	asciiaddr <= ascii & "0000"; 
	rom_addr12 <= cnt14v + asciiaddr;

	hc0 <= hc - hbp - C1 - 2;
	rom_pix <= hc0(2 downto 0);
	 
	--Enable sprite video out when within the sprite region
 	spriteon <= '1' when (((hc > C1 + 1 + hbp) and (hc <= C1 + 1 + hbp + w))
          and ((vc > R1 + vbp) and (vc <= R1 + vbp + h))) else '0';	
	process(spriteon, vidon, rom_pix, M)
  	variable j: integer;
 	begin
		red <= "000";
		green <= "000";
		blue <= "00";
		if spriteon = '1' and vidon = '1' then
    			j := conv_integer(rom_pix);
    			R <= M(j);
    			G <= M(j);
    			B <= M(j);
   				red <= R & R & R;
    			green <= G & G & G;
    			blue <= B & B;
		end if;
  	end process; 

end vga_fonts_256;
