# Sample makefile for pngcrush using gcc and GNU make.
# Glenn Randers-Pehrson
# Last modified:  3 January 2010
#
# Invoke this makefile from a shell prompt in the usual way; for example:
#
#	make -f makefile.gcc
#
# This makefile builds a statically linked executable.

# macros --------------------------------------------------------------------

# uncomment these 2 lines only if you are using an external copy of zlib:
#ZINC = ../../zlib
#ZLIB = ../../zlib

CC = gcc
LD = gcc
RM = rm -f
#CFLAGS = -I. -O -Wall
#CFLAGS = -I. -O2
#CFLAGS = -I. -O3 -fomit-frame-pointer -Wall
#CFLAGS = -I. -Os -fomit-frame-pointer -Wall
#CFLAGS = -I. -O3 -funroll-loops -fomit-frame-pointer -Wall -Wshadow
# Work around zlib compiler bug in 1.2.6
CFLAGS = -I. -O3 -funroll-loops -fomit-frame-pointer -Wall -Wshadow -DZ_SOLO
#CFLAGS = -I${ZINC} -I. -O3 -fomit-frame-pointer -Wall
# [note that -Wall is a gcc-specific compilation flag ("all warnings on")]

# Cannot use this with libpng15
# TOOFAR_OK=-DINFLATE_ALLOW_INVALID_DISTANCE_TOOFAR_ARRR
TOOFAR_OK=

LDFLAGS =
O = .o
E =

PNGCRUSH  = pngcrush

LIBS = -lm
#LIBS = -L${ZLIB} -lz -lm
#LIBS = ${ZLIB}/libz.a -lm

# uncomment these 4 lines only if you are NOT using an external copy of zlib:
ZHDR = zlib.h
ZOBJS  = adler32$(O) compress$(O) crc32$(O) deflate$(O) \
	 infback$(O) inffast$(O) inflate$(O) inftrees$(O) \
	 trees$(O) uncompr$(O) zutil$(O)

OBJS  = pngcrush$(O) png$(O) pngerror$(O) pngget$(O) pngmem$(O) \
	pngpread$(O) pngread$(O) pngrio$(O) pngrtran$(O) pngrutil$(O) \
	pngset$(O) pngtrans$(O) pngwio$(O) pngwrite$(O) \
	pngwtran$(O) pngwutil$(O) $(ZOBJS)

EXES = $(PNGCRUSH)$(E)


# implicit make rules -------------------------------------------------------

.c$(O): png.h pngconf.h pngcrush.h cexcept.h pngpriv.h $(ZHDR)
	$(CC) -c $(CFLAGS) $(TOOFAR_OK) $<


# dependencies --------------------------------------------------------------

all:  $(EXES)

inffast$(O): inffast.c
	$(CC) -c $(TOOFAR_OK) $(CFLAGS) $<

inflate$(O): inflate.c
	$(CC) -c $(TOOFAR_OK) $(CFLAGS) $<

deflate$(O): deflate.c
	$(CC) -c -DTOO_FAR=32767 $(CFLAGS) $<

pngcrush$(O): pngcrush.c png.h pngconf.h pngcrush.h cexcept.h $(ZHDR)
	$(CC) -c $(CFLAGS) $(TOOFAR_OK) $<

$(PNGCRUSH)$(E): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

# maintenance ---------------------------------------------------------------

clean:
	$(RM) $(EXES) $(OBJS)
