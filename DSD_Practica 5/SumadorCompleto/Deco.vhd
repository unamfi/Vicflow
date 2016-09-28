LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Deco IS

PORT( Ebl: in std_logic;
		ent: in std_logic_vector (4 downto 0);
		sal: out std_logic_vector(7 downto 0));

END Deco;

ARCHITECTURE Behavioral OF Deco IS
BEGIN

sal <="11111111" when Ebl='0' else
      "00000011" when Ebl='1' and ent="00000" else
      "10011111" when Ebl='1' and ent="00001" else
      "00100101" when Ebl='1' and ent="00010" else
      "00001101" when Ebl='1' and ent="00011" else
      "10011001" when Ebl='1' and ent="00100" else
      "01001001" when Ebl='1' and ent="00101" else
      "01000001" when Ebl='1' and ent="00110" else
		"00011011" when Ebl='1' and ent="00111" else
		"00000001" when Ebl='1' and ent="01000" else
		"00001001" when Ebl='1' and ent="01001" else
      "00000010" when Ebl='1' and ent="10000" else
      "10011110" when Ebl='1' and ent="10001" else
      "00100100" when Ebl='1' and ent="10010" else
      "00001100" when Ebl='1' and ent="10011" else
      "10011000" when Ebl='1' and ent="10100" else
      "01001000" when Ebl='1' and ent="10101" else
      "01000000" when Ebl='1' and ent="10110" else
		"00011010" when Ebl='1' and ent="10111" else
		"00000000" when Ebl='1' and ent="11000" else
		"00001000" when Ebl='1' and ent="11001";

END Behavioral;