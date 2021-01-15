library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    port (clk_quick, clk_slow, reset: in std_logic;
         control: in std_logic_vector (4 downto 0);
         loser, wrong_card: out std_logic;
         card, score1, score2: out std_logic_vector (6 downto 0));
end datapath;

architecture ARCH of datapath is

    --declaracion de componentes... (completar)

    signal control_aux: std_logic_vector(4 downto 0);
    alias ld_addr: std_logic is control_aux (0);
    alias write_MEM: std_logic is control_aux (1);
    alias ld_Card: std_logic is control_aux (2);
    alias ld_Score: std_logic is control_aux (3);
    alias reset_i: std_logic is control_aux (4);

    signal final_reset, loser_aux, wrong_card_aux: std_logic;

    --declaracion del resto de señales intermedias... (completar)

begin 

    control_aux <= control;
    final_reset <= reset_i OR reset;

    loser_aux <= '1' when <COMPLETAR> else '0';      --completar
    wrong_card_aux <= '1' when <COMPLETAR> else '0'; --completar

    loser <= loser_aux;
    wrong_card <= wrong_card_aux;
	 
    --instanciacion del resto de componentes... (completar)

end ARCH;
