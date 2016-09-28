library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Arithmetic is
    Port ( VA : in  STD_LOGIC_VECTOR (3 downto 0);
           VB : in  STD_LOGIC_VECTOR (3 downto 0);
			  VS : in  STD_LOGIC_VECTOR (1 downto 0);
			  CiTot : in STD_LOGIC;
			  VR : out  STD_LOGIC_VECTOR (4 downto 0));
			  
end Arithmetic;

architecture Behavioral of Arithmetic is

component FuncionB is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Bi : in  STD_LOGIC;
           Ni : out  STD_LOGIC);
end component;
signal accx: std_logic_vector (3 downto 0);

component SumadorCompleto is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end component;
signal acc: std_logic_vector (2 downto 0);

begin

v1: FuncionB port map (S0=>VS(0), S1=>VS(1), Bi=>VB(0), Ni=>accx(0));
v2: FuncionB port map (S0=>VS(0), S1=>VS(1), Bi=>VB(1), Ni=>accx(1));
v3: FuncionB port map (S0=>VS(0), S1=>VS(1), Bi=>VB(2), Ni=>accx(2));
v4: FuncionB port map (S0=>VS(0), S1=>VS(1), Bi=>VB(3), Ni=>accx(3));

w1: SumadorCompleto port map (a=>VA(0), b=>accx(0), ci=>CiTot, s=>VR(0), co=>acc(0));
w2: SumadorCompleto port map (a=>VA(1), b=>accx(1), ci=>acc(0), s=>VR(1), co=>acc(1));
w3: SumadorCompleto port map (a=>VA(2), b=>accx(2), ci=>acc(1), s=>VR(2), co=>acc(2));
w4: SumadorCompleto port map (a=>VA(3), b=>accx(3), ci=>acc(2), s=>VR(3), co=>VR(4));

end Behavioral;