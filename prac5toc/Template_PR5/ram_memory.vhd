library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram_memory is
	generic (M: natural:=6; N: natural:=4);
	port (clk,we: in std_logic;
	      addr: in std_logic_vector (M-1 downto 0);
		   di: in std_logic_vector (N-1 downto 0);
		   do: out std_logic_vector (N-1 downto 0));
end ram_memory;

architecture ARCH of ram_memory is
    type ram_type is array (0 to 63) of std_logic_vector (3 downto 0);
    signal RAM : ram_type:= (X"1", X"2", X"3", X"4", X"5", X"6",X"7", X"8", X"9", X"A", X"A", X"A", X"A",
X"1", X"2", X"3", X"4", X"5", X"6",X"7", X"8", X"9", X"A", X"A", X"A", X"A",
X"1", X"2", X"3", X"4", X"5", X"6",X"7", X"8", X"9", X"A", X"A", X"A", X"A",
X"1", X"2", X"3", X"4", X"5", X"6",X"7", X"8", X"9", X"A", X"A", X"A", X"A",X"0",X"0",X"0",X"0",X"A",X"0",X"0",X"0",X"0",X"0",X"0",X"0");

begin

    update: process (clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
               RAM(to_integer(unsigned(addr))) <= di;
            end if;
            do <= RAM(to_integer(unsigned(addr)));
        end if;
    end process update;

end ARCH;
