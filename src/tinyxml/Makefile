#****************************************************************************
#
# Makefil for TinyXml test.
# Lee Thomason
# www.grinninglizard.com
#
# This is a GNU make (gmake) makefile
#****************************************************************************
ifeq ($(strip $(DEVKITXENON)),)
$(error "Please set DEVKITXENON in your environment. export DEVKITXENON=<path to>devkitPPC")
endif

include $(DEVKITXENON)/rules
  
CC = xenon-gcc
CXX = xenon-g++
NAME   = rr
O      = o
RM     = rm -f
STRIP = xenon-strip
LD = xenon-g++
AR = xenon-ar rc
AS = xenon-as
RANLIB := xenon-ranlib

# DEBUG can be set to YES to include debugging info, or NO otherwise
DEBUG          := NO

# PROFILE can be set to YES to include profiling info, or NO otherwise
PROFILE        := NO

#****************************************************************************


DEBUG_CFLAGS     := -DLIBXENON -O3 -DXENON -ffast-math -fomit-frame-pointer -funroll-loops -ffunction-sections -fdata-sections -fno-tree-vectorize -fno-tree-slp-vectorize -ftree-vectorizer-verbose=1 -flto -fuse-linker-plugin -maltivec -mabi=altivec -fno-pic -mpowerpc64 -mhard-float -Wall -mcpu=cell -mtune=cell -m32 -fno-pic -mpowerpc64 -Wall -Wno-unknown-pragmas -Wno-format -g -DDEBUG $(MACHDEP)
RELEASE_CFLAGS   := -DLIBXENON -O3 -DXENON -ffast-math -fomit-frame-pointer -funroll-loops -ffunction-sections -fdata-sections -fno-tree-vectorize -fno-tree-slp-vectorize -ftree-vectorizer-verbose=1 -flto -fuse-linker-plugin -maltivec -mabi=altivec -fno-pic -mpowerpc64 -mhard-float -Wall -mcpu=cell -mtune=cell -m32 -fno-pic -mpowerpc64 -Wall -Wno-unknown-pragmas -Wno-format $(MACHDEP)

LIBS		 := 

DEBUG_CXXFLAGS   := ${DEBUG_CFLAGS} 
RELEASE_CXXFLAGS := ${RELEASE_CFLAGS}

DEBUG_LDFLAGS    := -DLIBXENON -O3 -DXENON -ffast-math -fomit-frame-pointer -funroll-loops -ffunction-sections -fdata-sections -fno-tree-vectorize -fno-tree-slp-vectorize -ftree-vectorizer-verbose=1 -flto -fuse-linker-plugin -maltivec -mabi=altivec -fno-pic -mpowerpc64 -mhard-float -Wall -mcpu=cell -mtune=cell -m32 -fno-pic -mpowerpc64 -Wall -Wno-unknown-pragmas -Wno-format -g $(MACHDEP) /usr/local/xenon/usr/lib/libxenon.a -L/usr/local/xenon/usr/lib -n -T /usr/local/xenon/app.lds
RELEASE_LDFLAGS  := -DLIBXENON -O3 -DXENON -ffast-math -fomit-frame-pointer -funroll-loops -ffunction-sections -fdata-sections -fno-tree-vectorize -fno-tree-slp-vectorize -ftree-vectorizer-verbose=1 -flto -fuse-linker-plugin -maltivec -mabi=altivec -fno-pic -mpowerpc64 -mhard-float -Wall -mcpu=cell -mtune=cell -m32 -fno-pic -mpowerpc64 -Wall -Wno-unknown-pragmas -Wno-format $(MACHDEP) /usr/local/xenon/usr/lib/libxenon.a -L/usr/local/xenon/usr/lib -n -T /usr/local/xenon/app.lds

ifeq (YES, ${DEBUG})
   CFLAGS       += ${DEBUG_CFLAGS}
   CXXFLAGS     += ${DEBUG_CXXFLAGS}
   LDFLAGS      += ${DEBUG_LDFLAGS}
else
   CFLAGS       += ${RELEASE_CFLAGS}
   CXXFLAGS     += ${RELEASE_CXXFLAGS}
   LDFLAGS      += ${RELEASE_LDFLAGS}
endif

ifeq (YES, ${PROFILE})
   CFLAGS   := ${CFLAGS} -pg
   CXXFLAGS := ${CXXFLAGS} -pg
   LDFLAGS  := ${LDFLAGS} -pg
endif

#****************************************************************************
# Preprocessor directives
#****************************************************************************

ifeq (YES, ${PROFILE})
  DEFS :=
else
  DEFS :=
endif

#****************************************************************************
# Include paths
#****************************************************************************

#INCS := -I/usr/include/g++-2 -I/usr/local/include
INCS :=


#****************************************************************************
# Makefile code common to all platforms
#****************************************************************************

CFLAGS   := ${CFLAGS}   ${DEFS}
CXXFLAGS := ${CXXFLAGS} ${DEFS}

#****************************************************************************
# Targets of the build
#****************************************************************************

OUTPUT := xmltest

all: ${OUTPUT}


#****************************************************************************
# Source files
#****************************************************************************

SRCS := tinyxml.cpp tinyxmlparser.cpp xmltest.cpp tinyxmlerror.cpp

# Add on the sources for libraries
SRCS := ${SRCS}

OBJS := $(addsuffix .o,$(basename ${SRCS}))

#****************************************************************************
# Output
#****************************************************************************

${OUTPUT}: ${OBJS}
	${LD} -o $@ ${LDFLAGS} ${OBJS} ${LIBS} ${EXTRA_LIBS}

#****************************************************************************
# common rules
#****************************************************************************

# Rules for compiling source files to object files
%.o : %.cpp
	${CXX} -c ${CXXFLAGS} ${INCS} $< -o $@

%.o : %.c
	${CC} -c ${CFLAGS} ${INCS} $< -o $@

clean:
	-rm -f core ${OBJS} ${OUTPUT}

depend:
	makedepend ${INCS} ${SRCS}

distdir:
