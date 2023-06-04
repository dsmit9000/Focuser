//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

void SetOutput(void);
void Step(void);

int pos;
int enable;
int delay;
int lstep;

void main(void)
{
	int bstep;
	int f, g;
	//M8C_EnableIntMask(INT_MSK0, INT_MSK0_GPIO);
	//M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	pos = 0;
	enable = 0;
	delay = 0;
	SetOutput();
	loop:
	bstep = PRT1DR & 1;
	if(lstep == 0 && bstep == 1) {
		Step();
	}
	lstep = bstep;
	if(delay > 0) {
		delay--;
		if (delay == 0) {
			enable = 0;
			SetOutput();
		}
	}
	goto loop;
}

void Step(void) {
	int dir = PRT1DR & 2;
	if(!dir) {
		pos++;
		if (pos > 7) pos = 0;
	} else {
		pos--;
		if (pos < 0) pos = 7;
	}
	enable = 1;
	delay = 32000;
	SetOutput();
}

int stepdata[] = {
	0x0a,
	0x08,
	0x09,
	0x01,
	0x05,
	0x04,
	0x06,
	0x02
};

void SetOutput(void) {
	int value = 0;
	if (enable) {
		value = stepdata[pos];
	}
	PRT0DR = value<<2;
}