library ieee;
use ieee.std_logic_1164.all;

-- Testbench entity
entity TB_NAME is
end entity TB_NAME;

architecture TB_NAME_tb of TB_NAME is
  -- Signals
  
  -- Components
  -- component COMPONENT_NAME
  --   port (
  --     x : in std_logic;
  --     y : in std_logic;
  --   );
  -- end component;

begin
  -- Instantiations
  -- uut: COMPONENT_NAME
  --   port map(
  --     x => x,
  --     y => y
  --   );

    stimulus: process
  begin
    -- Test cases

    -- End the simulation
    report "Simulation complete" severity note;    
    wait;
  end process stimulus;

end architecture TB_NAME_tb;
