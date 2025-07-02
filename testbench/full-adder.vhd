library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture sim of testbench is
    signal A, B, Cin : STD_LOGIC;
    signal SUM, Cout : STD_LOGIC;
begin
    uut: entity work.Full_Adder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            SUM => SUM,
            Cout => Cout
        );

    process
    begin
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        wait;
    end process;
end sim;