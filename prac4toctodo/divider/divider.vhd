----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:27 11/25/2016 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
  port (clk   : in  std_logic;
        rst_n : in  std_logic;
        ini   : in  std_logic;
        dsor  : in  std_logic_vector(7 downto 0);  -- dividendo
        dndo  : in  std_logic_vector(7 downto 0);  -- divisor
        coc   : out std_logic_vector(7 downto 0);  -- cociente
        res   : out std_logic_vector(7 downto 0);  -- resto
        ready : out std_logic
        );
end divider;

architecture struct of divider is

  component cd is
    port (
    clk    : in  std_logic;                      -- clock
    rst_n  : in  std_logic;                      -- reset
    dsor   : in  std_logic_vector(7 downto 0);   -- Divisor
    dndo   : in  std_logic_vector(7 downto 0);   -- Dividendo
    coc    : out std_logic_vector(7 downto 0);   -- Cociente
    res    : out std_logic_vector(7 downto 0);   -- Resto
    ctrl   : in  std_logic_vector(9 downto 0);   -- Control
    status : out std_logic_vector(1 downto 0));  -- Status
  end component cd;

  component uc is
    port (
      clk    : in  std_logic;                      -- clock
      rst_n  : in  std_logic;                      -- reset
      ini    : in  std_logic;                      -- External control signal
      fin    : out std_logic;                      -- External control signal
      ctrl   : out std_logic_vector(9 downto 0);   -- Control vector
      status : in  std_logic_vector(1 downto 0));  -- Status vector

  end component uc;

  signal ctrl   : std_logic_vector(9 downto 0);  -- Control vector
  signal status : std_logic_vector(1 downto 0);  --Status vector
begin

  i_cd : cd port map (
    clk    => clk,
    rst_n  => rst_n,
    dsor   => dsor,
    dndo   => dndo,
    coc    => coc,
    res    => res,
    ctrl   => ctrl,
    status => status);

  i_uc : uc port map (
    clk    => clk,
    rst_n  => rst_n,
    ini    => ini,
    fin    => ready,
    ctrl   => ctrl,
    status => status);


end struct;
