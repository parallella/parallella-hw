# parallella-hw

This repository contains the board design sources and FPGA HDL sources for 
the Parallella board and various accessories.

## Directory Structure

boards/         -  Board design files, all projects
    archive/        - Older boards no longer supported,
        proto/          - Zedboard based prototype (Jan 2013)
        gen0/           - First Parallella board, too hot (Apr 2013)
        gen1.0/         - Solid board, but hdmi wiring bug (Oct 2013)
        gen1.1/         - Fully working board (Dec 2013)
    libraries/      - Shared schematic and PCB tools libraries
    parallella-I/   - Current Parallella-I board schematic and PCB source
        constraints/    - Constraints files for board-specific pin locations
        docs/           - Docs specific to each board
        firmware/       - Low-level firmware (fsbl, u-boot, etc.)
        mfg/            - Manufacturing files: Fab Gerbers, Assembly docs

fpga/           -  FPGA design files and projects
    edk/            - EDK sources
        parallella_7020_headless/ - EDK for headless 7020-based Parallella
    externals/      - Container for external repositories used by our projects
    hdl/            - Verilog source files
        axi/            - General AXI interface modules
        clocks/         - Clock generation
        common/         - General-purpose synchronizers/muxs/debouncers/etc.
        elink/          - eLink modules
        fifos/          - technology-independent FIFO modules
        parallella-I/   - Modules specific to the Parallella
    ip/             - Tool-specific IP generation (CoreGen) sources
    projects/       - One folder for each project
        parallella_7020_headless/
        parallella_64_7020_headless

## FPGA Project Build instructions

See README files in the individual project directories.

## License

COPYING         -  GNU GENERAL PUBLIC LICENSE file


