library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register_n is
	generic (n: integer := 8);
	port (clk, reset, load: in std_logic; 
			D: in std_logic_vector(n-1 downto 0);
			Q: out std_logic_vector(n-1 downto 0));
end register_n;

architecture ARCH of register_n is

begin

	process(clk,reset,load)
	begin
	 if reset ='1' then
		Q <= (others => '0');
	 elsif clk'event and clk='1' then 
		if (load = '1') then
			Q <= D;
		end if; 
	end if;
	end process;

end ARCH;
