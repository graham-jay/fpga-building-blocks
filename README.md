# fpga-building-blocks
Building FPGA components to better understand how FPGAs work from the ground up

## Architecture
- K = 4 lookup tables (LUT4) with direct input connections
- BLEs containing one LUT4, an optional DFF, and a 2:1 output selection mux
- CLBs built from 4 BLEs with direct input connections (no input crossbar)
- Tile composed of a CLB, a x- and y- connection boxes, and a switch box

## RTL Heirarchy
``` bash
tile.sv
   ├── switchbox.sv
   ├── connectionbox.sv
   └── clb.sv
         └── ble.sv
               ├── lut4.sv
               ├── dff.sv
               └── mux2.sv
```

## Verification Flow
From src/sim directory, these commands can be run:
- make run <testbench_filename>
- make rungui <testbench_filename>
- make clean