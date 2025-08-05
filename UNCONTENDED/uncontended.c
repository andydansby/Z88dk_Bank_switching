// using sdcc_iy 2.03
//moving over to sdcc
#pragma printf "%f %ld %d %c"//attention temp

#define ABS(N) ((N<0)?(-N):(N))
#define degree2radian(a) (a * 0.0174)   //#define degree2radian(degrees) ((degrees) * M_PI / 180.0)
#define MAXANGLE 360
#define SCREEN_WIDTH 256
#define SCREEN_HEIGHT 192



#include <arch/zx.h>
#include <stdio.h>//standard input output
#include <input.h>//used for detecting key inputs

#include <math.h>
//powerful troubleshooting tool
#include <intrinsic.h>//temp to place labels
//intrinsic_label(border_start);
//intrinsic_label(border_end);

#include "externs.h"    //references to asm functions
#include "variables.h"

#include "uncontended.h"
#include "functions.h"

void main (void)
{
    SETUP_IM2();// set up for the interrupt MODE 2
    // this will point the I register to IM2 Vector

    __asm;
        ei
    __endasm;

    zx_border(INK_BLUE);
    zx_cls(INK_WHITE | PAPER_BLACK);

    while (1)
    {


        //copy_memory_source = (unsigned int)&Table_7;


        //zx0_source = (unsigned int)&zx0_temp_storage;
        //zx0_destination = (unsigned int)&pinball_table;
        //zx0_destination = 16384;
        //dzx0_standard();

        //found in contended
        zx0_source = (unsigned int)&screen1;
        zx0_destination = (unsigned int)16384;
        dzx0_standard();
        pause();

        //found in ram0 above 49152
        bank_switch(0);
        zx0_source = (unsigned int)&screen2;
        zx0_destination = (unsigned int)16384;
        dzx0_standard();
        pause();

        //found in ram1 above 49152
        bank_switch(1);
        zx0_source = (unsigned int)&screen3;
        zx0_destination = (unsigned int)16384;
        dzx0_standard();
        pause();

        //found in ram3 above 49152
        bank_switch(3);
        zx0_source = (unsigned int)&screen4;
        zx0_destination = (unsigned int)16384;
        dzx0_standard();
        pause();

        //found in ram4 above 49152
        bank_switch(4);
        zx0_source = (unsigned int)&screen5;
        zx0_destination = (unsigned int)16384;
        dzx0_standard();
        pause();

        //found in ram6 above 49152
        bank_switch(6);
        zx0_source = (unsigned int)&screen6;
        zx0_destination = (unsigned int)16384;
        dzx0_standard();
        pause();


    }//end while

}

// must have blank line at end
