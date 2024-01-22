library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity licznik is
    Port ( zegar : in STD_LOGIC;
			  reset : in STD_LOGIC;
           stop : in STD_LOGIC;
			  wyjscie1 : out STD_LOGIC_VECTOR (3 downto 0);
			  wyjscie2 : out STD_LOGIC_VECTOR (3 downto 0);
			  wyjscie3 : out STD_LOGIC_VECTOR (3 downto 0);
			  wyjscie4 : out STD_LOGIC_VECTOR (3 downto 0));
end licznik;

architecture Behavioral of licznik is

signal liczba1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal liczba2 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal liczba3 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal liczba4 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
 
begin
 
process(zegar, reset)
begin
	if reset = '0' then
		liczba1 <= "0000";
		liczba2 <= "0000";
		liczba3 <= "0000";
		liczba4 <= "0000";
		
	elsif zegar = '1' and zegar'event then
			if stop = '1' then			
				if liczba1 = "1001" then
					liczba1 <= "0000";
					
					if liczba2 = "1001" then
						liczba2 <= "0000";
						
						if liczba3 = "1001" then
							liczba3 <= "0000";
							
							if liczba4 = "1001" then
								liczba4 <= "0000";
							else
								liczba4 <= liczba4 + 1;
							end if;
							
						else
							liczba3 <= liczba3 + 1;
						end if;		
						
					else
						liczba2 <= liczba2 + 1;
					end if;
					
				else
					liczba1 <= liczba1 + 1;
				end if;
			end if;
	end if;
end process;

wyjscie1 <= liczba1;
wyjscie2 <= liczba2;
wyjscie3 <= liczba3;
wyjscie4 <= liczba4;

end Behavioral;

