--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:22:58 11/09/2016
-- Design Name:   
-- Module Name:   C:/Documents and Settings/Propietario/Mis documentos/Laura/UNI/Pr3/testa.vhd
-- Project Name:  Pr3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: iterative
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testa IS
END testa;
 
ARCHITECTURE behavior OF testa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT iterative
    PORT(
         din : IN  std_logic_vector(31 downto 0);
         num_patterns : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal num_patterns : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: iterative PORT MAP (
          din => din,
          num_patterns => num_patterns
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
 --  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		din <= "00000000000000001001011001110101";
		wait for 42 ns;
		din <= "00000000000000001101011001110101";
		


      -- insert stimulus here 

      wait;
   end process;

END;
