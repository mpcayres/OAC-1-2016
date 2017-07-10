LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity bin_7seg is
    port(
			DADO : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			S : out STD_LOGIC_vector (7 downto 0)
    );
 end bin_7seg;

 architecture decodificador of bin_7seg is
 begin
 
 process (DADO)
 begin
	 case DADO is
		 when "0000"	=> S <= "11000000";  -- '0'
		 when "0001"	=> S <= "11111001";  -- '1'
		 when "0010"	=> S <= "10100100";  -- '2'
		 when "0011"	=> S <= "10110000";  -- '3'
		 when "0100"	=> S <= "10011001";  -- '4'
		 when "0101"	=> S <= "10010010";  -- '5'
		 when "0110"	=> S <= "10000010";  -- '6'
		 when "0111"	=> S <= "11111000";  -- '7'
		 when "1000"	=> S <= "10000000";  -- '8'
		 when "1001"	=> S <= "10010000";  -- '9'
		 when "1010"	=> S <= "10001000";  -- 'A'
		 when "1011"	=> S <= "10000011";  -- 'B'
		 when "1100"	=> S <= "11000110";  -- 'C'
		 when "1101"	=> S <= "10100001";  -- 'D'
		 when "1110"	=> S <= "10000110";  -- 'E'
		 when "1111"	=> S <= "10001110";  -- 'F'
		 when others	=> S <= "11111111";  
	 end case;
end process;
	 
end decodificador;
