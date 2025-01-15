# 16_1mux-using-4_1-mux
16:1 Multiplexer using 4:1 Multiplexers in Verilog
This project demonstrates the implementation of a 16:1 multiplexer (MUX) using four instances of 4:1 multiplexers (MUXs) in Verilog. A MUX is a combinational circuit that selects one of several input signals and forwards the selected input to a single output line.

Overview
The 16:1 MUX is constructed using the hierarchical approach:

First Level: Four 4:1 MUXs are used to select from 16 input lines.

Second Level: A single 4:1 MUX is used to select from the outputs of the first level MUXs.
