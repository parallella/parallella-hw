# parallella-hw

This repository contains the board design sources and FPGA HDL sources for 
the Parallella board and various accessories.

## Directory Structure

```
boards/         -  Board design files, all projects
    archive/        - Older boards no longer supported,
        proto/          - Zedboard based prototype (Jan 2013)
        gen0/           - First Parallella board, too hot (Apr 2013)
        gen1.0/         - Solid board, but hdmi wiring bug (Oct 2013)
        gen1.1/         - Fully working board (Dec 2013)
    libraries/      - Shared schematic and PCB tools libraries
        kicad/          - KiCad schematic (.lib/.dcm) and 3D source (.scad/.wrl) libs
            adapteva-kicad.pretty/  - KiCad footprint (.mod) library
                packages3d/  - 3D models for library parts, with some sources
            scripts/        - Adapteva Kicad/BOM scripts in Python
    parallella-I/   - Current Parallella-I board schematic and PCB source
        constraints/    - Constraints files for board-specific pin locations
        docs/           - Docs specific to each board
        firmware/       - Low-level firmware (fsbl, u-boot, etc.)
        mfg/            - Manufacturing files: Fab Gerbers, Assembly docs
    parallella-template  - KiCad template files for parallella daughtercards
        meta/           - Metadata files for template
    parallella-porcupine - Breakout board for Parallella-I

fpga/           -  FPGA design files and projects
    bitstreams/     - Latest generated bitstreams
    edk/            - EDK sources
        parallella_7010_hdmi/     - EDK for hdmi-enabled 7010-based Parallella
        parallella_7020_hdmi/     - EDK for hdmi-enabled 7020-based Parallella
        parallella_7010_headless/ - EDK for headless 7010-based Parallella
        parallella_7020_headless/ - EDK for headless 7020-based Parallella
    externals/      - Container for external repositories used by our projects
        fpgahdl_xilinx/   - Submodule for HDMI library modules from ADI
    hdl/            - Verilog source files
        axi/            - General AXI interface modules
        clocks/         - Clock generation
        common/         - General-purpose synchronizers/muxs/debouncers/etc.
        elink/          - eLink modules
        fifos/          - technology-independent FIFO modules
        gpio/           - modules for GPIO pins
        parallella-I/   - Modules specific to the Parallella
    ip/             - Tool-specific IP generation (CoreGen) sources
    projects/       - One folder for each project
        parallella_64_7020_hdmi/
        parallella_64_7020_headless/
        parallella_7020_hdmi/
        parallella_7010_hdmi/
        parallella_7020_headless/
        parallella_7010_headless/
```

## FPGA Project Build instructions

See README files in the individual project directories.

## License

COPYING         -  GNU GENERAL PUBLIC LICENSE file


