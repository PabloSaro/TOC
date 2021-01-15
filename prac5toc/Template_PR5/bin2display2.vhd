library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin2display2 is
	port ( x : in  STD_LOGIC_VECTOR (4 downto 0);
           display1, display2 : out  STD_LOGIC_VECTOR (6 downto 0));
end bin2display2;

architecture ARCH of bin2display2 is

begin

display1 <= "0111111" when x < "01010" else   -- From 0 to 9  Display1 = 0
             "0000110" when x < "10100" else  -- From 10 to 19  Display1 = 1
				 "1011011" when x < "11110" else  -- From 20 to 30 Display1 = 2				 
				 "1001111"; -- Remainder of the cases: Display1 = 3
				 
with x select				 
display2 <= "0000110" when "00001", --1
	      	"1011011" when "00010", --2
	      	"1001111" when "00011", --3
	      	"1100110" when "00100", --4
	      	"1101101" when "00101",--5
	      	"1111101" when "00110",--6
	      	"0000111" when "00111",--7
	      	"1111111" when "01000",--8
	      	"1101111" when "01001",--9
				
				"0000110" when "01011", --11
	      	"1011011" when "01100", --12
	      	"1001111" when "01101", --13
	      	"1100110" when "01110", --14
	      	"1101101" when "01111",--15
	      	"1111101" when "10000",--16
	      	"0000111" when "10001",--17
	      	"1111111" when "10010",--18
	      	"1101111" when "10011",--19
				
				"0000110" when "10101", --21
	      	"1011011" when "10110", --22
	      	"1001111" when "10111", --23
	      	"1100110" when "11000", --24
	      	"1101101" when "11001",--25
	      	"1111101" when "11010",--26
	      	"0000111" when "11011",--27
	      	"1111111" when "11100",--28
	      	"1101111" when "11101",--29
				
				"0000110" when "11111", --31
	      	
	      	"0111111" when others; --0

end ARCH;
