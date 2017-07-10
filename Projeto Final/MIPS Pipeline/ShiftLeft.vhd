--------------------  SLL -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftLeft is
	generic (WSIZE : natural := 32);
	port(
			INP: in std_logic_vector(WSIZE-1 downto 0);
			OUTP: out std_logic_vector(WSIZE-1 downto 0)
	);
end ShiftLeft;

architecture ShiftLeftarc of ShiftLeft is

begin

	OUTP <= std_logic_vector(unsigned(INP) sll 2);
	
end ShiftLeftarc;