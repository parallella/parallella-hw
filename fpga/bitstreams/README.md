#  FPGA BITSTREAMS

## Description

Home of generated bitstreams from all FPGA projects.

## To use these files with the Parallella

1.  Choose the file you want based on the hardware you have

	1.  FPGA, either "7010" or "7020"
	2.  Epiphany chip, either "E16" or "E64"

2.  And the features you want

	1.  Low-power/low-resource "headless" (no display) or "HDMI"
	2.  Basic single-ended GPIOs "gpiose" or peripheral-rich "megaio"

  For example, the file "parallella_e16_headless_gpiose_7010.bit.bin" is for an E16 Epiphany
  running on a board with a Zynq 7010, has no monitor output and 24 basic single-ended GPIOs.

  (Note the megaio versions are not yet available in this repository, keep an eye on the forum)

3.  Copy the chosen file to the BOOT partition of your already-formatted SD card.

4.  Rename the file to "parallella.bit.bin"  That is the only name that u-boot will look for.

5.  Make sure you have a devicetree (devicetree.dtb) that matches the features on the FPGA.
In particular, the system will not activate the HDMI output unless HDMI is listed in the
devicetree.  Worse, the system will hang if HDMI _is_ listed in the devicetree but not
implemented in the FPGA.

6.  Place the SD card back in the Parallella and apply power.

7.  DONE!

