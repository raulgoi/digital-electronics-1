----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2022 03:47:01 PM
-- Design Name: 
-- Module Name: t_ff_rst - Behavioral
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

entity t_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           t : in STD_LOGIC;
           q : out STD_LOGIC;
           q_bar : out STD_LOGIC);
end t_ff_rst;

architecture Behavioral of t_ff_rst is

    signal s_q : std_logic;

begin

p_t_ff_rst : process(clk)
    begin
        if rising_edge(clk) then  -- Synchronous process
            if (rst = '1') then
            
                q     <= '0';
                q_bar <= '1';
                s_q   <= '0';
            
            else 
                s_q   <= (t and (not s_q)) or ((not t) and q);
                q     <= (t and (not s_q)) or ((not t) and q);
                q_bar <= not (t and (not s_q)) or ((not t) and q);
                
            end if;
        end if;
    end process p_t_ff_rst;
end architecture Behavioral;
