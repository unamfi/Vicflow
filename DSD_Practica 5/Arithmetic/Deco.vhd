Library IEEE;
Use ieee.std_logic_1164.all;

ENTITY Deco IS

port( d: in std_logic_vector (3 downto 0);
 E: in std_logic;
 y: out std_logic_vector(7 downTo 0));

END Deco;

 
ARCHITECTURE Behavioral OF Deco IS

SIGNAL entrada : std_logic_vector(4 downto 0);

BEGIN

entrada(4) <= E;
entrada(3 downto 0) <= d;

with entrada select

y <= "00000001" when "00000",
 "00000010" when "00001",
 "00000100" when "00010",
 "00001000" when "00011",
 "00010000" when "00100",
 "00100000" when "00101",
 "01000000" when "00110",
 "10000000" when "00111",
 "00000000" when others;

 END Behavioral;
 