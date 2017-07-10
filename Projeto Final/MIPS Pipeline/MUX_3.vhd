--------------------  MUX 3 -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_3 is
	generic (WSIZE : natural := 32);
	port(
			IN0, IN1, IN2: in std_logic_vector(WSIZE-1 downto 0);
			sel: in std_logic_vector(1 downto 0);
			S: out std_logic_vector(WSIZE-1 downto 0)
	);
end MUX_3;

architecture MUX3arc of MUX_3 is

begin

	process (IN0, IN1, IN2, sel)
	begin
		case sel is 
			when "00" => S <= IN0;
			when "01" => S <= IN1;
			when "10" => S <= IN2;
			when others => S <= (others => 'Z');
		end case;
	end process;
	
end MUX3arc;