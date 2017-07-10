-------------------- ULA -------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ulaMIPS is
	generic (WSIZE : natural := 32);
	port (
			opcode : in std_logic_vector(3 downto 0);
			A, B : in std_logic_vector(WSIZE-1 downto 0);
			Z : out std_logic_vector(WSIZE-1 downto 0);
			vai, zero, ovfl : out std_logic
	);
end ulaMIPS;

architecture ulaExec of ulaMIPS is

begin

	process (A, B, opcode)

	constant zeros : std_logic_vector(WSIZE-1 downto 0) := (others => '0');
	constant ones : std_logic_vector(WSIZE-1 downto 0) := (others => '1');
	
	variable tmp : std_logic_vector(WSIZE-1 downto 0);
	variable soma : std_logic_vector(WSIZE-1 downto 0);
	variable cin, cout : std_logic;
	
	begin
			vai <= '0';
			ovfl <= '0';
		--  O código da entrada "opcode" determina que tarefa será executada
			case opcode is
				when "0000"  =>	-- Lógica "E" bit a bit
					tmp := A and B; 
				when "0001"  =>	-- Lógica "OU" bit a bit
					tmp := A or B; 
				when "0010"  =>	-- Adição
					for i in 0 to (WSIZE-1) loop
						if(i = 0) then
							cin := '0';
						else
							cin := cout;
						end if;
						soma(i) := A(i) xor B(i) xor cin;
						cout := (A(i) and B(i)) or ((A(i) xor B(i)) and cin);
					end loop;
					vai <= cout;
					ovfl <= cin xor cout;
					tmp := soma;
				when "0011"  =>	-- Subtração
					for i in 0 to (WSIZE-1) loop
						if(i = 0) then
							cin := '0';
						else
							cin := cout;
						end if;
						soma(i) := A(i) xor B(i) xor cin;
						cout := ((not A(i)) and B(i)) or (B(i) and cin) or (cin and (not A(i)));
					end loop;
					vai <= cout;
					ovfl <= cin xor cout;
					tmp := soma;
				when "0100"  =>	-- Set on Less Then
					if(signed(A) < signed(B)) then
						tmp := (0 => '1', others => '0');
					else
						tmp := zeros;
					end if;
				when "0101"  =>	-- Lógica "COMPLEMENTO DE OU" bit a bit
					tmp := A nor B;
				when "0110"  =>	-- Lógica "OU ESCLUSIVO" bit a bit
					tmp := A xor B;	
				when "0111"  =>	-- Shift Left Lógico
					tmp := std_logic_vector(unsigned(B) sll to_integer(signed(A)));
				when "1000"  =>	-- Shift Right Lógico
					tmp := std_logic_vector(unsigned(B) srl to_integer(signed(A)));
				when "1001"  =>	-- Shift Right Aritmético
					tmp := to_stdlogicvector(to_bitvector(B) sra to_integer(signed(A)));
				when others =>	-- Saída em alta impedância para operação indefinida
					tmp := (others => 'Z');
			end case;
			
			if(tmp = zeros) then
				zero <= '1';
			else
				zero <= '0';
			end if;
			
			Z <= tmp;
		
   end process;

end ulaExec;
