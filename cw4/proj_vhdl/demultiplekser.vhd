library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity demultiplekser is
    Port ( kanal : in  STD_LOGIC_VECTOR (1 downto 0);
           anody : out  STD_LOGIC_VECTOR (3 downto 0));
end demultiplekser;

architecture Behavioral of demultiplekser is

begin

	with kanal select
	anody <= "1110" when "00",
				"1101" when "01",
				"1011" when "10",
				"0111" when others;

end Behavioral;

