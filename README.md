# fpga-building-blocks
Building FPGA components to better understand how FPGAs work from the ground up

## Architecture
- K = 4 lookup tables (LUT4)
- FLEs containing one LUT4, an optional DFF, and a 2:1 output selection mux
- CLBs built from 4 FLEs
- A 2×2 fabric composed of 4 CLBs

## Flow Description 
From src/sim directory, these commands can be run:
- make run <testbench_filename>
- make rungui <testbench_filename>
- make clean