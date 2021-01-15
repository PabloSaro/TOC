library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controller is
    port (clk, reset, start, continue, stand: in std_logic;
        loser, wrong_card: in std_logic;
        control: out std_logic_vector (4 downto 0));
end controller;

architecture ARCH of controller is

    type T_STATE is (initial, load_addr, read_from_MEM, load_card_delete_MEM, compare, wrong_card_wait, update_score, right_card_wait);
    signal STATE, NEXT_STATE: T_STATE;
    signal control_aux: std_logic_vector (4 downto 0);
    alias ld_addr: std_logic is control_aux (0);
    alias write_MEM: std_logic is control_aux (1);
    alias ld_Card: std_logic is control_aux (2);
    alias ld_Score: std_logic is control_aux (3);
    alias reset_i: std_logic is control_aux (4);

begin
    control <= control_aux;
    SYNC_STATE: process (clk, reset, STATE, NEXT_STATE)    begin        if reset ='1' then            STATE <= initial;        elsif clk'event and clk='1' then            STATE <= NEXT_STATE;        end if;    end process SYNC_STATE;
	     COMB: process (STATE, start, continue, stand, loser, wrong_card)    begin        ld_addr <= '0';        write_MEM <= '0';        ld_Card <= '0';        ld_Score <= '0';        reset_i <= '0';        case STATE is           when initial => --completar           --completar resto de estados		  end case;    end process COMB;
end ARCH;