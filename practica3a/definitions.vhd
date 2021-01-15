--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

package definitions is
			constant C_G_WIDTH_DATA:	integer :=	32;	
			constant C_G_WIDTH_COUNT:	integer :=	5;	
			type t_pattern is (no_pattern,	first_one,	second_bit,	pattern_rec);	
			type t_pattern_vector is array	(C_G_WIDTH_DATA	downto	0)	of t_pattern;	
			type t_count_vector is array	(C_G_WIDTH_DATA	downto	0)		
			of unsigned	(C_G_WIDTH_COUNT	-	1	downto	0);	
end package definitions;

