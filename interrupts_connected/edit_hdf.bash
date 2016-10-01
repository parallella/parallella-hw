#!/bin/bash
#	Interrupts Connected System - This project uses interrupts to test 
#	communication between multiple parallella boards
#=====================================================================
#	June 2016
#
#
#	Designed in the Parallel Programming Laboratory, 
#	The Faculty of Electrical Engineering,
#	Technion Instittute of Technology.
#
#	Student (author) : Aviv Burshtein
#	Instructor : Oz Shmueli
#	Academic Supervisor : Prof. Tsahi Birk
#	http://psl.eelabs.technion.ac.il/
#
#=======================================================================
#	File name : edit_hdf.bash
#	Function : sets EPIPHANY_HDF file to match location in the cluster
#	Usage : sudo ./edit_hdf [master/slave/restore] [number of slave boards/ slave board number/ - ]
#
#
if [ "$#" -ne 2 ]&&[ "$#" -ne 1 ]; then
    echo "
	
use : sudo ./edit_hdf.sh [master] [number of slaves: 1-4] 
or: ./edit_hdf.sh [slave] [slave_number: 1-4]

"
	exit 1
fi

if [ "$1" == "master" ]; then
	echo "Setting up master HDF"
	case $2 in
		1)	
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       2
CHIP                      E16G301
CHIP_ROW                       32
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       36
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
		2)
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       3
CHIP                      E16G301
CHIP_ROW                       32
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       36
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       40
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
		3)
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       4
CHIP                      E16G301
CHIP_ROW                       32
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       36
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       40
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       44
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
			
		4)
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       5
CHIP                      E16G301
CHIP_ROW                       32
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       36
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       40
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       44
CHIP_COL                        8
CHIP                      E16G301
CHIP_ROW                       48
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
		*)
			echo "Number of slaves not supported :-(";;
	esac


elif [ "$1" == "slave" ]; then
echo "Setting up slave HDF"
	case $2 in
		1)	
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       1
CHIP                      E16G301
CHIP_ROW                       36
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
		2)
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       1
CHIP                      E16G301
CHIP_ROW                       40
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
		3)
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       1
CHIP                      E16G301
CHIP_ROW                       44
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
			
		4)
			echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                       1
CHIP                      E16G301
CHIP_ROW                       48
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf;;
		*)
			echo "Number of slaves not supported :-(";;
		
	esac
	
	
elif [ "$1" == "restore" ]; then
	echo "Restoring hdf to default..."
	echo "// Platform description for the
// Parallella/1GB/E16G3
PLATFORM_VERSION   PARALLELLA1601
ESYS_REGS_BASE         0x70000000

NUM_CHIPS                      	1
CHIP                      E16G301
CHIP_ROW                       32
CHIP_COL                        8

NUM_EXT_MEMS                    1
EMEM                     ext-DRAM
EMEM_BASE_ADDRESS      0x3e000000
EMEM_EPI_BASE          0x8e000000
EMEM_SIZE              0x02000000
EMEM_TYPE                    RDWR

			" > /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
			echo ""
			echo ""
			echo "hdf file is now :"
			cat /opt/adapteva/esdk/bsps/parallella_E16G3_1GB/parallella_E16G3_1GB.hdf
else 
	echo "First input arguments not matched :-("
fi

exit 1
