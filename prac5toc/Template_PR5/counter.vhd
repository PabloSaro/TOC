library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
	port (clk, reset, count: in std_logic;
				output: out std_logic_vector (5 downto 0));
end counter;

architecture ARCH of counter is

signal aux_output: unsigned(5 downto 0);

begin

	output <= std_logic_vector(aux_output);

	process(clk,reset)
	begin
	 if reset ='1' then
		aux_output <= (others => '0');
	 elsif clk'event and clk='1' and count = '1' then 
		if (aux_output < "110011") then
			aux_output <= aux_output + 1;
		else
			aux_output <= (others => '0');
		end if;
	 end if; 
	end process;

end ARCH;
