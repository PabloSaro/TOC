
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.definitions.all ;


entity cell is
	generic (g_width: natural := c_g_width_count);
	port (d: in std_logic;
			pattern_in: in t_pattern;
			pattern_out: out t_pattern;
			count_in: in unsigned (g_width-1 downto 0);
			count_out: out unsigned (g_width-1 downto 0));
end cell;


architecture Behavioral of cell is
signal  pattern_i: t_pattern;
begin
--comportamiento de la celda
	process (pattern_in, d) is
	begin
		case pattern_in is
		when no_pattern =>
			if d ='1' then
				pattern_i <= first_one;
			else
				pattern_i <= no_pattern;
			end if;
		when first_one =>
			pattern_i <= second_bit;
		when second_bit =>
			if d ='1' then
				pattern_i <= pattern_rec;
			else
				pattern_i <= no_pattern;
			end if;
		when pattern_rec =>
			if d ='1' then
				pattern_i <= first_one;
			else
				pattern_i <= no_pattern;
			end if;
	 end case;
	end process;
	pattern_out <= pattern_i;
	
-- si se ha reconocido el patron se suma uno a count
process (count_in, pattern_i) is
	begin
		if pattern_i = pattern_rec then
			count_out <= count_in +1;
		else 
			count_out <= count_in;
		end if;
	end process;
end Behavioral;

