library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SumadorParalelo is
    Port ( Bi : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Ni : out  STD_LOGIC);
end SumadorParalelo;

architecture Behavioral of SumadorParalelo is

begin

Ni<=((Bi and S0) or (not Bi and S1));

end Behavioral;