----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:32 11/29/2016 
-- Design Name: 
-- Module Name:    divisor - Behavioral 
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

entity divisor is
  port (clk   : in  std_logic;
        rst_n : in  std_logic;
        ini   : in  std_logic;
		  ready : out std_logic;
        dsor  : in  std_logic_vector(31 downto 0);
        dndo  : in  std_logic_vector(31 downto 0);
        coc   : out std_logic_vector(31 downto 0);
        res   : out std_logic_vector(31 downto 0)
        );
end divisor;

architecture struct of divisor is

 component cd is
	port (clk : in std_logic;
			rst_n : in std_logic;
			dndo : in std_logic_vector(31 downto 0);
			dsor : in std_logic_vector(31 downto 0);
			coc : out std_logic_vector(31 downto 0);
			res : out std_logic_vector(31 downto 0);
			ctrl : in std_logic_vector(9 downto 0);
			status: out std_logic_vector(1 downto 0)
			);
 end component cd;
 
 component uc is 
	port (clk : in std_logic;
			rst_n : in std_logic;
			ini : in std_logic;
			ready : out std_logic;
			ctrl : out std_logic_vector(9 downto 0);
			status: in std_logic_vector(1 downto 0)
			);
 end component uc;
 
 signal ctrl   : std_logic_vector(9 downto 0);
 signal status : std_logic_vector(1 downto 0);

begin

	i_CD : cd port map (
		clk => clk,
		rst_n => rst_n,
		dndo		=> dndo,
		dsor 		=> dsor,
		coc 		=> coc,
		res 		=> res,
		ctrl		=> ctrl,
		status	=> status);
		
	i_UC : uc port map (
		clk 		=> clk,
		rst_n 	=> rst_n,
		ini		=> ini,
		ready 	=> ready,
		ctrl		=> ctrl,
		status	=> status);
	
end struct;

