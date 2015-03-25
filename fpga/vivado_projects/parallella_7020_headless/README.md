# FPGA PROJECT 

parallella_7020_headless - Basic interface to Epiphany E16 on Parallella-I board.

## Toolchain

Xilinx Vivado version 2014.2

## Target Devices

* Zynq xc7z020clg400-1
* Epiphany E16G301

## Dependencies

* hdl sources in ../../hdl
* edk project in ../../edk-vivado/parallella_7020_headless
* constraints in ../../../boards/parallella-I/constraints

## Project Creation

To create the Vivado project if it has not been done already, i.e. if this is a fresh copy of the repository:

1.  In a terminal window, navigate to the project directory (<repository>/fpga/projects-vivado/parallella_7020_headless/).

2.  Set Xilinx/Vivado environment variables, e.g. ". /opt/Xilinx/Vivado/2014.2/settings64.sh".

3.  Execute the tcl script "parallella_7020_headless.tcl" in Vivado:

    ```
    $ vivado -mode batch -source parallella_7020_headless.tcl
    ```
4.  Vivado will generate several screens of output, including (in my case at least) two Critical Warnings:

    ```
    CRITICAL WARNING: [Board 49-4] Problem parsing board_part file -
    /opt/Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/1.0/board_part.xml, The board part
    'xc7z045ffg900-2' is either not supported or invalid.
    CRITICAL WARNING: [Board 49-4] Problem parsing board_part file -
    /opt/Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/0.9/board_part.xml, The board part
     'xc7z045ffg900-2' is either not supported or invalid.
    ```
This seems odd since that part # is not referenced in the design.

5.  The script concludes with "INFO: Project created:parallella_7020_headless."  Any other warnings or errors are unexpected.

## Build instructions

1.  Be sure to update the version.v file with a new version number, and type or platform if needed.

2.  Launch the Xilinx Vivado tool (set environment variables as needed)

3.  Open the project fpga/projects/parallella_7020_headless/parallella_7020_headless.xpr.

4.  From the GUI, in the Flow Navigator on the left side, select "Generate Bitstream"

5.  Answer "Yes" to "OK to launch synthesis and implementation?"

## Creating derivative projects

To create a new project using this one as a base, open the project in Vivado and do "Save Project as...," specifying your new directory and project name.  The current source files may be left in place by leaving "Import all files to the new project" unchecked.

In the new project directory, create a new copy of version.v and update it with your settings.  After opening the new Vivado project you will have to remove the old 'version.v" and add the new local copy.  Select the file in the "sources" window, then in the "source file properties" windows set the type to "Verilog Header" and check the "Global" box, then press "apply."  The project is now ready to build.

## Output

The generated bitstream file will be found in the directory
*parallella_7020_headless.runs/impl_1*
To convert this to a raw binary file and copy it to the ../bitstreams directory, run the script 'getbits'.

##  Critical Warnings

The following 2 critical warnings are produced during both synthesis and implementation, and should be ignored.
```
    CRITICAL WARNING: [Board 49-4] Problem parsing board_part file -
    /opt/Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/1.0/board_part.xml,
    The board part 'xc7z045ffg900-2' is either not supported or invalid.
    CRITICAL WARNING: [Board 49-4] Problem parsing board_part file -
    /opt/Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/0.9/board_part.xml,
    The board part 'xc7z045ffg900-2' is either not supported or invalid.
```

Any other critical warnings are significant and should be investigated.

## Timing errors

If FEATURE_CCLK_DIV is defined and the CCLK is set above 460MHz, there will be a timing failure reported because the BUFG buffer used to clock the OSERDESE2 that generates the core clock for the epiphany has a switching limit of 464MHz:

```
[Par 450] At least one timing constraint is impossible to meet because 
component switching limit violations have been detected for a constrained 
component. A timing constraint summary below shows the failing constraints 
(preceded with an Asterisk (*)). Please use the Timing Analyzer (GUI) or 
TRCE (command line) with the Mapped NCD and PCF files to evaluate the 
component switching limit violations in more detail...
```
and from the TRACE report:
```
--------------------------------------------------------------------------------
Slack: -0.489ns (period - min period limit)
  Period: 1.666ns
  Min period limit: 2.155ns (464.037MHz) (Tbcper_I(Fmax))
  Physical resource: parallella/ewrapper_link_top/io_clock_gen/clkout1_buf/I0
  Logical resource: parallella/ewrapper_link_top/io_clock_gen/clkout1_buf/I0
  Location pin: BUFGCTRL_X0Y3.I0
  Clock network: parallella/ewrapper_link_top/io_clock_gen/clkout0
--------------------------------------------------------------------------------
```

What I don't understand is why this is reported as an error for the FEATURE_CCLK_DIV case but not for the basic case, even though the basic case has the same BUFG macro on the same clock signal.  We have verified proper operation of the BUFG->OBUFDS outputs over 700MHz with the Zynq devices, so we're confident that this will work at least up to 600MHz as these projects implement it.  If that bothers you feel free to un-define the FEATURE_CCLK_DIV macro and limit yourself to running at the full clock rate.

## Notes

* TIMING: Note that the FPGA-side eLink receiver has a timing constraint of only 150MHz = 300Mb/s DDR.  The FPGA-transmit interface passes timing at 300MHz = 600Mb/s.  The SDK will set the epiphany-fpga clock speed to 150MHz.

## TODO / Wishlist

* Create makefile-based "non-project" build flow.
* Extract technology-dependent blocks from inner modules, move to top level.
* Replace RTL serializer/deserializer logic with Zynq IOSERDES modules for better timing.


