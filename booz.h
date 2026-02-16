/* booz.h */
#ifndef BOOZ_H
#define BOOZ_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define T_UINT16     unsigned short
#define NEED_B

#ifdef NEED_B
#define  CREATE(x)  fopen(x, "wb")
#define  OPEN(x)    fopen(x, "rb")
#else
#define  CREATE(x)  fopen(x, "w")
#define  OPEN(x)    fopen(x, "r")
#endif

#define MEM_BLOCK_SIZE  8192

int getfile ();
int lzd ();
int readdir ();
int rd_zooh ();
int rd_dir ();
int addbfcrc();
int prterror();
int memerr();
int oozext ();
int putstr ();
char *itoa ();
int fixfname ();
int gentab();
int match();

#endif