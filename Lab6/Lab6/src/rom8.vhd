					  -- ROM
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rom8 is
    port (
        addr: in STD_LOGIC_VECTOR (2 downto 0);
        M: out STD_LOGIC_VECTOR (7 downto 0)
    );
end rom8;

architecture rom8 of rom8 is
constant data0: STD_LOGIC_VECTOR (7 downto 0) := "01011111";
constant data1: STD_LOGIC_VECTOR (7 downto 0) := "01111111";
constant data2: STD_LOGIC_VECTOR (7 downto 0) := "01000000";
constant data3: STD_LOGIC_VECTOR (7 downto 0) := "01101111";
constant data4: STD_LOGIC_VECTOR (7 downto 0) := "01001000";
constant data5: STD_LOGIC_VECTOR (7 downto 0) := "01001000";
constant data6: STD_LOGIC_VECTOR (7 downto 0) := "01100000";
constant data7: STD_LOGIC_VECTOR (7 downto 0) := "01001001";

type rom_array is array (NATURAL range <>) of 
                             STD_LOGIC_VECTOR (7 downto 0);
constant rom: rom_array := (
	data0, data1, data2, data3,
	data4, data5, data6, data7
	);

begin
  process(addr)
  variable j: integer;
  begin 
      j := conv_integer(addr);
      M <= rom(j);
  end process;

end rom8;
