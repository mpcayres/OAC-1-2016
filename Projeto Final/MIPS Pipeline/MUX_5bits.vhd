-----------------  MUX  5 bits -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_5bits is
	port(
			IN0, IN1: in std_logic_vector(4 downto 0);
			sel: in std_logic;
			S: out std_logic_vector(4 downto 0)
	);
end MUX_5bits;

architecture MUXarc of MUX_5bits is

begin

	process (IN0, IN1, sel)
	begin
		case sel is 
			when '0' => S <= IN0;
			when '1' => S <= IN1;
			when others => S <= (others => 'Z');
		end case;
	end process;
	
end MUXarc;