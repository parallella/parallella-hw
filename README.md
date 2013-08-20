--------------------------------------------------------------------------------
This repository contains the board design sources and FPGA HDL sources for 
the Parallella board and various accessories.

The Parallella board has the following main components:

	-Zynq-7000 Series Dual-core ARM A9 CPU (Z-7010 or Z-7020)
	-16 or 64-core Epiphany Multicore Accelerator
	-1GB RAM
	-MicroSD card interface
	-10/100/1000 Ethernet
	-HDMI port
	-2x USB 2.0
	-16MB QSPI Flash
	-4 general purpose expansion connectors
   
--------------------------------------------------------------------------------
Directory Structure:
README   		- short package introductory file

COPYING  		- GNU GENERAL PUBLIC LICENSE file

common/  		- Design files common to all boards such as
				HDL modules that are used on all Parallella versions

prototype0/		- Zedboard based Parallella FPGA files (board sources not available)

gen0/			- Early version of Parallella board (for reference only!)  

gen1/			- First release version of Parallella board

------------------------------------------------------------------------
Each Parallella board(gen0, gen1, etc) includes the following directories:

bom/			-Bill of Material. All components used to build Parallella board

docs/			-Reference manuals

layout/			-Layout sources in Cadence Allegro file format(.brd)

manufacturing/	-Packages used by board fabrication and assembly houses

mechanical		-2D/3D models

schematics		-Board schemstics in PDF and Orcard formats

