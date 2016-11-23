Interrupts Connected Systems
=====================================================================
This project uses interrupts to test 
communication between multiple parallella boards

June 2016


Designed in the Parallel Systems Laboratory, 
The Faculty of Electrical Engineering,
Technion Instittute of Technology.

Student: Aviv Burshtein
Instructor: Oz Shmueli
Academic Supervisor: Prof. Tsahi Birk
http://psl.eelabs.technion.ac.il/

Overview
=======================================================================


This project demonstrates the scalability of the Parallella board, by allowing an Epiphany Mesh connection .
Can be used with up to 8 Parallella boards without any changes to the Zynq.
Works with the esdk 2015.1 version and the respective FPGA builds.

Note that in order to use this code one must first connect the boards and set COREID as Explained in the PDF in this folder

Design Files
=========================================================================


This project contains the following components:

   master/      	 - The folder to be used only from the master board - assuming coreid = (32,8) (or 808 in hex)
        src/    	 - The source files
        Debug   	 - Binaries.
		build.sh     - Shell script for building the project on master side
		run.sh       - Shell script for running the project on master side
		
   slave/ 		- the folder to be used on any of the slave boards - i.e. coreid = (36,8) (or 908 in hex)
        src/    - the source files
        Debug   - binaries.
		build.sh     - shell script for building the project on slave side
		run.sh       - shell script for running the project on slave side
   
   edit_hdf.bash  - shell script that edits the HDF file according to location of Epiphany in the mesh
   
   Design Files/ - design files for a costum PCB E-link connector
   
   Epiphany Cluster Technical Report.pdf - Full technical report about this project. To cite this work please use "A.Burshtein 					,"Parallella Epiphany Cluster", Parallel Systems Laboratory, Technion Institute of Technology,  2016."
   
   Set Up Your Epiphany Cluster.pdf - A user guide for reconstructing the cluster.
   
   Final Presentation.ppsx - An overview presentation
   
   mem_map_routh_map.xlsx - General Parallella memory map
   
   Interrupts connected.tar- .tar code library



Prior to Building the project
=============================
Execute the next line in the command prompt
$ sudo ./edit_hdf.sh
The correct usage will be explained in the script output
   
   
In the correct directory (master or slave):   
==========================================   
		Building the project
		====================

		At the command prompt, type:

		$ ./build.sh


		Running the project
		===================

		At the command prompt, type:

		$ ./run.sh

