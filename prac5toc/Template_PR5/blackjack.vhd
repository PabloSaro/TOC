library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
	port (clk, reset, start, continue, stand: in std_logic;
			loser, wrong_card: out std_logic;
			card, score1, score2: out std_logic_vector (6 downto 0);
			clk_out : out std_logic);	
end top;

architecture ARCH of top is

	component divider
		 port (rst: in STD_LOGIC;
			  clk_in: in STD_LOGIC; 
			  clk_out: out STD_LOGIC
		 );
	end component;

	component controller
		 port (clk, reset, start, continue, stand: in std_logic;
			  loser, wrong_card: in std_logic;
			  control: out std_logic_vector (4 downto 0));
	end component;

	component datapath
		 port (clk_quick, clk_slow, reset: in std_logic;
				control: in std_logic_vector (4 downto 0);
				loser, wrong_card: out std_logic;
				card, score1, score2: out std_logic_vector (6 downto 0));
	end component;

	signal clk_intermediate: std_logic;
	signal loser_aux, wrong_card_aux: std_logic;
	signal control: std_logic_vector (4 downto 0);

begin

	loser <= loser_aux;
	wrong_card <= wrong_card_aux;

	my_divider: divider port map(rst => '0',
											clk_in => clk,
											clk_out => clk_intermediate);

	my_controller: controller port map (clk => clk_intermediate,
													reset => reset,
													start => start,
													continue => continue,
													stand => stand,
													loser => loser_aux,
													wrong_card => wrong_card_aux,
													control => control);
	
	my_datapath: datapath port map(clk_quick => clk,
											 
clk_slow => clk_intermediate,
											 reset => reset,
											 control => control,
											 loser => loser_aux,
											 wrong_card => wrong_card_aux,
											 card => card,
											 score1 => score1,
											 score2 => score2);

clk_out <= clk_intermediate;

end ARCH;
