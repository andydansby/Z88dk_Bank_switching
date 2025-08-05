#ifndef EXTERNS_H
#define EXTERNS_H
//UNCONTENDED RAM
/*
__fastcall__
 Fastcall linkage allows one parameter
 to be passed by register in a subset of DEHL.
 So if the parameter is 8-bit, the value will
 be in L.  If the parameter is 16-bit,
 the value is in HL and if it is
 32-bit the value is in DEHL.
*/


/*SDCC allows to specify preserved registers in
function declarations, to enable further
optimizations on calls to functions implemented
in assembler. Example for the Z80 architecture
specifying that a function will preserve
register pairs bc and iy:*/
//void f(void) __preserves_regs(b, c, iyl, iyh);
//void f (unsigned int) __z88dk_fastcall;



extern void dzx0_standard(void) __z88dk_fastcall;


//in contended.asm
extern unsigned int zx0_temp_storage;
extern unsigned int zx0_source;
extern unsigned int zx0_destination;

//in uncontended.asm
extern void bank_switch(unsigned char ramBank) __z88dk_fastcall;


extern void set_attributes (void)  __z88dk_fastcall;

//found in im2.asm
extern void SETUP_IM2(void) __z88dk_fastcall;

//found in RAM0Z.asm

//found in RAM6

extern void copy_memory (void) __z88dk_fastcall;


//found in uncontended.asm
extern unsigned int character_address;
extern unsigned char attribute_color;


extern unsigned int *screen1;
extern unsigned int *screen2;
extern unsigned int *screen3;
extern unsigned int *screen4;
extern unsigned int *screen5;
extern unsigned int *screen6;
extern unsigned int *screen7;
#endif
