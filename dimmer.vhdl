library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dimmer is
	port (
		clock      : std_logic;
		brightness : unsigned(7 downto 0);
		output     : out std_logic
	);
end dimmer;

architecture linear of dimmer is
begin
	process(clock) is
		variable counter : unsigned(7 downto 0) := "00000000";
	begin
		if rising_edge(clock) then
			counter := counter + 1;
			if counter > brightness then
				output <= '0';
			else
				output <= '1';
			end if;
		end if;
	end process;

end linear;
