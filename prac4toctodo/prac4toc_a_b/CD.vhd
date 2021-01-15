----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:21 11/29/2016 
-- Design Name: 
-- Module Name:    CD - Behavioral 
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

entity cd is
	port (clk : in std_logic;
			rst_n : in std_logic;
			dndo : in std_logic_vector(7 downto 0);
			dsor : in std_logic_vector(7 downto 0);
			coc : out std_logic_vector(7 downto 0);
			res : out std_logic_vector(7 downto 0);
			ctrl : in std_logic_vector(9 downto 0);
			status: out std_logic_vector(1 downto 0)
			);
end entity cd;

architecture rtl of CD is

  signal dsor_aligned   : std_logic_vector(7 downto 0);
  signal dsor_r, dndo_r : std_logic_vector(8 downto 0);
  signal coc_r          : std_logic_vector(7 downto 0);
  signal shift          : unsigned(2 downto 0);
  signal cntr           : unsigned(2 downto 0);
  signal cntr_d1        : unsigned(2 downto 0);
  signal add            : std_logic_vector(8 downto 0);
  signal mux_output     : std_logic_vector(8 downto 0);
  -- Control signals
  signal add_sub        : std_logic;
  signal cntr_d1_ld     : std_logic;
  signal cntr_ld        : std_logic;
  signal cntr_cu        : std_logic;
  signal dsor_ld        : std_logic;
  signal dsor_sh        : std_logic;
  signal dndo_ld        : std_logic;
  signal coc_ld         : std_logic;
  signal coc_sh         : std_logic;
  signal mux            : std_logic;
  -- Status signals
  signal zero     : std_logic;
  signal dndo_msb : std_logic;
  
begin

	(add_sub,
   cntr_d1_ld,
   cntr_ld,
   cntr_cu,
   dsor_ld,
   dsor_sh,
   dndo_ld,
   coc_ld,
   coc_sh,
   mux) <= ctrl;

  status <= (dndo_msb & zero);
				 
 --Alineador
 p_aligner : process (dsor) is
	begin
		if dsor(7 downto 1) = "0000000" then
			dsor_aligned <= dsor(0) & "0000000";
			shift <= "111";
		elsif dsor(7 downto 2) = "000000" then
			dsor_aligned <= dsor(1 downto 0) & "000000";
			shift <= "110";
		elsif dsor(7 downto 3) = "00000" then
			dsor_aligned <= dsor(2 downto 0) & "00000";
			shift <= "101";
		elsif dsor(7 downto 4) = "0000" then
			dsor_aligned <= dsor(3 downto 0) & "0000";
			shift <= "100";
		elsif dsor(7 downto 5) = "000" then
			dsor_aligned <= dsor(4 downto 0) & "000";
			shift <= "011";
		elsif dsor(7 downto 6) = "00" then
			dsor_aligned <= dsor(5 downto 0) & "00";
			shift <= "010";
		elsif dsor(7 downto 7) = "0" then
			dsor_aligned <= dsor(6 downto 0) & "0";
			shift <= "001";
		else
			dsor_aligned <= dsor;
			shift <= "000";
		end if;
 end process p_aligner;

 --Despl der
 p_dsor_r : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      dsor_r <= (others => '0');
    elsif rising_edge(clk) then
      if dsor_ld = '1' then
        dsor_r <= '0' & dsor_aligned;
      elsif dsor_sh = '1' then
        dsor_r <= '0' & dsor_r(8 downto 1);
      end if;
    end if;
 end process p_dsor_r;

 -- Carg paral
 p_dndo_r : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      dndo_r <= (others => '0');
    elsif rising_edge(clk) then
      if dndo_ld = '1' then
        dndo_r <= mux_output;
      end if;
    end if;
 end process p_dndo_r;

 p_dndo_msb : dndo_msb <= dndo_r(8);

 -- Despl izq
 p_coc_r : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      coc_r <= (others => '0');
    elsif rising_edge(clk) then
		if coc_ld = '1' then
			coc_r <= (others => '0');
		elsif coc_sh = '1' and dndo_msb = '1' then
			coc_r <= coc_r(6 downto 0) & '0';
		elsif coc_sh = '1' and dndo_msb = '0' then
			coc_r <= coc_r(6 downto 0) & '1';
		end if;
    end if;
 end process p_coc_r;
  
  -- Contador
 p_cntr : process (clk, rst_n) is
  begin
    if rst_n = '0' then 
      cntr <= (others => '0');
    elsif rising_edge(clk) then
		if cntr_ld = '1' then
			cntr <= shift;
		elsif cntr_cu = '1' then
				cntr <= cntr - 1;
		end if;
    end if;
 end process p_cntr;

 --Reg paral
 p_cntr_d1 : process (clk, rst_n) is
  begin
    if rst_n = '0' then
      cntr_d1 <= (others => '1');
    elsif rising_edge(clk) then
		if cntr_d1_ld = '1' then
			cntr_d1 <= cntr;
		end if;
    end if;
 end process p_cntr_d1;

 --Comp cero
 p_cmp : process (cntr_d1) is
  begin
    if cntr_d1 = "000" then
      zero <= '1';
    else
      zero <= '0';
    end if;
 end process p_cmp;
  
 --Suma/resta
 p_add : process (dndo_r, dsor_r, add_sub) is
  begin  -- process p_add
    if add_sub = '1' then
      add <= std_logic_vector(unsigned(dndo_r) + unsigned(dsor_r));
    elsif add_sub = '0' then
      -- Completar
		add <= std_logic_vector(unsigned(dndo_r) - unsigned(dsor_r));
    end if;
 end process p_add;
  
  --Multipl
 p_mux : process (dndo, add, mux) is
  begin
    if mux = '0' then
      mux_output <= '0' & dndo;
    elsif mux = '1' then
      mux_output <= add;
    end if;
 end process p_mux;

  p_res : res <= dndo_r(7 downto 0);
  p_coc : coc <= coc_r;

end architecture rtl;

