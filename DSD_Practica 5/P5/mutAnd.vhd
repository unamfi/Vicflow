----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:16 03/07/2016 
-- Design Name: 
-- Module Name:    mutAnd - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mutAnd is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           VA : in  STD_LOGIC_VECTOR (3 downto 0);
           VB : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           R : out  STD_LOGIC_VECTOR (3 downto 0);
           N : out  STD_LOGIC_VECTOR (3 downto 0));
end mutAnd;

architecture Behavioral of mutAnd is

begin


end Behavioral;

