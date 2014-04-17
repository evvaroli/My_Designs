library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity nes_driver is
	 port(
		 clr : in STD_LOGIC;
		 clk25 : in STD_LOGIC;
		 nes_data : in STD_LOGIC;
		 nes_clk : out STD_LOGIC;
		 latch : out STD_LOGIC;
		 a : out STD_LOGIC;
		 b : out STD_LOGIC;
		 start : out STD_LOGIC;
		 sel : out STD_LOGIC;
		 up : out STD_LOGIC;
		 down : out STD_LOGIC;
		 right : out STD_LOGIC;
		 left : out STD_LOGIC
	     );
end nes_driver;
							 
architecture nes_driver of nes_driver is	 

type state_type is (idle, a_state, b_state, sel_state, start_state, up_state, down_state, left_state, right_state);
signal state_reg, state_next : state_type;
signal counter_reg, counter_next : unsigned(9 downto 0);
signal scalar_reg, scalar_next : unsigned(9 downto 0);
signal  a_reg, a_next,b_reg, b_next,sel_reg, sel_next,start_next, start_reg, up_reg, up_next, down_reg, down_next, 
                left_reg, left_next, 
                right_reg, right_next : std_logic;
				
begin
	
	counter_next <= (others => '0') when counter_reg = 20 else
                            counter_reg + 1 when scalar_reg = 599 else
                            counter_reg;

    scalar_next <= (others => '0') when scalar_reg = 599 else scalar_reg + 1;
	
		process(clk25, clr)
    begin
        if clr = '1' then
            counter_reg <= (others => '0');
            scalar_reg <= (others => '0');
        elsif clk25'event and clk25 = '1' then
            counter_reg <= counter_next;
            scalar_reg <= scalar_next;
        end if;
    end process;	  
	
	
    process(clk25, clr)
    begin
        if clr = '1' then
            state_reg <= idle;
        elsif clk25'event and clk25 = '1' then
            state_reg <= state_next;
        end if;
    end process;	 
	
	process(state_reg, counter_reg)
    begin
        state_next <= state_reg;

        case state_reg is
            when idle =>
                if counter_reg = 0 then
                    state_next <= a_state;
                end if;
            when a_state =>
                if counter_reg = 2 then
                    state_next <= b_state;
                end if;
            when b_state =>
                if counter_reg = 4 then
                    state_next <= sel_state;
                end if;
            when sel_state =>
                if counter_reg = 6 then
                    state_next <= start_state;
                end if;
            when start_state =>
                if counter_reg = 8 then
                    state_next <= up_state;
                end if;
            when up_state =>
                if counter_reg = 10 then
                    state_next <= down_state;
                end if;
            when down_state =>
                if counter_reg = 12 then
                    state_next <= left_state;
                end if;
            when left_state =>
                if counter_reg = 14 then
                    state_next <= right_state;
                end if;
            when right_state =>
                if counter_reg = 16 then
                    state_next <= idle;
                end if;
        end case;
    end process;
	
	latch <= '1' when counter_reg = 0 else
                '0';

    nes_clk <=  not counter_reg(0) when counter_reg < 16 and counter_reg > 1 else
                    '0';

    a_next <= not nes_data when counter_reg = 1	else a_reg;
    b_next <= not nes_data when counter_reg = 3 else b_reg; 
    sel_next <= not nes_data when counter_reg = 5 else sel_reg; 
    start_next <= not nes_data when counter_reg = 7 else start_reg; 
    up_next <= not nes_data when counter_reg = 9 else up_reg; 
    down_next <= not nes_data when counter_reg = 11 else down_reg; 
    left_next <= not nes_data when counter_reg = 13 else left_reg; 
    right_next <= not nes_data when counter_reg = 15 else right_reg;
		
	process(clk25) 
    begin
        if clk25'event and clk25 = '1' then
            a_reg <= a_next;
            b_reg <= b_next;
            sel_reg <= sel_next;
            start_reg <= start_next;
            up_reg <= up_next;
            down_reg <= down_next;
            left_reg <= left_next;
            right_reg <= right_next;
        end if;
    end process;

    a <= a_reg;
    b <= b_reg;
    sel <= sel_reg;
    start <= start_reg;
    up <= up_reg;
    down <= down_reg;
    left <= left_reg;
    right <= right_reg;

end nes_driver;
