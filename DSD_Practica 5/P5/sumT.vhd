
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity sumT is
    Port ( VA : in  STD_LOGIC_VECTOR (3 downto 0);
           VB : in  STD_LOGIC_VECTOR (3 downto 0);
           CiT : in  STD_LOGIC;
           St : out  STD_LOGIC_VECTOR (4 downto 0));-- menos significativo
           --CoT : out  STD_LOGIC); --mas signifficativo
end sumT;

architecture Behavioral of sumT is

 component p5 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end component;
signal acc: std_logic_vector(2 downto 0);--acarrea 3 bits
begin

u1:p5 port map(a=>VA(0), b=> VB(0), ci=>CiT, s=>St(0),co=>acc(0));
u2:p5 port map(a=>VA(1), b=> VB(1), ci=>acc(0), s=>St(1),co=>acc(1));
u3:p5 port map(a=>VA(2), b=> VB(2), ci=>acc(1), s=>St(2),co=>acc(2));
u4:p5 port map(a=>VA(3), b=> VB(3), ci=>acc(2), s=>St(3),co=>St(4));

end Behavioral;

