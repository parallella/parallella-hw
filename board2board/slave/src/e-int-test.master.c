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
	File name : e-int-test.master.c 
	Function : Epiphany side of slave board. Each core gets message interrupt, and writes to (0,0) mailbox
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

#include "e_lib.h"

#define Fhz   (600e6)            // Clock frequency (Hz)
#define Td    (2)                // Delay time (sec)
#define Delay (Td * Fhz)

#define TIMER0_VECTOR 0x0000000c // address of TIMER0 entry in IVT
#define B_OPCODE      0x000000e8 // OpCode of the B<*> instruction
#define maxcorenum 32
#define BASE_ROW 32
#define MB_size 40

void SW_EXCEPTION_isr(int signum);
void E_MEM_FAULT_isr(int signum);
void E_TIMER0_INT_isr(int signum);
void E_TIMER1_INT_isr(int signum);
void E_MESSAGE_INT_isr(int signum);
void E_DMA0_INT_isr(int signum);
void E_DMA1_INT_isr(int signum);
void E_USER_INT_isr(int signum);


	unsigned name_irq[8] = {E_SW_EXCEPTION, E_MEM_FAULT, E_TIMER0_INT, E_TIMER1_INT, E_MESSAGE_INT, E_DMA0_INT, E_DMA1_INT, E_USER_INT};//@where are these from?
	char event [8][20];
	
char volatile mailbox[maxcorenum][MB_size];//@why volatile?

// Define macro for indirect interrupt dispathcer method.
// Undef for the direct and faster, but more explicit, method.

int main(void)
{
   	strcpy (event[0], "E_SW_EXCEPTION");
	strcpy (event[1], "E_MEM_FAULT");
	strcpy (event[2], "E_TIMER0_INT");
	strcpy (event[3], "E_TIMER1_INT");
	strcpy (event[4], "E_MESSAGE_INT");
	strcpy (event[5], "E_DMA0_INT");
	strcpy (event[6], "E_DMA1_INT");
	strcpy (event[7], "E_USER_INT");
	
	e_irq_attach(name_irq[0],SW_EXCEPTION_isr);//@defines handlers for each type of interrupt
   	e_irq_attach(name_irq[1],E_MEM_FAULT_isr);
   	e_irq_attach(name_irq[2],E_TIMER0_INT_isr);
    	e_irq_attach(name_irq[3],E_TIMER1_INT_isr);
    	e_irq_attach(name_irq[4],E_MESSAGE_INT_isr);
    	e_irq_attach(name_irq[5],E_DMA0_INT_isr);
    	e_irq_attach(name_irq[6],E_DMA1_INT_isr);
    	e_irq_attach(name_irq[7],E_USER_INT_isr);
 
	


	// Enable the TIMER0 interrupt
	e_ctimer_start(E_CTIMER_0, E_CTIMER_OFF);

  	e_irq_mask(name_irq[0], E_FALSE);
  	e_irq_mask(name_irq[1], E_FALSE);
  	e_irq_mask(name_irq[2], E_FALSE);
  	e_irq_mask(name_irq[3], E_FALSE);
  	e_irq_mask(name_irq[4], E_FALSE);
  	e_irq_mask(name_irq[5], E_FALSE);
  	e_irq_mask(name_irq[6], E_FALSE);
  	e_irq_mask(name_irq[7], E_FALSE);
	e_irq_global_mask(E_FALSE);

	// Start the timer, counting for ~1 sec, and wait for
	// it to finish.
	e_ctimer_set(E_CTIMER_0, Delay);
	e_ctimer_start(E_CTIMER_0, E_CTIMER_CLK);
	while (e_ctimer_get(E_CTIMER_0));
	 
	return 0;
}



void __attribute__((interrupt)) SW_EXCEPTION_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		unsigned*p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
	sprintf(p,"%x says:%s\n",e_get_coreid(),event[0]);
	return;
}	
void __attribute__((interrupt)) E_MEM_FAULT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		unsigned*p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[1]);
	return;
}	
void __attribute__((interrupt)) E_TIMER0_INT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		char* p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[2]);
		if (i == 0)
		{
			
			e_irq_set(0, 1, E_MESSAGE_INT);
			e_irq_set(0, 2, E_MESSAGE_INT);
			e_irq_set(0, 3, E_MESSAGE_INT);
			e_irq_set(1, 0, E_MESSAGE_INT);
			e_irq_set(1, 1, E_MESSAGE_INT);
			e_irq_set(1, 2, E_MESSAGE_INT);
			e_irq_set(1, 3, E_MESSAGE_INT);
			e_irq_set(2, 0, E_MESSAGE_INT);
			e_irq_set(2, 1, E_MESSAGE_INT);
			e_irq_set(2, 2, E_MESSAGE_INT);
			e_irq_set(2, 3, E_MESSAGE_INT);
			e_irq_set(3, 0, E_MESSAGE_INT);
			e_irq_set(3, 1, E_MESSAGE_INT);
			e_irq_set(3, 2, E_MESSAGE_INT);
			e_irq_set(3, 3, E_MESSAGE_INT); 
			e_irq_set(4, 1, E_MESSAGE_INT);
			e_irq_set(4, 2, E_MESSAGE_INT);
			e_irq_set(4, 3, E_MESSAGE_INT);
			e_irq_set(4, 0, E_MESSAGE_INT);
			e_irq_set(5, 1, E_MESSAGE_INT);
			e_irq_set(5, 2, E_MESSAGE_INT);
			e_irq_set(5, 3, E_MESSAGE_INT);
			e_irq_set(5, 0, E_MESSAGE_INT);
			e_irq_set(6, 1, E_MESSAGE_INT);
			e_irq_set(6, 2, E_MESSAGE_INT);
			e_irq_set(6, 3, E_MESSAGE_INT);
			e_irq_set(7, 0, E_MESSAGE_INT);
			e_irq_set(7, 1, E_MESSAGE_INT);
			e_irq_set(7, 2, E_MESSAGE_INT);
			e_irq_set(7, 3, E_MESSAGE_INT); 	
		}
	return;
}	
void __attribute__((interrupt))E_TIMER1_INT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		unsigned*p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[3]);
	
	return;
}	
void __attribute__((interrupt)) E_MESSAGE_INT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		char* p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[4]);
	return;
}	
void __attribute__((interrupt)) E_DMA0_INT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		unsigned*p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[5]);
	return;
}	
void __attribute__((interrupt)) E_DMA1_INT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		unsigned*p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[6]);
	return;
}	
void __attribute__((interrupt)) E_USER_INT_isr(int signum)
{
		int x=e_get_coreid()%64 -8;
		int y=e_get_coreid()/64 -BASE_ROW;
		int i=y*4+x;
		unsigned*p=NULL;
		p=e_get_global_address(0,0,mailbox)+i*MB_size;	
		sprintf(p,"%x says:%s\n",e_get_coreid(),event[7]);
	return;
}	
