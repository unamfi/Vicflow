library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UnidadAritmetica is
	port (PA : in std_logic_vector (3 downto 0);
			PB : in std_logic_vector (3 downto 0);
			SL : in std_logic_vector (1 downto 0);
			Cin  : in std_logic;
			E  : in std_logic;
			R  : out std_logic_vector (7 downto 0));
end UnidadAritmetica;

architecture Behavioral of UnidadAritmetica is

component SumadorParalelo is
    Port ( Bi : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Ni : out  STD_LOGIC);
end component;

component SumadorCompleto is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end component;

component Deco is
	port( Ebl: in std_logic;
			ent: in std_logic_vector (4 downto 0);
			sal: out std_logic_vector(7 downto 0));
END component;
	
signal sigA : std_logic_vector (3 downto 0);
signal sigB : std_logic_vector (2 downto 0);
signal sigC : std_logic_vector (4 downto 0);

begin

FA1: SumadorParalelo PORT MAP (S0=>SL(0), S1=>SL(1), Bi=>PB(0), Ni=>sigA(0));
FA2: SumadorParalelo PORT MAP (S0=>SL(0), S1=>SL(1), Bi=>PB(1), Ni=>sigA(1));
FA3: SumadorParalelo PORT MAP (S0=>SL(0), S1=>SL(1), Bi=>PB(2), Ni=>sigA(2));
FA4: SumadorParalelo PORT MAP (S0=>SL(0), S1=>SL(1), Bi=>PB(3), Ni=>sigA(3));

FB1: SumadorCompleto PORT MAP (ci=>Cin, a=>PA(0), b=>sigA(0), co=>sigB(0), s=>sigC(0));
FB2: SumadorCompleto PORT MAP (ci=>sigB(0), a=>PA(1), b=>sigA(1), co=>sigB(1), s=>sigC(1));
FB3: SumadorCompleto PORT MAP (ci=>sigB(1), a=>PA(2), b=>sigA(2), co=>sigB(2), s=>sigC(2));
FB4: SumadorCompleto PORT MAP (ci=>sigB(2), a=>PA(3), b=>sigA(3), co=>sigC(4), s=>sigC(3));

FC1: Deco PORT MAP (Ebl=>E, ent(0)=>sigC(0), ent(1)=>sigC(1), ent(2)=>sigC(2), ent(3)=>sigC(3), ent(4)=>sigC(4), sal(7 downto 0)=>R(7 downto 0)); 

--DE1: Deco PORT MAP (Ebl=>E, ent(0)=>sigC(0), ent(1)=>sigC(1), ent(2)=>sigC(2), ent(3)=>sigC(3), sal(9 downto 0)=>sigD(9 downto 0));
--DE1: Deco PORT MAP (Ebl=>E, ent(0)=>sigC(0), ent(1)=>sigC(1), ent(2)=>sigC(2), ent(3)=>sigC(3), sal(0)=>sigD(0), sal(1)=>sigD(1), sal(2)=>sigD(2), sal(3)=>sigD(3), sal(4)=>sigD(4), sal(5)=>sigD(5), sal(6)=>sigD(6), sal(7)=>sigD(7), sal(8)=>sigD(8), sal(9)=>sigD(9));
--DE1: Deco PORT MAP (Ebl=>E, ent(0)=>sigC(0), ent(1)=>sigC(1), ent(2)=>sigC(2), ent(3)=>sigC(3), sal(9 downto 0)=>R(9 downto 0));

--DE2: Display PORT MAP (SIGN(9 downto 0)=>sigD(9 downto 0), SIGN(10)=>sigC(4), LEDS(7 downto 0)=>R(7 downto 0));
--DF1: Decodificador PORT MAP ( SIGN(0)=>sigD(0), SIGN(1)=>sigD(1), SIGN(2)=>sigD(2), SIGN(3)=>sigD(3), SIGN(4)=>sigD(4), SIGN(5)=>sigD(5), SIGN(6)=>sigD(6), SIGN(7)=>sigD(7), SIGN(8)=>sigD(8), SIGN(9)=>sigD(9), SIGN(10)=>sigC(4), LEDS(7 downto 0)=>R(7 downto 0));
end Behavioral;

