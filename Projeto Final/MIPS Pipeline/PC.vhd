--------------------  PC -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity PC is
	generic (WSIZE : natural := 32);
	port(
			pcNovo: in std_logic_vector(WSIZE-1 downto 0);
			pcDepois: out std_logic_vector(WSIZE-1 downto 0)
	);
end PC;

architecture PCarc of PC is 

begin
	pcDepois <= pcNovo;
end PCarc;