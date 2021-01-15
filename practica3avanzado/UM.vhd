
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

USE ieee.numeric_std.ALL;

entity UM	is
			generic (g_width:	natural	:=	4);	
			port (op1:	in signed	(g_width-1	downto 0);	
					op2:	in signed	(g_width-1	downto 0);	
					sel:	in std_logic_vector(2	downto 0);	
					res:	out signed	(g_width-1	downto 0));	
end UM;

architecture Behavioral of UM is

	begin

	process (sel,	op1,	op2)	is
		begin
		
			case	sel is 
				when "000" => --Suma
					res <= op1 + op2;
				when "001"  => --Resta
					res <= op1 - op2;
				when "100"  => --Mín
					if (op1 < op2) then
						res <= op1;
					else
						res <= op2;
						end if;
				when "101"  => --Máx
					if (op2 < op1) then
						res <= op1;
					else 
						res <= op2;
					end if;
				when "111"  =>
						res <= ABS(op1);
				when others =>
						res <= op1; --110 sale el op1
			end	case;	
		
			
	end process;

end Behavioral;

