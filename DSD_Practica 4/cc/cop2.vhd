LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cop2 IS
PORT (E: IN std_logic_vector(3 DOWNTO 0);
      S: OUT std_logic_vector(3 DOWNTO 0)); 
     
END cop2;

ARCHITECTURE xx OF cop2 IS
BEGIN 

WITH E SELECT
S<= x"0" WHEN x"0",
	x"f" WHEN x"1",
	x"e" WHEN x"2",
	x"d" WHEN x"3",
	x"c" WHEN x"4",
	x"b" WHEN x"5",
	x"a" WHEN x"6",
	x"9" WHEN x"7",
	x"8" WHEN x"8",
	x"7" WHEN x"9",
	x"6" WHEN x"a",
	x"5" WHEN x"b",
	x"4" WHEN x"c",
	x"3" WHEN x"d",
	x"2" WHEN x"e",
	x"1" WHEN x"f",
	"----" WHEN OTHERS;
	
END xx;
	
	