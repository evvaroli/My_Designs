																			 					  -- ROM
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rom8_2 is
    port (
        addr: in STD_LOGIC_VECTOR (3 downto 0);
        M: out STD_LOGIC_VECTOR (7 downto 0)
    );
end rom8_2;

architecture rom8_2 of rom8_2 is
constant data0: STD_LOGIC_VECTOR (7 downto 0) := "01011111"; -- s@
constant data1: STD_LOGIC_VECTOR (7 downto 0) := "01111111"; -- s@
constant data2: STD_LOGIC_VECTOR (7 downto 0) := "01000001"; -- -
constant data3: STD_LOGIC_VECTOR (7 downto 0) := "01101111"; -- dup
constant data4: STD_LOGIC_VECTOR (7 downto 0) := "01001000"; -- 2*
constant data5: STD_LOGIC_VECTOR (7 downto 0) := "01001000"; -- 2*
constant data6: STD_LOGIC_VECTOR (7 downto 0) := "01001000"; -- 2*
constant data7: STD_LOGIC_VECTOR (7 downto 0) := "01100000"; -- +*
constant data8: STD_LOGIC_VECTOR (7 downto 0) := "01001001"; -- u2/*
constant data9: STD_LOGIC_VECTOR (7 downto 0) := "01001001"; -- u2/*

type rom_array is array (NATURAL range <>) of 
                             STD_LOGIC_VECTOR (7 downto 0);
constant rom: rom_array := (
	data0, data1, data2, data3,
	data4, data5, data6, data7,
	data8, data9
	);

begin
  process(addr)
  variable j: integer;
  begin 
      j := conv_integer(addr);
      M <= rom(j);
  end process;

end rom8_2;
