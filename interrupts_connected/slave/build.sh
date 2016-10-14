#!/bin/bash

set -e
rm -f ./Debug/*
ESDK=${EPIPHANY_HOME}
ELIBS=${ESDK}/tools/host/lib
EINCS=${ESDK}/tools/host/include
ELDF=${ESDK}/bsps/current/fast.ldf
SRC_LIB=./src/
DEBUG_LIB=./Debug/
CROSS_PREFIX=
case $(uname -p) in
	arm*)
		# Use native arm compiler (no cross prefix)
		CROSS_PREFIX=
		;;
	   *)
		# Use cross compiler
		CROSS_PREFIX="arm-linux-gnueabihf-"
		;;
esac
mkdir -p ./Debug

# Build HOST side application
#${CROSS_PREFIX} gcc ${SRC_LIB}my_h.c -o ./Debug/my_h.elf -I ${EINCS} -L ${ELIBS} -le-hal  -le-loader

${CROSS_PREFIX} gcc ${SRC_LIB}int-test.c ${SRC_LIB}my_h.c -o ./Debug/int-test.elf -I ${EINCS} -L ${ELIBS} -le-hal  -le-loader

# Build DEVICE side program
e-gcc -O0 -T ${ELDF}  ${SRC_LIB}e-int-test.master.c -o ${DEBUG_LIB}e-int-test.master.elf -le-lib

# Convert ebinary to SREC file
e-objcopy --srec-forceS3 --output-target srec ${DEBUG_LIB}e-int-test.master.elf ${DEBUG_LIB}e-int-test.master.srec

