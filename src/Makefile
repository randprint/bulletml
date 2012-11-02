ifeq ($(strip $(DEVKITXENON)),)
$(error "Please set DEVKITXENON in your environment. export DEVKITXENON=<path to>devkitPPC")
endif

include $(DEVKITXENON)/rules
 
CC = xenon-g++
CXX = xenon-g++
NAME   = rr
O      = o
RM     = rm -f
STRIP = xenon-strip
LD = xenon-ld
AR = xenon-ar
AS = xenon-as
RANLIB := xenon-ranlib

INCLUDES = -I.
LIBS = tinyxml/tinyxml.o tinyxml/tinyxmlparser.o tinyxml/tinyxmlerror.o
#CXXFLAGS = -g -W -Wall -ansi -pedantic
#CXXFLAGS = -pg -g -W -Wall -ansi -pedantic
#CXXFLAGS = -O2 -W -Wall -ansi -pedantic
#CFLAGS = -O2
CFLAGS	= -g $(MACHDEP) $(INCLUDE) -DLIBXENON -O3 -DXENON -ffast-math -fomit-frame-pointer -funroll-loops -ffunction-sections -fdata-sections -fno-tree-vectorize -fno-tree-slp-vectorize -ftree-vectorizer-verbose=1 -flto -fuse-linker-plugin -maltivec -mabi=altivec -fno-pic -mpowerpc64 -mhard-float -Wall -mcpu=cell -mtune=cell -m32 -fno-pic -mpowerpc64 
CXXFLAGS	= $(CFLAGS) -ansi -pedantic
LDFLAGS = -DLIBXENON -O3 -DXENON -ffast-math -fomit-frame-pointer -funroll-loops -ffunction-sections -fdata-sections -fno-tree-vectorize -fno-tree-slp-vectorize -ftree-vectorizer-verbose=1 -flto -fuse-linker-plugin -maltivec -mabi=altivec -fno-pic -mpowerpc64 -mhard-float -Wall -mcpu=cell -mtune=cell -m32 -fno-pic -mpowerpc64 -Wall -Wno-unknown-pragmas -Wno-format $(MACHDEP) /usr/local/xenon/usr/lib/libxenon.a -L/usr/local/xenon/usr/lib -n -T /usr/local/xenon/app.lds
ASFLAGS	= -Wa,$(INCLUDE) -Wa,-a32
OBJS = bulletmlparser-tinyxml.o bulletmlparser.o bulletmltree.o calc.o formula-variables.o bulletmlrunner.o bulletmlrunnerimpl.o

all: libbulletml.a

libbulletml.a: $(OBJS)
	$(MAKE) -C tinyxml
	$(AR) -r libbulletml.a *.o tinyxml/tiny*.o

clean:
	rm -f *.o *.a
	$(MAKE) -C tinyxml clean

calc.cpp: calc.yy
	bison -y   calc.yy && mv y.tab.c calc.cpp

$(OBJS): %.o: %.cpp
	$(CC) -c $(CXXFLAGS) $(INCLUDES) $<

doxy:
	doxygen

distdir:

