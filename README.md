PARALLELLA: Supercomputing for Everyone
========================================	

This repository contains the Parallella board design source files and the FPGA
source files.

## Board Files
Contains the hardware design files of the Parallella and associated hardware.

Board      | Description
-----------|--------------
[parallella-gen1](boards/parallella-gen1)         | Parallella Kickstarter board currently in production
[parallella-template](boards/parallella-template) | KiCad template board for creating daughter cards  
[porcupine](boards/porcupine)                     | Breakout board 
[parallella-gen2](boards/parallella-gen2)         | The next Parallella board (work in progress...)

## FPGA Sources
The table below contains links to some of the key blocks used by the Parallella. All source can be found in "fpga/src"

Board      | Description
-----------|--------------
[elink](src/elink/hdl/elink.v)             | Top level of elink physical interface used by the Epiphany
[ecfg](src/ecfg/hdl/ecfg.v)                | elink configuration register file
[erx](src/erx/hdl/erx.v)                   | elink receiver
[etx](src/etx/hdl/etx.v)                   | elink transmitter
[embox](src/embox/hdl/embox.v)             | Fifo based mailbox with interrupt output
[emmu](src/emmu/hdl/emmu.v)                | Memory address translation unit
[emaxi](src/axi/hdl/emaxi.v)               | AXI master interface
[esaxi](src/axi/hdl/esaxi.v)               | AXI slave interface

## FPGA Projects

## License
Unless otherwise specified the parallella-hw project uses the GPLv3 for RTL code and 
Creative Common Share Alike for board design files. The GPLv3 license notice can be found at the bottom of the file.

##Contribution
We are looking for external contribution to to the Parallella project! If you have something to contribute in the area of board, system, FPGA design, dig in! All pull requests will be considered. Instructions for contributing can be found [HERE](CONTRIBUTING.md). 

