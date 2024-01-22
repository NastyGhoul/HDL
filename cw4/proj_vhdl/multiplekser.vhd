library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplekser is
    Port ( liczba1 : in  STD_LOGIC_VECTOR (3 downto 0);
           liczba2 : in  STD_LOGIC_VECTOR (3 downto 0);
           liczba3 : in  STD_LOGIC_VECTOR (3 downto 0);
           liczba4 : in  STD_LOGIC_VECTOR (3 downto 0);
           kanal : in	STD_LOGIC_VECTOR (1 downto 0);
           wyjscie : out  STD_LOGIC_VECTOR (3 downto 0));
end multiplekser;

architecture Behavioral of multiplekser is

begin

	with kanal select
		wyjscie <= liczba1 when "00",
					liczba2 when "01",
					liczba3 when "10",
					liczba4 when others;

end Behavioral;

