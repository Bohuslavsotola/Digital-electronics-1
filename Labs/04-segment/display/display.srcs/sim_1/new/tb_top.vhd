----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2021 08:17:41
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
 signal SW       : std_logic_vector(4 - 1 downto 0);
 signal LED      : std_logic_vector(8 - 1 downto 0);
 signal AN       : std_logic_vector(8 - 1 downto 0);
 signal CA       : STD_LOGIC;
 signal CB       : STD_LOGIC;
 signal CC       : STD_LOGIC;
 signal CD       : STD_LOGIC;
 signal CE       : STD_LOGIC;
 signal CF       : STD_LOGIC;
 signal CG       : STD_LOGIC;
begin

-- Connecting testbench signals with comparator_2bit entity (Unit Under Test)
    uut_comparator_2bit : entity work.top
        port map(
            SW_i           => SW,
            LED_o          => seg,
            AN_o           => AN
            
           
        );

  p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

       
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;


end Behavioral;
