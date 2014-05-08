/fpga/bitstreams/README.txt  - 5/7/14 FH

Home of generated bitstreams from all projects.

To use files here with the Parallella:

1)  Choose the file you want based on the hardware you have and the features you want:

	-- Hardware --
	a)  FPGA, either "7010" or "7020"
	b)  Epiphany chip, either "E16" or "E64"

	-- Features --
	c)  Low-power/low-resource "headless" (no display) or "HDMI"
	d)  Basic single-ended GPIOs "gpiose" or peripheral-rich "megaio"

For example, the file "parallella_e16_headless_gpiose_7010.bit.bin" is for an E16 Epiphany running on a board with a Zynq 7010, has no monitor output and 24 basic single-ended GPIOs.

(Note the HDMI and megaio versions are not yet available in this repository, keep an eye on the forum)

2)  Copy the chosen file to the BOOT partition of your already-formatted SD card.

3)  Rename the file to "parallella.bit.bin"  That is the only name that u-boot will look for.

4)  Place the SD card back in the Parallella and apply power.  

5)  DONE!

