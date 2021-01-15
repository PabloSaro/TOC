----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:21 10/25/2016 
-- Design Name: 
-- Module Name:    prac2b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prac2b is
 port (clk   : in  std_logic;
	   	rst_n : in  std_logic; -- resert
         r     : in  std_logic; -- ruido_exterior
         c     : in  std_logic; -- chupete
         g     : out std_logic; -- ruido
         l     : out std_logic); --llorar
end prac2b;

architecture Behavioral of prac2b is
 type t_state is (c_tranquila_st, c_habla_st, c_dormida_st, c_asustada_st);
	signal current_st, next_st : t_state;
begin
p_next_state : process (current_st, r, c)
begin
	case current_st is
		when c_tranquila_st =>
			if (c = '0' and r = '1') then
				next_st <= c_habla_st;
			elsif (c = '1' and r = '0') then
				next_st <= c_dormida_st;
			else
				next_st <= current_st;
			end if;
		when c_habla_st =>
			if (c = '1') then
				next_st <= c_dormida_st;
			else
				next_st <= current_st;
			end if;
		when c_dormida_st =>
			if (r = '1') then
				next_st <= c_asustada_st;
			else
				next_st <= current_st;
			end if;
		when c_asustada_st =>
			if (c = '1' and r = '0')then
				next_st <= c_dormida_st;
			elsif (c = '0' and r = '0') then
				next_st <= c_tranquila_st;
			else
				next_st <= current_st;
			end if;
	end case;
end process;

	p_outputs : process (current_st)
	begin
		case current_st is
			when c_tranquila_st => 
				g<='0';
				l<='0';
			when c_habla_st =>
				g<='1';
				l<='0';
			when c_dormida_st =>
				g<='0';
				l<='0';
			when c_asustada_st =>
				g<='1';
				l<='1';
		end case;
	end process p_outputs;

p_reg : process(clk, rst_n)
begin
    if rst_n = '0' then
        current_st <= c_tranquila_st;
    elsif rising_edge(clk) then
        current_st <= next_st;
    end if;
end process;
end Behavioral;

