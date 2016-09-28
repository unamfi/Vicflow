library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SumadorCompleto is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end SumadorCompleto;

architecture Behavioral of SumadorCompleto is

begin

s<=(a xor b xor ci);
co<=((a and (b xor ci)) or (b and ci));

end Behavioral;