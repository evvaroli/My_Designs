library ieee;
use ieee.std_logic_1164.all;

entity fir is
	port ( 
	clk : in std_logic;
	rst : in std_logic;
	inp : in std_logic_vector(7 downto 0);
	outp : out std_logic_vector(7 downto 0));
end fir;

architecture fir of fir is

type q_arr is array (0 to 6) of  std_logic_vector(7 downto 0);
type mul_arr is array (0 to 6) of  std_logic_vector(15 downto 0);
signal q : q_arr;
signal mul_prod : mul_arr;
signal sum_res : std_logic_vector(15 downto 0);
signal c : std_logic;

begin

-- structure of 7 tap FIR


-- delays
ff_inst0 : entity ff port map (clk,rst,inp,q(0));
ff_gen : for i in 1 to 6 generate
	ff_inst : entity ff port map (clk,rst,q(i-1),q(i));
end generate ff_gen;

-- *c0 = 1;
mul_prod(0)(15 downto 8) <= (others => '0');
mul_prod(0)(7 downto 0) <= q(0);


-- multiplication by coefficients
-- *c1
mul1 : entity rom_rtl_c1c5 port map (q(1), mul_prod(1));

-- *c2
mul2 : entity rom_rtl_c2c4 port map (q(2), mul_prod(2));

-- *c3
mul3 : entity rom_rtl_c3 port map (q(3), mul_prod(3));

-- *c4
mul4 : entity rom_rtl_c2c4 port map (q(4), mul_prod(4));

-- *c5
mul5 : entity rom_rtl_c1c5 port map (q(5), mul_prod(5));

-- *c6=1
mul_prod(6)(15 downto 8) <= (others => '0');
mul_prod(6)(7 downto 0) <= q(6);


-- sum of multiplication products
sum : entity adder_7x8_cascade port map (mul_prod(0), mul_prod(1), mul_prod(2), mul_prod(3), mul_prod(4), mul_prod(5), mul_prod(6), outp, c);

end fir;