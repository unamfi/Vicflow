library ieee;
use ieee.std_logic_1164.all;

ENTITY Display IS
	PORT(SIGN: IN std_logic_vector(10 DOWNTO 0);
		  LEDS: OUT std_logic_vector(7 DOWNTO 0));
END Display;

architecture Behavioral of Display is

begin 

with SIGN select
LEDS<="00000011" when "00000000001",  --x = numeros en hexadecimal
		"10011111" when "00000000010",  --salida when entrada
		"00100101" when "00000000100",
		"00001101" when "00000001000",
		"10011001" when "00000010000",
		"01001001" when "00000100000",
		"01000001" when "00001000000",
		"00011011" when "00010000000",
		"00000001" when "00100000000",
		"00001001" when "01000000000",
		"00000010" when "10000000001",  --x = numeros en hexadecimal
		"10011110" when "10000000010",  --salida when entrada
		"00100100" when "10000000100",
		"00001100" when "10000001000",
		"10011000" when "10000010000",
		"01001000" when "10000100000",
		"01000000" when "10001000000",
		"00011010" when "10010000000",
		"00000000" when "10100000000",
		"00001000" when "11000000000",
		"--------" when others;
	
end Behavioral;