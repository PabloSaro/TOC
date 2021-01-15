library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muneca is
	port(clk : in std_logic;
		  rst_n : in std_logic;
		  r : in std_logic; --ruido_exterior
		  c : in std_logic; -- chupete
		  g : out std_logic; -- ruido
		  l : out std_logic; --llorar
		  estado: out std_logic_vector(1 downto 0));
end muneca;

architecture Behaviour of muneca is
	constant c_tranquila_st : std_logic_vector(1 downto 0) := "00";
	constant c_habla_st :     std_logic_vector(1 downto 0) := "01";
	constant c_dormida_st :   std_logic_vector(1 downto 0) := "10";
	constant c_asustada_st :  std_logic_vector(1 downto 0) := "11";
	signal current_state, next_state : std_logic_vector(1 downto 0);
	signal auxreset : std_logic;
	
	signal clk_int : std_logic;

	component divisor1 is
		port (rst : in std_logic;
				clk_100mhz : in std_logic;
				clk_1hz : out std_logic);
	end component;
	
begin 
	auxreset<= not rst_n;
	i_clk_int : divisor1 port map(
		rst	=> auxreset,
	--	rst	=> not rst_n,
		clk_100mhz	=> clk,
		clk_1hz => clk_int);
	
	p_next_state : process (current_state, r, c)
	begin
		case current_state is
			when c_tranquila_st =>
				if (r='0' and c='1') then 
						next_state <= c_dormida_st;
				elsif (r='1' and c='0') then
						next_state <= c_habla_st;				
				else 
					next_state <= current_state;
				end if;
			when c_habla_st =>
				if (c='1') then 
					next_state <= c_dormida_st;
				else 
					next_state <= current_state;
				end if;
			when c_dormida_st =>
				if (r='1') then
					next_state <= c_asustada_st;
				else 
					next_state <= current_state;
				end if;
			when c_asustada_st =>
				if (r='0' and c='0') then
					next_state <= c_tranquila_st;
				elsif (r='0' and c='1') then
					next_state <= c_dormida_st;
				else 
					next_state <= current_state;
				end if;
			when others =>
				next_state <= c_tranquila_st;
		end case;
	end process p_next_state;

	p_outputs : process (current_state)
	begin
		case current_state is
			when c_tranquila_st => 
				g<='0';
				l<='0';
			when c_habla_st =>
				g<='1';
				l<='0';
			when c_dormida_st =>
				g<='0';
				l<='0';
			when c_asustada_st =>
				g<='1';
				l<='1';
			when others =>
				g<='0';
				l<='0';
		end case;
	end process p_outputs;
	
	p_reg : process(clk, rst_n)
	begin
		if rst_n='0' then 
			current_state <= c_tranquila_st;
		elsif rising_edge(clk) then 
			current_state <= next_state;
		end if;
		estado <= current_state;
	end process p_reg;
end Behaviour;