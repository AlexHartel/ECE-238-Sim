----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2018 03:13:06 PM
-- Design Name: 
-- Module Name: TopModule - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TopModule is
    Port ( Clk : in STD_LOGIC;
           ins : in STD_LOGIC_VECTOR (4 downto 0);
           outs : out STD_LOGIC_VECTOR (7 downto 0)
           );
end TopModule;

architecture Behavioral of TopModule is

component ROM
Port(
a : in STD_LOGIC_VECTOR(3 DOWNTO 0);
clk : in STD_LOGIC;
qspo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);

end component;

begin

SevSegValues : ROM
Port Map
(
a=> ins,
clk => clk,
qspo =>outs
);



end Behavioral;
