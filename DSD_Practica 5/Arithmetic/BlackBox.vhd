library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BlackBox is
Port ( 	SEL : in  STD_LOGIC_VECTOR (1 downto 0);
         NA : in  STD_LOGIC_VECTOR (3 downto 0);
			NB : in  STD_LOGIC_VECTOR (3 downto 0);
			CONT : in STD_LOGIC;
			SALE : out  STD_LOGIC_VECTOR (7 downto 0));

end BlackBox;

architecture Behavioral of BlackBox is

component Arithmetic is
    Port ( VA : in  STD_LOGIC_VECTOR (3 downto 0);
           VB : in  STD_LOGIC_VECTOR (3 downto 0);
			  VS : in  STD_LOGIC_VECTOR (1 downto 0);
			  CiTot : in STD_LOGIC;
			  VR : out  STD_LOGIC_VECTOR (4 downto 0));
			  
end component;
signal accy: std_logic_vector (4 downto 0);

--------------------------------------------------------------
component Deco IS
	port( d: in std_logic_vector (3 downto 0);
			E: in std_logic;
			y: out std_logic_vector(7 downTo 0));
end component;

--------------------------------------------------------------

begin

A1: Arithmetic port map (VS(0)=>SEL(0), VS(1)=>SEL(1), VA(0)=>NA(0), VA(1)=>NA(1), VA(2)=>NA(2),VA(3)=>NA(3), VB(0)=>NB(0), VB(1)=>NB(1), VB(2)=>NB(2), VB(3)=>NB(3), CiTot=>CONT, VR(0)=>accy(0), VR(1)=>accy(1), VR(2)=>accy(2), VR(3)=>accy(3), VR(4)=>accy(4));

B1: Deco port map (E=>CONT, d(0)=>accy(0), d(1)=>accy(1), d(2)=>accy(2), d(3)=>accy(3), y(0)=>SALE(0), y(1)=>SALE(1), y(2)=>SALE(2), y(3)=>SALE(3), y(4)=>SALE(4), y(5)=>SALE(5), y(6)=>SALE(6), y(7)=>accy(4));


end Behavioral;

