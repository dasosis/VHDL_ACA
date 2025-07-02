library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture sim of testbench is
    signal A  : std_logic_vector(1 downto 0);
    signal EN : std_logic;
    signal Y  : std_logic_vector(3 downto 0);
begin
    uut: entity work.Decoder_2to4
        port map (
            A  => A,
            EN => EN,
            Y  => Y
        );

    process
    begin
        -- All possible input combinations for A and EN
        EN <= '0'; A <= "00"; wait for 10 ns;
        EN <= '0'; A <= "01"; wait for 10 ns;
        EN <= '0'; A <= "10"; wait for 10 ns;
        EN <= '0'; A <= "11"; wait for 10 ns;
        EN <= '1'; A <= "00"; wait for 10 ns;
        EN <= '1'; A <= "01"; wait for 10 ns;
        EN <= '1'; A <= "10"; wait for 10 ns;
        EN <= '1'; A <= "11"; wait for 10 ns;
        wait;
    end process;
end sim;
