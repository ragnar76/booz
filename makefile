OOZOBJS = addbfcrc.o lzd.o booz.o oozext.o portable.o \
    io.o huf.o decode.o maketbl.o

CFLAGS = -c -O3 -march=native -Wno-implicit-function-declaration -Wno-implicit-int -Wno-return-mismatch -Wno-conflicting-types -Wno-builtin-declaration-mismatch -Wno-int-conversion

.c.o :
	cc $(CFLAGS) $*.c

booz : $(OOZOBJS)
	cc $(OOZOBJS) -o booz

install : booz
	mv booz /usr/local/bin/booz

clean :
	-/bin/rm -f core *.o booz

# DEPENDENCIES
booz.o: booz.h zoo.h
decode.o: ar.h booz.h lzh.h zoo.h
huf.o: ar.h booz.h lzh.h zoo.h
io.o: ar.h booz.h lzh.h zoo.h
lzd.o: booz.h
maketbl.o: ar.h booz.h lzh.h zoo.h
oozext.o: booz.h zoo.h
portable.o: booz.h zoo.h
