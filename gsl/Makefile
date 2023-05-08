#
# Compile and install gsl
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/gsl-*.tar.gz
	cd gsl-* && ./configure --disable-shared --enable-static \
	    --prefix=$(IPEDEPS) \
	    CFLAGS="-g -O2 $(MAC_OS_MIN)"
	cd gsl-* && make
	cd gsl-* && make install

clean:
	rm -fr gsl-*
