library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;


entity bj is
	port(
		clk        : in  std_logic;
		rst        : in  std_logic;
		ini		  : in  std_logic;
		jugar      : in  std_logic;
		plantarse  : in  std_logic;
		puntuacion : out std_logic_vector(5 downto 0);
		carta      : out std_logic_vector(6 downto 0);
		pierdo     : out std_logic);
end bj;

architecture Behavioral of bj is
	signal clk_int  : std_logic;
	signal ctrl_bj  : std_logic_vector(7 downto 0);
	signal stat_bj  : std_logic_vector(1 downto 0);
	signal card_aux : std_logic_vector(3 downto 0);
	
	component divisor is
		port (
			clk_100mhz : in  std_logic;
			clk_1hz    : out std_logic); 
	end component divisor;
	
	component cd is
   port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      punt   : out std_logic_vector(5 downto 0);
      carta  : out std_logic_vector(3 downto 0);
      stat   : out std_logic_vector(1 downto 0);
      ctrl   : in  std_logic_vector(7 downto 0);
      pierdo : out std_logic);
	end component cd;
	
	component uc is
   port (
      rst   : in  std_logic;
		clk   : in  std_logic;
      ini   : in  std_logic;
      ctrl  : out std_logic_vector(7 downto 0);
      jugar : in  std_logic;
      plant : in  std_logic;
      stat  : in  std_logic_vector(1 downto 0));
	end component uc;
	
	component conv_7seg is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0));
	end component conv_7seg;
	
begin

	i_divisor: divisor port map(
		clk_100mhz => clk,
		clk_1hz => clk_int);
		
	i_cd: cd port map(
		clk    => clk_int,
		rst    => rst,
		punt   => puntuacion,
		carta  => card_aux,
		stat   => stat_bj,
		ctrl   => ctrl_bj,
		pierdo => pierdo);
		
	i_uc: uc port map(
		rst   => rst,
		clk   => clk_int,
		ini   => ini,
		ctrl  => ctrl_bj,
		jugar => jugar,
		plant => plantarse,
		stat  => stat_bj);
		
	i_conv_7seg: conv_7seg port map(
		x       => card_aux,
		display => carta);


end Behavioral;

