----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       
-- 
-- Create Date:    
-- Design Name:    Practica 1a
-- Module Name:    tb_sumador_4bits - beh
-- Project Name:   Practica 1a
-- Target Devices: Spartan-3 
-- Tool versions: 
-- Description:    Testbench del sumador de 4 bits sin carry de salida 
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Entidad
-------------------------------------------------------------------------------
entity tb_fu is
end tb_fu;

-------------------------------------------------------------------------------
-- Arquitectura
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

architecture beh of tb_fu is
  constant c_width       : natural := 32;
  constant c_upper_bound : natural := (2**10)-1;

-- Declaracion del componente que vamos a simular
  component fu
    generic(
      g_width : natural := 16
      );
    port(sel : in  std_logic_vector(2 downto 0);
         op1 : in  signed(g_width-1 downto 0);
         op2 : in  signed(g_width-1 downto 0);
         res : out signed(g_width-1 downto 0)
         );
  end component;

-- Entradas
  signal sel : std_logic_vector(2 downto 0);
  signal op1 : signed(c_width-1 downto 0) := (others => '0');
  signal op2 : signed(c_width-1 downto 0) := (others => '0');

-- Salidas
  signal res      : signed(c_width-1 downto 0);
  signal res_xpct : signed(c_width-1 downto 0);

begin

-- Instanciacion de la unidad a simular 
  dut : fu
    generic map (
      g_width => c_width
      )
    port map (
      sel => sel,
      op1 => op1,
      op2 => op2,
      res => res
      );


  p_stim : process
    variable i : integer := 0;
    variable j : integer := 0;
  begin
    i_loop : for i in 0 to c_upper_bound loop
      j_loop : for j in 0 to c_upper_bound loop
        op1      <= to_signed(i, c_width);
        op2      <= to_signed(j, c_width);
        sel      <= "000";
        res_xpct <= to_signed(i + j, c_width);
        wait for 10 ns;
        assert res = res_xpct
          report "Error: resultado incorrecto"
          severity error;
        wait for 90 ns;
        sel      <= "001";
        res_xpct <= to_signed(i - j, c_width);
        wait for 10 ns;
        assert res = res_xpct
          report "Error: resultado incorrecto"
          severity error;
        wait for 90 ns;
        sel <= "101";
        if i > j then
          res_xpct <= to_signed(i, c_width);
        else
          res_xpct <= to_signed(j, c_width);
        end if;
        wait for 10 ns;
        assert res = res_xpct
          report "Error: resultado incorrecto"
          severity error;
        wait for 90 ns;
      end loop j_loop;
    end loop i_loop;
    wait;
  end process p_stim;

end beh;
