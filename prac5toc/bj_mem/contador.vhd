----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:35:29 12/18/2016 
-- Design Name: 
-- Module Name:    contador - rtl 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contador is
   port (
      clk   : in  std_logic;
      parar : in  std_logic;
      rst   : in  std_logic;
      pos   : out std_logic_vector(5 downto 0));
end contador;

architecture rtl of contador is
   
   signal cont: std_logic_vector(5 downto 0);
   
begin

   p_pos: pos <= cont;

   p_contador: process(clk, rst) is
   begin
      if rst = '1' then
         cont <= (others => '0');
      elsif rising_edge(clk) and parar = '0' then
         if cont < "110011" then
            cont <= std_logic_vector(unsigned(cont) + 1);
         else
            cont <= (others => '0');
         end if;
      end if;
   end process p_contador;

end rtl;

