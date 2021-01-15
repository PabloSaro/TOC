----------------------------------------------------------------------------------
-- Company: Universidad Complutense de Madrid
-- Engineer: Juan Antonio Clemente
-- 
-- Design Name: divider 
-- Module Name:    divider - divider_arch 
-- Project Name: 
-- Target Devices: 
-- Description: Creation of a 1-Hz clock from a 100 MHz one
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.ALL;

entity divider is
    port (
        rst: in STD_LOGIC;
        clk_in: in STD_LOGIC; 
        clk_out: out STD_LOGIC
    );
end divider;

architecture ARCH of divider is

 SIGNAL count: std_logic_vector(25 downto 0);
 SIGNAL clk_aux: std_logic;
  
  begin

  counter:
  PROCESS(rst, clk_in)
  BEGIN
    IF (rst='1') THEN
      count<= (OTHERS=>'0');
      clk_aux<='0';
    ELSIF(clk_in'EVENT AND clk_in='1') THEN
      IF (count="00000111111111111111111111") THEN 
      	clk_aux <= not clk_aux;
        count<= (OTHERS=>'0');
      ELSE
        count <= count+'1';
	clk_aux<=clk_aux;
      END IF;
    END IF;
  END PROCESS counter;


  clk_out <= clk_aux;

end ARCH;