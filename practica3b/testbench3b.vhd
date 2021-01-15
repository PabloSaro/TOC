--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:08:46 11/11/2016
-- Design Name:   
-- Module Name:   C:/Users/Raquel/Desktop/UNI/xilinx/practica3b/testbench3b.vhd
-- Project Name:  practica3b
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UM
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
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench3b IS
END testbench3b;
 
ARCHITECTURE behavior OF testbench3b IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UM
    PORT(
         op1 : IN  signed(3 downto 0);
         op2 : IN  signed(3 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         res : OUT  signed(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op1 : signed(3 downto 0) := (others => '0');
   signal op2 : signed(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal res : signed(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UM PORT MAP (
          op1 => op1,
          op2 => op2,
          sel => sel,
          res => res
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		op1 <= "0010";
		op2 <= "0001";
		sel <= "000"; -- suma
		
	wait for 100 ns;	
		op1 <= "0010";
		op2 <= "0001";
		sel <= "001"; -- resta
		
	wait for 100 ns;	
		op1 <= "0010";
		op2 <= "0001";
		sel <= "100"; --min

	wait for 100 ns;	
		op1 <= "0010";
		op2 <= "0001";
		sel <= "101"; -- max
		
	wait for 100 ns;
		op1 <= "1111";
		sel <= "111"; -- abs
		
	wait for 100 ns;
		sel <= "110";


      wait;
   end process;

END;
