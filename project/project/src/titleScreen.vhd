library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;	

entity titleScreen is
    port ( vidon: in std_logic;
            hc : in std_logic_vector(9 downto 0);
            vc : in std_logic_vector(9 downto 0);	
			M: in std_logic_vector(0 to 31);
          	rom_addr4: out std_logic_vector(3 downto 0);
            red : out std_logic_vector(2 downto 0);
            green : out std_logic_vector(2 downto 0);
            blue : out std_logic_vector(1 downto 0));
end titleScreen;	

architecture titleScreen of titleScreen is	
constant hbp: std_logic_vector(9 downto 0) := "0010010000";	 
constant vbp: std_logic_vector(9 downto 0) := "0000011111";	 
constant w: integer := 32;
constant h: integer := 16;
signal C1, R1: std_logic_vector(10 downto 0);				
signal rom_addr, rom_pix: std_logic_vector(10 downto 0);		
signal spriteon, R, G, B: std_logic;
begin			  
	
	
	C1 <= "00010000001";
	R1 <= "00010000001";
	rom_addr <= vc - vbp - R1;
	rom_pix <= hc - hbp - C1;
	rom_addr4 <= rom_addr(3 downto 0);

	--Enable sprite video out when within the sprite region
 	spriteon <= '1' when (((hc >= C1 + hbp) and (hc < C1 + hbp + w))
          and ((vc >= R1 + vbp) and (vc < R1 + vbp + h))) else '0'; 
 
	process(vidon, vc)	 
	variable j : integer;
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
end titleScreen;

