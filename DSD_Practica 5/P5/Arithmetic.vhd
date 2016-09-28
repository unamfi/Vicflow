----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:23 03/22/2016 
-- Design Name: 
-- Module Name:    Arithmetic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Arithmetic is
    Port ( BA : in  STD_LOGIC_VECTOR (3 downto 0);
           AA : in  STD_LOGIC_VECTOR (3 downto 0);
           SA : in  STD_LOGIC_VECTOR (1 downto 0);
           Ci : in  STD_LOGIC;
           RA : out  STD_LOGIC_VECTOR (4 downto 0));
end Arithmetic;

architecture Behavioral of Arithmetic is

component sumT is
    Port ( VA : in  STD_LOGIC;
           VB : in  STD_LOGIC;
           CiT : in  STD_LOGIC;
           St : out  STD_LOGIC);
end component;
signal accx: std_logic_vector(3 downto 0);--acarrea 4 bits

component p5 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s : out  STD_LOGIC;
           co : out  STD_LOGIC);
end component;
signal acc: std_logic_vector(2 downto 0);--acarrea 3 bits


begin

v1:sumT port map(VA=>), b=> VB(0), ci=>CiT, s=>St(0),co=>acc(0));
v2:sumT port map(a=>VA(1), b=> VB(1), ci=>acc(0), s=>St(1),co=>acc(1));
v3:sumT port map(a=>VA(2), b=> VB(2), ci=>acc(1), s=>St(2),co=>acc(2));
v4:sumT port map(a=>VA(3), b=> VB(3), ci=>acc(2), s=>St(3),co=>St(4)




end Behavioral;

