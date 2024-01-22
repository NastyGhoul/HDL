library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity czestotliwosc_1hz is
    Port ( CLK : in  STD_LOGIC;
           CLK_1Hz : out  STD_LOGIC);
end czestotliwosc_1hz;

architecture Behavioral of czestotliwosc_1hz is
signal liczenie : integer range 0 to 131071 := 0;
begin
process(CLK)
begin
	if CLK'event and CLK = '1' then
		if liczenie = 100000 then
			liczenie <= 0;
		else
			liczenie <= liczenie + 1;
		end if;
	end if;
end process;

CLK_1Hz <= '1' when liczenie = 100000 else '0';

end Behavioral;

