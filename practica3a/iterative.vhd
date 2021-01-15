
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.definitions.all ;


entity iterative is
	generic (g_width_data: natural := c_g_width_data;
				g_width_count: natural := c_g_width_count);
	port (din: in std_logic_vector (g_width_data-1 downto 0);
			num_patterns: out std_logic_vector (g_width_count-1 downto 0));
end iterative;

architecture Behavioral of iterative is
	signal count: t_count_vector;
	signal pattern: t_pattern_vector;
	
	--intancio componente celda
	component cell is
		generic (g_width: natural := c_g_width_count);
		port (d: in std_logic;
				pattern_in: in t_pattern;
				pattern_out: out t_pattern;
				count_in: in unsigned (g_width-1 downto 0);
				count_out: out unsigned (g_width-1 downto 0));
	end component;
begin

-- inicializacion
count(0) <= "00000";
pattern(0) <= no_pattern;


-- generate de las celdas
iterative_network1: for i in 0 to g_width_data -1 generate
	i_cel: cell
		generic map (g_width => g_width_count)
		port map (d => din(i),
					 pattern_in => pattern(i),
					 count_in => count(i),
					 pattern_out => pattern(i+1),
					 count_out => count(i+1));
end generate iterative_network1;

-- num_patterns en el unltimo count
num_patterns <= std_logic_vector(count(g_width_data));
end Behavioral;

