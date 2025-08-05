// using sdcc80 2.3

// assembly files are in ram6Z.asm as
// indicated by ramMain.lst

// this has been pushed to zpragma.inc
//#pragma output CRT_ORG_CODE = 49152

//be sure to bank to this slot if you
//plan on using other banks

//we are just putting functions here

//PLACE ASSEMBLY VARIABLES HERE
//HAVE AT LEAST ONE VARIABLE DEFINED AS AN ASM VARIABLE

//if this is before any custom headers
//it will set everything below it to be
//in the correct memory slot


#include "externs.h"


static void naked_placement_RAM6_add_routine(void) __naked
{
__asm
    SECTION BANK_06
__endasm;
}
int RAM6_add_routine (int a, int b)
{
    return a + b;
}


// do not have main() here at all since
// we are just compiling to object files
// you will get a RET inserted automatically



//must have blank line at end
