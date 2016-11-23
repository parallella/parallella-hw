/* Copyright (C) 2012 Adapteva, Inc.
	Interrupts Connected System - This project uses interrupts to test 
	communication between multiple parallella boards
=====================================================================
	June 2016


	Designed in the Parallel Programming Laboratory, 
	The Faculty of Electrical Engineering,
	Technion Instittute of Technology.

	Student (author) : Aviv Burshtein
	Instructor : Oz Shmueli
	Academic Supervisor : Prof. Tsahi Birk
	http://psl.eelabs.technion.ac.il/

=======================================================================
	File name :int-test.master.c 
	Function : ARM side of slave board. loads code to local Epiphany and waits for the master board.
	Usage : ../run.sh
	Code is based on system interrupts code by Yaniv Sapir <yaniv@adapteva.com>
 
========================================================================
 This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program, see the file COPYING.  If not, see
  <http://www.gnu.org/licenses/>.
  */

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include <e-hal.h>
#include "my_h.h"

void print_mbox(e_epiphany_t *dev, e_mem_t *emem, char *msg);

#define _BufOffset (0x01000000)
#define maxcorenum 32
unsigned corenum=32;
char M[maxcorenum][40];
unsigned IVT[10];

int main(int argc, char *argv[])
{
	int i,j;
	unsigned row, col, coreid;
	unsigned di, ci, go, go_all;
	e_platform_t platform;
	e_epiphany_t dev;
	e_mem_t      emem;

	// Initialize progress state in mailbox
	for(i=0;i<corenum;i++)
    for(j=0;j<40;j++)
		M[i][j] ='\0';

	// initialize system, read platform params from
	// default HDF. Then, reset the platform.
	e_init(NULL);
	e_reset_connected_system();
     e_get_platform_info(&platform);
     fprintf(stderr, "platform info:  num_chips =0x%x ,emems = 0x%x\n",platform.num_chips,platform.num_emems);
	 fprintf(stderr, "hdf_ platform info:  core (0,0) id =%x\n ", (0 + platform.row) * 64 + 0 + platform.col );
     fprintf(stderr, "platform info:  rows =0x%x ,cols = 0x%x\n",platform.rows,platform.cols );
	 corenum=platform.rows*platform.cols;
	//Open the first and second cores for master and slave programs, resp.
	e_open(&dev, 0, 0, platform.rows, platform.cols);
	
	// Allocate the ext. mem. mailbox
	////e_alloc(&emem, _BufOffset, sizeof(M));

	// Load programs on cores.
	printf("loading :\n");
	e_load_group("e-int-test.master.srec", &dev, 0, 0, platform.rows, platform.cols, E_FALSE);
	printf("loaded :rows = %d, cols = %d\n", platform.rows, platform.cols );
	//e_load("e-int-test.slave.srec",  &dev, 0, 1, E_FALSE);

	// clear mailbox.
	///////e_write(&emem, 0, 0, (off_t) (0x0000), (void *) &(M[0]), sizeof(M));
	
	
	
	
	
	
  //  usleep(5e6);
//	e_close(&dev);
//	e_free(&emem);
//	e_finalize();
//	e_init(NULL);
//	e_reset_connected_system();
	

	// Print mbox status.
//	print_mbox(&dev, &emem, "1. Clearing mbox:");
	
	// start the master program
	
	////e_start_group(&dev);
		////printf("started :\n");
	////usleep(4e6);
	
	//print_mbox(&dev, &emem, "2. started:");
	
	//usleep(4e6);
	//print_mbox(&dev, &emem, "3. started:");
		
	// At this point, the  mailbox should contain all of the progress
	// indicators, and look like the following:
	//
	// 0x808       0x809       0x22222222  0x33333333  0x44444444
	//
	// If there is a "0xdeadbeef" state in one of the slots, it means
	// that something went wrong.

	// Finalize
 fprintf(stderr, "Waiting for my Master!\n\n");
 usleep(30e6);
 fprintf(stderr, "Done waiting for my master board! Im not his slave!\n");
	e_close(&dev);
	e_free(&emem);
	e_finalize();

	return 0;
}


void print_mbox(e_epiphany_t *dev, e_mem_t *emem, char *msg)
{
	//e_read(emem, 0, 0, (off_t) (0x0000), (void *) &(M[0]), sizeof(M));
    printf("\n%s\n" ,msg);
	e_read(dev, 0, 0, (off_t) (0x00002124), (void *) &(M[0]), sizeof(M));
	int i,j=0;
	 		      
		for(i=0;i<corenum;i++)
		{	
		 printf("\nmsgs from(%d) :\n",i);
		 for(j=0;j<40;j++) printf("%c",M[i][j]) ;
		}		
		return;
}




