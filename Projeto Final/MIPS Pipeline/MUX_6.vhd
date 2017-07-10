-----------------  MUX  6 bits -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_6 is
	port(
			IN0,IN1,IN2,IN3,IN4,IN5: in std_logic_vector(31 downto 0);
			sel: in std_logic_vector (2 downto 0);
			S: out std_logic_vector(31 downto 0)
	);
end MUX_6;

architecture MUXarc of MUX_6 is

begin

	process (IN0,IN1,IN2,IN3,IN4,IN5,sel)
	begin
		case sel is 
			when "000" => S <= IN0;
			when "001" => S <= IN1;
			when "010" => S <= IN2;
			when "011" => S <= IN3;
			when "100" => S <= IN4;
			when "101" => S <= IN5;
			when others => S <= (others => 'Z');
		end case;
	end process;
	
end MUXarc;