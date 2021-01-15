--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:45:32 11/25/2016
-- Design Name:   
-- Module Name:   C:/TOC/divider/tb_divider.vhd
-- Project Name:  divider
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_divider is

end tb_divider;

architecture beh of tb_divider is
  component divider
    port (clk  : in std_logic;
			rst_n : in std_logic;
			ini   : in std_logic;
		--	fin : out std_logic;
			dndo  : in std_logic_vector(7 downto 0);
			dsor  : in std_logic_vector(7 downto 0);
			coc   : out std_logic_vector(7 downto 0);
			res   : out std_logic_vector(7 downto 0);
			ready : out std_logic --anado
          );
  end component;

  constant c_m                     : natural := 3;
  constant c_n                     : natural := 6;
  signal clk, rst_n, inicio, ready : std_logic;
  signal dsor                   : std_logic_vector(7 downto 0);
  signal cociente, dndo       : std_logic_vector(7 downto 0);
  signal resto : std_logic_vector(7 downto 0);
begin


  -------------------------------------------------------------------------------
  -- Component instantiation
  -------------------------------------------------------------------------------

  i_dut : divider
    port map (
      clk       => clk,
      rst_n     => rst_n,
      ini       => inicio,
      dsor      => dsor,
      dndo      => dndo,
      coc       => cociente,
      res       => resto,
      ready   => ready
      );

  -----------------------------------------------------------------------------
  -- Process declaration
  -----------------------------------------------------------------------------
  -- Input clock
  p_clk : process
  begin
    clk <= '0', '1' after 5 ns;
    wait for 10 ns;
  end process p_clk;

  -- External reset
  p_rst : process
  begin
    rst_n <= '0';
    wait for 250 ns;
    rst_n <= '1';
    wait;
  end process p_rst;

  p_driver : process
    variable v_i, v_j    : natural := 0;
    variable v_calculo   : std_logic_vector(7 downto 0);
    variable v_correctas : natural := 0;

  begin
    inicio <= '0';
    wait for 250 ns;
    dndo_loop : for v_i in 1 to 255 loop
      dndo <= std_logic_vector(to_unsigned(v_i, 8));
      dsor_loop : for v_j in 1 to v_i loop
        dsor <= std_logic_vector(to_unsigned(v_j, 8));
        wait until rising_edge(clk);
        inicio    <= '1';
        wait until rising_edge(clk);
        inicio    <= '0';
        wait until ready = '1';
        wait until rising_edge(clk);
        v_calculo := std_logic_vector(unsigned(dndo)/unsigned(dsor));
        assert v_calculo = cociente
          report "Error en la division"
          severity error;
     --   if v_calculo = cociente then
     --     v_correctas := v_correctas +1;
     --   end if;
        wait until rising_edge(clk);
      end loop dsor_loop;
    end loop dndo_loop;
    -- assert false report "Divisiones v_correctas: "& integer'image(v_correctas)
    --   severity note;
    wait;
  end process p_driver;

end beh;

