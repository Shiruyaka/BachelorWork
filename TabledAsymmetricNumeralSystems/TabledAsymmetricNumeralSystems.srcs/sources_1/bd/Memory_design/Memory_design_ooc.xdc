################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name START_BRAM_clk -period 10 [get_ports START_BRAM_clk]
create_clock -name NB_BRAM_clk -period 10 [get_ports NB_BRAM_clk]
create_clock -name ENCODING_TABLE_BRAM_clk -period 10 [get_ports ENCODING_TABLE_BRAM_clk]
create_clock -name DATA_IN_BRAM_clk -period 10 [get_ports DATA_IN_BRAM_clk]
create_clock -name DATA_OUT_BRAM_clk -period 10 [get_ports DATA_OUT_BRAM_clk]
create_clock -name processing_system7_0_FCLK_CLK0 -period 20 [get_pins processing_system7_0/FCLK_CLK0]

################################################################################