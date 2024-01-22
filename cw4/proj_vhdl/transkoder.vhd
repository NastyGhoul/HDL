library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity transkoder_a is
    Port ( liczba : in   STD_LOGIC_VECTOR (3 downto 0);
           liczba_7seg : out   STD_LOGIC_VECTOR (6 downto 0));
end transkoder_a;

architecture Behavioral of transkoder_a is

begin
	with liczba select
	liczba_7seg <= "1000000" when "0000", 
						"1111001" when "0001",
						"0100100" when "0010",
						"0110000" when "0011",
						"0011001" when "0100",
						"0010010" when "0101",
						"0000010" when "0110",
						"1111000" when "0111",
						"0000000" when "1000",
						"0010000" when others;

end Behavioral;

