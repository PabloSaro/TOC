----------------------------------------------------------------------------------
-- company: 
-- engineer: 
-- 
-- design name:   divisor 
-- module name:   divisor - rtl
-- project name: 
-- target devices: 
-- description: Creacion de un reloj de 1 Hz a partir de un reloj de 100 MHz
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor is
  port (
    clk_100mhz : in  std_logic;
    clk_1hz    : out std_logic 
    );
end divisor;

architecture rtl of divisor is
  signal cntr_reg    : unsigned(24 downto 0);
  signal clk_1hz_reg : std_logic;
begin

  p_cntr : process(clk_100mhz)
  begin
	if rising_edge(clk_100mhz) then
      if cntr_reg = (24 downto 0 => '1') then
        clk_1hz_reg <= not clk_1hz_reg;
        cntr_reg    <= (others => '0');
      else
        cntr_reg    <= cntr_reg + 1;
        clk_1hz_reg <= clk_1hz_reg;
      end if;
    end if;
  end process p_cntr;

  output_clock: clk_1hz <= clk_1hz_reg;
end rtl;
