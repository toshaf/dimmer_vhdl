library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_dimmer is
end;

architecture one of test_dimmer is
	signal t_clk : std_logic;
	signal t_brt : unsigned(7 downto 0);
	signal t_opt : std_logic;
begin
	dut : entity work.dimmer(linear)	
		port map(
			clock => t_clk
		, brightness => t_brt
		, output => t_opt
		);
	
	process is
		variable c : std_logic := '0';
	begin
		t_clk <= c;
		c := not c;
		wait for 1 us;
	end process;

	process is
	begin
		t_brt <= to_unsigned(16, 8);
		wait;
	end process;

end one;
