-------------------- BREG --------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bregMIPS is
	generic (WSIZE : natural := 32);
	port (
			clk, rst, wren : in std_logic;
			radd1, radd2, wadd : in std_logic_vector(4 downto 0);
			wdata : in std_logic_vector(WSIZE-1 downto 0);
			r1, r2 : out std_logic_vector(WSIZE-1 downto 0)
	);
end bregMIPS;

architecture bregArch of bregMIPS is

constant zero32 : std_logic_vector(WSIZE-1 downto 0) := (others => '0');

type regFile is array(0 to WSIZE-1) of std_logic_vector(WSIZE-1 downto 0);
signal regs : regFile := (others => zero32);

begin

	r1 <= regs(to_integer(unsigned(radd1)));
	r2 <= regs(to_integer(unsigned(radd2)));
	
	process (clk, rst, wren, wadd, wdata) is	
	begin
		if(rst = '1') then
			regs <= (others => zero32);
		elsif rising_edge(clk) then
			if wren = '1' and 0 /= to_integer(unsigned(wadd)) then
				regs(to_integer(unsigned(wadd))) <= wdata;
			end if;
		end if;
	 
	 end process;

end bregArch;