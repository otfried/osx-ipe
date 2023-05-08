#
# Makefile for building the dependencies of Ipe, for Mac OS
#

IPEDEPS = osxlibs

subdirs = \
	libpng \
	freetype \
	pixman \
	qhull \
	spiro \
	gsl \
	lua \
	cairo

.PHONY: download setup $(subdirs)

all: $(subdirs)

download:
	$(MAKE) --directory=pkg $(GOAL)

setup:
	mkdir -p $(IPEDEPS)/bin
	mkdir -p $(IPEDEPS)/lib
	mkdir -p $(IPEDEPS)/include

$(subdirs):
	$(MAKE) --directory=$@ $(GOAL)

clean:
	rm -fr $(IPEDEPS)
	$(MAKE)	GOAL=clean
