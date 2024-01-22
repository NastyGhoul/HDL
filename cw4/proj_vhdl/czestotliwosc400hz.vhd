library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity czestotliwosc_400Hz is
    Port ( CLK : in  STD_LOGIC;
           CLK_400Hz : out  STD_LOGIC);
end czestotliwosc_400Hz;

architecture Behavioral of czestotliwosc_400Hz is
signal liczenie : integer range 0 to 255 := 0;
begin
process(CLK)
begin
	if CLK'event and CLK = '1' then
		if liczenie = 250 then
			liczenie <= 0;
		else
			liczenie <= liczenie + 1;
		end if;
	end if;
end process;

CLK_400Hz <= '1' when liczenie = 250 else '0';

end Behavioral;

