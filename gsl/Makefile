#
# Compile and install gsl
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/gsl-*.tar.gz
	mv gsl-* gsl
	cd gsl && ./configure --disable-shared --enable-static \
		--prefix=$(IPEDEPS) \
		CFLAGS="-g -O2 $(MAC_OS_MIN)" && \
		make && \
		make install
	rm -fr $(IPEDEPS)/share

clean:
	rm -fr gsl
